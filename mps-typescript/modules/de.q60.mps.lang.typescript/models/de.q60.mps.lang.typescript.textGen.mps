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
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" implicit="true" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
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
              <node concept="3TrcHB" id="1dYSrZvL1d7" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:1TCdlWHrFuK" resolve="escapedValue" />
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
        <node concept="3SKdUt" id="5OpYk6gBNsJ" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gBNsN" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gBNsP" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsQ" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsR" role="1PaTwD">
              <property role="3oM_SC" value="question" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsS" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsT" role="1PaTwD">
              <property role="3oM_SC" value="editor's" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsU" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsV" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsW" role="1PaTwD">
              <property role="3oM_SC" value="asks," />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsX" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNsZ" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt0" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt1" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt2" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt3" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt4" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gBNt5" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gBNt9" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gBNtb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtc" role="1PaTwD">
              <property role="3oM_SC" value="for-of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtd" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNte" role="1PaTwD">
              <property role="3oM_SC" value="for-in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtf" role="1PaTwD">
              <property role="3oM_SC" value="header" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNth" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNti" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtj" role="1PaTwD">
              <property role="3oM_SC" value="statement" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtk" role="1PaTwD">
              <property role="3oM_SC" value="position" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtl" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtm" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript's" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtn" role="1PaTwD">
              <property role="3oM_SC" value="grammar" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNto" role="1PaTwD">
              <property role="3oM_SC" value="puts" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtp" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gBNtq" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gBNtu" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gBNtw" role="1PaTwD">
              <property role="3oM_SC" value="semicolon" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtx" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNty" role="1PaTwD">
              <property role="3oM_SC" value="Asking" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtz" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt$" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNt_" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtA" role="1PaTwD">
              <property role="3oM_SC" value="places" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtB" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtC" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtD" role="1PaTwD">
              <property role="3oM_SC" value="keeps" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtE" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtF" role="1PaTwD">
              <property role="3oM_SC" value="projection" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtI" role="1PaTwD">
              <property role="3oM_SC" value="output" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gBNtJ" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gBNtN" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gBNtP" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtQ" role="1PaTwD">
              <property role="3oM_SC" value="answering" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtR" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtS" role="1PaTwD">
              <property role="3oM_SC" value="differently," />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtT" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtU" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtV" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtW" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtX" role="1PaTwD">
              <property role="3oM_SC" value="watched" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtY" role="1PaTwD">
              <property role="3oM_SC" value="happen" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNtZ" role="1PaTwD">
              <property role="3oM_SC" value="four" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gBNu0" role="1PaTwD">
              <property role="3oM_SC" value="times." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6gBNu1" role="3cqZAp">
          <node concept="2OqwBi" id="5OpYk6gBNu4" role="3clFbw">
            <node concept="117lpO" id="5OpYk6gBNu7" role="2Oq$k0" />
            <node concept="3zqWPK" id="5OpYk6gBNu8" role="2OqNvi">
              <ref role="37wK5l" to="tw2a:5OpYk6gt$Pn" resolve="needsSemicolon" />
            </node>
          </node>
          <node concept="3clFbS" id="5OpYk6gBNu9" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6gBNua" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6gBNuc" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
            </node>
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
  <node concept="WtQ9Q" id="465JEkTtawQ">
    <ref role="WuzLi" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
    <node concept="11bSqf" id="465JEkTtawR" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtawT" role="2VODD2">
        <node concept="lc7rE" id="465JEkTtawU" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtawW" role="lcghm">
            <property role="lacIc" value="void" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtaKb">
    <ref role="WuzLi" to="mo8k:465JEkTkTYf" resolve="TSParameter" />
    <node concept="11bSqf" id="465JEkTtaKc" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtaKe" role="2VODD2">
        <node concept="3clFbJ" id="465JEkTEvnV" role="3cqZAp">
          <node concept="2OqwBi" id="465JEkTEvnY" role="3clFbw">
            <node concept="117lpO" id="465JEkTEvo1" role="2Oq$k0" />
            <node concept="3TrcHB" id="465JEkTEvo2" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:465JEkTAOPG" resolve="isRest" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTEvo3" role="3clFbx">
            <node concept="lc7rE" id="465JEkTEvo4" role="3cqZAp">
              <node concept="la8eA" id="465JEkTEvo6" role="lcghm">
                <property role="lacIc" value="..." />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTEvo7" role="3cqZAp">
          <node concept="l9hG8" id="465JEkTEvo9" role="lcghm">
            <node concept="2OqwBi" id="465JEkTEvob" role="lb14g">
              <node concept="117lpO" id="465JEkTEvoe" role="2Oq$k0" />
              <node concept="3TrcHB" id="465JEkTEvof" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTEvog" role="3cqZAp">
          <node concept="2OqwBi" id="465JEkTEvoj" role="3clFbw">
            <node concept="117lpO" id="465JEkTEvom" role="2Oq$k0" />
            <node concept="3TrcHB" id="465JEkTEvon" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:465JEkTAOPF" resolve="isOptional" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTEvoo" role="3clFbx">
            <node concept="lc7rE" id="465JEkTEvop" role="3cqZAp">
              <node concept="la8eA" id="465JEkTEvor" role="lcghm">
                <property role="lacIc" value="?" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6fuuI9" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6fuuIc" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6fuuIf" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6fuuIi" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6fuuIj" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkTYh" resolve="declaredType" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6fuuIk" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6fuuIl" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6fuuIm" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6fuuIo" role="lcghm">
                <property role="lacIc" value=": " />
              </node>
              <node concept="l9hG8" id="5OpYk6fuuIp" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6fuuIr" role="lb14g">
                  <node concept="117lpO" id="5OpYk6fuuIu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6fuuIv" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkTYh" resolve="declaredType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTEvoA" role="3cqZAp">
          <node concept="3y3z36" id="465JEkTEvoD" role="3clFbw">
            <node concept="2OqwBi" id="465JEkTEvoG" role="3uHU7B">
              <node concept="117lpO" id="465JEkTEvoJ" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTEvoK" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTAOPH" resolve="defaultValue" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTEvoL" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="465JEkTEvoM" role="3clFbx">
            <node concept="lc7rE" id="465JEkTEvoN" role="3cqZAp">
              <node concept="la8eA" id="465JEkTEvoP" role="lcghm">
                <property role="lacIc" value=" = " />
              </node>
              <node concept="l9hG8" id="465JEkTEvoQ" role="lcghm">
                <node concept="2OqwBi" id="465JEkTEvoS" role="lb14g">
                  <node concept="117lpO" id="465JEkTEvoV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="465JEkTEvoW" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTAOPH" resolve="defaultValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtb5D">
    <ref role="WuzLi" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
    <node concept="11bSqf" id="465JEkTtb5E" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtb5G" role="2VODD2">
        <node concept="3clFbJ" id="465JEkTEw18" role="3cqZAp">
          <node concept="2OqwBi" id="465JEkTEw1b" role="3clFbw">
            <node concept="117lpO" id="465JEkTEw1e" role="2Oq$k0" />
            <node concept="3TrcHB" id="465JEkTEw1f" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:465JEkTAOT4" resolve="isRest" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTEw1g" role="3clFbx">
            <node concept="lc7rE" id="465JEkTEw1h" role="3cqZAp">
              <node concept="la8eA" id="465JEkTEw1j" role="lcghm">
                <property role="lacIc" value="..." />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTEw1k" role="3cqZAp">
          <node concept="l9hG8" id="465JEkTEw1m" role="lcghm">
            <node concept="2OqwBi" id="465JEkTEw1o" role="lb14g">
              <node concept="117lpO" id="465JEkTEw1r" role="2Oq$k0" />
              <node concept="3TrcHB" id="465JEkTEw1s" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTEw1t" role="3cqZAp">
          <node concept="2OqwBi" id="465JEkTEw1w" role="3clFbw">
            <node concept="117lpO" id="465JEkTEw1z" role="2Oq$k0" />
            <node concept="3TrcHB" id="465JEkTEw1$" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:465JEkTAOT3" resolve="isOptional" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTEw1_" role="3clFbx">
            <node concept="lc7rE" id="465JEkTEw1A" role="3cqZAp">
              <node concept="la8eA" id="465JEkTEw1C" role="lcghm">
                <property role="lacIc" value="?" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTEw1D" role="3cqZAp">
          <node concept="la8eA" id="465JEkTEw1F" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="465JEkTEw1G" role="lcghm">
            <node concept="2OqwBi" id="465JEkTEw1I" role="lb14g">
              <node concept="117lpO" id="465JEkTEw1L" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTEw1M" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtbMT">
    <ref role="WuzLi" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
    <node concept="11bSqf" id="465JEkTtbMU" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtbMW" role="2VODD2">
        <node concept="lc7rE" id="465JEkTtbMX" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtbMZ" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="465JEkTtbN0" role="lcghm">
            <property role="lbP0B" value=", " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="465JEkTtbN2" role="lbANJ">
              <node concept="117lpO" id="465JEkTtbN5" role="2Oq$k0" />
              <node concept="3Tsc0h" id="465JEkTtbN6" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTtbN7" role="lcghm">
            <property role="lacIc" value=") =&gt; " />
          </node>
          <node concept="l9hG8" id="465JEkTtbN8" role="lcghm">
            <node concept="2OqwBi" id="465JEkTtbNa" role="lb14g">
              <node concept="117lpO" id="465JEkTtbNd" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTtbNe" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtcw0">
    <ref role="WuzLi" to="mo8k:465JEkTkUgx" resolve="TSCallExpression" />
    <node concept="11bSqf" id="465JEkTtcw1" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtcw3" role="2VODD2">
        <node concept="lc7rE" id="465JEkTtcw4" role="3cqZAp">
          <node concept="l9hG8" id="465JEkTtcw6" role="lcghm">
            <node concept="2OqwBi" id="465JEkTtcw8" role="lb14g">
              <node concept="117lpO" id="465JEkTtcwb" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTtcwc" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkUgz" resolve="callee" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTtcwd" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="465JEkTtcwe" role="lcghm">
            <property role="lbP0B" value=", " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="465JEkTtcwg" role="lbANJ">
              <node concept="117lpO" id="465JEkTtcwj" role="2Oq$k0" />
              <node concept="3Tsc0h" id="465JEkTtcwk" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:465JEkTkUg$" resolve="arguments" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTtcwl" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtcQh">
    <ref role="WuzLi" to="mo8k:465JEkTkU41" resolve="TSReturnStatement" />
    <node concept="11bSqf" id="465JEkTtcQi" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtcQk" role="2VODD2">
        <node concept="lc7rE" id="465JEkTtcQl" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtcQn" role="lcghm">
            <property role="lacIc" value="return" />
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTtcQo" role="3cqZAp">
          <node concept="3y3z36" id="465JEkTtcQr" role="3clFbw">
            <node concept="2OqwBi" id="465JEkTtcQu" role="3uHU7B">
              <node concept="117lpO" id="465JEkTtcQx" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTtcQy" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU43" resolve="expression" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTtcQz" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="465JEkTtcQ$" role="3clFbx">
            <node concept="lc7rE" id="465JEkTtcQ_" role="3cqZAp">
              <node concept="la8eA" id="465JEkTtcQB" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
              <node concept="l9hG8" id="465JEkTtcQC" role="lcghm">
                <node concept="2OqwBi" id="465JEkTtcQE" role="lb14g">
                  <node concept="117lpO" id="465JEkTtcQH" role="2Oq$k0" />
                  <node concept="3TrEf2" id="465JEkTtcQI" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU43" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTtcQJ" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtcQL" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTtdQV">
    <ref role="WuzLi" to="mo8k:465JEkTkU7b" resolve="TSFunctionDeclaration" />
    <node concept="11bSqf" id="465JEkTtdQW" role="11c4hB">
      <node concept="3clFbS" id="465JEkTtdQY" role="2VODD2">
        <node concept="lc7rE" id="465JEkTtdQZ" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtdR1" role="lcghm">
            <property role="lacIc" value="function " />
          </node>
          <node concept="l9hG8" id="465JEkTtdR2" role="lcghm">
            <node concept="2OqwBi" id="465JEkTtdR4" role="lb14g">
              <node concept="117lpO" id="465JEkTtdR7" role="2Oq$k0" />
              <node concept="3TrcHB" id="465JEkTtdR8" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTtdR9" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="465JEkTtdRa" role="lcghm">
            <property role="lbP0B" value=", " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="465JEkTtdRc" role="lbANJ">
              <node concept="117lpO" id="465JEkTtdRf" role="2Oq$k0" />
              <node concept="3Tsc0h" id="465JEkTtdRg" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:465JEkTkU1g" resolve="parameters" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTtdRh" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTtdRi" role="3cqZAp">
          <node concept="3y3z36" id="465JEkTtdRl" role="3clFbw">
            <node concept="2OqwBi" id="465JEkTtdRo" role="3uHU7B">
              <node concept="117lpO" id="465JEkTtdRr" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTtdRs" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTtdRt" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="465JEkTtdRu" role="3clFbx">
            <node concept="lc7rE" id="465JEkTtdRv" role="3cqZAp">
              <node concept="la8eA" id="465JEkTtdRx" role="lcghm">
                <property role="lacIc" value=": " />
              </node>
              <node concept="l9hG8" id="465JEkTtdRy" role="lcghm">
                <node concept="2OqwBi" id="465JEkTtdR$" role="lb14g">
                  <node concept="117lpO" id="465JEkTtdRB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="465JEkTtdRC" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTtdRD" role="3cqZAp">
          <node concept="la8eA" id="465JEkTtdRF" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
          <node concept="l9hG8" id="465JEkTtdRG" role="lcghm">
            <node concept="2OqwBi" id="465JEkTtdRI" role="lb14g">
              <node concept="117lpO" id="465JEkTtdRL" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTtdRM" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU7h" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTM4ei">
    <ref role="WuzLi" to="mo8k:465JEkTIpRg" resolve="TSExpressionBody" />
    <node concept="11bSqf" id="465JEkTM4ej" role="11c4hB">
      <node concept="3clFbS" id="465JEkTM4el" role="2VODD2">
        <node concept="lc7rE" id="465JEkTM4em" role="3cqZAp">
          <node concept="l9hG8" id="465JEkTM4eo" role="lcghm">
            <node concept="2OqwBi" id="465JEkTM4eq" role="lb14g">
              <node concept="117lpO" id="465JEkTM4et" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTM4eu" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTIpRi" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="465JEkTM4DD">
    <ref role="WuzLi" to="mo8k:465JEkTIpYd" resolve="TSArrowFunction" />
    <node concept="11bSqf" id="465JEkTM4DE" role="11c4hB">
      <node concept="3clFbS" id="465JEkTM4DG" role="2VODD2">
        <node concept="lc7rE" id="465JEkTM4DH" role="3cqZAp">
          <node concept="la8eA" id="465JEkTM4DJ" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
          <node concept="l9S2W" id="465JEkTM4DK" role="lcghm">
            <property role="lbP0B" value=", " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="465JEkTM4DM" role="lbANJ">
              <node concept="117lpO" id="465JEkTM4DP" role="2Oq$k0" />
              <node concept="3Tsc0h" id="465JEkTM4DQ" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:465JEkTkU1g" resolve="parameters" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="465JEkTM4DR" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTM4DS" role="3cqZAp">
          <node concept="3y3z36" id="465JEkTM4DV" role="3clFbw">
            <node concept="2OqwBi" id="465JEkTM4DY" role="3uHU7B">
              <node concept="117lpO" id="465JEkTM4E1" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTM4E2" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTM4E3" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="465JEkTM4E4" role="3clFbx">
            <node concept="lc7rE" id="465JEkTM4E5" role="3cqZAp">
              <node concept="la8eA" id="465JEkTM4E7" role="lcghm">
                <property role="lacIc" value=": " />
              </node>
              <node concept="l9hG8" id="465JEkTM4E8" role="lcghm">
                <node concept="2OqwBi" id="465JEkTM4Ea" role="lb14g">
                  <node concept="117lpO" id="465JEkTM4Ed" role="2Oq$k0" />
                  <node concept="3TrEf2" id="465JEkTM4Ee" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="465JEkTM4Ef" role="3cqZAp">
          <node concept="la8eA" id="465JEkTM4Eh" role="lcghm">
            <property role="lacIc" value=" =&gt; " />
          </node>
          <node concept="l9hG8" id="465JEkTM4Ei" role="lcghm">
            <node concept="2OqwBi" id="465JEkTM4Ek" role="lb14g">
              <node concept="117lpO" id="465JEkTM4En" role="2Oq$k0" />
              <node concept="3TrEf2" id="465JEkTM4Eo" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTIpYh" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fAsWM">
    <ref role="WuzLi" to="mo8k:5OpYk6f$$wc" resolve="TSPostfixOperation" />
    <node concept="11bSqf" id="5OpYk6fAsWN" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fAsWP" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6fAsWQ" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fAsWU" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fAsWW" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsWX" role="1PaTwD">
              <property role="3oM_SC" value="mirror" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsWY" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsWZ" role="1PaTwD">
              <property role="3oM_SC" value="TSUnaryOperation's," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX0" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX1" role="1PaTwD">
              <property role="3oM_SC" value="simpler" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX2" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX3" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX4" role="1PaTwD">
              <property role="3oM_SC" value="question:" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX5" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX6" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX7" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fAsX8" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fAsXc" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fAsXe" role="1PaTwD">
              <property role="3oM_SC" value="together" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXf" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXg" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXh" role="1PaTwD">
              <property role="3oM_SC" value="alias" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXi" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXj" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXk" role="1PaTwD">
              <property role="3oM_SC" value="side," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXl" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXm" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXn" role="1PaTwD">
              <property role="3oM_SC" value="operand" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXo" role="1PaTwD">
              <property role="3oM_SC" value="ends" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXp" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXq" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXr" role="1PaTwD">
              <property role="3oM_SC" value="identifier" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXs" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXt" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fAsXu" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fAsXy" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fAsX$" role="1PaTwD">
              <property role="3oM_SC" value="paren" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsX_" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXA" role="1PaTwD">
              <property role="3oM_SC" value="a--" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXB" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXC" role="1PaTwD">
              <property role="3oM_SC" value="b" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXD" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXE" role="1PaTwD">
              <property role="3oM_SC" value="spaced" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXF" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXH" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXI" role="1PaTwD">
              <property role="3oM_SC" value="operator's" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXJ" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXK" role="1PaTwD">
              <property role="3oM_SC" value="editor." />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXL" role="1PaTwD">
              <property role="3oM_SC" value="What" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXM" role="1PaTwD">
              <property role="3oM_SC" value="TSUnaryOperation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fAsXN" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fAsXR" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fAsXT" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXU" role="1PaTwD">
              <property role="3oM_SC" value="needsSpaceBeforeOperand" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXV" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXW" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXY" role="1PaTwD">
              <property role="3oM_SC" value="alias" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsXZ" role="1PaTwD">
              <property role="3oM_SC" value="meeting" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsY0" role="1PaTwD">
              <property role="3oM_SC" value="*another*" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsY1" role="1PaTwD">
              <property role="3oM_SC" value="alias," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsY2" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsY3" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fAsY4" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fAsY8" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fAsYa" role="1PaTwD">
              <property role="3oM_SC" value="happens" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsYb" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsYc" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsYd" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fAsYe" role="1PaTwD">
              <property role="3oM_SC" value="prefixes." />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6fAsYf" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6fAsYh" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fAsYj" role="lb14g">
              <node concept="117lpO" id="5OpYk6fAsYm" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6fAsYn" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6f$$wf" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6fAsYo" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6fAsYq" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fAsYs" role="lb14g">
              <node concept="2OqwBi" id="5OpYk6fAsYv" role="2Oq$k0">
                <node concept="117lpO" id="5OpYk6fAsYy" role="2Oq$k0" />
                <node concept="2yIwOk" id="5OpYk6fAsYz" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="5OpYk6fAsY$" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fHrCr">
    <ref role="WuzLi" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
    <node concept="11bSqf" id="5OpYk6fHrCs" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fHrCu" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6fHrCv" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6fHrCx" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fHrCz" role="lb14g">
              <node concept="117lpO" id="5OpYk6fHrCA" role="2Oq$k0" />
              <node concept="3TrcHB" id="5OpYk6fHrCB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6fHrCC" role="3cqZAp">
          <node concept="2OqwBi" id="5OpYk6fHrCF" role="3clFbw">
            <node concept="117lpO" id="5OpYk6fHrCI" role="2Oq$k0" />
            <node concept="3TrcHB" id="5OpYk6fHrCJ" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:5OpYk6fF69n" resolve="isOptional" />
            </node>
          </node>
          <node concept="3clFbS" id="5OpYk6fHrCK" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6fHrCL" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6fHrCN" role="lcghm">
                <property role="lacIc" value="?" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6fHrCO" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6fHrCQ" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="5OpYk6fHrCR" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fHrCT" role="lb14g">
              <node concept="117lpO" id="5OpYk6fHrCW" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6fHrCX" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6fF69o" resolve="declaredType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fHsvn">
    <ref role="WuzLi" to="mo8k:5OpYk6fF6du" resolve="TSObjectType" />
    <node concept="11bSqf" id="5OpYk6fHsvo" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fHsvq" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6fHsvr" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fHsvv" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fHsvx" role="1PaTwD">
              <property role="3oM_SC" value="`{}`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvy" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvz" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsv$" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsv_" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvA" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvB" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvC" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvD" role="1PaTwD">
              <property role="3oM_SC" value="`{" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvE" role="1PaTwD">
              <property role="3oM_SC" value="a:" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvF" role="1PaTwD">
              <property role="3oM_SC" value="number;" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvG" role="1PaTwD">
              <property role="3oM_SC" value="b:" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvH" role="1PaTwD">
              <property role="3oM_SC" value="string" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvI" role="1PaTwD">
              <property role="3oM_SC" value="}`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvJ" role="1PaTwD">
              <property role="3oM_SC" value="otherwise," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvK" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvM" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fHsvN" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fHsvR" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fHsvT" role="1PaTwD">
              <property role="3oM_SC" value="getPresentation" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvU" role="1PaTwD">
              <property role="3oM_SC" value="says" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvV" role="1PaTwD">
              <property role="3oM_SC" value="too." />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvW" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvX" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvY" role="1PaTwD">
              <property role="3oM_SC" value="shows" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsvZ" role="1PaTwD">
              <property role="3oM_SC" value="`{" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw0" role="1PaTwD">
              <property role="3oM_SC" value="}`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw3" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw4" role="1PaTwD">
              <property role="3oM_SC" value="case," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw5" role="1PaTwD">
              <property role="3oM_SC" value="since" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw6" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw7" role="1PaTwD">
              <property role="3oM_SC" value="braces" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw8" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fHsw9" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fHswd" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fHswf" role="1PaTwD">
              <property role="3oM_SC" value="ordinary" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswg" role="1PaTwD">
              <property role="3oM_SC" value="cells" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswh" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswi" role="1PaTwD">
              <property role="3oM_SC" value="ordinary" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswj" role="1PaTwD">
              <property role="3oM_SC" value="spacing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswk" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswl" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswm" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswo" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswp" role="1PaTwD">
              <property role="3oM_SC" value="place" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswr" role="1PaTwD">
              <property role="3oM_SC" value="projection" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsws" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswt" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6fHswu" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6fHswy" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6fHsw$" role="1PaTwD">
              <property role="3oM_SC" value="output" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHsw_" role="1PaTwD">
              <property role="3oM_SC" value="differ," />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswA" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswB" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswC" role="1PaTwD">
              <property role="3oM_SC" value="differ" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswD" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswE" role="1PaTwD">
              <property role="3oM_SC" value="whitespace" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswF" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswG" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswH" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswI" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswJ" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswK" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswL" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="5OpYk6fHswM" role="1PaTwD">
              <property role="3oM_SC" value="as." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6fHswN" role="3cqZAp">
          <node concept="2OqwBi" id="5OpYk6fHswQ" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6fHswT" role="2Oq$k0">
              <node concept="117lpO" id="5OpYk6fHswW" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5OpYk6fHswX" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:5OpYk6fF6dw" resolve="members" />
              </node>
            </node>
            <node concept="1v1jN8" id="5OpYk6fHswY" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="5OpYk6fHswZ" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6fHsx0" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6fHsx2" role="lcghm">
                <property role="lacIc" value="{}" />
              </node>
            </node>
            <node concept="3cpWs6" id="5OpYk6fHsx3" role="3cqZAp" />
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6fHsx4" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6fHsx6" role="lcghm">
            <property role="lacIc" value="{ " />
          </node>
          <node concept="l9S2W" id="5OpYk6fHsx7" role="lcghm">
            <property role="lbP0B" value="; " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="5OpYk6fHsx9" role="lbANJ">
              <node concept="117lpO" id="5OpYk6fHsxc" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5OpYk6fHsxd" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:5OpYk6fF6dw" resolve="members" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6fHsxe" role="lcghm">
            <property role="lacIc" value=" }" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fKwS6">
    <ref role="WuzLi" to="mo8k:5OpYk6fJr9I" resolve="TSObjectLiteral" />
    <node concept="11bSqf" id="5OpYk6fKwS7" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fKwS9" role="2VODD2">
        <node concept="3clFbJ" id="5OpYk6fKwSa" role="3cqZAp">
          <node concept="2OqwBi" id="5OpYk6fKwSd" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6fKwSg" role="2Oq$k0">
              <node concept="117lpO" id="5OpYk6fKwSj" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5OpYk6fKwSk" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:5OpYk6fJr9K" resolve="properties" />
              </node>
            </node>
            <node concept="1v1jN8" id="5OpYk6fKwSl" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="5OpYk6fKwSm" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6fKwSn" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6fKwSp" role="lcghm">
                <property role="lacIc" value="{}" />
              </node>
            </node>
            <node concept="3cpWs6" id="5OpYk6fKwSq" role="3cqZAp" />
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6fKwSr" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6fKwSt" role="lcghm">
            <property role="lacIc" value="{ " />
          </node>
          <node concept="l9S2W" id="5OpYk6fKwSu" role="lcghm">
            <property role="lbP0B" value=", " />
            <property role="XA4eZ" value="true" />
            <node concept="2OqwBi" id="5OpYk6fKwSw" role="lbANJ">
              <node concept="117lpO" id="5OpYk6fKwSz" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5OpYk6fKwS$" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:5OpYk6fJr9K" resolve="properties" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6fKwS_" role="lcghm">
            <property role="lacIc" value=" }" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fLuzv">
    <ref role="WuzLi" to="mo8k:5OpYk6fJr5w" resolve="TSPropertyAssignment" />
    <node concept="11bSqf" id="5OpYk6fLuzw" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fLuzy" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6fLuzz" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6fLuz_" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fLuzB" role="lb14g">
              <node concept="117lpO" id="5OpYk6fLuzE" role="2Oq$k0" />
              <node concept="3TrcHB" id="5OpYk6fLuzF" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6fLuzG" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="5OpYk6fLuzH" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fLuzJ" role="lb14g">
              <node concept="117lpO" id="5OpYk6fLuzM" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6fLuzN" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6fJr5y" resolve="initializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6fPCMi">
    <ref role="WuzLi" to="mo8k:5OpYk6fOBiT" resolve="TSMemberAccess" />
    <node concept="11bSqf" id="5OpYk6fPCMj" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6fPCMl" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6fPCMm" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6fPCMo" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fPCMq" role="lb14g">
              <node concept="117lpO" id="5OpYk6fPCMt" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6fPCMu" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6fOBiW" resolve="operand" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6fPCMv" role="lcghm">
            <property role="lacIc" value="." />
          </node>
          <node concept="l9hG8" id="5OpYk6fPCMw" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6fPCMy" role="lb14g">
              <node concept="117lpO" id="5OpYk6fPCM_" role="2Oq$k0" />
              <node concept="3TrcHB" id="5OpYk6fPCMA" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5OpYk6fOBiV" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g9MTi">
    <ref role="WuzLi" to="mo8k:5OpYk6g8Ln6" resolve="TSUnknownType" />
    <node concept="11bSqf" id="5OpYk6g9MTj" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g9MTl" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g9MTm" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g9MTo" role="lcghm">
            <property role="lacIc" value="unknown" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6gc9Z0">
    <ref role="WuzLi" to="mo8k:5OpYk6gb2_Z" resolve="TSAmbientDeclaration" />
    <node concept="9MYSb" id="5OpYk6gc9Z1" role="33IsuW">
      <node concept="3clFbS" id="5OpYk6gc9Z3" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6gc9Z4" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gc9Z8" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gc9Za" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zb" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zc" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zd" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Ze" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zf" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zg" role="1PaTwD">
              <property role="3oM_SC" value="module:" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zh" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zi" role="1PaTwD">
              <property role="3oM_SC" value="ambient" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zj" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zk" role="1PaTwD">
              <property role="3oM_SC" value="states" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zl" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zm" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gc9Zn" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gc9Zr" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gc9Zt" role="1PaTwD">
              <property role="3oM_SC" value="exists" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zu" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zw" role="1PaTwD">
              <property role="3oM_SC" value="environment" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zx" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zy" role="1PaTwD">
              <property role="3oM_SC" value="emits" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Zz" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Z$" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9Z_" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZA" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZB" role="1PaTwD">
              <property role="3oM_SC" value="own." />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZC" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZD" role="1PaTwD">
              <property role="3oM_SC" value="accessory" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZE" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZF" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZG" role="1PaTwD">
              <property role="3oM_SC" value="ships" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gc9ZH" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gc9ZL" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gc9ZN" role="1PaTwD">
              <property role="3oM_SC" value="`console`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZP" role="1PaTwD">
              <property role="3oM_SC" value="marked" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZQ" role="1PaTwD">
              <property role="3oM_SC" value="do-not-generate," />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZR" role="1PaTwD">
              <property role="3oM_SC" value="`console`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZS" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZU" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZV" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZW" role="1PaTwD">
              <property role="3oM_SC" value="declares" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gc9ZX" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gc9ZY" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gca02" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gca04" role="1PaTwD">
              <property role="3oM_SC" value="itself" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca05" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca06" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca07" role="1PaTwD">
              <property role="3oM_SC" value="second" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca08" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca09" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0a" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0b" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0c" role="1PaTwD">
              <property role="3oM_SC" value="collide" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0d" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0e" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0f" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0g" role="1PaTwD">
              <property role="3oM_SC" value="extension" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0h" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0i" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0j" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6gca0k" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6gca0o" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6gca0q" role="1PaTwD">
              <property role="3oM_SC" value="ambient" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0r" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0s" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0t" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0u" role="1PaTwD">
              <property role="3oM_SC" value="writes" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0v" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0w" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0x" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0y" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0z" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="5OpYk6gca0$" role="1PaTwD">
              <property role="3oM_SC" value="own." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5OpYk6gca0_" role="3cqZAp">
          <node concept="Xl_RD" id="5OpYk6gca0A" role="3cqZAk">
            <property role="Xl_RC" value="d.ts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="5OpYk6gca0B" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6gca0D" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6gca0E" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6gca0G" role="lcghm">
            <property role="lacIc" value="declare const " />
          </node>
          <node concept="l9hG8" id="5OpYk6gca0H" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6gca0J" role="lb14g">
              <node concept="117lpO" id="5OpYk6gca0M" role="2Oq$k0" />
              <node concept="3TrcHB" id="5OpYk6gca0N" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6gca0O" role="lcghm">
            <property role="lacIc" value=": " />
          </node>
          <node concept="l9hG8" id="5OpYk6gca0P" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6gca0R" role="lb14g">
              <node concept="117lpO" id="5OpYk6gca0U" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6gca0V" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6gb2A1" resolve="declaredType" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6gca0W" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6gokj1">
    <ref role="WuzLi" to="mo8k:5OpYk6gni9v" resolve="TSNeverType" />
    <node concept="11bSqf" id="5OpYk6gokj2" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6gokj4" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6gokj5" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6gokj7" role="lcghm">
            <property role="lacIc" value="never" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6goDRg">
    <ref role="WuzLi" to="mo8k:5OpYk6gnidH" resolve="TSArrayLiteral" />
    <node concept="11bSqf" id="5OpYk6goDRh" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6goDRj" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6goDRk" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6goDRm" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6goDRn" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6goDRr" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6goDRt" role="1PaTwD">
              <property role="3oM_SC" value="No" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRu" role="1PaTwD">
              <property role="3oM_SC" value="parenthesisation" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRv" role="1PaTwD">
              <property role="3oM_SC" value="question" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRw" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRx" role="1PaTwD">
              <property role="3oM_SC" value="ask:" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRy" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRz" role="1PaTwD">
              <property role="3oM_SC" value="brackets" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDR$" role="1PaTwD">
              <property role="3oM_SC" value="fence" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDR_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRA" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRB" role="1PaTwD">
              <property role="3oM_SC" value="in," />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRC" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRD" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRE" role="1PaTwD">
              <property role="3oM_SC" value="element" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6goDRF" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6goDRJ" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6goDRL" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRM" role="1PaTwD">
              <property role="3oM_SC" value="binds" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRN" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRO" role="1PaTwD">
              <property role="3oM_SC" value="loosely" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRP" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRR" role="1PaTwD">
              <property role="3oM_SC" value="comma" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRS" role="1PaTwD">
              <property role="3oM_SC" value="operator" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRT" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRU" role="1PaTwD">
              <property role="3oM_SC" value="reads" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRV" role="1PaTwD">
              <property role="3oM_SC" value="unambiguously" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRW" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRX" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDRZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6goDS0" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6goDS4" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6goDS6" role="1PaTwD">
              <property role="3oM_SC" value="opposite" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDS7" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDS8" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDS9" role="1PaTwD">
              <property role="3oM_SC" value="argument" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSa" role="1PaTwD">
              <property role="3oM_SC" value="list," />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSb" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSc" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSd" role="1PaTwD">
              <property role="3oM_SC" value="bare" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSe" role="1PaTwD">
              <property role="3oM_SC" value="comma" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSf" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSg" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSh" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSi" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSj" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSk" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSl" role="1PaTwD">
              <property role="3oM_SC" value="separator." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6goDSm" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6goDSq" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6goDSs" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSt" role="1PaTwD">
              <property role="3oM_SC" value="comma" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSu" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSv" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSw" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSx" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSy" role="1PaTwD">
              <property role="3oM_SC" value="element" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSz" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDS$" role="1PaTwD">
              <property role="3oM_SC" value="therefore" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDS_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSA" role="1PaTwD">
              <property role="3oM_SC" value="user's" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSB" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSC" role="1PaTwD">
              <property role="3oM_SC" value="doing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSD" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSE" role="1PaTwD">
              <property role="3oM_SC" value="generates" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6goDSF" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6goDSJ" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6goDSL" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSM" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSN" role="1PaTwD">
              <property role="3oM_SC" value="wrote" />
            </node>
            <node concept="3oM_SD" id="5OpYk6goDSO" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5OpYk6goDSP" role="3cqZAp">
          <node concept="2GrKxI" id="5OpYk6goDST" role="2Gsz3X">
            <property role="TrG5h" value="element" />
          </node>
          <node concept="2OqwBi" id="5OpYk6goDSU" role="2GsD0m">
            <node concept="117lpO" id="5OpYk6goDSX" role="2Oq$k0" />
            <node concept="3Tsc0h" id="5OpYk6goDSY" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:5OpYk6gnidJ" resolve="elements" />
            </node>
          </node>
          <node concept="3clFbS" id="5OpYk6goDSZ" role="2LFqv$">
            <node concept="3clFbJ" id="5OpYk6goDT0" role="3cqZAp">
              <node concept="3eOSWO" id="5OpYk6goDT3" role="3clFbw">
                <node concept="2OqwBi" id="5OpYk6goDT6" role="3uHU7B">
                  <node concept="2GrUjf" id="5OpYk6goDT9" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5OpYk6goDST" resolve="element" />
                  </node>
                  <node concept="2bSWHS" id="5OpYk6goDTa" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="5OpYk6goDTb" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="5OpYk6goDTc" role="3clFbx">
                <node concept="lc7rE" id="5OpYk6goDTd" role="3cqZAp">
                  <node concept="la8eA" id="5OpYk6goDTf" role="lcghm">
                    <property role="lacIc" value=", " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="5OpYk6goDTg" role="3cqZAp">
              <node concept="l9hG8" id="5OpYk6goDTi" role="lcghm">
                <node concept="2GrUjf" id="5OpYk6goDTk" role="lb14g">
                  <ref role="2Gs0qQ" node="5OpYk6goDST" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6goDTl" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6goDTn" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$wvA">
    <ref role="WuzLi" to="mo8k:5OpYk6grXhB" resolve="TSWhileStatement" />
    <node concept="11bSqf" id="5OpYk6g$wvB" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$wvD" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$wvE" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$wvG" role="lcghm">
            <property role="lacIc" value="while (" />
          </node>
          <node concept="l9hG8" id="5OpYk6g$wvH" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$wvJ" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$wvM" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$wvN" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXhE" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$wvO" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$wvP" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$wvR" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$wvU" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$wvV" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXdj" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$$8K">
    <ref role="WuzLi" to="mo8k:5OpYk6grXm1" resolve="TSDoWhileStatement" />
    <node concept="11bSqf" id="5OpYk6g$$8L" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$$8N" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$$8O" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$$8Q" role="lcghm">
            <property role="lacIc" value="do " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$$8R" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$$8T" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$$8W" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$$8X" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXdj" resolve="body" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$$8Y" role="lcghm">
            <property role="lacIc" value=" while (" />
          </node>
          <node concept="l9hG8" id="5OpYk6g$$8Z" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$$91" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$$94" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$$95" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXm3" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$$96" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$_M7">
    <ref role="WuzLi" to="mo8k:5OpYk6grXqx" resolve="TSForStatement" />
    <node concept="11bSqf" id="5OpYk6g$_M8" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$_Ma" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6g$_Mb" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$_Mf" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$_Mh" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mi" role="1PaTwD">
              <property role="3oM_SC" value="initializer" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mj" role="1PaTwD">
              <property role="3oM_SC" value="writes" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mk" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Ml" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mm" role="1PaTwD">
              <property role="3oM_SC" value="`;`," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mn" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mo" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mq" role="1PaTwD">
              <property role="3oM_SC" value="loop's" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mr" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Ms" role="1PaTwD">
              <property role="3oM_SC" value="separator" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mt" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mu" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Mw" role="1PaTwD">
              <property role="3oM_SC" value="`;`" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$_Mx" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$_M_" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$_MB" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MC" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MD" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_ME" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MF" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MG" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MH" role="1PaTwD">
              <property role="3oM_SC" value="appears" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MI" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MJ" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_ML" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MM" role="1PaTwD">
              <property role="3oM_SC" value="initializer" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MN" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MO" role="1PaTwD">
              <property role="3oM_SC" value="all." />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MP" role="1PaTwD">
              <property role="3oM_SC" value="That" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MQ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$_MS" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$_MW" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$_MY" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_MZ" role="1PaTwD">
              <property role="3oM_SC" value="division" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N0" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N1" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N2" role="1PaTwD">
              <property role="3oM_SC" value="makes," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N3" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N4" role="1PaTwD">
              <property role="3oM_SC" value="TSVariableDeclaration.needsSemicolon" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N5" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N6" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_N7" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$_N8" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$_Nc" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$_Ne" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Nf" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Ng" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Nh" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$_Ni" role="1PaTwD">
              <property role="3oM_SC" value="through." />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$_Nj" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$_Nl" role="lcghm">
            <property role="lacIc" value="for (" />
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$_Nm" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$_Np" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$_Ns" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$_Nv" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$_Nw" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXq_" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$_Nx" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$_Ny" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$_Nz" role="3cqZAp">
              <node concept="l9hG8" id="5OpYk6g$_N_" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$_NB" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$_NE" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$_NF" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grXq_" resolve="initializer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5OpYk6g$_NG" role="9aQIa">
            <node concept="3clFbS" id="5OpYk6g$_NI" role="9aQI4">
              <node concept="lc7rE" id="5OpYk6g$_NJ" role="3cqZAp">
                <node concept="la8eA" id="5OpYk6g$_NL" role="lcghm">
                  <property role="lacIc" value=";" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$_NM" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$_NP" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$_NS" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$_NV" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$_NW" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXqA" resolve="condition" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$_NX" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$_NY" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$_NZ" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6g$_O1" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
              <node concept="l9hG8" id="5OpYk6g$_O2" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$_O4" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$_O7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$_O8" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grXqA" resolve="condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$_O9" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$_Ob" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$_Oc" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$_Of" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$_Oi" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$_Ol" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$_Om" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXqB" resolve="incrementor" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$_On" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$_Oo" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$_Op" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6g$_Or" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
              <node concept="l9hG8" id="5OpYk6g$_Os" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$_Ou" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$_Ox" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$_Oy" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grXqB" resolve="incrementor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$_Oz" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$_O_" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$_OA" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$_OC" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$_OF" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$_OG" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXdj" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$ADA">
    <ref role="WuzLi" to="mo8k:5OpYk6grXzM" resolve="TSForOfStatement" />
    <node concept="11bSqf" id="5OpYk6g$ADB" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$ADD" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6g$ADE" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$ADI" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$ADK" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADL" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADM" role="1PaTwD">
              <property role="3oM_SC" value="writes" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADN" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADO" role="1PaTwD">
              <property role="3oM_SC" value="`;`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADP" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADQ" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADR" role="1PaTwD">
              <property role="3oM_SC" value="needsSemicolon" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADS" role="1PaTwD">
              <property role="3oM_SC" value="asks" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADT" role="1PaTwD">
              <property role="3oM_SC" value="who" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADU" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADV" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADW" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADX" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$ADY" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$ADZ" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$AE3" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$AE5" role="1PaTwD">
              <property role="3oM_SC" value="for-each" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AE6" role="1PaTwD">
              <property role="3oM_SC" value="loop" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AE7" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AE8" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AE9" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AEa" role="1PaTwD">
              <property role="3oM_SC" value="statement" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$AEb" role="1PaTwD">
              <property role="3oM_SC" value="list." />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$AEc" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$AEe" role="lcghm">
            <property role="lacIc" value="for (" />
          </node>
          <node concept="l9hG8" id="5OpYk6g$AEf" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$AEh" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$AEk" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$AEl" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXvb" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$AEm" role="lcghm">
            <property role="lacIc" value=" of " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$AEn" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$AEp" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$AEs" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$AEt" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXvc" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$AEu" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$AEv" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$AEx" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$AE$" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$AE_" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXdj" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$Bu5">
    <ref role="WuzLi" to="mo8k:5OpYk6grXCv" resolve="TSForInStatement" />
    <node concept="11bSqf" id="5OpYk6g$Bu6" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$Bu8" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$Bu9" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$Bub" role="lcghm">
            <property role="lacIc" value="for (" />
          </node>
          <node concept="l9hG8" id="5OpYk6g$Buc" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$Bue" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$Buh" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$Bui" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXvb" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$Buj" role="lcghm">
            <property role="lacIc" value=" in " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$Buk" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$Bum" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$Bup" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$Buq" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXvc" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$Bur" role="lcghm">
            <property role="lacIc" value=") " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$Bus" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$Buu" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$Bux" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$Buy" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXdj" resolve="body" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$C35">
    <ref role="WuzLi" to="mo8k:5OpYk6grXHe" resolve="TSBreakStatement" />
    <node concept="11bSqf" id="5OpYk6g$C36" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$C38" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$C39" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$C3b" role="lcghm">
            <property role="lacIc" value="break;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$CoU">
    <ref role="WuzLi" to="mo8k:5OpYk6grXLX" resolve="TSContinueStatement" />
    <node concept="11bSqf" id="5OpYk6g$CoV" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$CoX" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$CoY" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$Cp0" role="lcghm">
            <property role="lacIc" value="continue;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$COb">
    <ref role="WuzLi" to="mo8k:5OpYk6grYar" resolve="TSThrowStatement" />
    <node concept="11bSqf" id="5OpYk6g$COc" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$COe" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$COf" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$COh" role="lcghm">
            <property role="lacIc" value="throw " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$COi" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$COk" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$COn" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$COo" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYat" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$COp" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$DjP">
    <ref role="WuzLi" to="mo8k:5OpYk6grYft" resolve="TSCatchParameter" />
    <node concept="11bSqf" id="5OpYk6g$DjQ" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$DjS" role="2VODD2">
        <node concept="3SKdUt" id="5OpYk6g$DjT" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$DjX" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$DjZ" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk0" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk1" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk2" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk3" role="1PaTwD">
              <property role="3oM_SC" value="else." />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk4" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk5" role="1PaTwD">
              <property role="3oM_SC" value="refuses" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk6" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk7" role="1PaTwD">
              <property role="3oM_SC" value="annotation" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk8" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dk9" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dka" role="1PaTwD">
              <property role="3oM_SC" value="catch" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkb" role="1PaTwD">
              <property role="3oM_SC" value="binding" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkc" role="1PaTwD">
              <property role="3oM_SC" value="unless" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkd" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$Dke" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$Dki" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$Dkk" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkl" role="1PaTwD">
              <property role="3oM_SC" value="`any`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkm" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkn" role="1PaTwD">
              <property role="3oM_SC" value="`unknown`," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dko" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkp" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkq" role="1PaTwD">
              <property role="3oM_SC" value="useUnknownInCatchVariables" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkr" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dks" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkt" role="1PaTwD">
              <property role="3oM_SC" value="--strict" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dku" role="1PaTwD">
              <property role="3oM_SC" value="turns" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkv" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$Dkw" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$Dkx" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$Dk_" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$DkB" role="1PaTwD">
              <property role="3oM_SC" value="`unknown`" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkC" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkD" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkE" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkF" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkG" role="1PaTwD">
              <property role="3oM_SC" value="is," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkH" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkI" role="1PaTwD">
              <property role="3oM_SC" value="writing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkJ" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkK" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkL" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkM" role="1PaTwD">
              <property role="3oM_SC" value="noise" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkN" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$DkO" role="1PaTwD">
              <property role="3oM_SC" value="best." />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$DkP" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6g$DkR" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$DkT" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$DkW" role="2Oq$k0" />
              <node concept="3TrcHB" id="5OpYk6g$DkX" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$EBz">
    <ref role="WuzLi" to="mo8k:5OpYk6grYkz" resolve="TSCatchClause" />
    <node concept="11bSqf" id="5OpYk6g$EB$" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$EBA" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$EBB" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$EBD" role="lcghm">
            <property role="lacIc" value=" catch " />
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$EBE" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$EBH" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$EBK" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$EBN" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$EBO" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYkA" resolve="binding" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$EBP" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$EBQ" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$EBR" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6g$EBT" role="lcghm">
                <property role="lacIc" value="(" />
              </node>
              <node concept="l9hG8" id="5OpYk6g$EBU" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$EBW" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$EBZ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$EC0" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grYkA" resolve="binding" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="5OpYk6g$EC1" role="lcghm">
                <property role="lacIc" value=") " />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5OpYk6g$EC2" role="3cqZAp">
          <node concept="l9hG8" id="5OpYk6g$EC4" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$EC6" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$EC9" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$ECa" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYkB" resolve="block" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$G2g">
    <ref role="WuzLi" to="mo8k:5OpYk6grYpM" resolve="TSTryStatement" />
    <node concept="11bSqf" id="5OpYk6g$G2h" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$G2j" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$G2k" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$G2m" role="lcghm">
            <property role="lacIc" value="try " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$G2n" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$G2p" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$G2s" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$G2t" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYpP" resolve="tryBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$G2u" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$G2x" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$G2$" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$G2B" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$G2C" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYpQ" resolve="catchClause" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$G2D" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$G2E" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$G2F" role="3cqZAp">
              <node concept="l9hG8" id="5OpYk6g$G2H" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$G2J" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$G2M" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$G2N" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grYpQ" resolve="catchClause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5OpYk6g$G2O" role="3cqZAp">
          <node concept="3y3z36" id="5OpYk6g$G2R" role="3clFbw">
            <node concept="2OqwBi" id="5OpYk6g$G2U" role="3uHU7B">
              <node concept="117lpO" id="5OpYk6g$G2X" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$G2Y" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grYpR" resolve="finallyBlock" />
              </node>
            </node>
            <node concept="10Nm6u" id="5OpYk6g$G2Z" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5OpYk6g$G30" role="3clFbx">
            <node concept="lc7rE" id="5OpYk6g$G31" role="3cqZAp">
              <node concept="la8eA" id="5OpYk6g$G33" role="lcghm">
                <property role="lacIc" value=" finally " />
              </node>
              <node concept="l9hG8" id="5OpYk6g$G34" role="lcghm">
                <node concept="2OqwBi" id="5OpYk6g$G36" role="lb14g">
                  <node concept="117lpO" id="5OpYk6g$G39" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OpYk6g$G3a" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5OpYk6grYpR" resolve="finallyBlock" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$HkB">
    <ref role="WuzLi" to="mo8k:5OpYk6grXVz" resolve="TSCaseClause" />
    <node concept="11bSqf" id="5OpYk6g$HkC" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$HkE" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$HkF" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$HkH" role="lcghm">
            <property role="lacIc" value="case " />
          </node>
          <node concept="l9hG8" id="5OpYk6g$HkI" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$HkK" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$HkN" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$HkO" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grXVA" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$HkP" role="lcghm">
            <property role="lacIc" value=":" />
          </node>
          <node concept="l8MVK" id="5OpYk6g$HkQ" role="lcghm" />
        </node>
        <node concept="3izx1p" id="5OpYk6g$HkR" role="3cqZAp">
          <node concept="3clFbS" id="5OpYk6g$HkT" role="3izTki">
            <node concept="2Gpval" id="5OpYk6g$HkU" role="3cqZAp">
              <node concept="2GrKxI" id="5OpYk6g$HkY" role="2Gsz3X">
                <property role="TrG5h" value="stmt" />
              </node>
              <node concept="2OqwBi" id="5OpYk6g$HkZ" role="2GsD0m">
                <node concept="117lpO" id="5OpYk6g$Hl2" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5OpYk6g$Hl3" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:5OpYk6grXQJ" resolve="statements" />
                </node>
              </node>
              <node concept="3clFbS" id="5OpYk6g$Hl4" role="2LFqv$">
                <node concept="1bpajm" id="5OpYk6g$Hl5" role="3cqZAp" />
                <node concept="lc7rE" id="5OpYk6g$Hl6" role="3cqZAp">
                  <node concept="l9hG8" id="5OpYk6g$Hl8" role="lcghm">
                    <node concept="2GrUjf" id="5OpYk6g$Hla" role="lb14g">
                      <ref role="2Gs0qQ" node="5OpYk6g$HkY" resolve="stmt" />
                    </node>
                  </node>
                  <node concept="l8MVK" id="5OpYk6g$Hlb" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$ItY">
    <ref role="WuzLi" to="mo8k:5OpYk6grY0t" resolve="TSDefaultClause" />
    <node concept="11bSqf" id="5OpYk6g$ItZ" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$Iu1" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$Iu2" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$Iu4" role="lcghm">
            <property role="lacIc" value="default:" />
          </node>
          <node concept="l8MVK" id="5OpYk6g$Iu5" role="lcghm" />
        </node>
        <node concept="3izx1p" id="5OpYk6g$Iu6" role="3cqZAp">
          <node concept="3clFbS" id="5OpYk6g$Iu8" role="3izTki">
            <node concept="2Gpval" id="5OpYk6g$Iu9" role="3cqZAp">
              <node concept="2GrKxI" id="5OpYk6g$Iud" role="2Gsz3X">
                <property role="TrG5h" value="stmt" />
              </node>
              <node concept="2OqwBi" id="5OpYk6g$Iue" role="2GsD0m">
                <node concept="117lpO" id="5OpYk6g$Iuh" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5OpYk6g$Iui" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:5OpYk6grXQJ" resolve="statements" />
                </node>
              </node>
              <node concept="3clFbS" id="5OpYk6g$Iuj" role="2LFqv$">
                <node concept="1bpajm" id="5OpYk6g$Iuk" role="3cqZAp" />
                <node concept="lc7rE" id="5OpYk6g$Iul" role="3cqZAp">
                  <node concept="l9hG8" id="5OpYk6g$Iun" role="lcghm">
                    <node concept="2GrUjf" id="5OpYk6g$Iup" role="lb14g">
                      <ref role="2Gs0qQ" node="5OpYk6g$Iud" resolve="stmt" />
                    </node>
                  </node>
                  <node concept="l8MVK" id="5OpYk6g$Iuq" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5OpYk6g$JW9">
    <ref role="WuzLi" to="mo8k:5OpYk6grY5q" resolve="TSSwitchStatement" />
    <node concept="11bSqf" id="5OpYk6g$JWa" role="11c4hB">
      <node concept="3clFbS" id="5OpYk6g$JWc" role="2VODD2">
        <node concept="lc7rE" id="5OpYk6g$JWd" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$JWf" role="lcghm">
            <property role="lacIc" value="switch (" />
          </node>
          <node concept="l9hG8" id="5OpYk6g$JWg" role="lcghm">
            <node concept="2OqwBi" id="5OpYk6g$JWi" role="lb14g">
              <node concept="117lpO" id="5OpYk6g$JWl" role="2Oq$k0" />
              <node concept="3TrEf2" id="5OpYk6g$JWm" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5OpYk6grY5s" resolve="expression" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5OpYk6g$JWn" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
          <node concept="l8MVK" id="5OpYk6g$JWo" role="lcghm" />
        </node>
        <node concept="3SKdUt" id="5OpYk6g$JWp" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$JWt" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$JWv" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWw" role="1PaTwD">
              <property role="3oM_SC" value="clause" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWx" role="1PaTwD">
              <property role="3oM_SC" value="writes" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWy" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWz" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JW$" role="1PaTwD">
              <property role="3oM_SC" value="trailing" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JW_" role="1PaTwD">
              <property role="3oM_SC" value="newline," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWA" role="1PaTwD">
              <property role="3oM_SC" value="having" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWB" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWC" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWD" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWE" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWF" role="1PaTwD">
              <property role="3oM_SC" value="statement," />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWG" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWH" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5OpYk6g$JWI" role="3cqZAp">
          <node concept="1PaTwC" id="5OpYk6g$JWM" role="1aUNEU">
            <node concept="3oM_SD" id="5OpYk6g$JWO" role="1PaTwD">
              <property role="3oM_SC" value="loop" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWP" role="1PaTwD">
              <property role="3oM_SC" value="adds" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWQ" role="1PaTwD">
              <property role="3oM_SC" value="none" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWR" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWS" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWT" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWV" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWW" role="1PaTwD">
              <property role="3oM_SC" value="place" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWY" role="1PaTwD">
              <property role="3oM_SC" value="switch" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JWZ" role="1PaTwD">
              <property role="3oM_SC" value="differs" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JX0" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JX1" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5OpYk6g$JX2" role="1PaTwD">
              <property role="3oM_SC" value="block." />
            </node>
          </node>
        </node>
        <node concept="3izx1p" id="5OpYk6g$JX3" role="3cqZAp">
          <node concept="3clFbS" id="5OpYk6g$JX5" role="3izTki">
            <node concept="2Gpval" id="5OpYk6g$JX6" role="3cqZAp">
              <node concept="2GrKxI" id="5OpYk6g$JXa" role="2Gsz3X">
                <property role="TrG5h" value="clause" />
              </node>
              <node concept="2OqwBi" id="5OpYk6g$JXb" role="2GsD0m">
                <node concept="117lpO" id="5OpYk6g$JXe" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5OpYk6g$JXf" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:5OpYk6grY5t" resolve="clauses" />
                </node>
              </node>
              <node concept="3clFbS" id="5OpYk6g$JXg" role="2LFqv$">
                <node concept="1bpajm" id="5OpYk6g$JXh" role="3cqZAp" />
                <node concept="lc7rE" id="5OpYk6g$JXi" role="3cqZAp">
                  <node concept="l9hG8" id="5OpYk6g$JXk" role="lcghm">
                    <node concept="2GrUjf" id="5OpYk6g$JXm" role="lb14g">
                      <ref role="2Gs0qQ" node="5OpYk6g$JXa" resolve="clause" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="5OpYk6g$JXn" role="3cqZAp" />
        <node concept="lc7rE" id="5OpYk6g$JXo" role="3cqZAp">
          <node concept="la8eA" id="5OpYk6g$JXq" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

