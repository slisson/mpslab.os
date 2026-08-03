<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:68855d6a-0611-45d5-9d54-ada096e93139(de.q60.mps.lang.typescript.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="2S6QgY" id="6WKYICFLhk2">
    <property role="TrG5h" value="AddTypeAnnotation" />
    <ref role="2ZfgGC" to="mo8k:6WKYICFF5hS" resolve="TSVariableDeclaration" />
    <node concept="2S6ZIM" id="6WKYICFLhk7" role="2ZfVej">
      <node concept="3clFbS" id="6WKYICFLhk9" role="2VODD2">
        <node concept="3clFbF" id="6WKYICFLhka" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICFLhkc" role="3clFbG">
            <property role="Xl_RC" value="Add Type Annotation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6WKYICFLhkd" role="2ZfVeh">
      <node concept="3clFbS" id="6WKYICFLhkf" role="2VODD2">
        <node concept="3cpWs6" id="6WKYICFLhkg" role="3cqZAp">
          <node concept="3clFbC" id="6WKYICFLhkh" role="3cqZAk">
            <node concept="2OqwBi" id="6WKYICFLhkk" role="3uHU7B">
              <node concept="2Sf5sV" id="6WKYICFLhkn" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLhko" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFLhkp" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6WKYICFLhkq" role="2ZfgGD">
      <node concept="3clFbS" id="6WKYICFLhks" role="2VODD2">
        <node concept="3SKdUt" id="6WKYICFLilL" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICFLilP" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICFLilR" role="1PaTwD">
              <property role="3oM_SC" value="`number`" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilS" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilU" role="1PaTwD">
              <property role="3oM_SC" value="placeholder" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilW" role="1PaTwD">
              <property role="3oM_SC" value="completion" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilX" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLilZ" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLim0" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLim1" role="1PaTwD">
              <property role="3oM_SC" value="replaces;" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLim2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLim3" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLim4" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICFLim5" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICFLim9" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICFLimb" role="1PaTwD">
              <property role="3oM_SC" value="exists" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimc" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimd" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLime" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimf" role="1PaTwD">
              <property role="3oM_SC" value="something" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimg" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimh" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimi" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimk" role="1PaTwD">
              <property role="3oM_SC" value="intention" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLiml" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimm" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimn" role="1PaTwD">
              <property role="3oM_SC" value="put" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimo" role="1PaTwD">
              <property role="3oM_SC" value="something" />
            </node>
            <node concept="3oM_SD" id="6WKYICFLimp" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6WKYICFLhkt" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICFLhkv" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICFLhky" role="2Oq$k0">
              <node concept="2Sf5sV" id="6WKYICFLhk_" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLhkA" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
              </node>
            </node>
            <node concept="zfrQC" id="6WKYICFLhkB" role="2OqNvi">
              <ref role="1A9B2P" to="mo8k:4R4WbZLH5um" resolve="TSNumberType" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6WKYICFLjo8">
    <property role="TrG5h" value="AddInitializer" />
    <ref role="2ZfgGC" to="mo8k:6WKYICFF5hS" resolve="TSVariableDeclaration" />
    <node concept="2S6ZIM" id="6WKYICFLjod" role="2ZfVej">
      <node concept="3clFbS" id="6WKYICFLjof" role="2VODD2">
        <node concept="3clFbF" id="6WKYICFLjog" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICFLjoi" role="3clFbG">
            <property role="Xl_RC" value="Add Initializer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6WKYICFLjoj" role="2ZfVeh">
      <node concept="3clFbS" id="6WKYICFLjol" role="2VODD2">
        <node concept="3cpWs6" id="6WKYICFLjom" role="3cqZAp">
          <node concept="3clFbC" id="6WKYICFLjon" role="3cqZAk">
            <node concept="2OqwBi" id="6WKYICFLjoq" role="3uHU7B">
              <node concept="2Sf5sV" id="6WKYICFLjot" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLjou" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFLjov" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6WKYICFLjow" role="2ZfgGD">
      <node concept="3clFbS" id="6WKYICFLjoy" role="2VODD2">
        <node concept="3SKdUt" id="6WKYICG5orl" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICG5orp" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICG5orr" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5ors" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5ort" role="1PaTwD">
              <property role="3oM_SC" value="literal" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5oru" role="1PaTwD">
              <property role="3oM_SC" value="holds" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orv" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orw" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orx" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5ory" role="1PaTwD">
              <property role="3oM_SC" value="text," />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orz" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5or$" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5or_" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orB" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orC" role="1PaTwD">
              <property role="3oM_SC" value="given" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orD" role="1PaTwD">
              <property role="3oM_SC" value="one:" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orE" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orF" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICG5orG" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICG5orK" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICG5orM" role="1PaTwD">
              <property role="3oM_SC" value="literal" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orN" role="1PaTwD">
              <property role="3oM_SC" value="writes" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orO" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orP" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orQ" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orR" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orS" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orT" role="1PaTwD">
              <property role="3oM_SC" value="reported" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orU" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="6WKYICG5orV" role="1PaTwD">
              <property role="3oM_SC" value="check_TSNumberLiteral." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6WKYICG5orW" role="3cqZAp">
          <node concept="37vLTI" id="6WKYICG5orY" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICG5os1" role="37vLTJ">
              <node concept="2OqwBi" id="6WKYICG5os4" role="2Oq$k0">
                <node concept="2OqwBi" id="6WKYICG5os7" role="2Oq$k0">
                  <node concept="2Sf5sV" id="6WKYICG5osa" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6WKYICG5osb" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
                  </node>
                </node>
                <node concept="zfrQC" id="6WKYICG5osc" role="2OqNvi">
                  <ref role="1A9B2P" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
                </node>
              </node>
              <node concept="3TrcHB" id="6WKYICG5osd" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
              </node>
            </node>
            <node concept="Xl_RD" id="6WKYICG5ose" role="37vLTx">
              <property role="Xl_RC" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6WKYICFLkqh">
    <property role="TrG5h" value="AddElseBranch" />
    <ref role="2ZfgGC" to="mo8k:6WKYICFF5pj" resolve="TSIfStatement" />
    <node concept="2S6ZIM" id="6WKYICFLkqm" role="2ZfVej">
      <node concept="3clFbS" id="6WKYICFLkqo" role="2VODD2">
        <node concept="3clFbF" id="6WKYICFLkqp" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICFLkqr" role="3clFbG">
            <property role="Xl_RC" value="Add Else Branch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6WKYICFLkqs" role="2ZfVeh">
      <node concept="3clFbS" id="6WKYICFLkqu" role="2VODD2">
        <node concept="3cpWs6" id="6WKYICFLkqv" role="3cqZAp">
          <node concept="3clFbC" id="6WKYICFLkqw" role="3cqZAk">
            <node concept="2OqwBi" id="6WKYICFLkqz" role="3uHU7B">
              <node concept="2Sf5sV" id="6WKYICFLkqA" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLkqB" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5po" resolve="elseBlock" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFLkqC" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6WKYICFLkqD" role="2ZfgGD">
      <node concept="3clFbS" id="6WKYICFLkqF" role="2VODD2">
        <node concept="3clFbF" id="6WKYICFLkqG" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICFLkqI" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICFLkqL" role="2Oq$k0">
              <node concept="2Sf5sV" id="6WKYICFLkqO" role="2Oq$k0" />
              <node concept="3TrEf2" id="6WKYICFLkqP" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5po" resolve="elseBlock" />
              </node>
            </node>
            <node concept="zfrQC" id="6WKYICFLkqQ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6WKYICFLlwV">
    <property role="TrG5h" value="AddElseIfBranch" />
    <ref role="2ZfgGC" to="mo8k:6WKYICFF5pj" resolve="TSIfStatement" />
    <node concept="2S6ZIM" id="6WKYICFLlx0" role="2ZfVej">
      <node concept="3clFbS" id="6WKYICFLlx2" role="2VODD2">
        <node concept="3clFbF" id="6WKYICFLlx3" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICFLlx5" role="3clFbG">
            <property role="Xl_RC" value="Add Else-If Branch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6WKYICFLlx6" role="2ZfgGD">
      <node concept="3clFbS" id="6WKYICFLlx8" role="2VODD2">
        <node concept="3cpWs8" id="6WKYICFLlx9" role="3cqZAp">
          <node concept="3cpWsn" id="6WKYICFLlxc" role="3cpWs9">
            <property role="TrG5h" value="clause" />
            <node concept="3Tqbb2" id="6WKYICFLlxe" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:6WKYICFF5nG" resolve="TSElseIfClause" />
            </node>
            <node concept="2ShNRf" id="6WKYICFLlxf" role="33vP2m">
              <node concept="3zrR0B" id="6WKYICFLlxh" role="2ShVmc">
                <node concept="3Tqbb2" id="6WKYICFLlxj" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:6WKYICFF5nG" resolve="TSElseIfClause" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICGdbuU" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICGdbuY" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICGdbv0" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv1" role="1PaTwD">
              <property role="3oM_SC" value="braces" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv2" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv3" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv4" role="1PaTwD">
              <property role="3oM_SC" value="block's" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv5" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv6" role="1PaTwD">
              <property role="3oM_SC" value="cells," />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv7" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbv9" role="1PaTwD">
              <property role="3oM_SC" value="clause" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbva" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvb" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvc" role="1PaTwD">
              <property role="3oM_SC" value="renders" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvd" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICGdbve" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICGdbvi" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICGdbvk" role="1PaTwD">
              <property role="3oM_SC" value="`else" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvl" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvm" role="1PaTwD">
              <property role="3oM_SC" value="(…)" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvn" role="1PaTwD">
              <property role="3oM_SC" value="&lt;no" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvo" role="1PaTwD">
              <property role="3oM_SC" value="block&gt;`." />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvp" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvq" role="1PaTwD">
              <property role="3oM_SC" value="condition" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvr" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvs" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvt" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvu" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvv" role="1PaTwD">
              <property role="3oM_SC" value="purpose" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvw" role="1PaTwD">
              <property role="3oM_SC" value="—" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvx" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvy" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvz" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICGdbv$" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICGdbvC" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICGdbvE" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvG" role="1PaTwD">
              <property role="3oM_SC" value="fill" />
            </node>
            <node concept="3oM_SD" id="6WKYICGdbvH" role="1PaTwD">
              <property role="3oM_SC" value="next." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6WKYICGdbvI" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICGdbvK" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICGdbvN" role="2Oq$k0">
              <node concept="37vLTw" id="6WKYICGdbvQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICFLlxc" resolve="clause" />
              </node>
              <node concept="3TrEf2" id="6WKYICGdbvR" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5nI" resolve="block" />
              </node>
            </node>
            <node concept="zfrQC" id="6WKYICGdbvS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6WKYICFLlxk" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICFLlxm" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICFLlxp" role="2Oq$k0">
              <node concept="2Sf5sV" id="6WKYICFLlxs" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6WKYICFLlxt" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:6WKYICFF5pn" resolve="elseIfClauses" />
              </node>
            </node>
            <node concept="TSZUe" id="6WKYICFLlxu" role="2OqNvi">
              <node concept="37vLTw" id="6WKYICFLlxw" role="25WWJ7">
                <ref role="3cqZAo" node="6WKYICFLlxc" resolve="clause" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6WKYICH0EzB">
    <property role="TrG5h" value="AddTemplateInterpolation" />
    <ref role="2ZfgGC" to="mo8k:6WKYICGZsfC" resolve="TSTemplateLiteral" />
    <node concept="2S6ZIM" id="6WKYICH0EzG" role="2ZfVej">
      <node concept="3clFbS" id="6WKYICH0EzI" role="2VODD2">
        <node concept="3clFbF" id="6WKYICH0EzJ" role="3cqZAp">
          <node concept="Xl_RD" id="6WKYICH0EzL" role="3clFbG">
            <property role="Xl_RC" value="Add Interpolation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6WKYICH0EzM" role="2ZfgGD">
      <node concept="3clFbS" id="6WKYICH0EzO" role="2VODD2">
        <node concept="3SKdUt" id="6WKYICH0EzP" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICH0EzT" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICH0EzV" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0EzW" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0EzX" role="1PaTwD">
              <property role="3oM_SC" value="literal" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0EzY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0EzZ" role="1PaTwD">
              <property role="3oM_SC" value="modelled" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$0" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$1" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$2" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript's" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$3" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$4" role="1PaTwD">
              <property role="3oM_SC" value="AST" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$5" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$7" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$9" role="1PaTwD">
              <property role="3oM_SC" value="head" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$a" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$b" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICH0E$c" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICH0E$g" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICH0E$i" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$j" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$k" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$l" role="1PaTwD">
              <property role="3oM_SC" value="span" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$m" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$n" role="1PaTwD">
              <property role="3oM_SC" value="interpolation," />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$o" role="1PaTwD">
              <property role="3oM_SC" value="each" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$p" role="1PaTwD">
              <property role="3oM_SC" value="carrying" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$q" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$r" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$s" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$t" role="1PaTwD">
              <property role="3oM_SC" value="follows" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$u" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$v" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$w" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$x" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$y" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICH0E$z" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICH0E$B" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICH0E$D" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$E" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$F" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$G" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$H" role="1PaTwD">
              <property role="3oM_SC" value="alternation." />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$I" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$J" role="1PaTwD">
              <property role="3oM_SC" value="cost" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$K" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$L" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$M" role="1PaTwD">
              <property role="3oM_SC" value="${" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$N" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$O" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$P" role="1PaTwD">
              <property role="3oM_SC" value="typed" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$Q" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$R" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$S" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E$T" role="1PaTwD">
              <property role="3oM_SC" value="cell:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICH0E$U" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICH0E$Y" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICH0E_0" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_1" role="1PaTwD">
              <property role="3oM_SC" value="free-text" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_2" role="1PaTwD">
              <property role="3oM_SC" value="property" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_3" role="1PaTwD">
              <property role="3oM_SC" value="accepts" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_5" role="1PaTwD">
              <property role="3oM_SC" value="keystroke," />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_6" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_7" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_8" role="1PaTwD">
              <property role="3oM_SC" value="side" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_9" role="1PaTwD">
              <property role="3oM_SC" value="transform" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_a" role="1PaTwD">
              <property role="3oM_SC" value="ever" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_b" role="1PaTwD">
              <property role="3oM_SC" value="fires" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_c" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_d" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6WKYICH0E_e" role="3cqZAp">
          <node concept="1PaTwC" id="6WKYICH0E_i" role="1aUNEU">
            <node concept="3oM_SD" id="6WKYICH0E_k" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_l" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_m" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_n" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_o" role="1PaTwD">
              <property role="3oM_SC" value="until" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_p" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_q" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_r" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_s" role="1PaTwD">
              <property role="3oM_SC" value="given" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_t" role="1PaTwD">
              <property role="3oM_SC" value="something" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_u" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_v" role="1PaTwD">
              <property role="3oM_SC" value="refuses" />
            </node>
            <node concept="3oM_SD" id="6WKYICH0E_w" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6WKYICH0E_x" role="3cqZAp">
          <node concept="3cpWsn" id="6WKYICH0E_$" role="3cpWs9">
            <property role="TrG5h" value="span" />
            <node concept="3Tqbb2" id="6WKYICH0E_A" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:6WKYICGZscX" resolve="TSTemplateSpan" />
            </node>
            <node concept="2ShNRf" id="6WKYICH0E_B" role="33vP2m">
              <node concept="3zrR0B" id="6WKYICH0E_D" role="2ShVmc">
                <node concept="3Tqbb2" id="6WKYICH0E_F" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:6WKYICGZscX" resolve="TSTemplateSpan" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvssMT" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvssMX" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvssMZ" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN0" role="1PaTwD">
              <property role="3oM_SC" value="obligatory" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN1" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN2" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN4" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN5" role="1PaTwD">
              <property role="3oM_SC" value="filled" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN6" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN8" role="1PaTwD">
              <property role="3oM_SC" value="placeholder" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssN9" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNa" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNb" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNc" role="1PaTwD">
              <property role="3oM_SC" value="hole" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNd" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvssNe" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvssNi" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvssNk" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNl" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNm" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNn" role="1PaTwD">
              <property role="3oM_SC" value="made" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNo" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNp" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNq" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNr" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNs" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNt" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNu" role="1PaTwD">
              <property role="3oM_SC" value="abstract" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNv" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNw" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNx" role="1PaTwD">
              <property role="3oM_SC" value="role" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNy" role="1PaTwD">
              <property role="3oM_SC" value="declares." />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNz" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvssN$" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvssNC" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvssNE" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNF" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNH" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNJ" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNK" role="1PaTwD">
              <property role="3oM_SC" value="thing" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNL" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNM" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNN" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNO" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNP" role="1PaTwD">
              <property role="3oM_SC" value="hole" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNQ" role="1PaTwD">
              <property role="3oM_SC" value="you" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNR" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNS" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNT" role="1PaTwD">
              <property role="3oM_SC" value="in:" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNU" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNV" role="1PaTwD">
              <property role="3oM_SC" value="renders" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNW" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssNX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvssNY" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvssO2" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvssO4" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssO5" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssO6" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssO7" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssO8" role="1PaTwD">
              <property role="3oM_SC" value="enter," />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssO9" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOa" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOb" role="1PaTwD">
              <property role="3oM_SC" value="interpolation" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOc" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOd" role="1PaTwD">
              <property role="3oM_SC" value="arrive" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOe" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOf" role="1PaTwD">
              <property role="3oM_SC" value="nowhere" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOh" role="1PaTwD">
              <property role="3oM_SC" value="type." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvssOi" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvssOm" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvssOo" role="1PaTwD">
              <property role="3oM_SC" value="`set-new`" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOp" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOq" role="1PaTwD">
              <property role="3oM_SC" value="say" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOr" role="1PaTwD">
              <property role="3oM_SC" value="this," />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOs" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOt" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOu" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOv" role="1PaTwD">
              <property role="3oM_SC" value="scope" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOw" role="1PaTwD">
              <property role="3oM_SC" value="offers" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOx" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOy" role="1PaTwD">
              <property role="3oM_SC" value="instantiable" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvssOz" role="1PaTwD">
              <property role="3oM_SC" value="ones." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dYSrZvssO$" role="3cqZAp">
          <node concept="37vLTI" id="1dYSrZvssOA" role="3clFbG">
            <node concept="2OqwBi" id="1dYSrZvssOD" role="37vLTJ">
              <node concept="37vLTw" id="1dYSrZvssOG" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICH0E_$" resolve="span" />
              </node>
              <node concept="3TrEf2" id="1dYSrZvssOH" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICGZscZ" resolve="expression" />
              </node>
            </node>
            <node concept="2OqwBi" id="1dYSrZvssOI" role="37vLTx">
              <node concept="35c_gC" id="1dYSrZvssOL" role="2Oq$k0">
                <ref role="35c_gD" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
              <node concept="LFhST" id="1dYSrZvssOM" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6WKYICH0E_G" role="3cqZAp">
          <node concept="2OqwBi" id="6WKYICH0E_I" role="3clFbG">
            <node concept="2OqwBi" id="6WKYICH0E_L" role="2Oq$k0">
              <node concept="2Sf5sV" id="6WKYICH0E_O" role="2Oq$k0" />
              <node concept="3Tsc0h" id="6WKYICH0E_P" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:6WKYICGZsfF" resolve="spans" />
              </node>
            </node>
            <node concept="TSZUe" id="6WKYICH0E_Q" role="2OqNvi">
              <node concept="37vLTw" id="6WKYICH0E_S" role="25WWJ7">
                <ref role="3cqZAo" node="6WKYICH0E_$" resolve="span" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvsNbk" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvsNbo" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvsNbq" role="1PaTwD">
              <property role="3oM_SC" value="And" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbs" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbt" role="1PaTwD">
              <property role="3oM_SC" value="goes" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbu" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbw" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbx" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNby" role="1PaTwD">
              <property role="3oM_SC" value="edit" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbz" role="1PaTwD">
              <property role="3oM_SC" value="produced" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNb$" role="1PaTwD">
              <property role="3oM_SC" value="ends," />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNb_" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbA" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbC" role="1PaTwD">
              <property role="3oM_SC" value="hole" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbD" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvsNbE" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvsNbI" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvsNbK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbL" role="1PaTwD">
              <property role="3oM_SC" value="${" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbM" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbN" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbO" role="1PaTwD">
              <property role="3oM_SC" value="}" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbP" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbR" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbS" role="1PaTwD">
              <property role="3oM_SC" value="standard" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbU" role="1PaTwD">
              <property role="3oM_SC" value="side" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbV" role="1PaTwD">
              <property role="3oM_SC" value="transforms" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbW" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbY" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNbZ" role="1PaTwD">
              <property role="3oM_SC" value="maps" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNc0" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNc1" role="1PaTwD">
              <property role="3oM_SC" value="held" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1dYSrZvsNc2" role="3cqZAp">
          <node concept="1PaTwC" id="1dYSrZvsNc6" role="1aUNEU">
            <node concept="3oM_SD" id="1dYSrZvsNc8" role="1PaTwD">
              <property role="3oM_SC" value="to." />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNc9" role="1PaTwD">
              <property role="3oM_SC" value="Without" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNca" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcc" role="1PaTwD">
              <property role="3oM_SC" value="interpolation" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcd" role="1PaTwD">
              <property role="3oM_SC" value="opens" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNce" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcf" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcg" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNch" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNci" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNcj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1dYSrZvsNck" role="1PaTwD">
              <property role="3oM_SC" value="head." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1dYSrZvsNcl" role="3cqZAp">
          <node concept="2OqwBi" id="1dYSrZvsNcn" role="3clFbG">
            <node concept="2OqwBi" id="1dYSrZvsNcq" role="2Oq$k0">
              <node concept="37vLTw" id="1dYSrZvsNct" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICH0E_$" resolve="span" />
              </node>
              <node concept="3TrEf2" id="1dYSrZvsNcu" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICGZscZ" resolve="expression" />
              </node>
            </node>
            <node concept="1OKiuA" id="1dYSrZvsNcv" role="2OqNvi">
              <node concept="1XNTG" id="1dYSrZvsNcx" role="lBI5i" />
              <node concept="2B6iha" id="1dYSrZvsNcy" role="lGT1i">
                <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

