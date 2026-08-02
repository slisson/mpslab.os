<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2deed876-ef96-4a1a-b4f9-11ac8666f5df(de.q60.mps.lang.typescript.unitTest.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2rf1" ref="r:3294770e-3023-4d24-9850-53098ac7516e(de.q60.mps.lang.typescript.unitTest.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
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
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
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
  </registry>
  <node concept="24kQdi" id="6WKYICFA25c">
    <ref role="1XX52x" to="2rf1:6WKYICF_RIG" resolve="TSTestCase" />
    <node concept="3EZMnI" id="6WKYICFA25e" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA25f" role="2iSdaV" />
      <node concept="3F0ifn" id="6WKYICFA25g" role="3EZMnx">
        <property role="3F0ifm" value="test case" />
      </node>
      <node concept="3F0A7n" id="6WKYICFA25h" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA25i" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="6WKYICFA25j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6WKYICFA25k" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIK" resolve="testMethods" />
        <node concept="l2Vlx" id="6WKYICFA25l" role="2czzBx" />
        <node concept="lj46D" id="6WKYICFA25m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="6WKYICFA25n" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6WKYICFA25o" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="6WKYICFA25p" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFA25S">
    <ref role="1XX52x" to="2rf1:6WKYICF_RIL" resolve="TSTestMethod" />
    <node concept="3EZMnI" id="6WKYICFA25U" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA25V" role="2iSdaV" />
      <node concept="3F0ifn" id="6WKYICFA25W" role="3EZMnx">
        <property role="3F0ifm" value="test" />
      </node>
      <node concept="3F0A7n" id="6WKYICFA25X" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA25Y" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="6WKYICFA25Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6WKYICFA260" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIN" resolve="body" />
        <node concept="l2Vlx" id="6WKYICFA261" role="2czzBx" />
        <node concept="lj46D" id="6WKYICFA262" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="6WKYICFA263" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6WKYICFA264" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="6WKYICFA265" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFA26F">
    <ref role="1XX52x" to="2rf1:6WKYICF_RIO" resolve="TSAssertTrue" />
    <node concept="3EZMnI" id="6WKYICFA26H" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA26I" role="2iSdaV" />
      <node concept="PMmxH" id="6WKYICFA26J" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6WKYICFA26K" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIQ" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA26L" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6WKYICFA26M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFA27v">
    <ref role="1XX52x" to="2rf1:6WKYICF_RIS" resolve="TSAssertFalse" />
    <node concept="3EZMnI" id="6WKYICFA27x" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA27y" role="2iSdaV" />
      <node concept="PMmxH" id="6WKYICFA27z" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6WKYICFA27$" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIU" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA27_" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6WKYICFA27A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFA28t">
    <ref role="1XX52x" to="2rf1:6WKYICF_RIW" resolve="TSAssertEquals" />
    <node concept="3EZMnI" id="6WKYICFA28v" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA28w" role="2iSdaV" />
      <node concept="PMmxH" id="6WKYICFA28x" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6WKYICFA28y" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIY" resolve="actual" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA28z" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="6WKYICFA28$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6WKYICFA28_" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RIZ" resolve="expected" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA28A" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6WKYICFA28B" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFA29C">
    <ref role="1XX52x" to="2rf1:6WKYICF_RJ1" resolve="TSAssertNotEquals" />
    <node concept="3EZMnI" id="6WKYICFA29E" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFA29F" role="2iSdaV" />
      <node concept="PMmxH" id="6WKYICFA29G" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6WKYICFA29H" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RJ3" resolve="actual" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA29I" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="6WKYICFA29J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6WKYICFA29K" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICF_RJ4" resolve="expected" />
      </node>
      <node concept="3F0ifn" id="6WKYICFA29L" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6WKYICFA29M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6WKYICFMY64">
    <ref role="1XX52x" to="2rf1:6WKYICFMSWv" resolve="TSFail" />
    <node concept="3EZMnI" id="6WKYICFMY66" role="2wV5jI">
      <node concept="l2Vlx" id="6WKYICFMY67" role="2iSdaV" />
      <node concept="PMmxH" id="6WKYICFMY68" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6WKYICFMY69" role="3EZMnx">
        <ref role="1NtTu8" to="2rf1:6WKYICFMSWx" resolve="message" />
      </node>
      <node concept="3F0ifn" id="6WKYICFMY6a" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="6WKYICFMY6b" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

