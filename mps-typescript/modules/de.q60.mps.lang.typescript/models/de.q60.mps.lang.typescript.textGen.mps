<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0517b13e-af8e-44dd-a489-0eb64a0cb33a(de.q60.mps.lang.typescript.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
              <ref role="3TtcxE" to="mo8k:1TCdlWHrFuB" />
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
                <ref role="3Tt5mk" to="mo8k:1TCdlWHrFuE" />
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
            <node concept="3cpWs3" id="6QS6LNPtmuk" role="lb14g">
              <node concept="Xl_RD" id="6QS6LNPtmun" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="6QS6LNPtmuo" role="3uHU7w">
                <node concept="117lpO" id="6QS6LNPtmur" role="2Oq$k0" />
                <node concept="3TrcHB" id="6QS6LNPtmus" role="2OqNvi">
                  <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
                </node>
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
            <node concept="2OqwBi" id="6QS6LNPttZ6" role="lb14g">
              <node concept="2OqwBi" id="6QS6LNPttZ9" role="2Oq$k0">
                <node concept="2OqwBi" id="6QS6LNPttZc" role="2Oq$k0">
                  <node concept="2OqwBi" id="6QS6LNPttZf" role="2Oq$k0">
                    <node concept="2OqwBi" id="6QS6LNPttZi" role="2Oq$k0">
                      <node concept="117lpO" id="6QS6LNPttZl" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6QS6LNPttZm" role="2OqNvi">
                        <ref role="3TsBF5" to="mo8k:1TCdlWHrFuK" resolve="value" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6QS6LNPttZn" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                      <node concept="Xl_RD" id="6QS6LNPttZo" role="37wK5m">
                        <property role="Xl_RC" value="\\" />
                      </node>
                      <node concept="Xl_RD" id="6QS6LNPttZp" role="37wK5m">
                        <property role="Xl_RC" value="\\\\" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6QS6LNPttZq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="6QS6LNPttZr" role="37wK5m">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                    <node concept="Xl_RD" id="6QS6LNPttZs" role="37wK5m">
                      <property role="Xl_RC" value="\\\&quot;" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6QS6LNPttZt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="6QS6LNPttZu" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                  <node concept="Xl_RD" id="6QS6LNPttZv" role="37wK5m">
                    <property role="Xl_RC" value="\\n" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6QS6LNPttZw" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="6QS6LNPttZx" role="37wK5m">
                  <property role="Xl_RC" value="\r" />
                </node>
                <node concept="Xl_RD" id="6QS6LNPttZy" role="37wK5m">
                  <property role="Xl_RC" value="\\r" />
                </node>
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
        <node concept="lc7rE" id="6QS6LNPtuBb" role="3cqZAp">
          <node concept="l9hG8" id="6QS6LNPtuBd" role="lcghm">
            <node concept="2OqwBi" id="6QS6LNPtuBf" role="lb14g">
              <node concept="117lpO" id="6QS6LNPtuBi" role="2Oq$k0" />
              <node concept="3TrcHB" id="6QS6LNPtuBj" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:1UjCfdjUYX9" resolve="name" />
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
                <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX5" />
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
                <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX6" />
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
                <ref role="3TtcxE" to="mo8k:1UjCfdjUYXd" />
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
                <ref role="3TtcxE" to="mo8k:4Ul7eGthLpY" />
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
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" />
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
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" />
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
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ5" />
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
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ6" />
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
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" />
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
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

