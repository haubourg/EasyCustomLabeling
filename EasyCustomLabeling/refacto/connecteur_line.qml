<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1.2" labelsEnabled="1" minScale="1e+8" simplifyDrawingHints="3" simplifyLocal="1" version="3.7.0-Master" maxScale="0" simplifyMaxScale="1" styleCategories="AllStyleCategories" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol name="0" force_rhr="0" clip_to_extent="1" alpha="1" type="fill">
        <layer enabled="1" class="SimpleFill" pass="0" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="152,64,149,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="117,117,117,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.2" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="no" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <prop v="Line" k="SymbolType"/>
          <prop v="make_line( &#xa;make_point(&quot;auxiliary_storage_labeling_positionx&quot;  , &quot;auxiliary_storage_labeling_positiony&quot;) --end &#xa;, point_on_surface($geometry) --start point&#xa;) " k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@1" force_rhr="0" clip_to_extent="1" alpha="1" type="line">
            <layer enabled="1" class="MarkerLine" pass="0" locked="0">
              <prop v="4" k="average_angle_length"/>
              <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
              <prop v="MM" k="average_angle_unit"/>
              <prop v="3" k="interval"/>
              <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
              <prop v="MM" k="interval_unit"/>
              <prop v="0" k="offset"/>
              <prop v="0" k="offset_along_line"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
              <prop v="MM" k="offset_along_line_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="lastvertex" k="placement"/>
              <prop v="0" k="ring_filter"/>
              <prop v="1" k="rotate"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <symbol name="@@0@1@0" force_rhr="0" clip_to_extent="1" alpha="1" type="marker">
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="127,127,127,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="127,127,127,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="0.6" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </layer>
            <layer enabled="1" class="SimpleLine" pass="0" locked="0">
              <prop v="square" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="127,127,127,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.26" k="line_width"/>
              <prop v="MM" k="line_width_unit"/>
              <prop v="0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0" k="ring_filter"/>
              <prop v="0" k="use_custom_dash"/>
              <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style textColor="71,71,71,255" fontSizeUnit="Point" fontCapitals="0" fontFamily="Century" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="concat(nom_commune , '\n', 'Align: ', &#xa;case when  &quot;auxiliary_storage_labeling_positionx&quot; &lt; point_on_surface($geometry) then 'Right' else 'Left' end &#xa;, '\n x_aux: ', &quot;auxiliary_storage_labeling_positionx&quot;, '\n x point on surface: ', x(point_on_surface($geometry)))" isExpression="1" textOpacity="1" fontItalic="0" blendMode="0" fontWeight="50" fontWordSpacing="0" multilineHeight="1" fontSize="8" fontLetterSpacing="0" fontStrikeout="0" useSubstitutions="0" namedStyle="" fontUnderline="0" previewBkgrdColor="#ffffff">
        <text-buffer bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferJoinStyle="64" bufferColor="255,255,255,255" bufferBlendMode="8" bufferOpacity="1" bufferSize="0.71" bufferDraw="1"/>
        <background shapeDraw="0" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeBorderWidth="0" shapeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeBlendMode="0" shapeSizeX="0" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeSizeUnit="MM" shapeOffsetX="0" shapeSizeY="0" shapeOffsetY="0" shapeSVGFile="" shapeRotationType="0" shapeBorderColor="128,128,128,255"/>
        <shadow shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowUnder="0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowScale="100" shadowDraw="1" shadowOffsetGlobal="1" shadowOpacity="0.26" shadowColor="0,0,0,255"/>
        <substitutions/>
      </text-style>
      <text-format useMaxLineLengthForAutoWrap="1" multilineAlign="2" leftDirectionSymbol="&lt;" plussign="0" reverseDirectionSymbol="0" addDirectionSymbol="0" decimals="0" autoWrapLength="0" placeDirectionSymbol="0" formatNumbers="0" wrapChar="" rightDirectionSymbol=">"/>
      <placement fitInPolygonOnly="0" centroidWhole="0" offsetUnits="MapUnit" offsetType="0" quadOffset="4" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" geometryGenerator="" maxCurvedCharAngleOut="-20" repeatDistanceUnits="MM" rotationAngle="0" xOffset="0" yOffset="0" distUnits="MM" placement="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="20" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistance="0" priority="10" geometryGeneratorType="PointGeometry" dist="1" placementFlags="0" centroidInside="0"/>
      <rendering limitNumLabels="0" obstacle="0" obstacleFactor="1" scaleMax="250000" labelPerPart="0" fontLimitPixelSize="0" minFeatureSize="20" zIndex="0" fontMaxPixelSize="10000" scaleVisibility="0" fontMinPixelSize="3" maxNumLabels="2000" obstacleType="0" scaleMin="1" mergeLines="0" drawLabels="1" displayAll="0" upsidedownLabels="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties" type="Map">
            <Option name="AlwaysShow" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_alwaysshow"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Bold" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_bold"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="BufferColor" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_buffercolor"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="BufferSize" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_buffersize"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Color" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_color"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Family" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_family"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="FontStyle" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_fontstyle"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Hali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_hali"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Italic" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_italic"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="LabelDistance" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_labeldistance"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="LabelRotation" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_labelrotation"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="MaxScale" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_maxscale"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="MinScale" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_minscale"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="MultiLineAlignment" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="case when  &quot;auxiliary_storage_labeling_positionx&quot; &lt; x(point_on_surface($geometry)) then 'Right' else 'Left' end"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="PositionX" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_positionx"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="PositionY" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_positiony"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="ScaleVisibility" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_scalevisibility"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Show" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_show"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Size" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_size"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Strikeout" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_strikeout"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Underline" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_underline"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Vali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_vali"/>
              <Option name="type" type="int" value="2"/>
            </Option>
          </Option>
          <Option name="type" type="QString" value="collection"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties/>
  <blendMode>6</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="insee_commune">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_commune">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="insee_arrondissement">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="insee_pseudocanton">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="insee_departement">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_departement">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="insee_region">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nom_region">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="indic_evolution">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="comment_evolution">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_creation_insee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_modif_insee">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_modif_ag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="statut">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="x_ign">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="y_ign">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="superficie_ign">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_circonscription">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_ancienne_circo">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_district_dce">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="QString" value="0"/>
            <Option name="UseHtml" type="QString" value="0"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="oid">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_positionx">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_positiony">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_show">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_labelrotation">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_family">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_fontstyle">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_size">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_bold">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_italic">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_underline">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_color">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_strikeout">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_buffersize">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_buffercolor">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_labeldistance">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_hali">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_vali">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_scalevisibility">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_minscale">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_maxscale">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_alwaysshow">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="insee_commune" index="0"/>
    <alias name="" field="nom_commune" index="1"/>
    <alias name="" field="insee_arrondissement" index="2"/>
    <alias name="" field="insee_pseudocanton" index="3"/>
    <alias name="" field="insee_departement" index="4"/>
    <alias name="" field="nom_departement" index="5"/>
    <alias name="" field="insee_region" index="6"/>
    <alias name="" field="nom_region" index="7"/>
    <alias name="" field="indic_evolution" index="8"/>
    <alias name="" field="comment_evolution" index="9"/>
    <alias name="" field="date_creation_insee" index="10"/>
    <alias name="" field="date_modif_insee" index="11"/>
    <alias name="" field="date_modif_ag" index="12"/>
    <alias name="" field="statut" index="13"/>
    <alias name="" field="x_ign" index="14"/>
    <alias name="" field="y_ign" index="15"/>
    <alias name="" field="superficie_ign" index="16"/>
    <alias name="" field="code_circonscription" index="17"/>
    <alias name="" field="code_ancienne_circo" index="18"/>
    <alias name="" field="code_district_dce" index="19"/>
    <alias name="" field="oid" index="20"/>
    <alias name="" field="auxiliary_storage_labeling_positionx" index="21"/>
    <alias name="" field="auxiliary_storage_labeling_positiony" index="22"/>
    <alias name="" field="auxiliary_storage_labeling_show" index="23"/>
    <alias name="" field="auxiliary_storage_labeling_labelrotation" index="24"/>
    <alias name="" field="auxiliary_storage_labeling_family" index="25"/>
    <alias name="" field="auxiliary_storage_labeling_fontstyle" index="26"/>
    <alias name="" field="auxiliary_storage_labeling_size" index="27"/>
    <alias name="" field="auxiliary_storage_labeling_bold" index="28"/>
    <alias name="" field="auxiliary_storage_labeling_italic" index="29"/>
    <alias name="" field="auxiliary_storage_labeling_underline" index="30"/>
    <alias name="" field="auxiliary_storage_labeling_color" index="31"/>
    <alias name="" field="auxiliary_storage_labeling_strikeout" index="32"/>
    <alias name="" field="auxiliary_storage_labeling_buffersize" index="33"/>
    <alias name="" field="auxiliary_storage_labeling_buffercolor" index="34"/>
    <alias name="" field="auxiliary_storage_labeling_labeldistance" index="35"/>
    <alias name="" field="auxiliary_storage_labeling_hali" index="36"/>
    <alias name="" field="auxiliary_storage_labeling_vali" index="37"/>
    <alias name="" field="auxiliary_storage_labeling_scalevisibility" index="38"/>
    <alias name="" field="auxiliary_storage_labeling_minscale" index="39"/>
    <alias name="" field="auxiliary_storage_labeling_maxscale" index="40"/>
    <alias name="" field="auxiliary_storage_labeling_alwaysshow" index="41"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="insee_commune" applyOnUpdate="0"/>
    <default expression="" field="nom_commune" applyOnUpdate="0"/>
    <default expression="" field="insee_arrondissement" applyOnUpdate="0"/>
    <default expression="" field="insee_pseudocanton" applyOnUpdate="0"/>
    <default expression="" field="insee_departement" applyOnUpdate="0"/>
    <default expression="" field="nom_departement" applyOnUpdate="0"/>
    <default expression="" field="insee_region" applyOnUpdate="0"/>
    <default expression="" field="nom_region" applyOnUpdate="0"/>
    <default expression="" field="indic_evolution" applyOnUpdate="0"/>
    <default expression="" field="comment_evolution" applyOnUpdate="0"/>
    <default expression="" field="date_creation_insee" applyOnUpdate="0"/>
    <default expression="" field="date_modif_insee" applyOnUpdate="0"/>
    <default expression="" field="date_modif_ag" applyOnUpdate="0"/>
    <default expression="" field="statut" applyOnUpdate="0"/>
    <default expression="" field="x_ign" applyOnUpdate="0"/>
    <default expression="" field="y_ign" applyOnUpdate="0"/>
    <default expression="" field="superficie_ign" applyOnUpdate="0"/>
    <default expression="" field="code_circonscription" applyOnUpdate="0"/>
    <default expression="" field="code_ancienne_circo" applyOnUpdate="0"/>
    <default expression="" field="code_district_dce" applyOnUpdate="0"/>
    <default expression="" field="oid" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_positionx" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_positiony" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_show" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_labelrotation" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_family" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_fontstyle" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_size" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_bold" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_italic" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_underline" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_color" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_strikeout" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_buffersize" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_buffercolor" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_labeldistance" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_hali" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_vali" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_scalevisibility" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_minscale" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_maxscale" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_alwaysshow" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" field="insee_commune" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_commune" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_arrondissement" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_pseudocanton" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_departement" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_departement" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_region" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_region" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="indic_evolution" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="comment_evolution" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_creation_insee" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_modif_insee" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_modif_ag" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="statut" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="x_ign" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="y_ign" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="superficie_ign" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_circonscription" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_ancienne_circo" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_district_dce" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="1" field="oid" exp_strength="0" notnull_strength="1" constraints="3"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_positionx" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_positiony" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_show" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_labelrotation" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_family" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_fontstyle" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_size" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_bold" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_italic" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_underline" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_color" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_strikeout" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_buffersize" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_buffercolor" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_labeldistance" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_hali" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_vali" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_scalevisibility" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_minscale" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_maxscale" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_alwaysshow" exp_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="insee_commune" desc=""/>
    <constraint exp="" field="nom_commune" desc=""/>
    <constraint exp="" field="insee_arrondissement" desc=""/>
    <constraint exp="" field="insee_pseudocanton" desc=""/>
    <constraint exp="" field="insee_departement" desc=""/>
    <constraint exp="" field="nom_departement" desc=""/>
    <constraint exp="" field="insee_region" desc=""/>
    <constraint exp="" field="nom_region" desc=""/>
    <constraint exp="" field="indic_evolution" desc=""/>
    <constraint exp="" field="comment_evolution" desc=""/>
    <constraint exp="" field="date_creation_insee" desc=""/>
    <constraint exp="" field="date_modif_insee" desc=""/>
    <constraint exp="" field="date_modif_ag" desc=""/>
    <constraint exp="" field="statut" desc=""/>
    <constraint exp="" field="x_ign" desc=""/>
    <constraint exp="" field="y_ign" desc=""/>
    <constraint exp="" field="superficie_ign" desc=""/>
    <constraint exp="" field="code_circonscription" desc=""/>
    <constraint exp="" field="code_ancienne_circo" desc=""/>
    <constraint exp="" field="code_district_dce" desc=""/>
    <constraint exp="" field="oid" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_positionx" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_positiony" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_show" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_labelrotation" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_family" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_fontstyle" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_size" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_bold" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_italic" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_underline" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_color" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_strikeout" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_buffersize" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_buffercolor" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_labeldistance" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_hali" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_vali" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_scalevisibility" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_minscale" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_maxscale" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_alwaysshow" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting name="Fiche commune SIE " capture="0" notificationMessage="" icon="" action="from PyQt4.QtGui import QDesktopServices; from PyQt4.QtCore import QUrl; QDesktopServices.openUrl(QUrl(&quot;http://adour-garonne.eaufrance.fr/commune/[%insee_commune%]&quot;))" isEnabledOnlyWhenEditable="0" id="{59e8336a-e4ea-46ba-a375-add09c9b8952}" shortTitle="" type="1">
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column name="oid" hidden="1" width="-1" type="field"/>
      <column name="insee_commune" hidden="0" width="-1" type="field"/>
      <column name="nom_commune" hidden="0" width="-1" type="field"/>
      <column name="insee_arrondissement" hidden="0" width="-1" type="field"/>
      <column name="insee_pseudocanton" hidden="0" width="-1" type="field"/>
      <column name="insee_departement" hidden="0" width="-1" type="field"/>
      <column name="nom_departement" hidden="0" width="-1" type="field"/>
      <column name="insee_region" hidden="0" width="-1" type="field"/>
      <column name="nom_region" hidden="0" width="-1" type="field"/>
      <column name="indic_evolution" hidden="0" width="-1" type="field"/>
      <column name="comment_evolution" hidden="0" width="-1" type="field"/>
      <column name="date_creation_insee" hidden="0" width="-1" type="field"/>
      <column name="date_modif_insee" hidden="0" width="-1" type="field"/>
      <column name="date_modif_ag" hidden="0" width="-1" type="field"/>
      <column name="statut" hidden="0" width="-1" type="field"/>
      <column name="x_ign" hidden="0" width="-1" type="field"/>
      <column name="y_ign" hidden="0" width="-1" type="field"/>
      <column name="superficie_ign" hidden="0" width="-1" type="field"/>
      <column name="code_circonscription" hidden="0" width="-1" type="field"/>
      <column name="code_ancienne_circo" hidden="0" width="-1" type="field"/>
      <column name="code_district_dce" hidden="0" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_positionx" hidden="1" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column name="auxiliary_storage_labeling_positiony" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_show" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_labelrotation" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_family" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_fontstyle" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_size" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_bold" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_italic" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_underline" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_color" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_strikeout" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_buffersize" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_buffercolor" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_labeldistance" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_hali" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_vali" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_scalevisibility" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_minscale" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_maxscale" hidden="1" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_alwaysshow" hidden="1" width="-1" type="field"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable/>
  <labelOnTop/>
  <widgets/>
  <previewExpression></previewExpression>
  <mapTip>[%nom_commune%]
[%insee_commune%]</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
