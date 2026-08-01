<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:58e199f4-adeb-48fe-a56c-2364b9b7d46d(de.q60.mps.lang.typescript.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="8954657570916342474" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Node" flags="ig" index="2jZ$Xn" />
      <concept id="6089045305654894367" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Named" flags="ng" index="2kknPI">
        <reference id="6089045305654944382" name="menu" index="2kkw0f" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="7671875129586001610" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeSubstituteMenu" flags="ng" index="ulPW2">
        <child id="6089045305656903122" name="menuReference" index="2ks2uz" />
      </concept>
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ngI" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="4647688914602775700" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_targetNode" flags="ng" index="X5bN_" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ngI" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="6481697812325410509" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_Strictly" flags="ng" index="34TFGs" />
      <concept id="8998492695583109601" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_CanSubstitute" flags="ig" index="16Na2f" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129991" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_CanSubstitute" flags="ng" index="16NL3D">
        <child id="8998492695583129992" name="query" index="16NL3A" />
      </concept>
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="4647688914585456566" name="targetNode" index="W7ev7" />
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="414384289274424750" name="condition" index="3ft5RY" />
        <child id="414384289274424751" name="parts" index="3ft5RZ" />
      </concept>
      <concept id="414384289274418284" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Condition" flags="ig" index="3ft6gW" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ngI" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ngI" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="843003353410421268" name="jetbrains.mps.lang.editor.structure.IOutputConceptTransformationMenuPart" flags="ngI" index="1FNN41">
        <child id="843003353410424960" name="outputConceptReference" index="1FNMel" />
      </concept>
      <concept id="843003353410421233" name="jetbrains.mps.lang.editor.structure.OptionalConceptReference" flags="ng" index="1FNNb$">
        <reference id="843003353410421234" name="concept" index="1FNNbB" />
      </concept>
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ngI" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="6684862045052272180" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_NodeToWrap" flags="ng" index="3N4pyC" />
      <concept id="6684862045052059649" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler" flags="ig" index="3N5aqt" />
      <concept id="6684862045052059291" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper" flags="ng" index="3N5dw7">
        <child id="6089045305655104958" name="reference" index="2klrvf" />
        <child id="6684862045053873740" name="handler" index="3Na0zg" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="19cEah6HauD">
    <ref role="1XX52x" to="mo8k:1TCdlWHrFu_" resolve="TSModule" />
    <node concept="3EZMnI" id="19cEah6HauE" role="2wV5jI">
      <node concept="3F0ifn" id="19cEah6HauF" role="3EZMnx">
        <property role="3F0ifm" value="module" />
      </node>
      <node concept="3F0A7n" id="19cEah6HauG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="19cEah6HauH" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="19cEah6HauI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="19cEah6HauJ" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1TCdlWHrFuB" resolve="statements" />
        <node concept="lj46D" id="19cEah6HauK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="19cEah6HauL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="5xjl6SURur" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="19cEah6HauM" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="19cEah6HauN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="19cEah6HauO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="19cEah6HauP">
    <ref role="1XX52x" to="mo8k:1TCdlWHrFuC" resolve="TSExpressionStatement" />
    <node concept="3EZMnI" id="19cEah6HauQ" role="2wV5jI">
      <node concept="3F1sOY" id="19cEah6HauR" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1TCdlWHrFuE" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="19cEah6HauS" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6C1qxB6vAbp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="19cEah6HauT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="19cEah6Hav0">
    <ref role="1XX52x" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    <node concept="3EZMnI" id="7VjsoZ06Unn" role="2wV5jI">
      <node concept="3F0ifn" id="7VjsoZ06Uno" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="1UjCfdjUlyD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="7VjsoZ06Unp" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1TCdlWHrFuK" resolve="value" />
      </node>
      <node concept="3F0ifn" id="7VjsoZ06Unq" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="1UjCfdjUlyE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7VjsoZ06Unr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="DTPfQdiZr1">
    <ref role="1XX52x" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
    <node concept="3EZMnI" id="DTPfQdiZr2" role="2wV5jI">
      <node concept="3F1sOY" id="DTPfQdiZr3" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1UjCfdjUYX5" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="DTPfQdiZr4" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="DTPfQdiZr5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="DTPfQdiZr6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="DTPfQdiZr7" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1UjCfdjUYX6" resolve="operation" />
      </node>
      <node concept="l2Vlx" id="DTPfQdiZr8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="DTPfQdiZr9">
    <ref role="1XX52x" to="mo8k:4Ul7eGthLpT" resolve="TSConsole" />
    <node concept="3F0ifn" id="DTPfQdiZra" role="2wV5jI">
      <property role="3F0ifm" value="console" />
    </node>
  </node>
  <node concept="24kQdi" id="DTPfQdiZrb">
    <ref role="1XX52x" to="mo8k:4Ul7eGthLpX" resolve="TSConsoleOp_Log" />
    <node concept="3EZMnI" id="DTPfQdiZrc" role="2wV5jI">
      <node concept="3F0ifn" id="DTPfQdiZrd" role="3EZMnx">
        <property role="3F0ifm" value="log" />
      </node>
      <node concept="3F0ifn" id="DTPfQdiZre" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="DTPfQdiZrf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="DTPfQdiZrg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="DTPfQdiZrh" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:4Ul7eGthLpY" resolve="argument" />
      </node>
      <node concept="3F0ifn" id="DTPfQdiZri" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="DTPfQdiZrj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="DTPfQdiZrk" role="2iSdaV" />
    </node>
  </node>
  <node concept="22mcaB" id="7LogU7sEZvr">
    <ref role="aqKnT" to="mo8k:4Ul7eGthLpV" resolve="TSConsoleOp_Base" />
    <node concept="22hDWj" id="7LogU7sEZvs" role="22hAXT" />
    <node concept="3ft6gV" id="7LogU7sEZvt" role="3ft7WO">
      <node concept="3ft6gW" id="7LogU7sEZvu" role="3ft5RY">
        <node concept="3clFbS" id="7LogU7sEZvv" role="2VODD2">
          <node concept="3clFbF" id="7LogU7sEZvw" role="3cqZAp">
            <node concept="1Wc70l" id="7LogU7sEZvx" role="3clFbG">
              <node concept="1eOMI4" id="7LogU7sEZvy" role="3uHU7B">
                <node concept="2OqwBi" id="7LogU7sEZvz" role="1eOMHV">
                  <node concept="3bvxqY" id="7LogU7sEZv$" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="7LogU7sEZv_" role="2OqNvi">
                    <node concept="chp4Y" id="7LogU7sEZvA" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="7LogU7sEZvB" role="3uHU7w">
                <node concept="2OqwBi" id="7LogU7sEZvC" role="1eOMHV">
                  <node concept="2OqwBi" id="7LogU7sEZvD" role="2Oq$k0">
                    <node concept="2OqwBi" id="7LogU7sEZvE" role="2Oq$k0">
                      <node concept="1PxgMI" id="7LogU7sEZvF" role="2Oq$k0">
                        <node concept="3bvxqY" id="7LogU7sEZvG" role="1m5AlR" />
                        <node concept="chp4Y" id="7LogU7sEZvH" role="3oSUPX">
                          <ref role="cht4Q" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7LogU7sEZvI" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX5" resolve="operand" />
                      </node>
                    </node>
                    <node concept="3JvlWi" id="7LogU7sEZvJ" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="7LogU7sEZvK" role="2OqNvi">
                    <node concept="chp4Y" id="7LogU7sEZvL" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:4Ul7eGthLpR" resolve="TSConsoleType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2VfDsV" id="7LogU7sEZvM" role="3ft5RZ" />
    </node>
  </node>
  <node concept="24kQdi" id="5YMdeR7sEO">
    <ref role="1XX52x" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
    <node concept="3F0A7n" id="5YMdeR7sEQ" role="2wV5jI">
      <ref role="1NtTu8" to="mo8k:5YMdeQYNSx" resolve="value" />
      <node concept="VPRnO" id="5YMdeR7sER" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2SqB2G" id="5YMdeRgct0" role="2SqHTX">
        <property role="TrG5h" value="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5YMdeR7sGf">
    <ref role="1XX52x" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
    <node concept="3EZMnI" id="5YMdeR7sGh" role="2wV5jI">
      <node concept="l2Vlx" id="5YMdeR7sGi" role="2iSdaV" />
      <node concept="3F0ifn" id="5YMdeR7sGj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="5YMdeR7sGk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5YMdeR7sGl" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5YMdeQYNS$" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="5YMdeR7sGm" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="VPM3Z" id="5YMdeR7sGn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="5YMdeR7sGo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5YMdeR7wrL">
    <ref role="1XX52x" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
    <node concept="3EZMnI" id="5YMdeR7wrN" role="2wV5jI">
      <node concept="l2Vlx" id="5YMdeR7wrO" role="2iSdaV" />
      <node concept="1HlG4h" id="5YMdeR7wrP" role="3EZMnx">
        <node concept="1HfYo3" id="5YMdeR7wrT" role="1HlULh">
          <node concept="3TQlhw" id="5YMdeR7wrW" role="1Hhtcw">
            <node concept="3clFbS" id="5YMdeR7wrY" role="2VODD2">
              <node concept="3cpWs8" id="5YMdeR7wrZ" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR7ws2" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="17QB3L" id="5YMdeR7ws4" role="1tU5fm" />
                  <node concept="Xl_RD" id="5YMdeR7ws5" role="33vP2m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="5YMdeR7ws6" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR7ws9" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="5YMdeR7wsb" role="1tU5fm" />
                  <node concept="3cmrfG" id="5YMdeR7wsc" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="5YMdeR7wsd" role="1Dwp0S">
                  <node concept="37vLTw" id="5YMdeR7wsg" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR7ws9" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="5YMdeR7wsh" role="3uHU7w">
                    <node concept="pncrf" id="5YMdeR7wsk" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5YMdeR7wsl" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
                    </node>
                  </node>
                </node>
                <node concept="3uNrnE" id="5YMdeR7wsm" role="1Dwrff">
                  <node concept="37vLTw" id="5YMdeR7wso" role="2$L3a6">
                    <ref role="3cqZAo" node="5YMdeR7ws9" resolve="i" />
                  </node>
                </node>
                <node concept="3clFbS" id="5YMdeR7wsp" role="2LFqv$">
                  <node concept="3clFbF" id="5YMdeR7wsq" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR7wss" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR7wsv" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR7ws2" resolve="result" />
                      </node>
                      <node concept="3cpWs3" id="5YMdeR7wsw" role="37vLTx">
                        <node concept="37vLTw" id="5YMdeR7wsz" role="3uHU7B">
                          <ref role="3cqZAo" node="5YMdeR7ws2" resolve="result" />
                        </node>
                        <node concept="Xl_RD" id="5YMdeR7ws$" role="3uHU7w">
                          <property role="Xl_RC" value="(" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR7ws_" role="3cqZAp">
                <node concept="37vLTw" id="5YMdeR7wsA" role="3cqZAk">
                  <ref role="3cqZAo" node="5YMdeR7ws2" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="5YMdeR7wsB" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="2SsqMj" id="5YMdeR7wsC" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="5YMdeR7xdC">
    <ref role="1XX52x" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
    <node concept="3EZMnI" id="5YMdeR7xdE" role="2wV5jI">
      <node concept="l2Vlx" id="5YMdeR7xdF" role="2iSdaV" />
      <node concept="2SsqMj" id="5YMdeR7xdG" role="3EZMnx" />
      <node concept="1HlG4h" id="5YMdeR7xdH" role="3EZMnx">
        <node concept="1HfYo3" id="5YMdeR7xdL" role="1HlULh">
          <node concept="3TQlhw" id="5YMdeR7xdO" role="1Hhtcw">
            <node concept="3clFbS" id="5YMdeR7xdQ" role="2VODD2">
              <node concept="3cpWs8" id="5YMdeR7xdR" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR7xdU" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="17QB3L" id="5YMdeR7xdW" role="1tU5fm" />
                  <node concept="Xl_RD" id="5YMdeR7xdX" role="33vP2m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="5YMdeR7xdY" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR7xe1" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="5YMdeR7xe3" role="1tU5fm" />
                  <node concept="3cmrfG" id="5YMdeR7xe4" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="5YMdeR7xe5" role="1Dwp0S">
                  <node concept="37vLTw" id="5YMdeR7xe8" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR7xe1" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="5YMdeR7xe9" role="3uHU7w">
                    <node concept="pncrf" id="5YMdeR7xec" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5YMdeR7xed" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
                    </node>
                  </node>
                </node>
                <node concept="3uNrnE" id="5YMdeR7xee" role="1Dwrff">
                  <node concept="37vLTw" id="5YMdeR7xeg" role="2$L3a6">
                    <ref role="3cqZAo" node="5YMdeR7xe1" resolve="i" />
                  </node>
                </node>
                <node concept="3clFbS" id="5YMdeR7xeh" role="2LFqv$">
                  <node concept="3clFbF" id="5YMdeR7xei" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR7xek" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR7xen" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR7xdU" resolve="result" />
                      </node>
                      <node concept="3cpWs3" id="5YMdeR7xeo" role="37vLTx">
                        <node concept="37vLTw" id="5YMdeR7xer" role="3uHU7B">
                          <ref role="3cqZAo" node="5YMdeR7xdU" resolve="result" />
                        </node>
                        <node concept="Xl_RD" id="5YMdeR7xes" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR7xet" role="3cqZAp">
                <node concept="37vLTw" id="5YMdeR7xeu" role="3cqZAk">
                  <ref role="3cqZAo" node="5YMdeR7xdU" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="5YMdeR7xev" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="5YMdeR7yqS">
    <ref role="aqKnT" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="3N5dw7" id="5YMdeR7yqT" role="3ft7WO">
      <node concept="3N5aqt" id="5YMdeR7yqX" role="3Na0zg">
        <node concept="3clFbS" id="5YMdeR7yqZ" role="2VODD2">
          <node concept="3clFbF" id="5YMdeR7yr0" role="3cqZAp">
            <node concept="37vLTI" id="5YMdeR7yr2" role="3clFbG">
              <node concept="2OqwBi" id="5YMdeR7yr5" role="37vLTJ">
                <node concept="3N4pyC" id="5YMdeR7yr8" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR7yr9" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                </node>
              </node>
              <node concept="2OqwBi" id="5YMdeR7yra" role="37vLTx">
                <node concept="1yR$tW" id="5YMdeR7yrd" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR7yre" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YMdeR7yrf" role="3cqZAp">
            <node concept="37vLTI" id="5YMdeR7yrh" role="3clFbG">
              <node concept="2OqwBi" id="5YMdeR7yrk" role="37vLTJ">
                <node concept="3N4pyC" id="5YMdeR7yrn" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR7yro" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
              <node concept="2OqwBi" id="5YMdeR7yrp" role="37vLTx">
                <node concept="1yR$tW" id="5YMdeR7yrs" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR7yrt" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5YMdeR7yru" role="3cqZAp">
            <node concept="3N4pyC" id="5YMdeR7yrv" role="3cqZAk" />
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="5YMdeR7yrw" role="2klrvf">
        <ref role="2ZyFGn" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
    </node>
    <node concept="22hDWg" id="5YMdeR7yrx" role="22hAXT">
      <property role="TrG5h" value="TSBinaryOperation_Alias_SubstituteMenu" />
    </node>
  </node>
  <node concept="3ICUPy" id="5YMdeR8GG3">
    <ref role="aqKnT" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="1Qtc8_" id="5YMdeR8GG4" role="IW6Ez">
      <node concept="3eGOoe" id="5YMdeR8GG6" role="1Qtc8$" />
      <node concept="ulPW2" id="5YMdeR8TEi" role="1Qtc8A">
        <node concept="2kknPI" id="5YMdeR8TEj" role="2ks2uz">
          <ref role="2kkw0f" node="5YMdeR7yqS" resolve="TSBinaryOperation_Alias_SubstituteMenu" />
        </node>
      </node>
    </node>
    <node concept="22hDWg" id="5YMdeR8GG7" role="22hAXT">
      <property role="TrG5h" value="TSBinaryOperation_Alias_TransformationMenu" />
    </node>
  </node>
  <node concept="24kQdi" id="5YMdeR99hD">
    <ref role="1XX52x" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="3EZMnI" id="5YMdeR99hF" role="2wV5jI">
      <node concept="l2Vlx" id="5YMdeR99hG" role="2iSdaV" />
      <node concept="3F1sOY" id="5YMdeR99hH" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
      </node>
      <node concept="PMmxH" id="5YMdeR99hI" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="VPM3Z" id="5YMdeR99hJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="5YMdeR99hK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="5YMdeR9cCh" role="3vIgyS">
          <ref role="A1WHt" node="5YMdeR8GG3" resolve="TSBinaryOperation_Alias_TransformationMenu" />
        </node>
      </node>
      <node concept="3F1sOY" id="5YMdeR99hL" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="5YMdeR9sg1">
    <ref role="aqKnT" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    <node concept="1Qtc8_" id="5YMdeR9sg2" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9sg4" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9sg6" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="5YMdeR9sg7" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="5YMdeR9sg8" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="5YMdeR9sg9" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9sgb" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9sgd" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="aenpk" id="5YMdeR9sge" role="1Qtc8A">
        <node concept="27VH4U" id="5YMdeR9sgf" role="aenpu">
          <node concept="3clFbS" id="5YMdeR9sgh" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9sgi" role="3cqZAp">
              <node concept="3fqX7Q" id="5YMdeR9sgk" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR9sgm" role="3fr31v">
                  <node concept="7Obwk" id="5YMdeR9sgp" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="5YMdeR9sgq" role="2OqNvi">
                    <node concept="chp4Y" id="5YMdeR9sgs" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5YMdeR9sgt" role="aenpr">
          <node concept="1hCUdq" id="5YMdeR9sgy" role="1hCUd6">
            <node concept="3clFbS" id="5YMdeR9sg$" role="2VODD2">
              <node concept="3clFbF" id="5YMdeR9sg_" role="3cqZAp">
                <node concept="Xl_RD" id="5YMdeR9sgB" role="3clFbG">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="5YMdeR9sgC" role="2jZA2a">
            <node concept="3cqJkl" id="5YMdeR9sgF" role="3cqGtW">
              <node concept="3clFbS" id="5YMdeR9sgH" role="2VODD2">
                <node concept="3clFbF" id="5YMdeR9sgI" role="3cqZAp">
                  <node concept="Xl_RD" id="5YMdeR9sgK" role="3clFbG">
                    <property role="Xl_RC" value="Open paren" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5YMdeR9sgL" role="IWgqQ">
            <node concept="3clFbS" id="5YMdeR9sgN" role="2VODD2">
              <node concept="3cpWs8" id="5YMdeR9sgO" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR9sgR" role="3cpWs9">
                  <property role="TrG5h" value="parenthesisedNode" />
                  <node concept="3Tqbb2" id="5YMdeR9sgT" role="1tU5fm">
                    <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                  <node concept="2YIFZM" id="5YMdeR9sgU" role="33vP2m">
                    <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
                    <ref role="37wK5l" to="tw2a:5YMdeQZZEi" resolve="createUnmatchedLeftParenthesis" />
                    <node concept="7Obwk" id="5YMdeR9sgV" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR9sgW" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR9sgY" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR9sh1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR9sgR" resolve="parenthesisedNode" />
                  </node>
                  <node concept="1OKiuA" id="5YMdeR9sh2" role="2OqNvi">
                    <node concept="1Q80Hx" id="5YMdeR9sh4" role="lBI5i" />
                    <node concept="2B6iha" id="5YMdeR9sh5" role="lGT1i" />
                    <node concept="3cmrfG" id="5YMdeR9sh6" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR9sh7" role="3cqZAp" />
            </node>
          </node>
          <node concept="1FNNb$" id="5YMdeR9sh8" role="1FNMel">
            <ref role="1FNNbB" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
          </node>
        </node>
        <node concept="3c8P5G" id="5YMdeR9sh9" role="aenpr">
          <node concept="2kknPJ" id="5YMdeR9shd" role="3c8P5H">
            <ref role="2ZyFGn" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
          </node>
          <node concept="3c8PGw" id="5YMdeR9she" role="3c8PHt">
            <node concept="3clFbS" id="5YMdeR9shg" role="2VODD2">
              <node concept="3clFbF" id="5YMdeR9shh" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR9shj" role="3clFbG">
                  <node concept="2YIFZM" id="5YMdeR9shm" role="2Oq$k0">
                    <ref role="1Pybhc" to="tw2a:5YMdeR6OZt" resolve="TSPrecedenceUtil" />
                    <ref role="37wK5l" to="tw2a:5YMdeR6P0Q" resolve="processLeftTransform" />
                    <node concept="7Obwk" id="5YMdeR9shn" role="37wK5m" />
                    <node concept="3c8USq" id="5YMdeR9sho" role="37wK5m" />
                  </node>
                  <node concept="1OKiuA" id="5YMdeR9shp" role="2OqNvi">
                    <node concept="1Q80Hx" id="5YMdeR9shr" role="lBI5i" />
                    <node concept="2B6iha" id="5YMdeR9shs" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="5YMdeR9sht" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="5YMdeR9shu" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9shw" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9shy" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="5YMdeR9shz" role="1Qtc8A">
        <node concept="27VH4U" id="5YMdeR9sh$" role="aenpu">
          <node concept="3clFbS" id="5YMdeR9shA" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9shB" role="3cqZAp">
              <node concept="3fqX7Q" id="5YMdeR9shD" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR9shF" role="3fr31v">
                  <node concept="7Obwk" id="5YMdeR9shI" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="5YMdeR9shJ" role="2OqNvi">
                    <node concept="chp4Y" id="5YMdeR9shL" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="IWgqT" id="5YMdeR9shM" role="aenpr">
          <node concept="1hCUdq" id="5YMdeR9shR" role="1hCUd6">
            <node concept="3clFbS" id="5YMdeR9shT" role="2VODD2">
              <node concept="3clFbF" id="5YMdeR9shU" role="3cqZAp">
                <node concept="Xl_RD" id="5YMdeR9shW" role="3clFbG">
                  <property role="Xl_RC" value=")" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="5YMdeR9shX" role="2jZA2a">
            <node concept="3cqJkl" id="5YMdeR9si0" role="3cqGtW">
              <node concept="3clFbS" id="5YMdeR9si2" role="2VODD2">
                <node concept="3clFbF" id="5YMdeR9si3" role="3cqZAp">
                  <node concept="Xl_RD" id="5YMdeR9si5" role="3clFbG">
                    <property role="Xl_RC" value="Complete parens" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5YMdeR9si6" role="IWgqQ">
            <node concept="3clFbS" id="5YMdeR9si8" role="2VODD2">
              <node concept="3cpWs8" id="5YMdeR9si9" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR9sic" role="3cpWs9">
                  <property role="TrG5h" value="parens" />
                  <node concept="3Tqbb2" id="5YMdeR9sie" role="1tU5fm">
                    <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                  <node concept="2YIFZM" id="5YMdeR9sif" role="33vP2m">
                    <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
                    <ref role="37wK5l" to="tw2a:5YMdeQZZEw" resolve="createUnmatchedRightParenthesis" />
                    <node concept="7Obwk" id="5YMdeR9sig" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR9sih" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR9sij" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR9sim" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR9sic" resolve="parens" />
                  </node>
                  <node concept="1OKiuA" id="5YMdeR9sin" role="2OqNvi">
                    <node concept="1Q80Hx" id="5YMdeR9sip" role="lBI5i" />
                    <node concept="2B6iha" id="5YMdeR9siq" role="lGT1i">
                      <property role="1lyBwo" value="1S2pyLby17K/last" />
                    </node>
                    <node concept="3cmrfG" id="5YMdeR9sir" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR9sis" role="3cqZAp" />
            </node>
          </node>
          <node concept="1FNNb$" id="5YMdeR9sit" role="1FNMel">
            <ref role="1FNNbB" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
          </node>
        </node>
        <node concept="IWgqT" id="5Xb8BFgniAW" role="aenpr">
          <node concept="1hCUdq" id="5Xb8BFgniB1" role="1hCUd6">
            <node concept="3clFbS" id="5Xb8BFgniB3" role="2VODD2">
              <node concept="3clFbF" id="5Xb8BFgniB4" role="3cqZAp">
                <node concept="Xl_RD" id="5Xb8BFgniB6" role="3clFbG">
                  <property role="Xl_RC" value="?" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqGtN" id="5Xb8BFgniB7" role="2jZA2a">
            <node concept="3cqJkl" id="5Xb8BFgniBa" role="3cqGtW">
              <node concept="3clFbS" id="5Xb8BFgniBc" role="2VODD2">
                <node concept="3clFbF" id="5Xb8BFgniBd" role="3cqZAp">
                  <node concept="Xl_RD" id="5Xb8BFgniBf" role="3clFbG">
                    <property role="Xl_RC" value="ternary operator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="5Xb8BFgniBg" role="IWgqQ">
            <node concept="3clFbS" id="5Xb8BFgniBi" role="2VODD2">
              <node concept="3clFbF" id="5Xb8BFgniBj" role="3cqZAp">
                <node concept="2OqwBi" id="5Xb8BFgniBl" role="3clFbG">
                  <node concept="2YIFZM" id="5Xb8BFgniBo" role="2Oq$k0">
                    <ref role="1Pybhc" to="tw2a:5YMdeR6OZt" resolve="TSPrecedenceUtil" />
                    <ref role="37wK5l" to="tw2a:5Xb8BFgn1Zi" resolve="createTernaryOperator" />
                    <node concept="7Obwk" id="5Xb8BFgniBp" role="37wK5m" />
                  </node>
                  <node concept="1OKiuA" id="5Xb8BFgniBq" role="2OqNvi">
                    <node concept="1Q80Hx" id="5Xb8BFgniBs" role="lBI5i" />
                    <node concept="2B6iha" id="5Xb8BFgniBt" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="5Xb8BFgniBu" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5Xb8BFgniBv" role="3cqZAp" />
            </node>
          </node>
          <node concept="1FNNb$" id="5Xb8BFgniBw" role="1FNMel">
            <ref role="1FNNbB" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
          </node>
        </node>
        <node concept="3c8P5G" id="5Xb8BFgniBx" role="aenpr">
          <node concept="2kknPJ" id="5Xb8BFgniB_" role="3c8P5H">
            <ref role="2ZyFGn" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
          </node>
          <node concept="3c8PGw" id="5Xb8BFgniBA" role="3c8PHt">
            <node concept="3clFbS" id="5Xb8BFgniBC" role="2VODD2">
              <node concept="3clFbF" id="5Xb8BFgniBD" role="3cqZAp">
                <node concept="2OqwBi" id="5Xb8BFgniBF" role="3clFbG">
                  <node concept="2YIFZM" id="5Xb8BFgniBI" role="2Oq$k0">
                    <ref role="1Pybhc" to="tw2a:5YMdeR6OZt" resolve="TSPrecedenceUtil" />
                    <ref role="37wK5l" to="tw2a:5YMdeR6P17" resolve="processRightTransform" />
                    <node concept="7Obwk" id="5Xb8BFgniBJ" role="37wK5m" />
                    <node concept="3c8USq" id="5Xb8BFgniBK" role="37wK5m" />
                  </node>
                  <node concept="1OKiuA" id="5Xb8BFgniBL" role="2OqNvi">
                    <node concept="1Q80Hx" id="5Xb8BFgniBN" role="lBI5i" />
                    <node concept="2B6iha" id="5Xb8BFgniBO" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="5Xb8BFgniBP" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="5YMdeR9siN" role="22hAXT" />
  </node>
  <node concept="3ICUPy" id="5YMdeR9t3d">
    <ref role="aqKnT" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="1Qtc8_" id="5YMdeR9t3e" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9t3g" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9t3i" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="5YMdeR9t3j" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="5YMdeR9t3k" role="1Qtc8A" />
    </node>
    <node concept="1Qtc8_" id="5YMdeR9t3l" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9t3n" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9t3p" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="3c8P5G" id="5YMdeR9t3q" role="1Qtc8A">
        <node concept="2kknPJ" id="5YMdeR9t3u" role="3c8P5H">
          <ref role="2ZyFGn" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
        <node concept="2jZ$Xn" id="5YMdeR9t3v" role="W7ev7">
          <node concept="3clFbS" id="5YMdeR9t3x" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9t3y" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR9t3$" role="3clFbG">
                <node concept="7Obwk" id="5YMdeR9t3B" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR9t3C" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3c8PGw" id="5YMdeR9t3D" role="3c8PHt">
          <node concept="3clFbS" id="5YMdeR9t3F" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9t3G" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR9t3I" role="3clFbG">
                <node concept="2YIFZM" id="5YMdeR9t3L" role="2Oq$k0">
                  <ref role="1Pybhc" to="tw2a:5YMdeR6OZt" resolve="TSPrecedenceUtil" />
                  <ref role="37wK5l" to="tw2a:5YMdeR6P17" resolve="processRightTransform" />
                  <node concept="1PxgMI" id="5YMdeR9t3M" role="37wK5m">
                    <node concept="X5bN_" id="5YMdeR9t3P" role="1m5AlR" />
                    <node concept="chp4Y" id="5YMdeR9t3Q" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                    </node>
                  </node>
                  <node concept="3c8USq" id="5YMdeR9t3R" role="37wK5m" />
                </node>
                <node concept="1OKiuA" id="5YMdeR9t3S" role="2OqNvi">
                  <node concept="1Q80Hx" id="5YMdeR9t3U" role="lBI5i" />
                  <node concept="2B6iha" id="5YMdeR9t3V" role="lGT1i">
                    <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="5YMdeR9t3W" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="5YMdeR9t3X" role="IW6Ez">
      <node concept="3cWJ9i" id="5YMdeR9t3Z" role="1Qtc8$">
        <node concept="CtIbL" id="5YMdeR9t41" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="3c8P5G" id="5YMdeR9t42" role="1Qtc8A">
        <node concept="2kknPJ" id="5YMdeR9t46" role="3c8P5H">
          <ref role="2ZyFGn" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
        <node concept="2jZ$Xn" id="5YMdeR9t47" role="W7ev7">
          <node concept="3clFbS" id="5YMdeR9t49" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9t4a" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR9t4c" role="3clFbG">
                <node concept="7Obwk" id="5YMdeR9t4f" role="2Oq$k0" />
                <node concept="3TrEf2" id="5YMdeR9t4g" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3c8PGw" id="5YMdeR9t4h" role="3c8PHt">
          <node concept="3clFbS" id="5YMdeR9t4j" role="2VODD2">
            <node concept="3clFbF" id="5YMdeR9t4k" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR9t4m" role="3clFbG">
                <node concept="2YIFZM" id="5YMdeR9t4p" role="2Oq$k0">
                  <ref role="1Pybhc" to="tw2a:5YMdeR6OZt" resolve="TSPrecedenceUtil" />
                  <ref role="37wK5l" to="tw2a:5YMdeR6P0Q" resolve="processLeftTransform" />
                  <node concept="1PxgMI" id="5YMdeR9t4q" role="37wK5m">
                    <node concept="X5bN_" id="5YMdeR9t4t" role="1m5AlR" />
                    <node concept="chp4Y" id="5YMdeR9t4u" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                    </node>
                  </node>
                  <node concept="3c8USq" id="5YMdeR9t4v" role="37wK5m" />
                </node>
                <node concept="1OKiuA" id="5YMdeR9t4w" role="2OqNvi">
                  <node concept="1Q80Hx" id="5YMdeR9t4y" role="lBI5i" />
                  <node concept="2B6iha" id="5YMdeR9t4z" role="lGT1i">
                    <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="5YMdeR9t4$" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="5YMdeR9t4_" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="5YMdeRgCGf">
    <ref role="aqKnT" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    <node concept="2VfDsV" id="5YMdeRgCGg" role="3ft7WO" />
    <node concept="3eGOop" id="5YMdeRgCGh" role="3ft7WO">
      <ref role="3EoQqy" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
      <node concept="16NfWO" id="5YMdeRgCGk" role="upBLP">
        <node concept="uGdhv" id="5YMdeRgCGm" role="16NeZM">
          <node concept="3clFbS" id="5YMdeRgCGo" role="2VODD2">
            <node concept="3clFbF" id="5YMdeRgCGp" role="3cqZAp">
              <node concept="ub8z3" id="5YMdeRgCGr" role="3clFbG" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="5YMdeRgCGs" role="upBLP">
        <node concept="16Na2f" id="5YMdeRgCGv" role="16NL3A">
          <node concept="3clFbS" id="5YMdeRgCGx" role="2VODD2">
            <node concept="3clFbJ" id="5YMdeRgCGy" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeRgCG_" role="3clFbw">
                <node concept="1yR$tW" id="5YMdeRgCGC" role="2Oq$k0" />
                <node concept="1mIQ4w" id="5YMdeRgCGD" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeRgCGF" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeRgCGG" role="3clFbx">
                <node concept="3cpWs6" id="5YMdeRgCGH" role="3cqZAp">
                  <node concept="3clFbT" id="5YMdeRgCGI" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeRgCGJ" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeRgCGM" role="3clFbw">
                <node concept="ub8z3" id="5YMdeRgCGP" role="2Oq$k0" />
                <node concept="liA8E" id="5YMdeRgCGQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeRgCGR" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeRgCGS" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeRgCGW" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeRgCGY" role="1PaTwD">
                      <property role="3oM_SC" value="nothing" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCGZ" role="1PaTwD">
                      <property role="3oM_SC" value="typed" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH0" role="1PaTwD">
                      <property role="3oM_SC" value="yet:" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH1" role="1PaTwD">
                      <property role="3oM_SC" value="offer" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH2" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH3" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH4" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH5" role="1PaTwD">
                      <property role="3oM_SC" value="completion" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH6" role="1PaTwD">
                      <property role="3oM_SC" value="list," />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH7" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH8" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCH9" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCHa" role="1PaTwD">
                      <property role="3oM_SC" value="pick" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeRgCHb" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeRgCHc" role="3cqZAp">
                  <node concept="3fqX7Q" id="5YMdeRgCHd" role="3cqZAk">
                    <node concept="34TFGs" id="5YMdeRgCHf" role="3fr31v" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="5YMdeRgCHg" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeRgCHj" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="5YMdeRgCHl" role="1tU5fm" />
                <node concept="3cmrfG" id="5YMdeRgCHm" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="5YMdeRgCHn" role="1Dwp0S">
                <node concept="37vLTw" id="5YMdeRgCHq" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeRgCHj" resolve="i" />
                </node>
                <node concept="2OqwBi" id="5YMdeRgCHr" role="3uHU7w">
                  <node concept="ub8z3" id="5YMdeRgCHu" role="2Oq$k0" />
                  <node concept="liA8E" id="5YMdeRgCHv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
              </node>
              <node concept="3uNrnE" id="5YMdeRgCHw" role="1Dwrff">
                <node concept="37vLTw" id="5YMdeRgCHy" role="2$L3a6">
                  <ref role="3cqZAo" node="5YMdeRgCHj" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeRgCHz" role="2LFqv$">
                <node concept="3clFbJ" id="5YMdeRgCH$" role="3cqZAp">
                  <node concept="3fqX7Q" id="5YMdeRgCHB" role="3clFbw">
                    <node concept="2YIFZM" id="5YMdeRgCHD" role="3fr31v">
                      <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
                      <ref role="37wK5l" to="wyt6:~Character.isDigit(char)" resolve="isDigit" />
                      <node concept="2OqwBi" id="5YMdeRgCHE" role="37wK5m">
                        <node concept="ub8z3" id="5YMdeRgCHH" role="2Oq$k0" />
                        <node concept="liA8E" id="5YMdeRgCHI" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                          <node concept="37vLTw" id="5YMdeRgCHJ" role="37wK5m">
                            <ref role="3cqZAo" node="5YMdeRgCHj" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5YMdeRgCHK" role="3clFbx">
                    <node concept="3cpWs6" id="5YMdeRgCHL" role="3cqZAp">
                      <node concept="3clFbT" id="5YMdeRgCHM" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeRgCHN" role="3cqZAp">
              <node concept="3clFbT" id="5YMdeRgCHO" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ucgPf" id="5YMdeRgCHP" role="3aKz83">
        <node concept="3clFbS" id="5YMdeRgCHR" role="2VODD2">
          <node concept="3cpWs8" id="5YMdeRgCHS" role="3cqZAp">
            <node concept="3cpWsn" id="5YMdeRgCHV" role="3cpWs9">
              <property role="TrG5h" value="literal" />
              <node concept="3Tqbb2" id="5YMdeRgCHX" role="1tU5fm">
                <ref role="ehGHo" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
              </node>
              <node concept="2ShNRf" id="5YMdeRgCHY" role="33vP2m">
                <node concept="3zrR0B" id="5YMdeRgCI0" role="2ShVmc">
                  <node concept="3Tqbb2" id="5YMdeRgCI2" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1_TO" id="5YMdeRgCI3" role="3cqZAp">
            <node concept="3clFbS" id="5YMdeRgCI5" role="1zxBo7">
              <node concept="3clFbF" id="5YMdeRgCI6" role="3cqZAp">
                <node concept="37vLTI" id="5YMdeRgCI8" role="3clFbG">
                  <node concept="2OqwBi" id="5YMdeRgCIb" role="37vLTJ">
                    <node concept="37vLTw" id="5YMdeRgCIe" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeRgCHV" resolve="literal" />
                    </node>
                    <node concept="3TrcHB" id="5YMdeRgCIf" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5YMdeRgCIg" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                    <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                    <node concept="ub8z3" id="5YMdeRgCIh" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="5YMdeRgCIi" role="1zxBo5">
              <node concept="XOnhg" id="5YMdeRgCIm" role="1zc67B">
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="5YMdeRgCIo" role="1tU5fm">
                  <node concept="3uibUv" id="5YMdeRgCIq" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeRgCIr" role="1zc67A">
                <node concept="3clFbF" id="5YMdeRgCIs" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeRgCIu" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeRgCIx" role="37vLTJ">
                      <node concept="37vLTw" id="5YMdeRgCI$" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeRgCHV" resolve="literal" />
                      </node>
                      <node concept="3TrcHB" id="5YMdeRgCI_" role="2OqNvi">
                        <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5YMdeRgCIA" role="37vLTx">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5YMdeRgCIB" role="3cqZAp">
            <node concept="37vLTw" id="5YMdeRgCIC" role="3cqZAk">
              <ref role="3cqZAo" node="5YMdeRgCHV" resolve="literal" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="5YMdeRgCID" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="5Xb8BFglAe6">
    <ref role="aqKnT" to="mo8k:1TCdlWHrFuz" resolve="TSIStatement" />
    <node concept="2VfDsV" id="5Xb8BFglAe7" role="3ft7WO" />
    <node concept="3N5dw7" id="5Xb8BFglAe8" role="3ft7WO">
      <ref role="3EoQqy" to="mo8k:1TCdlWHrFuC" resolve="TSExpressionStatement" />
      <node concept="2kknPJ" id="5Xb8BFglAec" role="2klrvf">
        <ref role="2ZyFGn" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3N5aqt" id="5Xb8BFglAed" role="3Na0zg">
        <node concept="3clFbS" id="5Xb8BFglAef" role="2VODD2">
          <node concept="3cpWs8" id="5Xb8BFglAeg" role="3cqZAp">
            <node concept="3cpWsn" id="5Xb8BFglAej" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3Tqbb2" id="5Xb8BFglAel" role="1tU5fm">
                <ref role="ehGHo" to="mo8k:1TCdlWHrFuC" resolve="TSExpressionStatement" />
              </node>
              <node concept="2ShNRf" id="5Xb8BFglAem" role="33vP2m">
                <node concept="3zrR0B" id="5Xb8BFglAeo" role="2ShVmc">
                  <node concept="3Tqbb2" id="5Xb8BFglAeq" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:1TCdlWHrFuC" resolve="TSExpressionStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Xb8BFglAer" role="3cqZAp">
            <node concept="2OqwBi" id="5Xb8BFglAet" role="3clFbG">
              <node concept="2OqwBi" id="5Xb8BFglAew" role="2Oq$k0">
                <node concept="37vLTw" id="5Xb8BFglAez" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Xb8BFglAej" resolve="result" />
                </node>
                <node concept="3TrEf2" id="5Xb8BFglAe$" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:1TCdlWHrFuE" resolve="expression" />
                </node>
              </node>
              <node concept="2oxUTD" id="5Xb8BFglAe_" role="2OqNvi">
                <node concept="3N4pyC" id="5Xb8BFglAeB" role="2oxUTC" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5Xb8BFglAeC" role="3cqZAp">
            <node concept="37vLTw" id="5Xb8BFglAeD" role="3cqZAk">
              <ref role="3cqZAo" node="5Xb8BFglAej" resolve="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="22hDWj" id="5Xb8BFglAeE" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="5Xb8BFgnghK">
    <ref role="1XX52x" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
    <node concept="3EZMnI" id="5Xb8BFgnghM" role="2wV5jI">
      <node concept="l2Vlx" id="5Xb8BFgnghN" role="2iSdaV" />
      <node concept="3F1sOY" id="5Xb8BFgnghO" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="5Xb8BFgnghP" role="3EZMnx">
        <property role="3F0ifm" value="?" />
        <node concept="VPM3Z" id="5Xb8BFgnghQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5Xb8BFgnghR" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5Xb8BFglYQ5" resolve="ifTrue" />
      </node>
      <node concept="3F0ifn" id="5Xb8BFgnghS" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="VPM3Z" id="5Xb8BFgnghT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5Xb8BFgnghU" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:5Xb8BFglYQ6" resolve="ifFalse" />
      </node>
    </node>
  </node>
</model>

