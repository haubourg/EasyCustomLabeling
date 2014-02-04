<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.0.1-Dufour" minimumScale="0" maximumScale="1e+08" minLabelScale="0" maxLabelScale="1e+08" hasScaleBasedVisibilityFlag="0" scaleBasedLabelVisibilityFlag="0">
  <renderer-v2 symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol alpha="1" type="line" name="0">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="color_expression" v="CASE WHEN  (&quot;LblShowCO&quot; = 0) OR $length &lt;1 THEN '255,255,255,0'  &#xa;WHEN (not &quot;LblShowCO&quot;) THEN '0,0,0,150'&#xa; END"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="joinstyle" v="round"/>
          <prop k="offset" v="0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="penstyle" v="solid"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width" v="0.4"/>
          <prop k="width_unit" v="MM"/>
        </layer>
      </symbol>
    </symbols>
    <rotation field=""/>
    <sizescale field="" scalemethod="area"/>
  </renderer-v2>
  <customproperties>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="236"/>
    <property key="labeling/bufferColorG" value="236"/>
    <property key="labeling/bufferColorR" value="236"/>
    <property key="labeling/bufferDraw" value="false"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="1"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferTransp" value="13"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/dataDefined/Bold" value="1~~0~~~~LblBold"/>
    <property key="labeling/dataDefined/Color" value="1~~0~~~~LblColor"/>
    <property key="labeling/dataDefined/Family" value="1~~0~~~~LblFont"/>
    <property key="labeling/dataDefined/Hali" value="1~~0~~~~LblAlignH"/>
    <property key="labeling/dataDefined/Italic" value="1~~0~~~~LblItalic"/>
    <property key="labeling/dataDefined/PositionX" value="1~~0~~~~LblX"/>
    <property key="labeling/dataDefined/PositionY" value="1~~0~~~~LblY"/>
    <property key="labeling/dataDefined/Rotation" value="1~~0~~~~LblRot"/>
    <property key="labeling/dataDefined/Show" value="1~~0~~~~LblShow"/>
    <property key="labeling/dataDefined/Size" value="1~~0~~~~LblSize"/>
    <property key="labeling/dataDefined/Strikeout" value="1~~0~~~~LblStrike"/>
    <property key="labeling/dataDefined/Underline" value="1~~0~~~~LblUnder"/>
    <property key="labeling/dataDefined/Vali" value="1~~0~~~~LblAlignV"/>
    <property key="labeling/decimals" value="0"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="LblField"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="Century"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="8"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="true"/>
    <property key="labeling/isExpression" value="false"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="2000"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/multiLineLabels" value="true"/>
    <property key="labeling/multilineAlign" value="0"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="4"/>
    <property key="labeling/placementFlags" value="0"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="0"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="10000000"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="false"/>
    <property key="labeling/shadowBlendMode" value="0"/>
    <property key="labeling/shadowColorB" value="255"/>
    <property key="labeling/shadowColorG" value="255"/>
    <property key="labeling/shadowColorR" value="255"/>
    <property key="labeling/shadowDraw" value="false"/>
    <property key="labeling/shadowOffsetAngle" value="135"/>
    <property key="labeling/shadowOffsetDist" value="1"/>
    <property key="labeling/shadowOffsetGlobal" value="true"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusUnits" value="1"/>
    <property key="labeling/shadowScale" value="100"/>
    <property key="labeling/shadowTransparency" value="36"/>
    <property key="labeling/shadowUnder" value="0"/>
    <property key="labeling/shapeBlendMode" value="8"/>
    <property key="labeling/shapeBorderColorA" value="255"/>
    <property key="labeling/shapeBorderColorB" value="128"/>
    <property key="labeling/shapeBorderColorG" value="128"/>
    <property key="labeling/shapeBorderColorR" value="128"/>
    <property key="labeling/shapeBorderWidth" value="0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="true"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="128"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0.2"/>
    <property key="labeling/shapeSizeY" value="0.2"/>
    <property key="labeling/shapeTransparency" value="5"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="0"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="0"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>64</layerTransparency>
  <displayfield>oid</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="MS Shell Dlg 2"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <edittypes>
    <edittype labelontop="0" editable="1" type="0" name="LblAlignH"/>
    <edittype labelontop="0" editable="1" type="0" name="LblAlignV"/>
    <edittype labelontop="0" editable="1" type="0" name="LblBold"/>
    <edittype labelontop="0" editable="1" type="0" name="LblCOtype"/>
    <edittype labelontop="0" editable="1" type="0" name="LblColor"/>
    <edittype labelontop="0" editable="1" type="0" name="LblField"/>
    <edittype labelontop="0" editable="1" type="0" name="LblFont"/>
    <edittype labelontop="0" editable="1" type="0" name="LblId"/>
    <edittype labelontop="0" editable="1" type="0" name="LblItalic"/>
    <edittype labelontop="0" editable="1" type="0" name="LblRot"/>
    <edittype labelontop="0" editable="1" type="0" name="LblShow"/>
    <edittype labelontop="0" editable="1" type="0" name="LblShowCO"/>
    <edittype labelontop="0" editable="1" type="0" name="LblSize"/>
    <edittype labelontop="0" editable="1" type="0" name="LblStrike"/>
    <edittype labelontop="0" editable="1" type="0" name="LblUnder"/>
    <edittype labelontop="0" editable="1" type="0" name="LblX"/>
    <edittype labelontop="0" editable="1" type="0" name="LblY"/>
    <edittype labelontop="0" editable="1" type="0" name="abscisse_departement"/>
    <edittype labelontop="0" editable="1" type="0" name="insee_departement"/>
    <edittype labelontop="0" editable="1" type="0" name="insee_region"/>
    <edittype labelontop="0" editable="1" type="0" name="nom_departement"/>
    <edittype labelontop="0" editable="1" type="0" name="nom_region"/>
    <edittype labelontop="0" editable="1" type="0" name="oid"/>
    <edittype labelontop="0" editable="1" type="0" name="ordonnee_departement"/>
    <edittype labelontop="0" editable="1" type="0" name="pourcentageaeag"/>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform></annotationform>
  <editorlayout>generatedlayout</editorlayout>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions/>
</qgis>
