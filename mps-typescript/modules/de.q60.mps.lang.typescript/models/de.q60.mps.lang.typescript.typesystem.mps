<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bb2cc9a4-135b-45e4-b7cf-243b5e069073(de.q60.mps.lang.typescript.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tw2a" ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="8281127187734251692" name="de.q60.mps.lang.typescript.structure.TSConsoleType" flags="ng" index="YlF7x" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216383476350" name="quickFixArgument" index="Q6Id_" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
      <concept id="1216383482742" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgument" flags="ng" index="Q6JDH">
        <child id="1216383511839" name="argumentType" index="Q6QK4" />
      </concept>
      <concept id="1216390348809" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference" flags="nn" index="QwW4i">
        <reference id="1216390348810" name="quickFixArgument" index="QwW4h" />
      </concept>
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <property id="1216127910019" name="applyImmediately" index="ARO6o" />
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
  </registry>
  <node concept="1YbPZF" id="2moZbFC7mku">
    <property role="TrG5h" value="typeof_TSConsole" />
    <node concept="1YaCAy" id="2moZbFC7mkv" role="1YuTPh">
      <property role="TrG5h" value="console" />
      <ref role="1YaFvo" to="mo8k:4Ul7eGthLpT" resolve="TSConsole" />
    </node>
    <node concept="3clFbS" id="2moZbFC7mkw" role="18ibNy">
      <node concept="1Z5TYs" id="2moZbFC7mkx" role="3cqZAp">
        <node concept="mw_s8" id="2moZbFC7mky" role="1ZfhK$">
          <node concept="1Z2H0r" id="2moZbFC7mkz" role="mwGJk">
            <node concept="1YBJjd" id="2moZbFC7mk$" role="1Z2MuG">
              <ref role="1YBMHb" node="2moZbFC7mkv" resolve="console" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2moZbFC7mk_" role="1ZfhKB">
          <node concept="2c44tf" id="2moZbFC7mkA" role="mwGJk">
            <node concept="YlF7x" id="2moZbFC7mkB" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="5YMdeR9Svp">
    <property role="TrG5h" value="check_TSIncompleteLeftParen" />
    <node concept="1YaCAy" id="5YMdeR9Svs" role="1YuTPh">
      <property role="TrG5h" value="leftParen" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
    </node>
    <node concept="3clFbS" id="5YMdeR9Svt" role="18ibNy">
      <node concept="2MkqsV" id="5YMdeR9Svu" role="3cqZAp">
        <node concept="Xl_RD" id="5YMdeR9Svx" role="2MkJ7o">
          <property role="Xl_RC" value="Unmatched left paren" />
        </node>
        <node concept="1YBJjd" id="5YMdeR9Svy" role="1urrMF">
          <ref role="1YBMHb" node="5YMdeR9Svs" resolve="leftParen" />
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="5YMdeR9Sxi">
    <property role="TrG5h" value="check_TSIncompleteRightParen" />
    <node concept="1YaCAy" id="5YMdeR9Sxl" role="1YuTPh">
      <property role="TrG5h" value="rightParen" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
    </node>
    <node concept="3clFbS" id="5YMdeR9Sxm" role="18ibNy">
      <node concept="2MkqsV" id="5YMdeR9Sxn" role="3cqZAp">
        <node concept="Xl_RD" id="5YMdeR9Sxq" role="2MkJ7o">
          <property role="Xl_RC" value="Unmatched right paren" />
        </node>
        <node concept="1YBJjd" id="5YMdeR9Sxr" role="1urrMF">
          <ref role="1YBMHb" node="5YMdeR9Sxl" resolve="rightParen" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Q5z_Y" id="5YMdeR9U2A">
    <property role="TrG5h" value="TSBinaryExpressionPriority" />
    <node concept="Q6JDH" id="5YMdeR9U2D" role="Q6Id_">
      <property role="TrG5h" value="parent" />
      <node concept="3Tqbb2" id="5YMdeR9U2F" role="Q6QK4">
        <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
    </node>
    <node concept="Q6JDH" id="5YMdeR9U2G" role="Q6Id_">
      <property role="TrG5h" value="child" />
      <node concept="3Tqbb2" id="5YMdeR9U2I" role="Q6QK4">
        <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
    </node>
    <node concept="QznSV" id="5YMdeR9U2J" role="QzAvj">
      <node concept="3clFbS" id="5YMdeR9U2L" role="2VODD2">
        <node concept="3clFbF" id="5YMdeR9U2M" role="3cqZAp">
          <node concept="Xl_RD" id="5YMdeR9U2O" role="3clFbG">
            <property role="Xl_RC" value="Fix syntax tree operation priorities." />
          </node>
        </node>
      </node>
    </node>
    <node concept="Q5ZZ6" id="5YMdeR9U2P" role="Q6x$H">
      <node concept="3clFbS" id="5YMdeR9U2R" role="2VODD2">
        <node concept="3clFbJ" id="5YMdeR9U2S" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR9U2V" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR9U2Y" role="3uHU7B">
              <node concept="QwW4i" id="5YMdeR9U31" role="2Oq$k0">
                <ref role="QwW4h" node="5YMdeR9U2D" resolve="parent" />
              </node>
              <node concept="3TrEf2" id="5YMdeR9U32" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
            <node concept="QwW4i" id="5YMdeR9U33" role="3uHU7w">
              <ref role="QwW4h" node="5YMdeR9U2G" resolve="child" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR9U34" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR9U35" role="3cqZAp">
              <node concept="2YIFZM" id="5YMdeR9U37" role="3clFbG">
                <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
                <ref role="37wK5l" to="tw2a:5YMdeQZZKD" resolve="rotateTree" />
                <node concept="QwW4i" id="5YMdeR9U38" role="37wK5m">
                  <ref role="QwW4h" node="5YMdeR9U2G" resolve="child" />
                </node>
                <node concept="QwW4i" id="5YMdeR9U39" role="37wK5m">
                  <ref role="QwW4h" node="5YMdeR9U2D" resolve="parent" />
                </node>
                <node concept="3clFbT" id="5YMdeR9U3a" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5YMdeR9U3b" role="3eNLev">
            <node concept="3clFbC" id="5YMdeR9U3e" role="3eO9$A">
              <node concept="2OqwBi" id="5YMdeR9U3h" role="3uHU7B">
                <node concept="QwW4i" id="5YMdeR9U3k" role="2Oq$k0">
                  <ref role="QwW4h" node="5YMdeR9U2D" resolve="parent" />
                </node>
                <node concept="3TrEf2" id="5YMdeR9U3l" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
              <node concept="QwW4i" id="5YMdeR9U3m" role="3uHU7w">
                <ref role="QwW4h" node="5YMdeR9U2G" resolve="child" />
              </node>
            </node>
            <node concept="3clFbS" id="5YMdeR9U3n" role="3eOfB_">
              <node concept="3clFbF" id="5YMdeR9U3o" role="3cqZAp">
                <node concept="2YIFZM" id="5YMdeR9U3q" role="3clFbG">
                  <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
                  <ref role="37wK5l" to="tw2a:5YMdeQZZKD" resolve="rotateTree" />
                  <node concept="QwW4i" id="5YMdeR9U3r" role="37wK5m">
                    <ref role="QwW4h" node="5YMdeR9U2G" resolve="child" />
                  </node>
                  <node concept="QwW4i" id="5YMdeR9U3s" role="37wK5m">
                    <ref role="QwW4h" node="5YMdeR9U2D" resolve="parent" />
                  </node>
                  <node concept="3clFbT" id="5YMdeR9U3t" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="5YMdeR9YlQ">
    <property role="TrG5h" value="check_TSBinaryOperationPriority" />
    <node concept="1YaCAy" id="5YMdeR9YlT" role="1YuTPh">
      <property role="TrG5h" value="binaryOperation" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    </node>
    <node concept="3clFbS" id="5YMdeR9YlU" role="18ibNy">
      <node concept="3cpWs8" id="5YMdeR9YlV" role="3cqZAp">
        <node concept="3cpWsn" id="5YMdeR9YlY" role="3cpWs9">
          <property role="TrG5h" value="parentNode" />
          <node concept="3Tqbb2" id="5YMdeR9Ym0" role="1tU5fm" />
          <node concept="2OqwBi" id="5YMdeR9Ym1" role="33vP2m">
            <node concept="1YBJjd" id="5YMdeR9Ym4" role="2Oq$k0">
              <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
            </node>
            <node concept="1mfA1w" id="5YMdeR9Ym5" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5YMdeR9Ym6" role="3cqZAp">
        <node concept="1Wc70l" id="5YMdeR9Ym9" role="3clFbw">
          <node concept="3y3z36" id="5YMdeR9Ymc" role="3uHU7B">
            <node concept="37vLTw" id="5YMdeR9Ymf" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR9YlY" resolve="parentNode" />
            </node>
            <node concept="10Nm6u" id="5YMdeR9Ymg" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="5YMdeR9Ymh" role="3uHU7w">
            <node concept="37vLTw" id="5YMdeR9Ymk" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR9YlY" resolve="parentNode" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR9Yml" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR9Ymn" role="cj9EA">
                <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5YMdeR9Ymo" role="3clFbx">
          <node concept="3cpWs8" id="5YMdeR9Ymp" role="3cqZAp">
            <node concept="3cpWsn" id="5YMdeR9Yms" role="3cpWs9">
              <property role="TrG5h" value="parent" />
              <node concept="3Tqbb2" id="5YMdeR9Ymu" role="1tU5fm">
                <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
              <node concept="1PxgMI" id="5YMdeR9Ymv" role="33vP2m">
                <node concept="37vLTw" id="5YMdeR9Ymy" role="1m5AlR">
                  <ref role="3cqZAo" node="5YMdeR9YlY" resolve="parentNode" />
                </node>
                <node concept="chp4Y" id="5YMdeR9Ymz" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5YMdeR9Ym$" role="3cqZAp">
            <node concept="3cpWsn" id="5YMdeR9YmB" role="3cpWs9">
              <property role="TrG5h" value="isRight" />
              <node concept="10P_77" id="5YMdeR9YmD" role="1tU5fm" />
              <node concept="3clFbT" id="5YMdeR9YmE" role="33vP2m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5YMdeR9YmF" role="3cqZAp">
            <node concept="3clFbC" id="5YMdeR9YmI" role="3clFbw">
              <node concept="2OqwBi" id="5YMdeR9YmL" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR9YmO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR9Yms" resolve="parent" />
                </node>
                <node concept="3TrEf2" id="5YMdeR9YmP" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
              <node concept="1YBJjd" id="5YMdeR9YmQ" role="3uHU7w">
                <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
              </node>
            </node>
            <node concept="3clFbS" id="5YMdeR9YmR" role="3clFbx">
              <node concept="3clFbF" id="5YMdeR9YmS" role="3cqZAp">
                <node concept="37vLTI" id="5YMdeR9YmU" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR9YmX" role="37vLTJ">
                    <ref role="3cqZAo" node="5YMdeR9YmB" resolve="isRight" />
                  </node>
                  <node concept="3clFbT" id="5YMdeR9YmY" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5YMdeR9YmZ" role="3cqZAp">
            <node concept="2YIFZM" id="5YMdeR9Yn2" role="3clFbw">
              <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
              <ref role="37wK5l" to="tw2a:5YMdeQZZKU" resolve="isBadPriority" />
              <node concept="1YBJjd" id="5YMdeR9Yn3" role="37wK5m">
                <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
              </node>
              <node concept="37vLTw" id="5YMdeR9Yn4" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR9Yms" resolve="parent" />
              </node>
              <node concept="37vLTw" id="5YMdeR9Yn5" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR9YmB" resolve="isRight" />
              </node>
            </node>
            <node concept="3clFbS" id="5YMdeR9Yn6" role="3clFbx">
              <node concept="2MkqsV" id="5YMdeR9Yn7" role="3cqZAp">
                <node concept="Xl_RD" id="5YMdeR9Yna" role="2MkJ7o">
                  <property role="Xl_RC" value="Bad priority of operations" />
                </node>
                <node concept="1YBJjd" id="5YMdeR9Ynb" role="1urrMF">
                  <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
                </node>
                <node concept="3Cnw8n" id="5YMdeRbsN_" role="1urrFz">
                  <property role="ARO6o" value="true" />
                  <ref role="QpYPw" node="5YMdeR9U2A" resolve="TSBinaryExpressionPriority" />
                  <node concept="3CnSsL" id="5YMdeRbsNA" role="3Coj4f">
                    <ref role="QkamJ" node="5YMdeR9U2G" resolve="child" />
                    <node concept="1YBJjd" id="5YMdeRbsNB" role="3CoRuB">
                      <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
                    </node>
                  </node>
                  <node concept="3CnSsL" id="5YMdeRbsNC" role="3Coj4f">
                    <ref role="QkamJ" node="5YMdeR9U2D" resolve="parent" />
                    <node concept="37vLTw" id="5YMdeRbsND" role="3CoRuB">
                      <ref role="3cqZAo" node="5YMdeR9Yms" resolve="parent" />
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
  <node concept="Q5z_Y" id="5Xb8BFgnjlf">
    <property role="TrG5h" value="TSWrapMisplacedTernaryOperatorInParens" />
    <node concept="QznSV" id="5Xb8BFgnjli" role="QzAvj">
      <node concept="3clFbS" id="5Xb8BFgnjlk" role="2VODD2">
        <node concept="3clFbF" id="5Xb8BFgnjll" role="3cqZAp">
          <node concept="Xl_RD" id="5Xb8BFgnjln" role="3clFbG">
            <property role="Xl_RC" value="Wrap the ternary operator in parentheses." />
          </node>
        </node>
      </node>
    </node>
    <node concept="Q5ZZ6" id="5Xb8BFgnjlo" role="Q6x$H">
      <node concept="3clFbS" id="5Xb8BFgnjlq" role="2VODD2">
        <node concept="3cpWs8" id="5Xb8BFgnjlr" role="3cqZAp">
          <node concept="3cpWsn" id="5Xb8BFgnjlu" role="3cpWs9">
            <property role="TrG5h" value="parens" />
            <node concept="3Tqbb2" id="5Xb8BFgnjlw" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
            </node>
            <node concept="2ShNRf" id="5Xb8BFgnjlx" role="33vP2m">
              <node concept="3zrR0B" id="5Xb8BFgnjlz" role="2ShVmc">
                <node concept="3Tqbb2" id="5Xb8BFgnjl_" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xb8BFgnjlA" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgnjlC" role="3clFbG">
            <node concept="Q6c8r" id="5Xb8BFgnjlF" role="2Oq$k0" />
            <node concept="1P9Npp" id="5Xb8BFgnjlG" role="2OqNvi">
              <node concept="37vLTw" id="5Xb8BFgnjlI" role="1P9ThW">
                <ref role="3cqZAo" node="5Xb8BFgnjlu" resolve="parens" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xb8BFgnjlJ" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgnjlL" role="3clFbG">
            <node concept="2OqwBi" id="5Xb8BFgnjlO" role="2Oq$k0">
              <node concept="37vLTw" id="5Xb8BFgnjlR" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xb8BFgnjlu" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="5Xb8BFgnjlS" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5Xb8BFgnjlT" role="2OqNvi">
              <node concept="1PxgMI" id="5Xb8BFgnjlV" role="2oxUTC">
                <node concept="Q6c8r" id="5Xb8BFgnjlY" role="1m5AlR" />
                <node concept="chp4Y" id="5Xb8BFgnjlZ" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="5Xb8BFgnl7E">
    <property role="TrG5h" value="check_TSTernaryOperatorExpression" />
    <node concept="1YaCAy" id="5Xb8BFgnl7H" role="1YuTPh">
      <property role="TrG5h" value="ternary" />
      <ref role="1YaFvo" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
    </node>
    <node concept="3clFbS" id="5Xb8BFgnl7I" role="18ibNy">
      <node concept="3cpWs8" id="5Xb8BFgnl7J" role="3cqZAp">
        <node concept="3cpWsn" id="5Xb8BFgnl7M" role="3cpWs9">
          <property role="TrG5h" value="parentNode" />
          <node concept="3Tqbb2" id="5Xb8BFgnl7O" role="1tU5fm" />
          <node concept="2OqwBi" id="5Xb8BFgnl7P" role="33vP2m">
            <node concept="1YBJjd" id="5Xb8BFgnl7S" role="2Oq$k0">
              <ref role="1YBMHb" node="5Xb8BFgnl7H" resolve="ternary" />
            </node>
            <node concept="1mfA1w" id="5Xb8BFgnl7T" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5Xb8BFgnl7U" role="3cqZAp">
        <node concept="2OqwBi" id="5Xb8BFgnl7X" role="3clFbw">
          <node concept="37vLTw" id="5Xb8BFgnl80" role="2Oq$k0">
            <ref role="3cqZAo" node="5Xb8BFgnl7M" resolve="parentNode" />
          </node>
          <node concept="1mIQ4w" id="5Xb8BFgnl81" role="2OqNvi">
            <node concept="chp4Y" id="5Xb8BFgnl83" role="cj9EA">
              <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5Xb8BFgnl84" role="3clFbx">
          <node concept="2MkqsV" id="5Xb8BFgnl85" role="3cqZAp">
            <node concept="Xl_RD" id="5Xb8BFgnl88" role="2MkJ7o">
              <property role="Xl_RC" value="A ternary operator must be wrapped in parentheses when it is an operand of a binary operation" />
            </node>
            <node concept="1YBJjd" id="5Xb8BFgnl89" role="1urrMF">
              <ref role="1YBMHb" node="5Xb8BFgnl7H" resolve="ternary" />
            </node>
            <node concept="3Cnw8n" id="5Xb8BFgnK1C" role="1urrFz">
              <ref role="QpYPw" node="5Xb8BFgnjlf" resolve="TSWrapMisplacedTernaryOperatorInParens" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5Xb8BFgnl8a" role="3cqZAp">
        <node concept="1Wc70l" id="5Xb8BFgnl8d" role="3clFbw">
          <node concept="2OqwBi" id="5Xb8BFgnl8g" role="3uHU7B">
            <node concept="37vLTw" id="5Xb8BFgnl8j" role="2Oq$k0">
              <ref role="3cqZAo" node="5Xb8BFgnl7M" resolve="parentNode" />
            </node>
            <node concept="1mIQ4w" id="5Xb8BFgnl8k" role="2OqNvi">
              <node concept="chp4Y" id="5Xb8BFgnl8m" role="cj9EA">
                <ref role="cht4Q" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="5Xb8BFgnl8n" role="3uHU7w">
            <node concept="2OqwBi" id="5Xb8BFgnl8q" role="3uHU7B">
              <node concept="1eOMI4" id="5Xb8BFgnl8t" role="2Oq$k0">
                <node concept="1PxgMI" id="5Xb8BFgnl8v" role="1eOMHV">
                  <node concept="37vLTw" id="5Xb8BFgnl8y" role="1m5AlR">
                    <ref role="3cqZAo" node="5Xb8BFgnl7M" resolve="parentNode" />
                  </node>
                  <node concept="chp4Y" id="5Xb8BFgnl8z" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5Xb8BFgnl8$" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
              </node>
            </node>
            <node concept="1YBJjd" id="5Xb8BFgnl8_" role="3uHU7w">
              <ref role="1YBMHb" node="5Xb8BFgnl7H" resolve="ternary" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5Xb8BFgnl8A" role="3clFbx">
          <node concept="2MkqsV" id="5Xb8BFgnl8B" role="3cqZAp">
            <node concept="Xl_RD" id="5Xb8BFgnl8E" role="2MkJ7o">
              <property role="Xl_RC" value="A ternary operator must be wrapped in parentheses when it is the condition of another ternary operator" />
            </node>
            <node concept="1YBJjd" id="5Xb8BFgnl8F" role="1urrMF">
              <ref role="1YBMHb" node="5Xb8BFgnl7H" resolve="ternary" />
            </node>
            <node concept="3Cnw8n" id="5Xb8BFgnK1D" role="1urrFz">
              <ref role="QpYPw" node="5Xb8BFgnjlf" resolve="TSWrapMisplacedTernaryOperatorInParens" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

