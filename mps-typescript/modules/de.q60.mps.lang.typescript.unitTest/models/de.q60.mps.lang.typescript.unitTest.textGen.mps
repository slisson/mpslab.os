<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f76fce28-cb87-4730-a412-c4d060d770f6(de.q60.mps.lang.typescript.unitTest.textGen)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2rf1" ref="r:3294770e-3023-4d24-9850-53098ac7516e(de.q60.mps.lang.typescript.unitTest.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
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
  <node concept="WtQ9Q" id="6WKYICFAl_2">
    <ref role="WuzLi" to="2rf1:6WKYICF_RIG" resolve="TSTestCase" />
    <node concept="9MYSb" id="6WKYICFAl_3" role="33IsuW">
      <node concept="3clFbS" id="6WKYICFAl_5" role="2VODD2">
        <node concept="3cpWs6" id="6WKYICFAl_6" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICFAl_7" role="3cqZAk">
            <property role="Xl_RC" value="test.ts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="6WKYICFAl_8" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFAl_a" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFAl_b" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAl_d" role="lcghm">
            <property role="lacIc" value="import { describe, test } from &quot;node:test&quot;;" />
          </node>
          <node concept="l8MVK" id="6WKYICFAl_e" role="lcghm" />
          <node concept="la8eA" id="6WKYICFAl_f" role="lcghm">
            <property role="lacIc" value="import { strict as assert } from &quot;node:assert&quot;;" />
          </node>
          <node concept="l8MVK" id="6WKYICFAl_g" role="lcghm" />
          <node concept="l8MVK" id="6WKYICFAl_h" role="lcghm" />
          <node concept="la8eA" id="6WKYICFAl_i" role="lcghm">
            <property role="lacIc" value="describe(&quot;" />
          </node>
          <node concept="l9hG8" id="6WKYICFAl_j" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAl_l" role="lb14g">
              <node concept="2OqwBi" id="6WKYICFAl_o" role="2Oq$k0">
                <node concept="2OqwBi" id="6WKYICFAl_r" role="2Oq$k0">
                  <node concept="117lpO" id="6WKYICFAl_u" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6WKYICFAl_v" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="6WKYICFAl_w" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="6WKYICFAl_x" role="37wK5m">
                    <property role="Xl_RC" value="\\" />
                  </node>
                  <node concept="Xl_RD" id="6WKYICFAl_y" role="37wK5m">
                    <property role="Xl_RC" value="\\\\" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6WKYICFAl_z" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="6WKYICFAl_$" role="37wK5m">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="Xl_RD" id="6WKYICFAl__" role="37wK5m">
                  <property role="Xl_RC" value="\\\&quot;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAl_A" role="lcghm">
            <property role="lacIc" value="&quot;, () =&gt; {" />
          </node>
          <node concept="l8MVK" id="6WKYICFAl_B" role="lcghm" />
        </node>
        <node concept="3izx1p" id="6WKYICFAl_C" role="3cqZAp">
          <node concept="3clFbS" id="6WKYICFAl_E" role="3izTki">
            <node concept="2Gpval" id="6WKYICFAl_F" role="3cqZAp">
              <node concept="2GrKxI" id="6WKYICFAl_J" role="2Gsz3X">
                <property role="TrG5h" value="method" />
              </node>
              <node concept="2OqwBi" id="6WKYICFAl_K" role="2GsD0m">
                <node concept="117lpO" id="6WKYICFAl_N" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6WKYICFAl_O" role="2OqNvi">
                  <ref role="3TtcxE" to="2rf1:6WKYICF_RIK" resolve="testMethods" />
                </node>
              </node>
              <node concept="3clFbS" id="6WKYICFAl_P" role="2LFqv$">
                <node concept="1bpajm" id="6WKYICFAl_Q" role="3cqZAp" />
                <node concept="lc7rE" id="6WKYICFAl_R" role="3cqZAp">
                  <node concept="l9hG8" id="6WKYICFAl_T" role="lcghm">
                    <node concept="2GrUjf" id="6WKYICFAl_V" role="lb14g">
                      <ref role="2Gs0qQ" node="6WKYICFAl_J" resolve="method" />
                    </node>
                  </node>
                  <node concept="l8MVK" id="6WKYICFAl_W" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6WKYICFAl_X" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAl_Z" role="lcghm">
            <property role="lacIc" value="});" />
          </node>
          <node concept="l8MVK" id="6WKYICFAlA0" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFAo3Y">
    <ref role="WuzLi" to="2rf1:6WKYICF_RIL" resolve="TSTestMethod" />
    <node concept="11bSqf" id="6WKYICFAo3Z" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFAo41" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFAo42" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAo44" role="lcghm">
            <property role="lacIc" value="test(&quot;" />
          </node>
          <node concept="l9hG8" id="6WKYICFAo45" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAo47" role="lb14g">
              <node concept="2OqwBi" id="6WKYICFAo4a" role="2Oq$k0">
                <node concept="2OqwBi" id="6WKYICFAo4d" role="2Oq$k0">
                  <node concept="117lpO" id="6WKYICFAo4g" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6WKYICFAo4h" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="6WKYICFAo4i" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="6WKYICFAo4j" role="37wK5m">
                    <property role="Xl_RC" value="\\" />
                  </node>
                  <node concept="Xl_RD" id="6WKYICFAo4k" role="37wK5m">
                    <property role="Xl_RC" value="\\\\" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6WKYICFAo4l" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="6WKYICFAo4m" role="37wK5m">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="Xl_RD" id="6WKYICFAo4n" role="37wK5m">
                  <property role="Xl_RC" value="\\\&quot;" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAo4o" role="lcghm">
            <property role="lacIc" value="&quot;, () =&gt; {" />
          </node>
          <node concept="l8MVK" id="6WKYICFAo4p" role="lcghm" />
        </node>
        <node concept="3izx1p" id="6WKYICFAo4q" role="3cqZAp">
          <node concept="3clFbS" id="6WKYICFAo4s" role="3izTki">
            <node concept="2Gpval" id="6WKYICFAo4t" role="3cqZAp">
              <node concept="2GrKxI" id="6WKYICFAo4x" role="2Gsz3X">
                <property role="TrG5h" value="stmt" />
              </node>
              <node concept="2OqwBi" id="6WKYICFAo4y" role="2GsD0m">
                <node concept="117lpO" id="6WKYICFAo4_" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6WKYICFAo4A" role="2OqNvi">
                  <ref role="3TtcxE" to="2rf1:6WKYICF_RIN" resolve="body" />
                </node>
              </node>
              <node concept="3clFbS" id="6WKYICFAo4B" role="2LFqv$">
                <node concept="1bpajm" id="6WKYICFAo4C" role="3cqZAp" />
                <node concept="lc7rE" id="6WKYICFAo4D" role="3cqZAp">
                  <node concept="l9hG8" id="6WKYICFAo4F" role="lcghm">
                    <node concept="2GrUjf" id="6WKYICFAo4H" role="lb14g">
                      <ref role="2Gs0qQ" node="6WKYICFAo4x" resolve="stmt" />
                    </node>
                  </node>
                  <node concept="l8MVK" id="6WKYICFAo4I" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="6WKYICFAo4J" role="3cqZAp" />
        <node concept="lc7rE" id="6WKYICFAo4K" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAo4M" role="lcghm">
            <property role="lacIc" value="});" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFAoMI">
    <ref role="WuzLi" to="2rf1:6WKYICF_RIO" resolve="TSAssertTrue" />
    <node concept="11bSqf" id="6WKYICFAoMJ" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFAoML" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFAoMM" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAoMO" role="lcghm">
            <property role="lacIc" value="assert.ok(" />
          </node>
          <node concept="l9hG8" id="6WKYICFAoMP" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAoMR" role="lb14g">
              <node concept="117lpO" id="6WKYICFAoMU" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFAoMV" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIQ" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAoMW" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFAoZU">
    <ref role="WuzLi" to="2rf1:6WKYICF_RIS" resolve="TSAssertFalse" />
    <node concept="11bSqf" id="6WKYICFAoZV" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFAoZX" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFAoZY" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFAp00" role="lcghm">
            <property role="lacIc" value="assert.ok(!(" />
          </node>
          <node concept="l9hG8" id="6WKYICFAp01" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAp03" role="lb14g">
              <node concept="117lpO" id="6WKYICFAp06" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFAp07" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIU" resolve="condition" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAp08" role="lcghm">
            <property role="lacIc" value="));" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFApp2">
    <ref role="WuzLi" to="2rf1:6WKYICF_RIW" resolve="TSAssertEquals" />
    <node concept="11bSqf" id="6WKYICFApp3" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFApp5" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFApp6" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFApp8" role="lcghm">
            <property role="lacIc" value="assert.deepStrictEqual(" />
          </node>
          <node concept="l9hG8" id="6WKYICFApp9" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAppb" role="lb14g">
              <node concept="117lpO" id="6WKYICFAppe" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFAppf" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIY" resolve="actual" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAppg" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="6WKYICFApph" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFAppj" role="lb14g">
              <node concept="117lpO" id="6WKYICFAppm" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFAppn" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RIZ" resolve="expected" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFAppo" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFApCz">
    <ref role="WuzLi" to="2rf1:6WKYICF_RJ1" resolve="TSAssertNotEquals" />
    <node concept="11bSqf" id="6WKYICFApC$" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFApCA" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFApCB" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFApCD" role="lcghm">
            <property role="lacIc" value="assert.notDeepStrictEqual(" />
          </node>
          <node concept="l9hG8" id="6WKYICFApCE" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFApCG" role="lb14g">
              <node concept="117lpO" id="6WKYICFApCJ" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFApCK" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RJ3" resolve="actual" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFApCL" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="6WKYICFApCM" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFApCO" role="lb14g">
              <node concept="117lpO" id="6WKYICFApCR" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFApCS" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICF_RJ4" resolve="expected" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFApCT" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6WKYICFMYnN">
    <ref role="WuzLi" to="2rf1:6WKYICFMSWv" resolve="TSFail" />
    <node concept="11bSqf" id="6WKYICFMYnO" role="11c4hB">
      <node concept="3clFbS" id="6WKYICFMYnQ" role="2VODD2">
        <node concept="lc7rE" id="6WKYICFMYnR" role="3cqZAp">
          <node concept="la8eA" id="6WKYICFMYnT" role="lcghm">
            <property role="lacIc" value="assert.fail(" />
          </node>
          <node concept="l9hG8" id="6WKYICFMYnU" role="lcghm">
            <node concept="2OqwBi" id="6WKYICFMYnW" role="lb14g">
              <node concept="117lpO" id="6WKYICFMYnZ" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFMYo0" role="2OqNvi">
                <ref role="3Tt5mk" to="2rf1:6WKYICFMSWx" resolve="message" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6WKYICFMYo1" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

