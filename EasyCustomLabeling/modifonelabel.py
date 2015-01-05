# -*- coding: iso-8859-1 -*-
"""
 ***************************************************************************
 *  fonctions proposees par Philippe
 *  pour permettre de modifier des étiquettes une par une
 ***************************************************************************

 ***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************
"""
import os.path
from PyQt4 import QtGui
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.utils import *

from qgis.gui import *
class IdentifyGeometry(QgsMapToolIdentify):
  def __init__(self, canvas):
    QgsMapToolIdentify.__init__(self, canvas)
  def canvasReleaseEvent(self, mouseEvent):
    if mouseEvent.button()==Qt.RightButton:
      mouseEvent.ignore()
      return
    results = self.identify(mouseEvent.x(), mouseEvent.y(), self.ActiveLayer, self.VectorLayer) #TopDownStopAtFirst
    if len(results) > 0:
      self.emit( SIGNAL( "geomIdentified" ), mouseEvent.x(), mouseEvent.y(), results[0].mLayer, results[0].mFeature )
    else: # si clic sur etiquette hors objet
      self.emit( SIGNAL( "geomIdentified" ), mouseEvent.x(), mouseEvent.y(), None, None )


class modifOneLabel():
  def __init__(self, iface, toolbar, boutonDeplacer, ECL):
    self.iface = iface
    self.ECL = ECL # pour connecter la fontion labelLayerModified
    self.toolBar = toolbar
    pluginPath = QDir.cleanPath( os.path.abspath(os.path.dirname(__file__)) )
    self.actionModifLabel = QAction( QIcon(pluginPath +"/icons/changelabel.png"),
      u"Modifier une étiquette (position, texte, style)\nCliquer sur ce bouton puis sur une étiquette ou un objet", self.iface.mainWindow() )
    self.actionModifLabel.setCheckable(True)
    #self.iface.addToolBarIcon(self.actionModifLabel)
    self.actionModifLabel.setStatusTip( u"Cliquer sur ce bouton puis sur une étiquette ou un objet" )
    self.toolBar.addAction(self.actionModifLabel)
    QObject.connect(self.actionModifLabel, SIGNAL("triggered()"), self.initModifLabel )
    self.boutonDeplacer = boutonDeplacer ### bouton "Déplacer l'étiquette"
    self.vuScaleInfo = False
    self.labelLayerName = u"Etiquettes"

  def initModifLabel(self): ### fonction associée à un bouton "Modifier une étiquette"
    canvas = self.iface.mapCanvas()
    self.mapTool = IdentifyGeometry(canvas)
    QObject.connect(self.mapTool , SIGNAL("geomIdentified") , self.modifLabel )
    canvas.setMapTool(self.mapTool)
    QObject.connect( canvas, SIGNAL( "mapToolSet(QgsMapTool *)" ), self.finModifLabel ) # terminer modifLabel si user choisit un autre outil

  def modifLabel(self, x, y, layer, feat): ### fonction déclenchée par le clic sur une étiquette ou un objet
    canvas = self.iface.mapCanvas()
    mm = canvas.getCoordinateTransform()
    p = mm.toMapPoint(x, y) # coordonnées de la carte
    if QGis.QGIS_VERSION_INT > 20200:
      listeLabels = QgsLabelingResults().labelsAtPosition(QgsPoint(p.x(),p.y())) # les etiquettes à cette position
    else: # jusqu'à la version 2.2
      ren = canvas.mapRenderer()
      eng = ren.labelingEngine()
      listeLabels = eng.labelsAtPosition(QgsPoint(p.x(),p.y())) # les etiquettes à cette position
    texte=""
    lblRotation=0
    if len(listeLabels)==1: # si user a cliqué sur une etiquette
      texte = listeLabels[0].labelText
      lid = listeLabels[0].layerID
      layReg = QgsMapLayerRegistry.instance()
      layer = layReg.mapLayer( lid )
      if layer.name()==self.labelLayerName: # si c'est deja une etiquette modifiee, on sort :
        self.boutonDeplacer.trigger() # passe en mode "Déplacement d'étiquette"
        return
      
      fid = listeLabels[0].featureId
      featIter = layer.getFeatures(QgsFeatureRequest(fid))
      f = QgsFeature()
      if featIter.nextFeature(f):
        feat = f
      else: # cela ne devrait jamais arriver mais on sait jamais !
        return
      lblRotation = listeLabels[0].rotation * 180 / 3.14159265359
    
    if texte=="": # si user n'a pas cliqué sur une etiquette
      if feat==None: return  # si user n'a pas cliqué sur un objet
      # on cree la geometrie simplifiee pour l'etiquette :
      ##geom = feat.geometry()
      ##WKTLine = 'LINESTRING('+ str(geom.centroid().asPoint().x() +0.0001) +' '+  str(geom.centroid().asPoint().y() +0.0001 ) + ' , '+ str(geom.centroid().asPoint().x())+ ' ' +str(geom.centroid().asPoint().y())+ ')'
      # print 'WKTLine: '+ WKTLine
      fid = feat.id()
      labField = layer.customProperty("labeling/fieldName", "")
      try: texte = QgsExpression(labField).evaluate(feat)
      except: pass
      if texte=="" or texte==None: # si erreur expression ou etiquetage pas defini sur cette couche
        texte = u"Etiquette"
      else: texte = unicode( texte )
    
    labelLayer = self.createLabelLayer() # cree la couche des etiquettes modifiees si necessaire
    labelLayerProvider = labelLayer.dataProvider() 
    labelLayerFields = labelLayerProvider.fields()
    labelFeature = QgsFeature(labelLayerFields)
    
    # on cree la geometrie simplifiee pour l'etiquette (là où le user a cliqué) :
    ##WKTLine = 'LINESTRING('+ str(p.x()+0.0001) +' '+ str(p.y()+0.0001) +' , '+ str(p.x()) +' '+ str(p.y()) +')'
    WKTLine = 'LINESTRING('+ str(p.x()+0.0001) +' '+ str(p.y()) +' , '+ str(p.x()) +' '+ str(p.y()) +')'
    labelFeature.setGeometry( QgsGeometry.fromWkt(WKTLine) )
    labelFeature['layerId'] = layer.id()
    labelFeature['featId'] = fid
    labelFeature['LblField'] = texte
    labelFeature['LblShow'] = 1  
    labelFeature['LblAShow'] = 1 # always show
    labelFeature['LblAlignV'] = 'Half'
    labelFeature['LblAlignH'] = 'Center'
    
    if not ( layer.customProperty("labeling/enabled")=="true" or str(layer.customProperty("labeling/enabled"))=="True" ):
      # si l'etiquetage de cette couche n'est pas activé, on definit des parametres par defaut:
      labelFeature['LblSize'] = 11
      labelFeature['LblBufDraw'] = True
      labelFeature['LblBufSize'] = 0.6
      labelFeature['LblBufCol'] = "#ffffff"
    
    else: # couche déjà etiquetée :
      labelFeature['LblSize'] = float(layer.customProperty("labeling/fontSize","11"))
      
      if layer.customProperty("labeling/scaleVisibility")=="true" or str(layer.customProperty("labeling/scaleVisibility"))=="True":
        try: # ça plante si scaleMin ou scaleMax pas défini :
          scaleMin = float( layer.customProperty("labeling/scaleMin","") )
          scaleMax = float( layer.customProperty("labeling/scaleMax","") )
          scaleNow = canvas.scale()
          if scaleNow<scaleMin: # l'etiquette ne s'afficherait pas !
            labelFeature['LblScalMin'] = ""
          else: 
            labelFeature['LblScalMin'] = layer.customProperty("labeling/scaleMin","")
          if scaleNow>scaleMax: # l'etiquette ne s'afficherait pas !
            labelFeature['LblScalMax'] = ""
          else: 
            labelFeature['LblScalMax'] = layer.customProperty("labeling/scaleMax","")
          ###choix=QMessageBox.question(self.iface.mainWindow(), u"EasyCustomLabeling", u"A l'échelle actuelle de la carte, cette étiquette ne va pas s'afficher car le seuil de visibilité a été défini. Voulez-vous annuler ce seuil pour afficher l'étiquette ?", QMessageBox.Yes | QMessageBox.No, QMessageBox.Yes)  if not choix==QMessageBox.Yes:
          if self.vuScaleInfo:
            self.iface.messageBar().pushMessage("!!", u"Cette étiquette ne va pas s'afficher à toutes les échelles. Pour changer son seuil de visibilité, utiliser le bouton [Modifier l'étiquette]", level=0, duration=2)
          else: # le 1er affichage dure plus longtemps :
            self.iface.messageBar().pushMessage("!!", u"Cette étiquette ne va pas s'afficher à toutes les échelles. Pour changer son seuil de visibilité, utiliser le bouton [Modifier l'étiquette]", level=0, duration=5)
            self.vuScaleInfo = True
        except: pass
          
      if layer.customProperty("labeling/fontBold")=="true" or str(layer.customProperty("labeling/fontBold"))=="True":
        labelFeature['LblBold'] = True
      try:
        redc = int(layer.customProperty("labeling/textColorR"))
        greenc = int(layer.customProperty("labeling/textColorG"))
        bluec = int(layer.customProperty("labeling/textColorB"))
        alphac = int(layer.customProperty("labeling/textColorA"))
        couleur = QColor(redc, greenc, bluec, alphac)
        labelFeature['LblColor'] = couleur.name()
      except:
        labelFeature['LblColor'] = "#000000"
      labelFeature['LblFont'] = layer.customProperty("labeling/fontFamily")
      # Tampon :
      if layer.customProperty("labeling/bufferDraw")=="true" or str(layer.customProperty("labeling/bufferDraw"))=="True":
        labelFeature['LblBufDraw'] = True
        labelFeature['LblBufSize'] = float(layer.customProperty("labeling/bufferSize"))
        try:
          redc = int(layer.customProperty("labeling/bufferColorR"))
          greenc = int(layer.customProperty("labeling/bufferColorG"))
          bluec = int(layer.customProperty("labeling/bufferColorB"))
          alphac = int(layer.customProperty("labeling/bufferColorA"))
          couleur = QColor(redc, greenc, bluec, alphac)
          labelFeature['LblBufCol'] = couleur.name()
        except:
          labelFeature['LblBufCol'] = "#ffffff"
      labelFeature['LblRot'] = lblRotation # reproduit la rotation de l'etiquette originale
    
    canvas.freeze(1)
    labelLayerProvider.addFeatures( [ labelFeature ] )
    ## labelMapLayer = QgsMapLayerRegistry.instance().addMapLayer(labelLayer, True)  # adds map layer to map registry
    # activates editing
    self.iface.setActiveLayer(labelLayer)
    labelLayer.startEditing()
    if not self.iface.actionToggleEditing().isChecked():  self.iface.actionToggleEditing().trigger()
    
    # ne plus afficher l'étiquette "traditionnelle" de ce feature :
    show = layer.customProperty("labeling/dataDefined/Show", "")
    layer.setCustomProperty("labeling/dataDefined/Show", "")
    if show==None or show=="": #  ou  u'1~~1~~not $id in (0,3,9)~~'
      layer.setCustomProperty("labeling/dataDefined/Show", u'1~~1~~not $id in ('+ str(fid) +')~~')
    elif show.find('not $id in (')==-1 or show.find(')')==-1 :
      layer.setCustomProperty("labeling/dataDefined/Show", u'1~~1~~not $id in ('+ str(fid) +')~~')
    else:
      li = show.split('(')[1].split(')')[0].split(',')
      if li[0].isalnum():
        li.append( unicode( fid ) ) # on ajoute l'id du feat
        layer.setCustomProperty("labeling/dataDefined/Show", u'1~~1~~not $id in ('+ ','.join(li) +u')~~')
      else:
        layer.setCustomProperty("labeling/dataDefined/Show", u'1~~1~~not $id in ('+ str(fid) +')~~')

    #redraws registry and mapcanvas.
    labelLayer.updateExtents()
    if hasattr(labelLayer, "setCacheImage"): labelLayer.setCacheImage(None)
    labelLayer.triggerRepaint()
    QgsMapLayerRegistry.instance().clearAllLayerCaches () #clean cache to allow mask layer to appear on refresh
    # if sourceLayer and not keepUserSelection : sourceLayer.removeSelection()
    canvas.freeze(0)
    canvas.refresh()
    self.iface.legendInterface().refreshLayerSymbology( labelLayer )
    
    self.boutonDeplacer.trigger() # passe en mode "Déplacement d'étiquette"  ##self.finModifLabel()

  def finModifLabel(self): # fin de l'action modifLabel
    try: self.canvas.unsetMapTool(self.mapTool)
    except: pass
    try: QObject.disconnect(self.iface.mapCanvas(), SIGNAL( "mapToolSet(QgsMapTool *)" ), self.desactiverRotation )
    except: pass
    self.actionModifLabel.setChecked(False)

  def createLabelLayer(self): ### creates new memory labelLayer and provider
    layReg = QgsMapLayerRegistry.instance()
    liste = layReg.mapLayersByName(self.labelLayerName)
    if len(liste)>0: # si couche deja creee :
      return liste[0]
    
    labelLayer = QgsVectorLayer( "LineString", "Label", "memory") # creates lines  memory layer - test v0.6
    labelLayer.setLayerName(self.labelLayerName)
    ###labelLayer.setCrs(sourceLayer.crs()) appliquer le CRS du projet
    labelLayerProvider = labelLayer.dataProvider() 
    labelLayerFields = labelLayerProvider.fields()
    
    # # adds specific fields for data driven custom labeling
    labelFields = [
                    QgsField( "layerId", QVariant.String, "varchar", 255),
                    QgsField( "featId", QVariant.Int, "integer", 4),
                    QgsField( "LblField", QVariant.String, "varchar", 255),
                    QgsField( "LblX", QVariant.String, "varchar", 255),
                    QgsField( "LblY", QVariant.String, "varchar", 255),
                    QgsField( "LblScalMin", QVariant.String, "varchar", 255),
                    QgsField( "LblScalMax", QVariant.String, "varchar", 255),
                    QgsField( "LblAlignH", QVariant.String, "varchar", 12),
                    QgsField( "LblAlignV", QVariant.String, "varchar", 12),
                    QgsField( "LblSize", QVariant.Double, "numeric", 10, 2),
                    QgsField( "LblRot", QVariant.Double, "numeric", 10, 2),
                    QgsField( "LblBold", QVariant.Int, "integer", 1),
                    QgsField( "LblItalic", QVariant.Int, "integer", 1),
                    QgsField( "LblColor", QVariant.String, "varchar", 7),
                    QgsField( "LblFont", QVariant.String, "varchar", 64),
                    QgsField( "LblUnder", QVariant.Int, "integer", 1),
                    QgsField( "LblStrike", QVariant.Int, "integer", 1),
                    QgsField( "LblShow", QVariant.Int, "integer", 1),
                    QgsField( "LblShowCO", QVariant.Int, "integer", 1),
                    QgsField( "LblAShow", QVariant.Int, "integer", 1),
                    QgsField( "LblBufDraw", QVariant.Int, "integer", 1),
                    QgsField( "LblBufSize", QVariant.Double, "numeric", 10, 2),
                    QgsField( "LblBufCol", QVariant.String, "varchar", 7)
                    ]
    r = labelLayerProvider.addAttributes(labelFields)
    
    labelMapLayer = layReg.addMapLayer(labelLayer, True)  # adds map layer to map registry
    
    # #generic labeling properties
    labelMapLayer.setCustomProperty("labeling/fieldName", "LblField" )  # TODO replace default value with dialog input
    labelMapLayer.setCustomProperty("labeling","pal" ) # new gen labeling activated
    labelMapLayer.setCustomProperty("labeling/fontSize","8" ) # default value
    labelMapLayer.setCustomProperty("labeling/multiLineLabels","true" ) # default value
    labelMapLayer.setCustomProperty("labeling/enabled","true" ) # default value
    #labelMapLayer.setCustomProperty("labeling/displayAll", "true") # force all labels to display
    labelMapLayer.setCustomProperty("labeling/priority", "10") # puts a high priority to labeling layer
    labelMapLayer.setCustomProperty("labeling/multilineAlign","1") # multiline align to center
    #labelMapLayer.setCustomProperty("labeling/wrapChar", "%") # multiline break symbol
    #line properties case
    labelMapLayer.setCustomProperty("labeling/placement", "2") ##labelMapLayer.setCustomProperty("labeling/placement","4") 
    labelMapLayer.setCustomProperty("labeling/placementFlags", "9")
    labelMapLayer.setCustomProperty("labeling/scaleVisibility", "true")
    labelMapLayer.setCustomProperty("labeling/upsidedownLabels", "1")
    labelMapLayer.setCustomProperty("labeling/displayAll", "true")
    
    # #data defined properties
    labelMapLayer.setCustomProperty("labeling/dataDefined/PositionX", "1~~0~~~~LblX")
    labelMapLayer.setCustomProperty("labeling/dataDefined/PositionY", "1~~0~~~~LblY")
    labelMapLayer.setCustomProperty("labeling/dataDefined/MinScale", "1~~0~~~~LblScalMin") ###
    labelMapLayer.setCustomProperty("labeling/dataDefined/MaxScale", "1~~0~~~~LblScalMax") ###
    labelMapLayer.setCustomProperty("labeling/dataDefined/Hali", "1~~0~~~~LblAlignH")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Vali","1~~0~~~~LblAlignV")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Size" ,"1~~0~~~~LblSize")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Rotation" ,"1~~0~~~~LblRot" )
    labelMapLayer.setCustomProperty("labeling/dataDefined/Bold" , "1~~0~~~~LblBold")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Italic" ,"1~~0~~~~LblItalic")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Underline" ,"1~~0~~~~LblUnder")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Strikeout" ,"1~~0~~~~LblStrike")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Color" ,"1~~0~~~~LblColor")
    labelMapLayer.setCustomProperty("labeling/dataDefined/Family" ,"1~~0~~~~LblFont") 
    labelMapLayer.setCustomProperty("labeling/dataDefined/Show", "1~~0~~~~LblShow")
    labelMapLayer.setCustomProperty("labeling/dataDefined/AlwaysShow", "1~~0~~~~LblAShow")
    labelMapLayer.setCustomProperty("labeling/dataDefined/BufferColor", "1~~0~~~~LblBufCol")
    labelMapLayer.setCustomProperty("labeling/dataDefined/BufferDraw", "1~~0~~~~LblBufDraw")
    labelMapLayer.setCustomProperty("labeling/dataDefined/BufferSize", "1~~0~~~~LblBufSize")
    # sets a tag in abstract metadata to help reconnect layer on project read (avoid having to read data, which causes problem with mem Layer Saver still populating data)
    labelMapLayer.setAbstract('<labeling_layer> do not remove - used by EasyCustomLabeling plugin to reconnect labeling layers')

    # connects label layer attributes values changed to labelLayerModified function 
    labelLayer.attributeValueChanged.connect(self.ECL.labelLayerModified)
    
    ##self.iface.actionToggleEditing().trigger()
    ##iface.messageBar().pushMessage("Avertissement", QtGui.QApplication.translate("EasyCustomLabeling", "Turn on editing mode on label layer to start customizing labels"), level=0, duration=3)

    return labelMapLayer

  def unload(self):
    self.toolBar.removeAction( self.actionModifLabel )
    self.finModifLabel()

