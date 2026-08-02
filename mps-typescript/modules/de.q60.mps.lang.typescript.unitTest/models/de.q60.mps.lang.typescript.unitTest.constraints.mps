<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:409c3e0b-0b0e-47d0-b442-0f7b2320af68(de.q60.mps.lang.typescript.unitTest.constraints)">
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
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="2rf1" ref="r:3294770e-3023-4d24-9850-53098ac7516e(de.q60.mps.lang.typescript.unitTest.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
  <node concept="1M2fIO" id="6WKYICFDzUN">
    <ref role="1M2myG" to="2rf1:6WKYICF_RIE" resolve="TSIAssertion" />
    <node concept="9S07l" id="6WKYICFDzUO" role="9Vyp8">
      <node concept="3clFbS" id="6WKYICFDzUP" role="2VODD2">
        <node concept="3SKdUt" id="6WKYICFMZep" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICFMZet" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICFMZev" role="1PaTwD">
              <property role="3oM_SC" value="An" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZew" role="1PaTwD">
              <property role="3oM_SC" value="assertion" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZex" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZey" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZez" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZe$" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZe_" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeA" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeB" role="1PaTwD">
              <property role="3oM_SC" value="runner" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeC" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeD" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeF" role="1PaTwD">
              <property role="3oM_SC" value="catch" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeG" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeH" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeI" role="1PaTwD">
              <property role="3oM_SC" value="throws." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICFMZeJ" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICFMZeN" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICFMZeP" role="1PaTwD">
              <property role="3oM_SC" value="Anywhere" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeQ" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeR" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeS" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeT" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeU" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeV" role="1PaTwD">
              <property role="3oM_SC" value="do," />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeW" role="1PaTwD">
              <property role="3oM_SC" value="including" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeY" role="1PaTwD">
              <property role="3oM_SC" value="blocks" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZeZ" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf0" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf1" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf2" role="1PaTwD">
              <property role="3oM_SC" value="statement" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf3" role="1PaTwD">
              <property role="3oM_SC" value="—" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf4" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZf5" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICFMZf6" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICFMZfa" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICFMZfc" role="1PaTwD">
              <property role="3oM_SC" value="among" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfe" role="1PaTwD">
              <property role="3oM_SC" value="statements" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZff" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfg" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfh" role="1PaTwD">
              <property role="3oM_SC" value="plain" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfi" role="1PaTwD">
              <property role="3oM_SC" value="TSModule," />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfj" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfk" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfl" role="1PaTwD">
              <property role="3oM_SC" value="imports" />
            </node>
            <node concept="3oM_SD" id="6WKYICFMZfm" role="1PaTwD">
              <property role="3oM_SC" value="`assert`." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6WKYICFMZfn" role="3cqZAp">
          <node concept="22lmx$" id="6WKYICFMZfo" role="3cqZAk">
            <node concept="2OqwBi" id="6WKYICFMZfr" role="3uHU7B">
              <node concept="nLn13" id="6WKYICFMZfu" role="2Oq$k0" />
              <node concept="1mIQ4w" id="6WKYICFMZfv" role="2OqNvi">
                <node concept="chp4Y" id="6WKYICFMZfx" role="cj9EA">
                  <ref role="cht4Q" to="2rf1:6WKYICF_RIL" resolve="TSTestMethod" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6WKYICFMZfy" role="3uHU7w">
              <node concept="2OqwBi" id="6WKYICFMZf_" role="2Oq$k0">
                <node concept="nLn13" id="6WKYICFMZfC" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6WKYICFMZfD" role="2OqNvi">
                  <node concept="1xMEDy" id="6WKYICFMZfG" role="1xVPHs">
                    <node concept="chp4Y" id="6WKYICFMZfI" role="ri$Ld">
                      <ref role="cht4Q" to="2rf1:6WKYICF_RIL" resolve="TSTestMethod" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6WKYICFMZfJ" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="6WKYICFMZfK" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

