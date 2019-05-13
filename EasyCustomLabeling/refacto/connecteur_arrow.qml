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
            <layer enabled="1" class="ArrowLine" pass="0" locked="0">
              <prop v="0.42" k="arrow_start_width"/>
              <prop v="MM" k="arrow_start_width_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="arrow_start_width_unit_scale"/>
              <prop v="0" k="arrow_type"/>
              <prop v="0.06" k="arrow_width"/>
              <prop v="MM" k="arrow_width_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="arrow_width_unit_scale"/>
              <prop v="2.08" k="head_length"/>
              <prop v="MM" k="head_length_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="head_length_unit_scale"/>
              <prop v="0.9" k="head_thickness"/>
              <prop v="MM" k="head_thickness_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="head_thickness_unit_scale"/>
              <prop v="0" k="head_type"/>
              <prop v="1" k="is_curved"/>
              <prop v="1" k="is_repeated"/>
              <prop v="0" k="offset"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
              <prop v="0" k="ring_filter"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
              <symbol name="@@0@1@0" force_rhr="0" clip_to_extent="1" alpha="1" type="fill">
                <layer enabled="1" class="SimpleFill" pass="0" locked="0">
                  <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
                  <prop v="87,87,87,255" k="color"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="no" k="outline_style"/>
                  <prop v="0.26" k="outline_width"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="solid" k="style"/>
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
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style textColor="71,71,71,255" fontSizeUnit="Point" fontCapitals="0" fontFamily="Century" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="nom_commun" isExpression="0" textOpacity="1" fontItalic="0" blendMode="0" fontWeight="50" fontWordSpacing="0" multilineHeight="1" fontSize="8" fontLetterSpacing="0" fontStrikeout="0" useSubstitutions="0" namedStyle="" fontUnderline="0" previewBkgrdColor="#ffffff">
        <text-buffer bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="0" bufferJoinStyle="64" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferSize="1" bufferDraw="1"/>
        <background shapeDraw="0" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeBorderWidth="0" shapeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeBlendMode="0" shapeSizeX="0" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeSizeUnit="MM" shapeOffsetX="0" shapeSizeY="0" shapeOffsetY="0" shapeSVGFile="" shapeRotationType="0" shapeBorderColor="128,128,128,255"/>
        <shadow shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowUnder="0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowScale="100" shadowDraw="1" shadowOffsetGlobal="1" shadowOpacity="0.26" shadowColor="0,0,0,255"/>
        <substitutions/>
      </text-style>
      <text-format useMaxLineLengthForAutoWrap="1" multilineAlign="0" leftDirectionSymbol="&lt;" plussign="0" reverseDirectionSymbol="0" addDirectionSymbol="0" decimals="0" autoWrapLength="0" placeDirectionSymbol="0" formatNumbers="0" wrapChar="" rightDirectionSymbol=">"/>
      <placement fitInPolygonOnly="0" centroidWhole="0" offsetUnits="MapUnit" offsetType="0" quadOffset="4" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" geometryGenerator="" maxCurvedCharAngleOut="-20" repeatDistanceUnits="MM" rotationAngle="0" xOffset="0" yOffset="0" distUnits="MM" placement="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="20" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" repeatDistance="0" priority="10" geometryGeneratorType="PointGeometry" dist="1" placementFlags="0" centroidInside="0"/>
      <rendering limitNumLabels="0" obstacle="0" obstacleFactor="1" scaleMax="250000" labelPerPart="0" fontLimitPixelSize="0" minFeatureSize="20" zIndex="0" fontMaxPixelSize="10000" scaleVisibility="1" fontMinPixelSize="3" maxNumLabels="2000" obstacleType="0" scaleMin="1" mergeLines="0" drawLabels="1" displayAll="0" upsidedownLabels="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties" type="Map">
            <Option name="Hali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="case when  &quot;auxiliary_storage_labeling_positionx&quot; &lt; x(point_on_surface($geometry)) then 'Right' else 'Left' end"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="MultiLineAlignment" type="Map">
              <Option name="active" type="bool" value="false"/>
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
            <Option name="Vali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="case when  &quot;auxiliary_storage_labeling_positiony&quot; &lt; y(point_on_surface($geometry)) then 'Top' else 'Bottom' end"/>
              <Option name="type" type="int" value="3"/>
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
    <field name="insee_comm">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nom_commun">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insee_arro">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insee_pseu">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insee_depa">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nom_depart">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="insee_regi">
      <editWidget type="">
        <config>
          <Option/>
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
    <field name="indic_evol">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="comment_ev">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_creat">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_modif">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_mod_1">
      <editWidget type="">
        <config>
          <Option/>
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
    <field name="superficie">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="code_circo">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="code_ancie">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="code_distr">
      <editWidget type="">
        <config>
          <Option/>
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
    <field name="auxiliary_">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliar_1">
      <editWidget type="">
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
  </fieldConfiguration>
  <aliases>
    <alias name="" field="insee_comm" index="0"/>
    <alias name="" field="nom_commun" index="1"/>
    <alias name="" field="insee_arro" index="2"/>
    <alias name="" field="insee_pseu" index="3"/>
    <alias name="" field="insee_depa" index="4"/>
    <alias name="" field="nom_depart" index="5"/>
    <alias name="" field="insee_regi" index="6"/>
    <alias name="" field="nom_region" index="7"/>
    <alias name="" field="indic_evol" index="8"/>
    <alias name="" field="comment_ev" index="9"/>
    <alias name="" field="date_creat" index="10"/>
    <alias name="" field="date_modif" index="11"/>
    <alias name="" field="date_mod_1" index="12"/>
    <alias name="" field="statut" index="13"/>
    <alias name="" field="x_ign" index="14"/>
    <alias name="" field="y_ign" index="15"/>
    <alias name="" field="superficie" index="16"/>
    <alias name="" field="code_circo" index="17"/>
    <alias name="" field="code_ancie" index="18"/>
    <alias name="" field="code_distr" index="19"/>
    <alias name="" field="oid" index="20"/>
    <alias name="" field="auxiliary_" index="21"/>
    <alias name="" field="auxiliar_1" index="22"/>
    <alias name="" field="auxiliary_storage_labeling_positionx" index="23"/>
    <alias name="" field="auxiliary_storage_labeling_positiony" index="24"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="insee_comm" applyOnUpdate="0"/>
    <default expression="" field="nom_commun" applyOnUpdate="0"/>
    <default expression="" field="insee_arro" applyOnUpdate="0"/>
    <default expression="" field="insee_pseu" applyOnUpdate="0"/>
    <default expression="" field="insee_depa" applyOnUpdate="0"/>
    <default expression="" field="nom_depart" applyOnUpdate="0"/>
    <default expression="" field="insee_regi" applyOnUpdate="0"/>
    <default expression="" field="nom_region" applyOnUpdate="0"/>
    <default expression="" field="indic_evol" applyOnUpdate="0"/>
    <default expression="" field="comment_ev" applyOnUpdate="0"/>
    <default expression="" field="date_creat" applyOnUpdate="0"/>
    <default expression="" field="date_modif" applyOnUpdate="0"/>
    <default expression="" field="date_mod_1" applyOnUpdate="0"/>
    <default expression="" field="statut" applyOnUpdate="0"/>
    <default expression="" field="x_ign" applyOnUpdate="0"/>
    <default expression="" field="y_ign" applyOnUpdate="0"/>
    <default expression="" field="superficie" applyOnUpdate="0"/>
    <default expression="" field="code_circo" applyOnUpdate="0"/>
    <default expression="" field="code_ancie" applyOnUpdate="0"/>
    <default expression="" field="code_distr" applyOnUpdate="0"/>
    <default expression="" field="oid" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_" applyOnUpdate="0"/>
    <default expression="" field="auxiliar_1" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_positionx" applyOnUpdate="0"/>
    <default expression="" field="auxiliary_storage_labeling_positiony" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" field="insee_comm" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_commun" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_arro" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_pseu" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_depa" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_depart" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="insee_regi" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="nom_region" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="indic_evol" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="comment_ev" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_creat" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_modif" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="date_mod_1" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="statut" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="x_ign" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="y_ign" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="superficie" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_circo" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_ancie" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="code_distr" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="1" field="oid" exp_strength="0" notnull_strength="1" constraints="3"/>
    <constraint unique_strength="0" field="auxiliary_" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliar_1" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_positionx" exp_strength="0" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" field="auxiliary_storage_labeling_positiony" exp_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="insee_comm" desc=""/>
    <constraint exp="" field="nom_commun" desc=""/>
    <constraint exp="" field="insee_arro" desc=""/>
    <constraint exp="" field="insee_pseu" desc=""/>
    <constraint exp="" field="insee_depa" desc=""/>
    <constraint exp="" field="nom_depart" desc=""/>
    <constraint exp="" field="insee_regi" desc=""/>
    <constraint exp="" field="nom_region" desc=""/>
    <constraint exp="" field="indic_evol" desc=""/>
    <constraint exp="" field="comment_ev" desc=""/>
    <constraint exp="" field="date_creat" desc=""/>
    <constraint exp="" field="date_modif" desc=""/>
    <constraint exp="" field="date_mod_1" desc=""/>
    <constraint exp="" field="statut" desc=""/>
    <constraint exp="" field="x_ign" desc=""/>
    <constraint exp="" field="y_ign" desc=""/>
    <constraint exp="" field="superficie" desc=""/>
    <constraint exp="" field="code_circo" desc=""/>
    <constraint exp="" field="code_ancie" desc=""/>
    <constraint exp="" field="code_distr" desc=""/>
    <constraint exp="" field="oid" desc=""/>
    <constraint exp="" field="auxiliary_" desc=""/>
    <constraint exp="" field="auxiliar_1" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_positionx" desc=""/>
    <constraint exp="" field="auxiliary_storage_labeling_positiony" desc=""/>
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
      <column name="nom_region" hidden="0" width="-1" type="field"/>
      <column name="statut" hidden="0" width="-1" type="field"/>
      <column name="x_ign" hidden="0" width="-1" type="field"/>
      <column name="y_ign" hidden="0" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_positionx" hidden="1" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column name="insee_comm" hidden="0" width="-1" type="field"/>
      <column name="nom_commun" hidden="0" width="-1" type="field"/>
      <column name="insee_arro" hidden="0" width="-1" type="field"/>
      <column name="insee_pseu" hidden="0" width="-1" type="field"/>
      <column name="insee_depa" hidden="0" width="-1" type="field"/>
      <column name="nom_depart" hidden="0" width="-1" type="field"/>
      <column name="insee_regi" hidden="0" width="-1" type="field"/>
      <column name="indic_evol" hidden="0" width="-1" type="field"/>
      <column name="comment_ev" hidden="0" width="-1" type="field"/>
      <column name="date_creat" hidden="0" width="-1" type="field"/>
      <column name="date_modif" hidden="0" width="-1" type="field"/>
      <column name="date_mod_1" hidden="0" width="-1" type="field"/>
      <column name="superficie" hidden="0" width="-1" type="field"/>
      <column name="code_circo" hidden="0" width="-1" type="field"/>
      <column name="code_ancie" hidden="0" width="-1" type="field"/>
      <column name="code_distr" hidden="0" width="-1" type="field"/>
      <column name="auxiliary_" hidden="0" width="-1" type="field"/>
      <column name="auxiliar_1" hidden="0" width="-1" type="field"/>
      <column name="auxiliary_storage_labeling_positiony" hidden="1" width="-1" type="field"/>
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
