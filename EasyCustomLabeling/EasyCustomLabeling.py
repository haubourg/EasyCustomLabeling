# -*- coding: iso-8859-1 -*-
""" 
/***************************************************************************
Name                  :EasyCustomLabeling
Description          : plugin allowing a quick duplication of layer, ready to start manual customisation of labels (position, size, colors.. ) based on data fields
Date                 : 23/01/204
copyright            : (C) 2013 by regis haubourg - Agence de l'eau Adour Garonne
version              : 0.5  port to QGIS v2 API and new SIP version
email                : regis dot haubourg at eau-adour-garonne.fr
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
#Python ressources
import datetime
import resources
import os.path

# Import the PyQt and QGIS libraries
from PyQt4 import QtGui
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.utils import *

# Import the code for the dialog
from EasyCustomLabelingDialog import EasyCustomLabelingDialog

# load translation libraries

class EasyCustomLabeling(QObject):
# class EasyCustomLabeling:

  def __init__(self, iface):
    # Save reference to the QGIS interface
    QObject.__init__(self) #init from  QObject parent
    self.iface = iface
    self.qgsVersion = unicode(QGis.QGIS_VERSION_INT)
    print '# EasyCustomLabeling debug trace: plugin loaded at ' + str(datetime.datetime.now())
    #QgsMessageLog.logMessage('# EasyCustomLabeling debug trace: plugin loaded at ' + str(datetime.datetime.now()))
    # For i18n support, finds locale and translates with i18.qm files
    pluginName = 'EasyCustomLabeling'
    userPluginPath = QFileInfo(QgsApplication.qgisUserDbFilePath()).path() + "/python/plugins/"+ pluginName
    systemPluginPath = QgsApplication.prefixPath() + "/python/plugins/"+ pluginName
    overrideLocale = bool(QSettings().value("locale/overrideFlag", False))
     
    #print 'userPluginPath: '+ userPluginPath
    if not overrideLocale:
        localeFullName = QLocale.system().name()
    else:
        localeFullName = QSettings().value("locale/userLocale", "")

    if QFileInfo(userPluginPath).exists():
        translationPath = userPluginPath + "/i18n/"+pluginName+"_" + localeFullName + ".qm"
    else:
        translationPath = systemPluginPath + "/i18n/"+pluginName+"_"  + localeFullName + ".qm"
    # print translationPath
    self.localePath = translationPath

    if QFileInfo(self.localePath).exists():
        self.translator = QTranslator()
        self.translator.load(self.localePath)
        QCoreApplication.installTranslator(self.translator)
        # print('localepath exists')
    # print('translation debug info :' + ' overrideLocale=' + str(overrideLocale) + '; localeFullName=' +localeFullName + '; translationPath=' + translationPath )

   

  def initGui(self):
    #Create actions triggered by the plugin
    self.actionLabel = QAction( QIcon( ":/plugins/EasyCustomLabeling/icon.png" ), QtGui.QApplication.translate("EasyCustomLabeling", "Generates a layer ready for custom labeling tools", None, QtGui.QApplication.UnicodeUTF8), self.iface.mainWindow() )
    
    self.actionAbout = QAction(QIcon(os.path.join( os.path.dirname(__file__), "icon.png" )), QtGui.QApplication.translate("EasyCustomLabeling", "Help", None, QtGui.QApplication.UnicodeUTF8), self.iface.mainWindow())

    # connect the action to the run method
    self.actionAbout.triggered.connect(self.runAbout)
    self.actionLabel.triggered.connect(self.runLabel)

   # adds buttons to labeling toolbar if exists
    self.toolBar = self.iface.pluginToolBar()
    toolbars = self.iface.mainWindow().findChildren(QToolBar)
    toolbarFound = False
    #checks all existing toolbars for labeling toolbar
    for toolbar in toolbars:
        if toolbar.objectName() == "mLabelToolBar":
            #QMessageBox.warning( None, "DEBUG", "LabelToolBar Found")
            self.toolBar = toolbar
            #saves mLabelToolbar for unload plugin action
            global actions
            actions = self.toolBar.actions()
            #append easy labeling actions to list
            actions_easylabel = actions
            actions_easylabel.append(self.actionLabel)
            #clear all actions of toolbar
            self.toolBar.clear()
            i=0
            for a in actions:
                self.toolBar.addAction(actions_easylabel[i])
                i=i+1
            toolbarFound = True

    if not toolbarFound :
        QMessageBox.warning( None, "DEBUG", "labeling toolbar not found. Please use menu Extension/Easy Custom Labeling")

    self.iface.addPluginToMenu( "&" + QtGui.QApplication.translate("EasyCustomLabeling", "Easy Custom labeling", None, QtGui.QApplication.UnicodeUTF8), self.actionLabel)
    self.iface.addPluginToMenu( "&" + QtGui.QApplication.translate("EasyCustomLabeling", "Easy Custom labeling", None, QtGui.QApplication.UnicodeUTF8), self.actionAbout)

    #connects labelLayerCheck class to QgisInterface::currentLayerChanged signal (QgsMapLayer * layer)   
    #self.iface.currentLayerChanged.connect(self.labelLayerChecked)
    proj = QgsProject.instance()

    proj.readProject.connect(self.labelLayerChecked)  

    # print 'init GUI connecting to readProject '
    # QObject.connect(self.iface, SIGNAL("currentLayerChanged ( QgsMapLayer *)"), self.labelLayerChecked)

    #disconnects if label layers closed? 

  def labelLayerChecked(self):
    
    # print 'project loaded. labelLayerchecked triggered '
    #  Checks if some labeling layers are already there, and replug, if not already  labelLayerModified events

    layers = iface.legendInterface().layers()
    # print layers
    tag =''
    connectSuccess = 'f'
   
    for layer in layers:
        tag =''
        # print layer.name() 
      
        if not layer.type() == 0 : 
            # print 'non vector layer > quit'
            return
        tag = layer.abstract()
        # print 'tag: ' + tag
        if "<labeling_layer>" in tag or "Label_" in layer.name() :
            # print 'ECL Debug: labeling layer found > reconnecting modification events to callout drawing'
            layer.attributeValueChanged.connect(self.labelLayerModified)
            connectSuccess = 't'
        # else :
            # return

    # if connectSuccess == 'f':
        # iface.messageBar().pushMessage("Error", QtGui.QApplication.translate("EasyCustomLabeling", "EasyCustomLabeling Error: For some reason, at least one labeling layer could not be reconnected to plugin events. Callouts line will not follow when moving label", None, QtGui.QApplication.UnicodeUTF8), level=2, duration=10)

        
      


       
  # @pyqtSlot(int, int, str)
  def labelLayerModified(self, FeatureId, idx, variant):
        sender = self.sender()
        # print ' declenche le signal' 
        # editedLayer = self.iface.activeLayer()
        if not sender or not sender.type()==0:
            return
            # print 'no sender caught or non vector layer'
     
        editedLayer = sender 
        
        dp = editedLayer.dataProvider()

        LblXok = False
        LblYok = False
        LblAlignHok= False
        LblAlignVok= False
        LblShowCOok= False
        LblShowok= False

        for f in dp.fields():
            if f.name() == 'LblX':
                LblXok = True
                # print 'LblXok'
            elif f.name() == 'LblY':
                LblYok = True  
                # print 'LblYok'
            elif f.name() == 'LblAlignH':
                LblAlignHok = True 
                # print 'LblAlignHok'
            elif f.name() == 'LblAlignV':
                LblAlignVok = True  
                # print 'LblAlignVok'
            elif f.name() == 'LblShowCO':
                LblShowCOok = True
                # print 'LblShowCOok' 
            elif f.name() == 'LblShow':
                LblShowok = True
                # print 'LblShowok'

       
        #gets new attrib and geom > retune WKT with new label XY
        editFeature = QgsFeature()
        if editedLayer == None or editedLayer.getFeatures(QgsFeatureRequest().setFilterFid(FeatureId)).nextFeature(editFeature) is False  :
            return
        else:
            # print 'traitement signal' 
            editGeom = editFeature.geometry()
            WKTLine = editGeom.exportToWkt()
            editLayerProvider = editedLayer.dataProvider()
            fields = editLayerProvider.fields()
            fieldname= fields[idx].name()
            originX = editGeom.asPolyline()[0].x()
            originY = editGeom.asPolyline()[0].y()
            finalX  = editGeom.asPolyline()[len(editGeom.asPolyline())-1].x()
            finalY  = editGeom.asPolyline()[len(editGeom.asPolyline())-1].y()
            # print ('signal edited param: fieldname ' + fieldname +'; variant '+ str(variant) + '; FeatureId' +str(FeatureId) +'; originX '+ str(originX) + '; originY ' + str(originY) + '; finalX ' +str(finalX)+ '; finalY ' + str(finalY))

            scale = iface.mapCanvas().scale()
            radius_threshold = 1 #cm on screen


            if fieldname == 'LblX' :
                if variant==NULL :   #case when user unpins the label > sets arrow back to arrow based on point location
                    # print ('lblX returns NULL test')
                    WKTLine = 'LINESTRING('+ str(originX+0.0001) +' '+  str(originY +0.0001 ) + ' , '+ str(originX)+ ' ' +str(originY)+ ')'
                    editedLayer.changeGeometry(FeatureId, QgsGeometry.fromWkt( WKTLine ))
                    return
                if isinstance(variant, basestring): # test case, when editing from attribute table, variant is sent as text! converts to float
                    variant = float(variant)
                newFinalX = variant
                newFinalY = finalY
                
                newWKT = 'LINESTRING('+ str(originX) +' '+  str(originY) + ' ,' + str(newFinalX)+ ' ' +str(finalY)+ ')'  
                coLength =  QgsGeometry.fromWkt( newWKT ).length()
                coscreenlength  = 100* coLength / scale 

                if newFinalX < originX and coscreenlength >= radius_threshold:
                    # middleX = originX - abs(finalY - originY ) 
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblAlignH'), 'Right')
                    
                elif newFinalX > originX and coscreenlength >= radius_threshold:
                    # middleX = originX + abs(finalY - originY ) 
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblAlignH'), 'Left')
                else :
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblAlignH'), 'Center')
                     
                editedLayer.changeGeometry(FeatureId, QgsGeometry.fromWkt( newWKT ))

                
            if fieldname == 'LblY':
                if variant == NULL  :   #case when user unpins the label > sets arrow back to arrow based on point location
                    # print ('lblX returns NULL test')      
                    WKTLine = 'LINESTRING('+ str(originX+0.0001) +' '+  str(originY +0.0001 ) + ' , '+ str(originX)+ ' ' +str(originY)+ ')'
                    editedLayer.changeGeometry(FeatureId, QgsGeometry.fromWkt( WKTLine ))
                    return
                if isinstance(variant, basestring):  # test case, when editing from attribute table, variant is sent as text! converts to float
                    variant = float(variant)
                newFinalX = finalX
                newFinalY = variant               
               
                deltaY =  abs(newFinalY - originY )
                deltaX =  abs(newFinalX - originX )


            
            
                

                if newFinalX < originX   and newFinalY > originY    and  deltaY < deltaX : # cas quandran ul 1 ok
                    middleX = originX - deltaY
                    middleY = newFinalY
                    
                elif newFinalX < originX and newFinalY > originY    and  deltaY >= deltaX : #cas quadrant ul 2 ok 
                    middleX = originX 
                    middleY = originY + deltaX
                    
                if newFinalX < originX   and newFinalY <= originY    and  deltaY < deltaX  : # cas quandran ll 1
                    middleX = originX - deltaY
                    middleY = newFinalY 
                    
                elif newFinalX < originX and newFinalY <= originY    and  deltaY >= deltaX : #cas quadrant ll 2
                    middleX = originX 
                    middleY = originY - deltaX
                    
                if newFinalX >= originX and newFinalY > originY     and deltaY > deltaX  : # cas quandran ur alternatif
                    middleX = originX 
                    middleY = newFinalY - deltaX
                    
                elif newFinalX >= originX  and newFinalY > originY    and deltaY < deltaX: #cas quadrant ur nominal ok
                    middleX = originX + deltaY
                    middleY = newFinalY
                    
                if newFinalX >= originX and newFinalY <= originY    and deltaY > deltaX  : # cas quandran lr alternatif
                    middleX = originX
                    middleY = originY - deltaX
                    
                elif newFinalX >= originX and newFinalY <= originY    and deltaY < deltaX: #cas quadrant lr nominal
                    middleX = originX + deltaY
                    middleY = newFinalY

                
                newWKT = 'LINESTRING('+ str(originX) +' '+  str(originY) + ' , '+ str(middleX)+' '+ str(middleY) +' ,' + str(newFinalX)+ ' ' +str(newFinalY)+ ')'
                editedLayer.changeGeometry(FeatureId, QgsGeometry.fromWkt( newWKT ))
                
                 # change visibility status  if label is close to origin point (screen distance tolerance)
            
               
                coLength =  QgsGeometry.fromWkt( newWKT ).length()
                coscreenlength  = 100* coLength / scale 

                if coscreenlength < radius_threshold :
                    # print 'under radius_threshold'
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblShowCO'), '0')
                else :
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblShowCO'), '1')

                          

           #if label is masked or shown , does the same for CallOut
            elif fieldname == 'LblShow':   
                if variant == 0 :
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblShowCO'), '0')
                else :
                    editedLayer.changeAttributeValue(FeatureId, editLayerProvider.fieldNameIndex('LblShowCO'), '1')
                    
     

            else :
                return False, "fieldname not in LblX or LblY."
           
            # refresh map layer - attempt to solve issue when callout show only after refreshing labeling parameters
            
            editedLayer.triggerRepaint() 
        
  def unload( self):
    # disconnects signals todo
    # self.iface.currentLayerChanged.disconnect()

    # Remove the plugin menu item and icon
    self.toolBar.removeAction( self.actionLabel)
    self.iface.removePluginMenu( "&" + QtGui.QApplication.translate("EasyCustomLabeling", "Easy Custom labeling", None, QtGui.QApplication.UnicodeUTF8), self.actionLabel)
    self.iface.removePluginMenu( "&" + QtGui.QApplication.translate("EasyCustomLabeling", "Easy Custom labeling", None, QtGui.QApplication.UnicodeUTF8), self.actionAbout)

    #remove action from mLabelToolBar if exists
    toolbars = self.iface.mainWindow().findChildren(QToolBar)

  

    for toolbar in toolbars:
        if toolbar.objectName() == "mLabelToolBar":
            self.toolBar = toolbar
            # You have to save all of the actions from the toolbar
            actions = self.toolBar.actions()
            # then, you clear the complete toolbar
            self.toolBar.clear()
            # and you re-add only the actions yo uwant
            i=0
            for a in actions:
                self.toolBar.addAction(actions[i])
                i=i+1

             
   
#main action that duplicates the layer
  def runLabel(self):
    self.iface.mapCanvas().freeze(1)
    sourceLayer = self.iface.activeLayer()
   
    # keepUserSelection = False
    try :
        if not sourceLayer:
           iface.messageBar().pushMessage("Error", QtGui.QApplication.translate("EasyCustomLabeling", "There is no layer currently selected, \n please click on the vector layer you need to label", None, QtGui.QApplication.UnicodeUTF8), level=0, duration=3)
           return
        if not sourceLayer.type() == sourceLayer.VectorLayer:
           iface.messageBar().pushMessage("Error", QtGui.QApplication.translate("EasyCustomLabeling", "Current active layer is not a vector layer. \n Please click on the vector layer you need to label", None, QtGui.QApplication.UnicodeUTF8), level=0, duration=3)
           return
      
        # detect if selection exists on that layer
        #debug
        nbSelectedObjects = sourceLayer.selectedFeatureCount()
        # print '# nbSelectedObjects: ' + str(nbSelectedObjects)
        ret = 0
        if not nbSelectedObjects == 0 :
            #dialog to ask if user wants to use current selection or not
            msgBox = QMessageBox() 
            msgBox.setIcon(QtGui.QMessageBox.Question)
            msgBox.setWindowTitle ("EasyCustomLabeling")
            msgBox.setText(QtGui.QApplication.translate("EasyCustomLabeling", "Use %n selected object(s) only for labeling ?" , None, QtGui.QApplication.UnicodeUTF8, nbSelectedObjects))
            msgBox.setStandardButtons(QMessageBox.Yes | QMessageBox.No |QMessageBox.Cancel)
            msgBox.setDefaultButton(QMessageBox.Ok)
            
            ret = msgBox.exec_() #ret_val = 16384 si OK, 4194304 sinon
            
            if ret == 4194304 : # cancel  button finish program
                self.iface.mapCanvas().freeze(0)
                print 'dialog keep selection: ' + str(ret)
                return
            elif ret == 65536  :  # No button65536  use entire layer
                print 'use entire layer'
            elif ret == 16384 :
                print 'use selection'
               
                
        nbSelectedObjects = sourceLayer.selectedFeatureCount()

        if sourceLayer.selectedFeatureCount() > 500 :  #alert if  many objects selected

            msgBox = QMessageBox()
            msgBox.setText(QtGui.QApplication.translate("EasyCustomLabeling","Your layer contains many objects. Continue anyway?", None, QtGui.QApplication.UnicodeUTF8))
            msgBox.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
            msgBox.setDefaultButton(QMessageBox.Ok) # This function was introduced in Qt 4.3.
            ret2 = msgBox.exec_() #ret_val = 1024 si OK, 4194304 sinon
            # print 'dialog many objects: ' + str(ret)
            if ret2 != 1024:
                print 'user cancel on too many object question'
                return


                
              
        #end of general tests and user interaction --------------------------------------------------
        sourceLayerProvider = sourceLayer.dataProvider()
        sourceLayerFields = sourceLayerProvider.fields()
        
        feat = QgsFeature()
        
        #asks for default field to use as labeling (thanks to Victor Axbom Layer to labeled layer plugin)
        # create the dialog
        self.dlg = EasyCustomLabelingDialog(sourceLayerProvider)
        ret_dlg_field = self.dlg.exec_()
        #cancels if user cancels dialog:
        if ret_dlg_field == 0 :  
            return 
        # show the dialog
        # if self.dlg.exec_():
        #     return True# print 'dialog execution'
        # else :
        #     return

            # self.iface.mapCanvas().refresh()       
            # returns self.dlg.labelfield.currentText() 
        
    # creates new memory labelLayer and provider
        #labelLayer = QgsVectorLayer( "Point", "Label", "memory") # creates points  memory layer
        labelLayer = QgsVectorLayer( "LineString", "Label", "memory") # creates lines  memory layer - test v0.6
        labelLayer.setLayerName("Label_"+sourceLayer.name())
        labelLayer.setCrs(sourceLayer.crs())
        labelLayerProvider = labelLayer.dataProvider() 
        labelLayerFields = labelLayerProvider.fields()
        # print 'nom du champ 1 : ' + str(sourceLayerFields[1].name())
        #convert field map to a list 
        sourceLayerFieldsList =[]
        for f in sourceLayerFields:
            # print 'debug date : champ: ' + str(f.name()) + 'type_champ ' + str(f.typeName()) 
            if f.type() == 14:
                f.setType(10)
            sourceLayerFieldsList.append(f)
        #print 'sourceLayerFieldsList: ' + str(sourceLayerFieldsList)
        #copy sourceLayer fields into it
        r=labelLayerProvider.addAttributes(sourceLayerFieldsList)
        #print 'ajout des champs source: ' + str(r)

        # # adds specific fields for data driven custom labeling
        labelFields = [
                        QgsField( "LblField", QVariant.String, "varchar", 255),
                        QgsField( "LblX", QVariant.String, "varchar", 255) ,
                        QgsField( "LblY", QVariant.String, "varchar", 255) ,
                        QgsField( "LblAlignH", QVariant.String, "varchar", 12),
                        QgsField( "LblAlignV", QVariant.String, "varchar", 12),
                        QgsField( "LblSize", QVariant.Int, "integer", 2 ),
                        QgsField( "LblRot", QVariant.Double, "numeric", 10, 2),
                        QgsField( "LblBold", QVariant.Int, "integer", 1),
                        QgsField( "LblItalic", QVariant.Int, "integer", 1),
                        QgsField( "LblColor", QVariant.String, "varchar", 7),
                        QgsField( "LblFont", QVariant.String, "varchar", 64),
                        QgsField( "LblUnder", QVariant.Int, "integer", 1),
                        QgsField( "LblStrike", QVariant.Int, "integer", 1),
                        QgsField( "LblShow", QVariant.Int, "integer", 1),
                        QgsField( "LblShowCO", QVariant.Int, "integer", 1),
                        QgsField( "LblAShow", QVariant.Int, "integer", 1)
                        ]
                        
        r=labelLayerProvider.addAttributes(labelFields)
        
        # print 'ajout des champs de labeling: ' + str(r)
        
        labelFields = labelLayerProvider.fields() # replace labelFields with source FIELDS + labelingFields
        
        # iterate objects of layer to load new destination labelLayerProvider 
        # print 'start loop on source layer attributes'
        
        if ret == 16384 : 
            selectedFeatures = sourceLayer.selectedFeatures()
        else :
            selectedFeatures =  sourceLayer.getFeatures()

        for sourceFeat in selectedFeatures:
            labelLayerFields = labelLayerProvider.fields()
            # print 'length of field map: ' + str(len(labelLayerFields))
            
            # for f in labelLayerFields:
                # print str(f.name())
            labelFeature = QgsFeature(labelLayerFields)
            geom = sourceFeat.geometry()
            #labelFeature.setGeometry(QgsGeometry.fromPoint(geom.centroid().asPoint())) # create geometry as centroid
            WKTLine = 'LINESTRING('+ str(geom.centroid().asPoint().x() +0.0001) +' '+  str(geom.centroid().asPoint().y() ) + ' , '+ str(geom.centroid().asPoint().x())+ ' ' +str(geom.centroid().asPoint().y())+ ')'
            # print 'WKTLine: '+ WKTLine
            labelFeature.setGeometry(QgsGeometry.fromWkt( WKTLine )) # create geometry as centroid
            
            attrs = sourceFeat.attributes()
            sourceFieldCount = len(attrs)
            # print 'length of copied attributes : '+ str(len(attrs))
            # print 'attributs sources ' + str(attrs)
            for i, a in enumerate(attrs):
                #print str(i) + ' ' + str(a)
                labelFeature[i] = a
            #labelFeature.setAttributes(attrs) 
            
            labelFeature['LblField'] = sourceFeat[self.dlg.labelfield.currentText()] #gets fields chosen by user in dialog
            labelFeature['LblShow'] = 1  
            labelFeature['LblSize'] = 9
            labelFeature['LblAShow'] = 1
            labelFeature['LblAlignV'] = 'Half'
            labelFeature['LblAlignH'] = 'Center'
                      # displayFieldName = sourceLayer.displayField()
            # if displayFieldName :
            #     # print ' valeur du champ label : ' + str(sourceFeat[displayFieldName])
            #     labelFeature['LblField'] = str(sourceFeat[displayFieldName])    
            # else:
            #     labelFeature['LblField'] = str(sourceFeat[0])    
            #-- prefill some attributes examples (default = deactivated)
            # labelFeature['LblX'] = str(geom.centroid().asPoint().x()) # coord x
            # labelFeature['LblY'] = str(geom.centroid().asPoint().y()) # coord x
          
            labelLayerProvider.addFeatures( [ labelFeature ] )
            labelLayer.updateExtents()

        labelMapLayer = QgsMapLayerRegistry.instance().addMapLayer(labelLayer, True)  # adds map layer to map registry

        # # customize style
        rendererV2 = labelMapLayer.rendererV2()
        # creates default style for label (transparent point, default labeling )
        style_path = os.path.join( os.path.dirname(__file__), "label_style.qml" )
        (errorMsg, result) = labelMapLayer.loadNamedStyle( style_path )
        
        # for QGIS 2.1 and > , use data defined pen size >0 with $length / $scale > 0.05 to display arrows only 
         # or use a flag , and compute it to 1 if label is moved.  how to hide easily if needed ? 
       
        
        ## parameters for advanced labeling -- picked up from a qgs model file
       
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
        labelMapLayer.setCustomProperty("labeling/placement","4" ) 
        
        # #data defined properties
        labelMapLayer.setCustomProperty("labeling/dataDefined/PositionX", "1~~0~~~~LblX")  
        labelMapLayer.setCustomProperty("labeling/dataDefined/PositionY", "1~~0~~~~LblY")  
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
        # sets a tag in abstract metadata to help reconnect layer on project read (avoid having to read data, which causes problem with mem Layer Saver still populating data)
        labelMapLayer.setAbstract('<labeling_layer> do not remove - used by EasyCustomLabeling plugin to reconnect labeling layers')
        labelLayer.updateExtents()

        # activates editing
        self.iface.setActiveLayer(labelMapLayer )
        labelLayer.startEditing()
        self.iface.actionToggleEditing().trigger()
     
        # connects label layer attributes values changed to labelLayerModified function 
        labelLayer.attributeValueChanged.connect(self.labelLayerModified)
        
         #redraws registry and mapcanvas.
        if hasattr(labelMapLayer, "setCacheImage" ) and QGis.QGIS_VERSION_INT < 20600:
            labelMapLayer.setCacheImage(None )
               
        labelMapLayer.triggerRepaint()
        self.iface.legendInterface().refreshLayerSymbology( labelMapLayer )
        self.iface.actionToggleEditing().trigger()
        iface.messageBar().pushMessage("Avertissement", QtGui.QApplication.translate("EasyCustomLabeling", "Turn on editing mode on label layer to start customizing labels"), level=0, duration=3)

    except:
        # print 'runLabel exception loop '
        # if sourceLayer and not keepUserSelection :
        #     sourceLayer.removeSelection()
        print 'exception caught'
        raise
        
    finally :
        if QGis.QGIS_VERSION_INT < 20600:
            QgsMapLayerRegistry.instance().clearAllLayerCaches () #clean cache to allow mask layer to appear on refresh
           
        # if sourceLayer and not keepUserSelection :
        #     sourceLayer.removeSelection()
            
        self.iface.mapCanvas().freeze(0)
        self.iface.mapCanvas().refresh()
        
        #QMessageBox.warning( None, "Avertissement", 'Pensez a enregistrer les editions de votre couche d étiquettes avant de quitter')
        # print 'end of runlabel Action'
        
  def runAbout(self):
    #QMessageBox.about(None, QtGui.QApplication.translate("EasyCustomLabeling", "texte about", None, QtGui.QApplication.UnicodeUTF8), QtGui.QApplication.translate("EasyCustomLabeling", "<strong>Easy custom labeling v. 0.4,  Regis Haubourg (AEAG) - 2012. \n \n Action 1:This plugin duplicate a layer, transforming geometries into centroids, \n and adds all required fields for custom labeling. \n \n Action 2 - Arrow function draws lines between label and original object \n \n WARNING! This plugin requires to use Memory Layer Saver plugin if you want to save labels with project. \n Plugin memory layer saver 2.0 or higher is needed because of new gml behaviour (GDAL 1.9) \n \n Please send bugs or features requests here : http://hub.qgis.org/projects/easycustomlabeling </strong>", None, QtGui.QApplication.UnicodeUTF8))
    try:
        QDesktopServices.openUrl(QUrl("https://github.com/haubourg/EasyCustomLabeling/wiki"))
    except:
        pass

  
