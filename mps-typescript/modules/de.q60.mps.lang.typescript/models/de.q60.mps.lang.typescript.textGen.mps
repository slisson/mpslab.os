<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0517b13e-af8e-44dd-a489-0eb64a0cb33a(de.q60.mps.lang.typescript.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="6QS6LNOU65p">
    <ref role="WuzLi" to="mo8k:4Ul7eGthLpT" resolve="TSConsole" />
    <node concept="11bSqf" id="6QS6LNOU65q" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNOU65s" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNOU65t" role="3cqZAp">
          <node concept="la8eA" id="6QS6LNOU65v" role="lcghm">
            <property role="lacIc" value="console" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtlmB">
    <ref role="WuzLi" to="mo8k:1TCdlWHrFu_" resolve="TSModule" />
    <node concept="9MYSb" id="6QS6LNPtlmC" role="33IsuW">
      <node concept="3clFbS" id="6QS6LNPtlmE" role="2VODD2">
        <node concept="3cpWs6" id="6QS6LNPtlmF" role="3cqZAp">
          <node concept="Xl_RD" id="6QS6LNPtlmG" role="3cqZAk">
            <property role="Xl_RC" value="ts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="6QS6LNPtlmH" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtlmJ" role="2VODD2">
        <node concept="2Gpval" id="6QS6LNPtlmK" role="3cqZAp">
          <node concept="2GrKxI" id="6QS6LNPtlmO" role="2Gsz3X">
            <property role="TrG5h" value="stmt" />
          </node>
          <node concept="2OqwBi" id="6QS6LNPtlmP" role="2GsD0m">
            <node concept="117lpO" id="6QS6LNPtlmS" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6QS6LNPtlmT" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:1TCdlWHrFuB" resolve="statements" />
            </node>
          </node>
          <node concept="3clFbS" id="6QS6LNPtlmU" role="2LFqv$">
            <node concept="1bpajm" id="6QS6LNPtlmV" role="3cqZAp" />
            <node concept="lc7rE" id="6QS6LNPtlmW" role="3cqZAp">
              <node concept="l9hG8" id="6QS6LNPtlmY" role="lcghm">
                <node concept="2GrUjf" id="6QS6LNPtln0" role="lb14g">
                  <ref role="2Gs0qQ" node="6QS6LNPtlmO" resolve="stmt" />
                </node>
              </node>
              <node concept="l8MVK" id="6QS6LNPtln1" role="lcghm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtlLV">
    <ref role="WuzLi" to="mo8k:1TCdlWHrFuC" resolve="TSExpressionStatement" />
    <node concept="11bSqf" id="6QS6LNPtlLW" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtlLY" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtlLZ" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtlM1" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtlM3" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtlM6" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtlM7" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:1TCdlWHrFuE" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtlM8" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtmuc">
    <ref role="WuzLi" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
    <node concept="11bSqf" id="6QS6LNPtmud" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtmuf" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtmug" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtmui" role="lcghm">
            <node concept="2OqwBi" id="6WKYICG563s" role="lb14g">
              <node concept="117lpO" id="6WKYICG563v" role="2Oq$k0" />
              <node concept="3TrcHB" id="6WKYICG563w" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPttYX">
    <ref role="WuzLi" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    <node concept="11bSqf" id="6QS6LNPttYY" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPttZ0" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPttZ1" role="3cqZAp">
          <node concept="la8eA" id="6QS6LNPttZ3" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
          <node concept="l9hG8" id="6QS6LNPttZ4" role="lcghm">
            <node concept="2OqwBi" id="1dYSrZvHmh0" role="lb14g">
              <node concept="117lpO" id="1dYSrZvHmh3" role="2Oq$k0" />
              <node concept="3zqWPK" id="1dYSrZvHmh4" role="2OqNvi">
                <ref role="37wK5l" to="tw2a:1dYSrZvGIQu" resolve="escapedValue" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPttZz" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtuB7">
    <ref role="WuzLi" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
    <node concept="11bSqf" id="6QS6LNPtuB8" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtuBa" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFLFwP" role="3cqZAp">
          <node concept="l9hG8" id="6WKYICFLFwR" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFLFwT" role="lb14g">
              <node concept="2OqwBi" id="6WKYICFLFwW" role="2Oq$k0">
                <node concept="117lpO" id="6WKYICFLFwZ" role="2Oq$k0" />
                <node concept="3TrEf2" id="6WKYICFLFx0" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:6WKYICFF5zd" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="6WKYICFLFx1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtv0o">
    <ref role="WuzLi" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
    <node concept="11bSqf" id="6QS6LNPtv0p" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtv0r" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtv0s" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtv0u" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtv0w" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtv0z" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtv0$" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX5" resolve="operand" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtv0_" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l9hG8" id="6QS6LNPtv0A" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtv0C" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtv0F" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtv0G" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX6" resolve="operation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtvth">
    <ref role="WuzLi" to="mo8k:1UjCfdjUYXa" resolve="TSCallOperation" />
    <node concept="11bSqf" id="6QS6LNPtvti" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtvtk" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtvtl" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtvtn" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtvtp" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtvts" role="2Oq$k0" />
              <node concept="3TrcHB" id="6QS6LNPtvtt" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:1UjCfdjUYXc" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtvtu" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="6QS6LNPtvtv" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="6QS6LNPtvtx" role="lbANJ">
              <node concept="117lpO" id="6QS6LNPtvt$" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6QS6LNPtvt_" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:1UjCfdjUYXd" resolve="argument" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtvtA" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtvAK">
    <ref role="WuzLi" to="mo8k:4Ul7eGthLpX" resolve="TSConsoleOp_Log" />
    <node concept="11bSqf" id="6QS6LNPtvAL" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtvAN" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtvAO" role="3cqZAp">
          <node concept="la8eA" id="6QS6LNPtvAQ" role="lcghm">
            <property role="lacIc" value="log(" />
          </node>
          <node concept="l9S2W" id="6QS6LNPtvAR" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=", " />
            <node concept="2OqwBi" id="6QS6LNPtvAT" role="lbANJ">
              <node concept="117lpO" id="6QS6LNPtvAW" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6QS6LNPtvAX" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:4Ul7eGthLpY" resolve="argument" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtvAY" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtvLL">
    <ref role="WuzLi" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
    <node concept="11bSqf" id="6QS6LNPtvLM" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtvLO" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtvLP" role="3cqZAp">
          <node concept="la8eA" id="6QS6LNPtvLR" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9hG8" id="6QS6LNPtvLS" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtvLU" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtvLX" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtvLY" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtvLZ" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtwd_">
    <ref role="WuzLi" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
    <node concept="11bSqf" id="6QS6LNPtwdA" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtwdC" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtwdD" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtwdF" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtwdH" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtwdK" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtwdL" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtwdM" role="lcghm">
            <property role="lacIc" value=" ? " />
          </node>
          <node concept="l9hG8" id="6QS6LNPtwdN" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtwdP" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtwdS" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtwdT" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ5" resolve="ifTrue" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6QS6LNPtwdU" role="lcghm">
            <property role="lacIc" value=" : " />
          </node>
          <node concept="l9hG8" id="6QS6LNPtwdV" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtwdX" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtwe0" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtwe1" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ6" resolve="ifFalse" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6QS6LNPtRqK">
    <ref role="WuzLi" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="11bSqf" id="6QS6LNPtRqL" role="11c4hB">
      <node concept="3clFbS" id="6QS6LNPtRqN" role="2VODD2">
        <node concept="lc7rE" id="6QS6LNPtRqO" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtRqQ" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtRqS" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtRqV" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtRqW" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
          </node>
          <node concept="l9hG8" id="6QS6LNPtRqX" role="lcghm">
            <node concept="3cpWs3" id="6QS6LNPtRqZ" role="lb14g">
              <node concept="3cpWs3" id="6QS6LNPtRr2" role="3uHU7B">
                <node concept="Xl_RD" id="6QS6LNPtRr5" role="3uHU7B">
                  <property role="Xl_RC" value=" " />
                </node>
                <node concept="2OqwBi" id="6QS6LNPtRr6" role="3uHU7w">
                  <node concept="2OqwBi" id="6QS6LNPtRr9" role="2Oq$k0">
                    <node concept="117lpO" id="6QS6LNPtRrc" role="2Oq$k0" />
                    <node concept="2yIwOk" id="6QS6LNPtRrd" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="6QS6LNPtRre" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="6QS6LNPtRrf" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
            </node>
          </node>
          <node concept="l9hG8" id="6QS6LNPtRrg" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtRri" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtRrl" role="2Oq$k0" />
              <node concept="3TrEf2" id="6QS6LNPtRrm" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFLFVB">
    <ref role="WuzLi" to="mo8k:6WKYICFF5gs" resolve="TSBlock" />
    <node concept="11bSqf" id="6WKYICFLFVC" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFLFVE" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFLFVF" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFLFVH" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="6WKYICFLFVI" role="lcghm" />
        </node>
        <node concept="3izx1p" id="6WKYICFLFVJ" role="3cqZAp">
          <node concept="3clFbS" id="6WKYICFLFVL" role="3izTki">
            <node concept="2Gpval" id="6WKYICFLFVM" role="3cqZAp">
              <node concept="2GrKxI" id="6WKYICFLFVQ" role="2Gsz3X">
                <property role="TrG5h" value="stmt" />
              </node>
              <node concept="2OqwBi" id="6WKYICFLFVR" role="2GsD0m">
                <node concept="117lpO" id="6WKYICFLFVU" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6WKYICFLFVV" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:6WKYICFF5gv" resolve="statements" />
                </node>
              </node>
              <node concept="3clFbS" id="6WKYICFLFVW" role="2LFqv$">
                <node concept="1bpajm" id="6WKYICFLFVX" role="3cqZAp" />
                <node concept="lc7rE" id="6WKYICFLFVY" role="3cqZAp">
                  <node concept="l9hG8" id="6WKYICFLFW0" role="lcghm">
                    <node concept="2GrUjf" id="6WKYICFLFW2" role="lb14g">
                      <ref role="2Gs0qQ" node="6WKYICFLFVQ" resolve="stmt" />
                    </node>
                  </node>
                  <node concept="l8MVK" id="6WKYICFLFW3" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="6WKYICFLFW4" role="3cqZAp" />
        <node concept="lc7rE" id="6WKYICFLFW5" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFLFW7" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFLGZ7">
    <ref role="WuzLi" to="mo8k:6WKYICFF5pj" resolve="TSIfStatement" />
    <node concept="11bSqf" id="6WKYICFLGZ8" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFLGZa" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFLGZb" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFLGZd" role="lcghm">
            <property role="lacIc" value="if (" />
          </node>
          <node concept="l9hG8" id="6WKYICFLGZe" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFLGZg" role="lb14g">
              <node concept="117lpO" id="6WKYICFLGZj" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLGZk" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5pl" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFLGZl" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="6WKYICFLGZm" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFLGZo" role="lb14g">
              <node concept="117lpO" id="6WKYICFLGZr" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLGZs" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5pm" resolve="thenBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6WKYICFLGZt" role="3cqZAp">
          <node concept="2GrKxI" id="6WKYICFLGZx" role="2Gsz3X">
            <property role="TrG5h" value="clause" />
          </node>
          <node concept="2OqwBi" id="6WKYICFLGZy" role="2GsD0m">
            <node concept="117lpO" id="6WKYICFLGZ_" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6WKYICFLGZA" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:6WKYICFF5pn" resolve="elseIfClauses" />
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICFLGZB" role="2LFqv$">
            <node concept="lc7rE" id="6WKYICFLGZC" role="3cqZAp">
              <node concept="l9hG8" id="6WKYICFLGZE" role="lcghm">
                <node concept="2GrUjf" id="6WKYICFLGZG" role="lb14g">
                  <ref role="2Gs0qQ" node="6WKYICFLGZx" resolve="clause" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WKYICFLGZH" role="3cqZAp">
          <node concept="3y3z36" id="6WKYICFLGZK" role="3clFbw">
            <node concept="2OqwBi" id="6WKYICFLGZN" role="3uHU7B">
              <node concept="117lpO" id="6WKYICFLGZQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLGZR" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5po" resolve="elseBlock" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFLGZS" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6WKYICFLGZT" role="3clFbx">
            <node concept="lc7rE" id="6WKYICFLGZU" role="3cqZAp">
              <node concept="la8eA" id="6WKYICFLGZW" role="lcghm">
                <property role="lacIc" value=" else " />
              </node>
              <node concept="l9hG8" id="6WKYICFLGZX" role="lcghm">
                <node concept="2OqwBi" id="6WKYICFLGZZ" role="lb14g">
                  <node concept="117lpO" id="6WKYICFLH02" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6WKYICFLH03" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5po" resolve="elseBlock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFLHIL">
    <ref role="WuzLi" to="mo8k:6WKYICFF5nG" resolve="TSElseIfClause" />
    <node concept="11bSqf" id="6WKYICFLHIM" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFLHIO" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFLHIP" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFLHIR" role="lcghm">
            <property role="lacIc" value=" else if (" />
          </node>
          <node concept="l9hG8" id="6WKYICFLHIS" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFLHIU" role="lb14g">
              <node concept="117lpO" id="6WKYICFLHIX" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLHIY" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5nH" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFLHIZ" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="6WKYICFLHJ0" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFLHJ2" role="lb14g">
              <node concept="117lpO" id="6WKYICFLHJ5" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLHJ6" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5nI" resolve="block" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFM6ox">
    <ref role="WuzLi" to="mo8k:6WKYICFF5hS" resolve="TSVariableDeclaration" />
    <node concept="11bSqf" id="6WKYICFM6oy" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFM6o$" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFM6o_" role="3cqZAp">
          <node concept="l9hG8" id="6WKYICFM6oB" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFM6oD" role="lb14g">
              <node concept="2OqwBi" id="6WKYICFM6oG" role="2Oq$k0">
                <node concept="117lpO" id="6WKYICFM6oJ" role="2Oq$k0" />
                <node concept="2yIwOk" id="6WKYICFM6oK" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="6WKYICFM6oL" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFM6oM" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="6WKYICFM6oN" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFM6oP" role="lb14g">
              <node concept="117lpO" id="6WKYICFM6oS" role="2Oq$k0" />
              <node concept="3TrcHB" id="6WKYICFM6oT" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WKYICFM6oU" role="3cqZAp">
          <node concept="3y3z36" id="6WKYICFM6oX" role="3clFbw">
            <node concept="2OqwBi" id="6WKYICFM6p0" role="3uHU7B">
              <node concept="117lpO" id="6WKYICFM6p3" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFM6p4" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFM6p5" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6WKYICFM6p6" role="3clFbx">
            <node concept="lc7rE" id="6WKYICFM6p7" role="3cqZAp">
              <node concept="la8eA" id="6WKYICFM6p9" role="lcghm">
                <property role="lacIc" value=": " />
              </node>
              <node concept="l9hG8" id="6WKYICFM6pa" role="lcghm">
                <node concept="2OqwBi" id="6WKYICFM6pc" role="lb14g">
                  <node concept="117lpO" id="6WKYICFM6pf" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6WKYICFM6pg" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WKYICFM6ph" role="3cqZAp">
          <node concept="3y3z36" id="6WKYICFM6pk" role="3clFbw">
            <node concept="2OqwBi" id="6WKYICFM6pn" role="3uHU7B">
              <node concept="117lpO" id="6WKYICFM6pq" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFM6pr" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFM6ps" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6WKYICFM6pt" role="3clFbx">
            <node concept="lc7rE" id="6WKYICFM6pu" role="3cqZAp">
              <node concept="la8eA" id="6WKYICFM6pw" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="6WKYICFM6px" role="lcghm">
                <node concept="2OqwBi" id="6WKYICFM6pz" role="lb14g">
                  <node concept="117lpO" id="6WKYICFM6pA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6WKYICFM6pB" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6WKYICFM6pC" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFM6pE" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFM6Rg">
    <ref role="WuzLi" to="mo8k:4R4WbZLH5ta" resolve="TSBooleanType" />
    <node concept="11bSqf" id="6WKYICFM6Rh" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFM6Rj" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFM6Rk" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFM6Rm" role="lcghm">
            <property role="lacIc" value="boolean" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFM6X0">
    <ref role="WuzLi" to="mo8k:4R4WbZLH5um" resolve="TSNumberType" />
    <node concept="11bSqf" id="6WKYICFM6X1" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFM6X3" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFM6X4" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFM6X6" role="lcghm">
            <property role="lacIc" value="number" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFM72P">
    <ref role="WuzLi" to="mo8k:4R4WbZLH5v$" resolve="TSStringType" />
    <node concept="11bSqf" id="6WKYICFM72Q" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFM72S" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFM72T" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFM72V" role="lcghm">
            <property role="lacIc" value="string" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICGxJ_R">
    <ref role="WuzLi" to="mo8k:6WKYICGq2yd" resolve="TSUnaryOperation" />
    <node concept="11bSqf" id="6WKYICGxJ_S" role="11c4hB">
      <node concept="3clFbS" id="6WKYICGxJ_U" role="2VODD2">
        <node concept="lc7rE" id="6WKYICGxJ_V" role="3cqZAp">
          <node concept="l9hG8" id="6WKYICGxJ_X" role="lcghm">
            <node concept="2OqwBi" id="6WKYICGxJ_Z" role="lb14g">
              <node concept="2OqwBi" id="6WKYICGxJA2" role="2Oq$k0">
                <node concept="117lpO" id="6WKYICGxJA5" role="2Oq$k0" />
                <node concept="2yIwOk" id="6WKYICGxJA6" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="6WKYICGxJA7" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WKYICGxJA8" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICGxJAb" role="3clFbw">
            <node concept="117lpO" id="6WKYICGWl4O" role="2Oq$k0" />
            <node concept="3zqWPK" id="6WKYICGWl4P" role="2OqNvi">
              <ref role="37wK5l" to="tw2a:6WKYICGVvrS" resolve="needsSpaceBeforeOperand" />
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICGxJAm" role="3clFbx">
            <node concept="lc7rE" id="6WKYICGxJB1" role="3cqZAp">
              <node concept="la8eA" id="6WKYICGxJB3" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6WKYICGxJB4" role="3cqZAp">
          <node concept="l9hG8" id="6WKYICGxJB6" role="lcghm">
            <node concept="2OqwBi" id="6WKYICGxJB8" role="lb14g">
              <node concept="117lpO" id="6WKYICGxJBb" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICGxJBc" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICGq2yg" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICGYpn6">
    <ref role="WuzLi" to="mo8k:6WKYICGXUWw" resolve="TSBooleanLiteral" />
    <node concept="11bSqf" id="6WKYICGYpn7" role="11c4hB">
      <node concept="3clFbS" id="6WKYICGYpn9" role="2VODD2">
        <node concept="lc7rE" id="6WKYICGYpna" role="3cqZAp">
          <node concept="l9hG8" id="6WKYICGYpnc" role="lcghm">
            <node concept="2OqwBi" id="6WKYICGYpne" role="lb14g">
              <node concept="2OqwBi" id="6WKYICGYpnh" role="2Oq$k0">
                <node concept="117lpO" id="6WKYICGYpnk" role="2Oq$k0" />
                <node concept="2yIwOk" id="6WKYICGYpnl" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="6WKYICGYpnm" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICGZWVq">
    <ref role="WuzLi" to="mo8k:6WKYICGZsfC" resolve="TSTemplateLiteral" />
    <node concept="11bSqf" id="6WKYICGZWVr" role="11c4hB">
      <node concept="3clFbS" id="6WKYICGZWVt" role="2VODD2">
        <node concept="lc7rE" id="6WKYICGZWVu" role="3cqZAp">
          <node concept="la8eA" id="6WKYICGZWVw" role="lcghm">
            <property role="lacIc" value="`" />
          </node>
          <node concept="l9hG8" id="6WKYICGZWVx" role="lcghm">
            <node concept="2OqwBi" id="6WKYICGZWVz" role="lb14g">
              <node concept="2OqwBi" id="6WKYICGZWVA" role="2Oq$k0">
                <node concept="2OqwBi" id="6WKYICGZWVD" role="2Oq$k0">
                  <node concept="2OqwBi" id="6WKYICGZWVG" role="2Oq$k0">
                    <node concept="117lpO" id="6WKYICGZWVJ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6WKYICGZWVK" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:6WKYICGZsfE" resolve="head" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6WKYICGZWVL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="6WKYICGZWVM" role="37wK5m">
                      <property role="Xl_RC" value="\\" />
                    </node>
                    <node concept="Xl_RD" id="6WKYICGZWVN" role="37wK5m">
                      <property role="Xl_RC" value="\\\\" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6WKYICGZWVO" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="6WKYICGZWVP" role="37wK5m">
                    <property role="Xl_RC" value="`" />
                  </node>
                  <node concept="Xl_RD" id="6WKYICGZWVQ" role="37wK5m">
                    <property role="Xl_RC" value="\\`" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6WKYICGZWVR" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="6WKYICGZWVS" role="37wK5m">
                  <property role="Xl_RC" value="${" />
                </node>
                <node concept="Xl_RD" id="6WKYICGZWVT" role="37wK5m">
                  <property role="Xl_RC" value="\\${" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6WKYICGZWVU" role="3cqZAp">
          <node concept="2GrKxI" id="6WKYICGZWVY" role="2Gsz3X">
            <property role="TrG5h" value="span" />
          </node>
          <node concept="2OqwBi" id="6WKYICGZWVZ" role="2GsD0m">
            <node concept="117lpO" id="6WKYICGZWW2" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6WKYICGZWW3" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:6WKYICGZsfF" resolve="spans" />
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICGZWW4" role="2LFqv$">
            <node concept="lc7rE" id="6WKYICGZWW5" role="3cqZAp">
              <node concept="l9hG8" id="6WKYICGZWW7" role="lcghm">
                <node concept="2GrUjf" id="6WKYICGZWW9" role="lb14g">
                  <ref role="2Gs0qQ" node="6WKYICGZWVY" resolve="span" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6WKYICGZWWa" role="3cqZAp">
          <node concept="la8eA" id="6WKYICGZWWc" role="lcghm">
            <property role="lacIc" value="`" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICH00pE">
    <ref role="WuzLi" to="mo8k:6WKYICGZscX" resolve="TSTemplateSpan" />
    <node concept="11bSqf" id="6WKYICH00pF" role="11c4hB">
      <node concept="3clFbS" id="6WKYICH00pH" role="2VODD2">
        <node concept="lc7rE" id="6WKYICH00pI" role="3cqZAp">
          <node concept="la8eA" id="6WKYICH00pK" role="lcghm">
            <property role="lacIc" value="${" />
          </node>
          <node concept="l9hG8" id="6WKYICH00pL" role="lcghm">
            <node concept="2OqwBi" id="6WKYICH00pN" role="lb14g">
              <node concept="117lpO" id="6WKYICH00pQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICH00pR" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICGZscZ" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICH00pS" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l9hG8" id="6WKYICH00pT" role="lcghm">
            <node concept="2OqwBi" id="6WKYICH00pV" role="lb14g">
              <node concept="2OqwBi" id="6WKYICH00pY" role="2Oq$k0">
                <node concept="2OqwBi" id="6WKYICH00q1" role="2Oq$k0">
                  <node concept="2OqwBi" id="6WKYICH00q4" role="2Oq$k0">
                    <node concept="117lpO" id="6WKYICH00q7" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6WKYICH00q8" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:6WKYICGZscY" resolve="tail" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6WKYICH00q9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="6WKYICH00qa" role="37wK5m">
                      <property role="Xl_RC" value="\\" />
                    </node>
                    <node concept="Xl_RD" id="6WKYICH00qb" role="37wK5m">
                      <property role="Xl_RC" value="\\\\" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6WKYICH00qc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="6WKYICH00qd" role="37wK5m">
                    <property role="Xl_RC" value="`" />
                  </node>
                  <node concept="Xl_RD" id="6WKYICH00qe" role="37wK5m">
                    <property role="Xl_RC" value="\\`" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6WKYICH00qf" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="6WKYICH00qg" role="37wK5m">
                  <property role="Xl_RC" value="${" />
                </node>
                <node concept="Xl_RD" id="6WKYICH00qh" role="37wK5m">
                  <property role="Xl_RC" value="\\${" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICH1FJe">
    <ref role="WuzLi" to="mo8k:6WKYICH1a85" resolve="TSNullType" />
    <node concept="11bSqf" id="6WKYICH1FJf" role="11c4hB">
      <node concept="3clFbS" id="6WKYICH1FJh" role="2VODD2">
        <node concept="lc7rE" id="6WKYICH1FJi" role="3cqZAp">
          <node concept="la8eA" id="6WKYICH1FJk" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICH1FQM">
    <ref role="WuzLi" to="mo8k:6WKYICH1aaA" resolve="TSUndefinedType" />
    <node concept="11bSqf" id="6WKYICH1FQN" role="11c4hB">
      <node concept="3clFbS" id="6WKYICH1FQP" role="2VODD2">
        <node concept="lc7rE" id="6WKYICH1FQQ" role="3cqZAp">
          <node concept="la8eA" id="6WKYICH1FQS" role="lcghm">
            <property role="lacIc" value="undefined" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICH1GgZ">
    <ref role="WuzLi" to="mo8k:6WKYICH1afZ" resolve="TSArrayType" />
    <node concept="11bSqf" id="6WKYICH1Gh0" role="11c4hB">
      <node concept="3clFbS" id="6WKYICH1Gh2" role="2VODD2">
        <node concept="3SKdUt" id="5TZAFSUqO$h" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUqO$l" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUqO$n" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$o" role="1PaTwD">
              <property role="3oM_SC" value="|" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$p" role="1PaTwD">
              <property role="3oM_SC" value="string[]" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$q" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$r" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$s" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$t" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$u" role="1PaTwD">
              <property role="3oM_SC" value="|" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$v" role="1PaTwD">
              <property role="3oM_SC" value="(string[])," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$w" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$x" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$y" role="1PaTwD">
              <property role="3oM_SC" value="element" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$z" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$$" role="1PaTwD">
              <property role="3oM_SC" value="binds" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$_" role="1PaTwD">
              <property role="3oM_SC" value="looser" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUqO$A" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUqO$E" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUqO$G" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$H" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$I" role="1PaTwD">
              <property role="3oM_SC" value="suffix" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$J" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$K" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$L" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$M" role="1PaTwD">
              <property role="3oM_SC" value="bracketed." />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$N" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$O" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$P" role="1PaTwD">
              <property role="3oM_SC" value="asks" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$Q" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$R" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$S" role="1PaTwD">
              <property role="3oM_SC" value="question," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$T" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$U" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO$V" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUqO$W" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUqO_0" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUqO_2" role="1PaTwD">
              <property role="3oM_SC" value="behavior" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_3" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_4" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_5" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_6" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_7" role="1PaTwD">
              <property role="3oM_SC" value="shown" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_8" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_9" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_a" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_b" role="1PaTwD">
              <property role="3oM_SC" value="generated" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUqO_c" role="1PaTwD">
              <property role="3oM_SC" value="agree." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5TZAFSUqO_d" role="3cqZAp">
          <node concept="2OqwBi" id="5TZAFSUqO_g" role="3clFbw">
            <node concept="2OqwBi" id="5TZAFSUqO_j" role="2Oq$k0">
              <node concept="117lpO" id="5TZAFSUqO_m" role="2Oq$k0" />
              <node concept="3TrEf2" id="5TZAFSUqO_n" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICH1ag1" resolve="elementType" />
              </node>
            </node>
            <node concept="3zqWPK" id="5TZAFSUqO_o" role="2OqNvi">
              <ref role="37wK5l" to="tw2a:5TZAFSUpW1i" resolve="needsParenthesesAsArrayElement" />
            </node>
          </node>
          <node concept="3clFbS" id="5TZAFSUqO_p" role="3clFbx">
            <node concept="lc7rE" id="5TZAFSUqO_q" role="3cqZAp">
              <node concept="la8eA" id="5TZAFSUqO_s" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
              <node concept="l9hG8" id="5TZAFSUqO_t" role="lcghm">
                <node concept="2OqwBi" id="5TZAFSUqO_v" role="lb14g">
                  <node concept="117lpO" id="5TZAFSUqO_y" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5TZAFSUqO_z" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICH1ag1" resolve="elementType" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="5TZAFSUqO_$" role="lcghm">
                <property role="lacIc" value=")[]" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5TZAFSUqO__" role="9aQIa">
            <node concept="3clFbS" id="5TZAFSUqO_B" role="9aQI4">
              <node concept="lc7rE" id="5TZAFSUqO_C" role="3cqZAp">
                <node concept="l9hG8" id="5TZAFSUqO_E" role="lcghm">
                  <node concept="2OqwBi" id="5TZAFSUqO_G" role="lb14g">
                    <node concept="117lpO" id="5TZAFSUqO_J" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5TZAFSUqO_K" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:6WKYICH1ag1" resolve="elementType" />
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="5TZAFSUqO_L" role="lcghm">
                  <property role="lacIc" value="[]" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICH1GWO">
    <ref role="WuzLi" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
    <node concept="11bSqf" id="6WKYICH1GWP" role="11c4hB">
      <node concept="3clFbS" id="6WKYICH1GWR" role="2VODD2">
        <node concept="3cpWs8" id="6WKYICH1GWS" role="3cqZAp">
          <node concept="3cpWsn" id="6WKYICH1GWV" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="10P_77" id="6WKYICH1GWX" role="1tU5fm" />
            <node concept="3clFbT" id="6WKYICH1GWY" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6WKYICH1GWZ" role="3cqZAp">
          <node concept="2GrKxI" id="6WKYICH1GX3" role="2Gsz3X">
            <property role="TrG5h" value="member" />
          </node>
          <node concept="2OqwBi" id="6WKYICH1GX4" role="2GsD0m">
            <node concept="117lpO" id="6WKYICH1GX7" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6WKYICH1GX8" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:6WKYICH1adp" resolve="types" />
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICH1GX9" role="2LFqv$">
            <node concept="3clFbJ" id="6WKYICH1GXa" role="3cqZAp">
              <node concept="3fqX7Q" id="6WKYICH1GXd" role="3clFbw">
                <node concept="37vLTw" id="6WKYICH2mhq" role="3fr31v">
                  <ref role="3cqZAo" node="6WKYICH1GWV" resolve="first" />
                </node>
              </node>
              <node concept="3clFbS" id="6WKYICH1GXi" role="3clFbx">
                <node concept="lc7rE" id="6WKYICH1GXj" role="3cqZAp">
                  <node concept="la8eA" id="6WKYICH1GXl" role="lcghm">
                    <property role="lacIc" value=" | " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6WKYICH1GXm" role="3cqZAp">
              <node concept="37vLTI" id="6WKYICH1GXo" role="3clFbG">
                <node concept="37vLTw" id="6WKYICH1GXr" role="37vLTJ">
                  <ref role="3cqZAo" node="6WKYICH1GWV" resolve="first" />
                </node>
                <node concept="3clFbT" id="6WKYICH1GXs" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6WKYICH1GXt" role="3cqZAp">
              <node concept="l9hG8" id="6WKYICH1GXv" role="lcghm">
                <node concept="2GrUjf" id="6WKYICH1GXx" role="lb14g">
                  <ref role="2Gs0qQ" node="6WKYICH1GX3" resolve="member" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5TZAFSUsAN5">
    <ref role="WuzLi" to="mo8k:5TZAFSUs1Ds" resolve="TSNullLiteral" />
    <node concept="11bSqf" id="5TZAFSUsAN6" role="11c4hB">
      <node concept="3clFbS" id="5TZAFSUsAN8" role="2VODD2">
        <node concept="lc7rE" id="5TZAFSUsAN9" role="3cqZAp">
          <node concept="l9hG8" id="5TZAFSUsANb" role="lcghm">
            <node concept="2OqwBi" id="5TZAFSUsANd" role="lb14g">
              <node concept="2OqwBi" id="5TZAFSUsANg" role="2Oq$k0">
                <node concept="117lpO" id="5TZAFSUsANj" role="2Oq$k0" />
                <node concept="2yIwOk" id="5TZAFSUsANk" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="5TZAFSUsANl" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5TZAFSUsBHw">
    <ref role="WuzLi" to="mo8k:5TZAFSUs1G7" resolve="TSUndefinedLiteral" />
    <node concept="11bSqf" id="5TZAFSUsBHx" role="11c4hB">
      <node concept="3clFbS" id="5TZAFSUsBHz" role="2VODD2">
        <node concept="lc7rE" id="5TZAFSUsBH$" role="3cqZAp">
          <node concept="l9hG8" id="5TZAFSUsBHA" role="lcghm">
            <node concept="2OqwBi" id="5TZAFSUsBHC" role="lb14g">
              <node concept="2OqwBi" id="5TZAFSUsBHF" role="2Oq$k0">
                <node concept="117lpO" id="5TZAFSUsBHI" role="2Oq$k0" />
                <node concept="2yIwOk" id="5TZAFSUsBHJ" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="5TZAFSUsBHK" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

