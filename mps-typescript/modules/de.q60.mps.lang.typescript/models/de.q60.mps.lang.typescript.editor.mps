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
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="414384289274418283" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Group" flags="ng" index="3ft6gV">
        <child id="414384289274424750" name="condition" index="3ft5RY" />
        <child id="414384289274424751" name="parts" index="3ft5RZ" />
      </concept>
      <concept id="414384289274418284" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Condition" flags="ig" index="3ft6gW" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  <node concept="24kQdi" id="19cEah6HauU">
    <ref role="1XX52x" to="mo8k:1TCdlWHrFuF" resolve="TSConsoleLog" />
    <node concept="3EZMnI" id="19cEah6HauV" role="2wV5jI">
      <node concept="3F0ifn" id="19cEah6HauW" role="3EZMnx">
        <property role="3F0ifm" value="console.log(" />
      </node>
      <node concept="3F1sOY" id="19cEah6HauX" role="3EZMnx">
        <ref role="1NtTu8" to="mo8k:1TCdlWHrFuH" resolve="argument" />
      </node>
      <node concept="3F0ifn" id="19cEah6HauY" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="19cEah6HauZ" role="2iSdaV" />
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
</model>

