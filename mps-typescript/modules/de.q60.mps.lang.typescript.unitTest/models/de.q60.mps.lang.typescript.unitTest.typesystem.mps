<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ba95e301-3916-46c4-a4ca-5207c30e2af0(de.q60.mps.lang.typescript.unitTest.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="2rf1" ref="r:3294770e-3023-4d24-9850-53098ac7516e(de.q60.mps.lang.typescript.unitTest.structure)" implicit="true" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="6WKYICFE1CY">
    <property role="TrG5h" value="check_TSAssertTrue" />
    <node concept="1YaCAy" id="6WKYICFE1D1" role="1YuTPh">
      <property role="TrG5h" value="assertion" />
      <ref role="1YaFvo" to="2rf1:6WKYICF_RIO" resolve="TSAssertTrue" />
    </node>
    <node concept="3clFbS" id="6WKYICFE1D2" role="18ibNy">
      <node concept="3cpWs8" id="6WKYICFE1D3" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICFE1D6" role="3cpWs9">
          <property role="TrG5h" value="conditionType" />
          <node concept="3Tqbb2" id="6WKYICFE1D8" role="1tU5fm" />
          <node concept="2OqwBi" id="6WKYICFE1D9" role="33vP2m">
            <node concept="2OqwBi" id="6WKYICFE1Dc" role="2Oq$k0">
              <node concept="1YBJjd" id="6WKYICFE1Df" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFE1D1" resolve="assertion" />
              </node>
              <node concept="3TrEf2" id="6WKYICFE1Dg" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIQ" resolve="condition" />
              </node>
            </node>
            <node concept="3JvlWi" id="6WKYICFE1Dh" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICFE1Di" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICFE1Dl" role="3clFbw">
          <node concept="1Wc70l" id="6WKYICFE1Do" role="3uHU7B">
            <node concept="3y3z36" id="6WKYICFE1Dr" role="3uHU7B">
              <node concept="37vLTw" id="6WKYICFE1Du" role="3uHU7B">
                <ref role="3cqZAo" node="6WKYICFE1D6" resolve="conditionType" />
              </node>
              <node concept="10Nm6u" id="6WKYICFE1Dv" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="6WKYICFE1Dw" role="3uHU7w">
              <node concept="37vLTw" id="6WKYICFE1Dz" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICFE1D6" resolve="conditionType" />
              </node>
              <node concept="1mIQ4w" id="6WKYICFE1D$" role="2OqNvi">
                <node concept="chp4Y" id="6WKYICFE1DA" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6WKYICFE1DB" role="3uHU7w">
            <node concept="1eOMI4" id="6WKYICFE1DD" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICFE1DF" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICFE1DI" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICFE1D6" resolve="conditionType" />
                </node>
                <node concept="1mIQ4w" id="6WKYICFE1DJ" role="2OqNvi">
                  <node concept="chp4Y" id="6WKYICFE1DL" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:4R4WbZLH5ta" resolve="TSBooleanType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICFE1DM" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICFE1DN" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICFE1DQ" role="2MkJ7o">
              <property role="Xl_RC" value="The condition of an assertion must be a boolean expression" />
            </node>
            <node concept="2OqwBi" id="6WKYICFE1DR" role="1urrMF">
              <node concept="1YBJjd" id="6WKYICFE1DU" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFE1D1" resolve="assertion" />
              </node>
              <node concept="3TrEf2" id="6WKYICFE1DV" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIQ" resolve="condition" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICFE1WI">
    <property role="TrG5h" value="check_TSAssertFalse" />
    <node concept="1YaCAy" id="6WKYICFE1WL" role="1YuTPh">
      <property role="TrG5h" value="assertion" />
      <ref role="1YaFvo" to="2rf1:6WKYICF_RIS" resolve="TSAssertFalse" />
    </node>
    <node concept="3clFbS" id="6WKYICFE1WM" role="18ibNy">
      <node concept="3cpWs8" id="6WKYICFE1WN" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICFE1WQ" role="3cpWs9">
          <property role="TrG5h" value="conditionType" />
          <node concept="3Tqbb2" id="6WKYICFE1WS" role="1tU5fm" />
          <node concept="2OqwBi" id="6WKYICFE1WT" role="33vP2m">
            <node concept="2OqwBi" id="6WKYICFE1WW" role="2Oq$k0">
              <node concept="1YBJjd" id="6WKYICFE1WZ" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFE1WL" resolve="assertion" />
              </node>
              <node concept="3TrEf2" id="6WKYICFE1X0" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIU" resolve="condition" />
              </node>
            </node>
            <node concept="3JvlWi" id="6WKYICFE1X1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICFE1X2" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICFE1X5" role="3clFbw">
          <node concept="1Wc70l" id="6WKYICFE1X8" role="3uHU7B">
            <node concept="3y3z36" id="6WKYICFE1Xb" role="3uHU7B">
              <node concept="37vLTw" id="6WKYICFE1Xe" role="3uHU7B">
                <ref role="3cqZAo" node="6WKYICFE1WQ" resolve="conditionType" />
              </node>
              <node concept="10Nm6u" id="6WKYICFE1Xf" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="6WKYICFE1Xg" role="3uHU7w">
              <node concept="37vLTw" id="6WKYICFE1Xj" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICFE1WQ" resolve="conditionType" />
              </node>
              <node concept="1mIQ4w" id="6WKYICFE1Xk" role="2OqNvi">
                <node concept="chp4Y" id="6WKYICFE1Xm" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6WKYICFE1Xn" role="3uHU7w">
            <node concept="1eOMI4" id="6WKYICFE1Xp" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICFE1Xr" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICFE1Xu" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICFE1WQ" resolve="conditionType" />
                </node>
                <node concept="1mIQ4w" id="6WKYICFE1Xv" role="2OqNvi">
                  <node concept="chp4Y" id="6WKYICFE1Xx" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:4R4WbZLH5ta" resolve="TSBooleanType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICFE1Xy" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICFE1Xz" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICFE1XA" role="2MkJ7o">
              <property role="Xl_RC" value="The condition of an assertion must be a boolean expression" />
            </node>
            <node concept="2OqwBi" id="6WKYICFE1XB" role="1urrMF">
              <node concept="1YBJjd" id="6WKYICFE1XE" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFE1WL" resolve="assertion" />
              </node>
              <node concept="3TrEf2" id="6WKYICFE1XF" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIU" resolve="condition" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

