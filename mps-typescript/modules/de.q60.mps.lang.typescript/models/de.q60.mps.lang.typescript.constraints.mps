<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9234d2d6-55e6-492b-919c-1164aa26e735(de.q60.mps.lang.typescript.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="6WKYICG2DK_">
    <ref role="1M2myG" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
    <node concept="1N5Pfh" id="6WKYICG2DKA" role="1Mr941">
      <ref role="1N5Vy1" to="mo8k:6WKYICFF5zd" resolve="declaration" />
      <node concept="1dDu$B" id="6WKYICG2DKB" role="1N6uqs">
        <ref role="1dDu$A" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6WKYICG9K0x">
    <ref role="1M2myG" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
    <node concept="EnEH3" id="6WKYICG9K0y" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="6WKYICG9K0z" role="QCWH9">
        <node concept="3clFbS" id="6WKYICG9K0$" role="2VODD2">
          <node concept="3clFbF" id="6WKYICG9K0B" role="3cqZAp">
            <node concept="2YIFZM" id="6WKYICG9K0_" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="6WKYICG9K0A" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="465JEkTd3J$">
    <ref role="1M2myG" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    <node concept="EnEH3" id="465JEkTd3J_" role="1MhHOB">
      <ref role="EomxK" to="mo8k:1TCdlWHrFuK" resolve="escapedValue" />
      <node concept="QB0g5" id="465JEkTd3JA" role="QCWH9">
        <node concept="3clFbS" id="465JEkTd3JB" role="2VODD2">
          <node concept="3clFbF" id="465JEkTd3JC" role="3cqZAp">
            <node concept="2YIFZM" id="465JEkTd3JD" role="3clFbG">
              <ref role="37wK5l" to="tw2a:1dYSrZvLegT" resolve="isValidWhileTyping" />
              <ref role="1Pybhc" to="tw2a:1dYSrZvFRsW" resolve="TSStringUtil" />
              <node concept="1Wqviy" id="465JEkTd3JE" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6fqSeL">
    <ref role="1M2myG" to="mo8k:465JEkTIpO7" resolve="TSIConciseBody" />
    <ref role="1MND4H" to="mo8k:465JEkTIpRg" resolve="TSExpressionBody" />
  </node>
  <node concept="1M2fIO" id="5OpYk6fQO0b">
    <ref role="1M2myG" to="mo8k:5OpYk6fOBiT" resolve="TSMemberAccess" />
    <node concept="EnEH3" id="5OpYk6fQO0c" role="1MhHOB">
      <ref role="EomxK" to="mo8k:5OpYk6fOBiV" resolve="name" />
      <node concept="QB0g5" id="5OpYk6fQO0d" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6fQO0e" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6fQO0f" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6fQO0g" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6fQO0h" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g1prc">
    <ref role="1M2myG" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
    <node concept="EnEH3" id="5OpYk6g1prd" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g1pre" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g1prf" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g1prg" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g1prh" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g1pri" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g1prj">
    <ref role="1M2myG" to="mo8k:5OpYk6fJr5w" resolve="TSPropertyAssignment" />
    <node concept="EnEH3" id="5OpYk6g1prk" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g1prl" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g1prm" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g1prn" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g1pro" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g1prp" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6g8As$">
    <ref role="1M2myG" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
    <node concept="EnEH3" id="5OpYk6g8As_" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="5OpYk6g8AsA" role="QCWH9">
        <node concept="3clFbS" id="5OpYk6g8AsB" role="2VODD2">
          <node concept="3clFbF" id="5OpYk6g8AsC" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6g8AsD" role="3clFbG">
              <ref role="37wK5l" to="tw2a:6WKYICG81rF" resolve="isValidName" />
              <ref role="1Pybhc" to="tw2a:6WKYICG81rx" resolve="TSNameUtil" />
              <node concept="1Wqviy" id="5OpYk6g8AsE" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5OpYk6hoAf3">
    <ref role="1M2myG" to="mo8k:5OpYk6gCUJW" resolve="TSPropertyAccess" />
    <node concept="1N5Pfh" id="5OpYk6hoAf4" role="1Mr941">
      <ref role="1N5Vy1" to="mo8k:5OpYk6gCUJZ" resolve="property" />
      <node concept="3dgokm" id="5OpYk6hoBZN" role="1N6uqs">
        <node concept="3clFbS" id="5OpYk6hoBZP" role="2VODD2">
          <node concept="3cpWs8" id="5OpYk6hoC0R" role="3cqZAp">
            <node concept="3cpWsn" id="5OpYk6hoC0U" role="3cpWs9">
              <property role="TrG5h" value="candidate" />
              <node concept="3Tqbb2" id="5OpYk6hoC0W" role="1tU5fm" />
              <node concept="1eOMI4" id="5OpYk6hoC0X" role="33vP2m">
                <node concept="3K4zz7" id="5OpYk6hoC0Z" role="1eOMHV">
                  <node concept="2OqwBi" id="5OpYk6hoC13" role="3K4Cdx">
                    <node concept="3kakTB" id="5OpYk6hoC16" role="2Oq$k0" />
                    <node concept="3w_OXm" id="5OpYk6hoC17" role="2OqNvi" />
                  </node>
                  <node concept="2rP1CM" id="5OpYk6hoC18" role="3K4E3e" />
                  <node concept="3kakTB" id="5OpYk6hoC19" role="3K4GZi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5OpYk6ht2lP" role="3cqZAp">
            <node concept="3cpWsn" id="5OpYk6ht2lS" role="3cpWs9">
              <property role="TrG5h" value="access" />
              <node concept="3Tqbb2" id="5OpYk6ht2lU" role="1tU5fm">
                <ref role="ehGHo" to="mo8k:5OpYk6gCUJW" resolve="TSPropertyAccess" />
              </node>
              <node concept="1eOMI4" id="5OpYk6ht2lV" role="33vP2m">
                <node concept="3K4zz7" id="5OpYk6ht2lX" role="1eOMHV">
                  <node concept="2OqwBi" id="5OpYk6ht2m1" role="3K4Cdx">
                    <node concept="37vLTw" id="5OpYk6ht2m4" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OpYk6hoC0U" resolve="candidate" />
                    </node>
                    <node concept="1mIQ4w" id="5OpYk6ht2m5" role="2OqNvi">
                      <node concept="chp4Y" id="5OpYk6ht2m7" role="cj9EA">
                        <ref role="cht4Q" to="mo8k:5OpYk6gCUJW" resolve="TSPropertyAccess" />
                      </node>
                    </node>
                  </node>
                  <node concept="1PxgMI" id="5OpYk6ht2m8" role="3K4E3e">
                    <node concept="37vLTw" id="5OpYk6ht2mb" role="1m5AlR">
                      <ref role="3cqZAo" node="5OpYk6hoC0U" resolve="candidate" />
                    </node>
                    <node concept="chp4Y" id="5OpYk6ht2mc" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:5OpYk6gCUJW" resolve="TSPropertyAccess" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5OpYk6ht2md" role="3K4GZi">
                    <node concept="37vLTw" id="5OpYk6ht2mg" role="2Oq$k0">
                      <ref role="3cqZAo" node="5OpYk6hoC0U" resolve="candidate" />
                    </node>
                    <node concept="2Xjw5R" id="5OpYk6ht2mh" role="2OqNvi">
                      <node concept="1xMEDy" id="5OpYk6ht2mk" role="1xVPHs">
                        <node concept="chp4Y" id="5OpYk6ht2mm" role="ri$Ld">
                          <ref role="cht4Q" to="mo8k:5OpYk6gCUJW" resolve="TSPropertyAccess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5OpYk6ht2mn" role="3cqZAp">
            <node concept="3clFbC" id="5OpYk6ht2mq" role="3clFbw">
              <node concept="37vLTw" id="5OpYk6ht2mt" role="3uHU7B">
                <ref role="3cqZAo" node="5OpYk6ht2lS" resolve="access" />
              </node>
              <node concept="10Nm6u" id="5OpYk6ht2mu" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="5OpYk6ht2mv" role="3clFbx">
              <node concept="3cpWs6" id="5OpYk6ht2mw" role="3cqZAp">
                <node concept="2ShNRf" id="5OpYk6ht2mx" role="3cqZAk">
                  <node concept="1pGfFk" id="5OpYk6ht2mz" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="35tq:~EmptyScope.&lt;init&gt;()" resolve="EmptyScope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5OpYk6hoC1P" role="3cqZAp">
            <node concept="2YIFZM" id="5OpYk6hoC1Q" role="3cqZAk">
              <ref role="1Pybhc" to="35tq:~ListScope" resolve="ListScope" />
              <ref role="37wK5l" to="35tq:~ListScope.forNamedElements(java.lang.Iterable)" resolve="forNamedElements" />
              <node concept="10QFUN" id="5OpYk6hoC1R" role="37wK5m">
                <node concept="A3Dl8" id="5OpYk6hoC1U" role="10QFUM">
                  <node concept="3Tqbb2" id="5OpYk6hoC1W" role="A3Ik2" />
                </node>
                <node concept="2YIFZM" id="5OpYk6hoC1X" role="10QFUP">
                  <ref role="1Pybhc" to="tw2a:6WKYICH2zO1" resolve="TSTypeUtil" />
                  <ref role="37wK5l" to="tw2a:5OpYk6fGkrL" resolve="propertiesOf" />
                  <node concept="2OqwBi" id="5OpYk6hw3gu" role="37wK5m">
                    <node concept="2OqwBi" id="5OpYk6hw3gx" role="2Oq$k0">
                      <node concept="37vLTw" id="5OpYk6hw3g$" role="2Oq$k0">
                        <ref role="3cqZAo" node="5OpYk6ht2lS" resolve="access" />
                      </node>
                      <node concept="3TrEf2" id="5OpYk6hw3g_" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5OpYk6gCUJY" resolve="operand" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="5OpYk6hw3gA" role="2OqNvi">
                      <ref role="37wK5l" to="tw2a:5OpYk6htSiJ" resolve="writtenType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1jfLtDTBQti">
    <ref role="1M2myG" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
    <node concept="1N5Pfh" id="1jfLtDTBQtj" role="1Mr941">
      <ref role="1N5Vy1" to="mo8k:1jfLtDTxEF9" resolve="declaration" />
      <node concept="1dDu$B" id="1jfLtDTBQtk" role="1N6uqs">
        <ref role="1dDu$A" to="mo8k:1jfLtDTxEqQ" resolve="TSITypeDeclaration" />
      </node>
    </node>
  </node>
</model>

