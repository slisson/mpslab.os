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
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="8281127187734251692" name="de.q60.mps.lang.typescript.structure.TSConsoleType" flags="ng" index="YlF7x" />
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="3472769636933287167" name="de.q60.mps.lang.typescript.structure.TSBooleanType" flags="ng" index="3$6BPE" />
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
        <property id="1195213689297" name="overrides" index="18ip37" />
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
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
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
        <child id="1180447237840" name="errorString" index="3o8Qv2" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
        <child id="1174662598553" name="nodeToCheck" index="1ZmcU8" />
      </concept>
      <concept id="1174663239020" name="jetbrains.mps.lang.typesystem.structure.CreateGreaterThanInequationStatement" flags="nn" index="1ZoDhX" />
      <concept id="1174663314467" name="jetbrains.mps.lang.typesystem.structure.CreateComparableEquationStatement" flags="nn" index="1ZoVOM" />
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
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
        <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
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
        <node concept="3clFbF" id="6WKYICGGPYQ" role="3cqZAp">
          <node concept="2YIFZM" id="6WKYICGGPYS" role="3clFbG">
            <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
            <ref role="37wK5l" to="tw2a:6WKYICGGbte" resolve="rotateTreeToMatchText" />
            <node concept="QwW4i" id="6WKYICGGPYT" role="37wK5m">
              <ref role="QwW4h" node="5YMdeR9U2G" resolve="child" />
            </node>
            <node concept="QwW4i" id="6WKYICGGPYU" role="37wK5m">
              <ref role="QwW4h" node="5YMdeR9U2D" resolve="parent" />
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
                <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5YMdeR9Ymo" role="3clFbx">
          <node concept="3cpWs8" id="5YMdeR9Ymp" role="3cqZAp">
            <node concept="3cpWsn" id="5YMdeR9Yms" role="3cpWs9">
              <property role="TrG5h" value="parent" />
              <node concept="3Tqbb2" id="5YMdeR9Ymu" role="1tU5fm">
                <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
              </node>
              <node concept="1PxgMI" id="5YMdeR9Ymv" role="33vP2m">
                <node concept="37vLTw" id="5YMdeR9Ymy" role="1m5AlR">
                  <ref role="3cqZAo" node="5YMdeR9YlY" resolve="parentNode" />
                </node>
                <node concept="chp4Y" id="5YMdeR9Ymz" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5YMdeR9YmZ" role="3cqZAp">
            <node concept="2YIFZM" id="5YMdeR9Yn2" role="3clFbw">
              <ref role="1Pybhc" to="tw2a:5YMdeQZZE8" resolve="TSParenthesisUtil" />
              <ref role="37wK5l" to="tw2a:6WKYICGzOZ1" resolve="isBadlyPlaced" />
              <node concept="1YBJjd" id="5YMdeR9Yn3" role="37wK5m">
                <ref role="1YBMHb" node="5YMdeR9YlT" resolve="binaryOperation" />
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
  <node concept="1YbPZF" id="6QS6LNOKtbO">
    <property role="TrG5h" value="typeof_TSNumberLiteral" />
    <node concept="1YaCAy" id="6QS6LNOKtbR" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKtbS" role="18ibNy">
      <node concept="1Z5TYs" id="6QS6LNOKtbT" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKtbW" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKtbY" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKtc0" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKtbR" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKtc1" role="1ZfhKB">
          <node concept="2c44tf" id="6QS6LNOKtc3" role="mwGJk">
            <node concept="1ku6r5" id="6QS6LNOKtc5" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6QS6LNOKtgH">
    <property role="TrG5h" value="typeof_TSStringLiteral" />
    <node concept="1YaCAy" id="6QS6LNOKtgK" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKtgL" role="18ibNy">
      <node concept="1Z5TYs" id="6QS6LNOKtgM" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKtgP" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKtgR" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKtgT" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKtgK" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKtgU" role="1ZfhKB">
          <node concept="2c44tf" id="6QS6LNOKtgW" role="mwGJk">
            <node concept="2Kh4GC" id="6QS6LNOKtgY" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6QS6LNOKxsx">
    <property role="TrG5h" value="typeof_TSParenthesizedExpression" />
    <node concept="1YaCAy" id="6QS6LNOKxs$" role="1YuTPh">
      <property role="TrG5h" value="parens" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKxs_" role="18ibNy">
      <node concept="1Z5TYs" id="6QS6LNOKxsA" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKxsD" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKxsF" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKxsH" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKxs$" resolve="parens" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKxsI" role="1ZfhKB">
          <node concept="1Z2H0r" id="6QS6LNOKxsK" role="mwGJk">
            <node concept="2OqwBi" id="6QS6LNOKxsM" role="1Z2MuG">
              <node concept="1YBJjd" id="6QS6LNOKxsP" role="2Oq$k0">
                <ref role="1YBMHb" node="6QS6LNOKxs$" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="6QS6LNOKxsQ" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6QS6LNOKx$l">
    <property role="TrG5h" value="typeof_TSBinaryOperation" />
    <node concept="1YaCAy" id="6QS6LNOKx$o" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKx$p" role="18ibNy">
      <node concept="1Z5TYs" id="6QS6LNOKx$q" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKx$t" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKx$v" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKx$x" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKx$y" role="1ZfhKB">
          <node concept="2c44tf" id="6QS6LNOKx$$" role="mwGJk">
            <node concept="1ku6r5" id="6QS6LNOKx$A" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6QS6LNOKxHQ">
    <property role="TrG5h" value="typeof_TSEqualsExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6QS6LNOKxHT" role="1YuTPh">
      <property role="TrG5h" value="equals" />
      <ref role="1YaFvo" to="mo8k:4R4WbZLH5s1" resolve="TSEqualsExpression" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKxHU" role="18ibNy">
      <node concept="1ZoVOM" id="6QS6LNOKxHV" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKxHY" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKxI0" role="mwGJk">
            <node concept="2OqwBi" id="6QS6LNOKxI2" role="1Z2MuG">
              <node concept="1YBJjd" id="6QS6LNOKxI5" role="2Oq$k0">
                <ref role="1YBMHb" node="6QS6LNOKxHT" resolve="equals" />
              </node>
              <node concept="3TrEf2" id="6QS6LNOKxI6" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKxI7" role="1ZfhKB">
          <node concept="1Z2H0r" id="6QS6LNOKxI9" role="mwGJk">
            <node concept="2OqwBi" id="6QS6LNOKxIb" role="1Z2MuG">
              <node concept="1YBJjd" id="6QS6LNOKxIe" role="2Oq$k0">
                <ref role="1YBMHb" node="6QS6LNOKxHT" resolve="equals" />
              </node>
              <node concept="3TrEf2" id="6QS6LNOKxIf" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1YBJjd" id="6QS6LNOKxIg" role="1ZmcU8">
          <ref role="1YBMHb" node="6QS6LNOKxHT" resolve="equals" />
        </node>
        <node concept="Xl_RD" id="6QS6LNOKxIh" role="3o8Qv2">
          <property role="Xl_RC" value="The operands of == must have the same type" />
        </node>
      </node>
      <node concept="1Z5TYs" id="6QS6LNOKxIi" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKxIl" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKxIn" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKxIp" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKxHT" resolve="equals" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKxIq" role="1ZfhKB">
          <node concept="2c44tf" id="6QS6LNOKxIs" role="mwGJk">
            <node concept="3$6BPE" id="6QS6LNOKxIu" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6QS6LNOKyeo">
    <property role="TrG5h" value="typeof_TSTernaryOperatorExpression" />
    <node concept="1YaCAy" id="6QS6LNOKyer" role="1YuTPh">
      <property role="TrG5h" value="ternary" />
      <ref role="1YaFvo" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
    </node>
    <node concept="3clFbS" id="6QS6LNOKyes" role="18ibNy">
      <node concept="1ZoDhX" id="6QS6LNOKyeO" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKyeR" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKyeT" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKyeV" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKyer" resolve="ternary" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKyeW" role="1ZfhKB">
          <node concept="1Z2H0r" id="6QS6LNOKyeY" role="mwGJk">
            <node concept="2OqwBi" id="6QS6LNOKyf0" role="1Z2MuG">
              <node concept="1YBJjd" id="6QS6LNOKyf3" role="2Oq$k0">
                <ref role="1YBMHb" node="6QS6LNOKyer" resolve="ternary" />
              </node>
              <node concept="3TrEf2" id="6QS6LNOKyf4" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ5" resolve="ifTrue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZoDhX" id="6QS6LNOKyf5" role="3cqZAp">
        <node concept="mw_s8" id="6QS6LNOKyf8" role="1ZfhK$">
          <node concept="1Z2H0r" id="6QS6LNOKyfa" role="mwGJk">
            <node concept="1YBJjd" id="6QS6LNOKyfc" role="1Z2MuG">
              <ref role="1YBMHb" node="6QS6LNOKyer" resolve="ternary" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6QS6LNOKyfd" role="1ZfhKB">
          <node concept="1Z2H0r" id="6QS6LNOKyff" role="mwGJk">
            <node concept="2OqwBi" id="6QS6LNOKyfh" role="1Z2MuG">
              <node concept="1YBJjd" id="6QS6LNOKyfk" role="2Oq$k0">
                <ref role="1YBMHb" node="6QS6LNOKyer" resolve="ternary" />
              </node>
              <node concept="3TrEf2" id="6QS6LNOKyfl" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ6" resolve="ifFalse" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICFMvAX">
    <property role="TrG5h" value="typeof_TSVariableDeclaration" />
    <node concept="1YaCAy" id="6WKYICFMvB0" role="1YuTPh">
      <property role="TrG5h" value="declaration" />
      <ref role="1YaFvo" to="mo8k:6WKYICFF5hS" resolve="TSVariableDeclaration" />
    </node>
    <node concept="3clFbS" id="6WKYICFMvB1" role="18ibNy">
      <node concept="3clFbJ" id="6WKYICFMvB2" role="3cqZAp">
        <node concept="3y3z36" id="6WKYICFMvB5" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICFMvB8" role="3uHU7B">
            <node concept="1YBJjd" id="6WKYICFMvBb" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
            </node>
            <node concept="3TrEf2" id="6WKYICFMvBc" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
            </node>
          </node>
          <node concept="10Nm6u" id="6WKYICFMvBd" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="6WKYICFMvBe" role="3clFbx">
          <node concept="3SKdUt" id="6WKYICFMvBf" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICFMvBj" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICFMvBl" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBm" role="1PaTwD">
                <property role="3oM_SC" value="annotated" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBn" role="1PaTwD">
                <property role="3oM_SC" value="declaration" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBo" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBp" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBq" role="1PaTwD">
                <property role="3oM_SC" value="type" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBr" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBs" role="1PaTwD">
                <property role="3oM_SC" value="says" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBt" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBu" role="1PaTwD">
                <property role="3oM_SC" value="has," />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBv" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBw" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBx" role="1PaTwD">
                <property role="3oM_SC" value="initializer" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBy" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBz" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICFMvB$" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICFMvBC" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICFMvBE" role="1PaTwD">
                <property role="3oM_SC" value="agree" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBF" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMvBG" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
            </node>
          </node>
          <node concept="1Z5TYs" id="6WKYICFMvBH" role="3cqZAp">
            <node concept="mw_s8" id="6WKYICFMvBK" role="1ZfhK$">
              <node concept="1Z2H0r" id="6WKYICFMvBM" role="mwGJk">
                <node concept="1YBJjd" id="6WKYICFMvBO" role="1Z2MuG">
                  <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="6WKYICFMvBP" role="1ZfhKB">
              <node concept="2OqwBi" id="6WKYICFMvBR" role="mwGJk">
                <node concept="2OqwBi" id="6WKYICFMvBU" role="2Oq$k0">
                  <node concept="1YBJjd" id="6WKYICFMvBX" role="2Oq$k0">
                    <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                  </node>
                  <node concept="3TrEf2" id="6WKYICFMvBY" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
                  </node>
                </node>
                <node concept="1$rogu" id="6WKYICFMvBZ" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6WKYICFMvC0" role="3cqZAp">
            <node concept="3y3z36" id="6WKYICFMvC3" role="3clFbw">
              <node concept="2OqwBi" id="6WKYICFMvC6" role="3uHU7B">
                <node concept="1YBJjd" id="6WKYICFMvC9" role="2Oq$k0">
                  <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                </node>
                <node concept="3TrEf2" id="6WKYICFMvCa" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
                </node>
              </node>
              <node concept="10Nm6u" id="6WKYICFMvCb" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="6WKYICFMvCc" role="3clFbx">
              <node concept="1ZoVOM" id="6WKYICFMvCd" role="3cqZAp">
                <node concept="mw_s8" id="6WKYICFMvCg" role="1ZfhK$">
                  <node concept="1Z2H0r" id="6WKYICFMvCi" role="mwGJk">
                    <node concept="2OqwBi" id="6WKYICFMvCk" role="1Z2MuG">
                      <node concept="1YBJjd" id="6WKYICFMvCn" role="2Oq$k0">
                        <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                      </node>
                      <node concept="3TrEf2" id="6WKYICFMvCo" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="6WKYICFMvCp" role="1ZfhKB">
                  <node concept="2OqwBi" id="6WKYICFMvCr" role="mwGJk">
                    <node concept="2OqwBi" id="6WKYICFMvCu" role="2Oq$k0">
                      <node concept="1YBJjd" id="6WKYICFMvCx" role="2Oq$k0">
                        <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                      </node>
                      <node concept="3TrEf2" id="6WKYICFMvCy" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:6WKYICFF5hV" resolve="declaredType" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="6WKYICFMvCz" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6WKYICFMvC$" role="1ZmcU8">
                  <node concept="1YBJjd" id="6WKYICFMvCB" role="2Oq$k0">
                    <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                  </node>
                  <node concept="3TrEf2" id="6WKYICFMvCC" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6WKYICFMvCD" role="3o8Qv2">
                  <property role="Xl_RC" value="The initializer does not have the declared type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="6WKYICFMvCE" role="3eNLev">
          <node concept="3y3z36" id="6WKYICFMvCH" role="3eO9$A">
            <node concept="2OqwBi" id="6WKYICFMvCK" role="3uHU7B">
              <node concept="1YBJjd" id="6WKYICFMvCN" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMvCO" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFMvCP" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6WKYICFMvCQ" role="3eOfB_">
            <node concept="3SKdUt" id="6WKYICFMvCR" role="3cqZAp">
              <node concept="1PaTwC" id="6WKYICFMvCV" role="1aUNEU">
                <node concept="3oM_SD" id="6WKYICFMvCX" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvCY" role="1PaTwD">
                  <property role="3oM_SC" value="annotation:" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvCZ" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD0" role="1PaTwD">
                  <property role="3oM_SC" value="declaration" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD1" role="1PaTwD">
                  <property role="3oM_SC" value="takes" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD2" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD3" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD4" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD5" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="6WKYICFMvD6" role="1PaTwD">
                  <property role="3oM_SC" value="initializer" />
                </node>
              </node>
            </node>
            <node concept="1Z5TYs" id="6WKYICFMvD7" role="3cqZAp">
              <node concept="mw_s8" id="6WKYICFMvDa" role="1ZfhK$">
                <node concept="1Z2H0r" id="6WKYICFMvDc" role="mwGJk">
                  <node concept="1YBJjd" id="6WKYICFMvDe" role="1Z2MuG">
                    <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="6WKYICFMvDf" role="1ZfhKB">
                <node concept="1Z2H0r" id="6WKYICFMvDh" role="mwGJk">
                  <node concept="2OqwBi" id="6WKYICFMvDj" role="1Z2MuG">
                    <node concept="1YBJjd" id="6WKYICFMvDm" role="2Oq$k0">
                      <ref role="1YBMHb" node="6WKYICFMvB0" resolve="declaration" />
                    </node>
                    <node concept="3TrEf2" id="6WKYICFMvDn" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
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
  <node concept="1YbPZF" id="6WKYICFMw5C">
    <property role="TrG5h" value="typeof_TSIdentifier" />
    <node concept="1YaCAy" id="6WKYICFMw5F" role="1YuTPh">
      <property role="TrG5h" value="identifier" />
      <ref role="1YaFvo" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
    </node>
    <node concept="3clFbS" id="6WKYICFMw5G" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICFMw5H" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICFMw5K" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICFMw5M" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICFMw5O" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICFMw5F" resolve="identifier" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICFMw5P" role="1ZfhKB">
          <node concept="1Z2H0r" id="6WKYICFMw5R" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICFMw5T" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICFMw5W" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMw5F" resolve="identifier" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMw5X" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5zd" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICFMwBS">
    <property role="TrG5h" value="typeof_TSAssignmentStatement" />
    <node concept="1YaCAy" id="6WKYICFMwBV" role="1YuTPh">
      <property role="TrG5h" value="assignment" />
      <ref role="1YaFvo" to="mo8k:6WKYICFF5r1" resolve="TSAssignmentStatement" />
    </node>
    <node concept="3clFbS" id="6WKYICFMwBW" role="18ibNy">
      <node concept="1ZoVOM" id="6WKYICFMwBX" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICFMwC0" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICFMwC2" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICFMwC4" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICFMwC7" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMwBV" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMwC8" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5r3" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICFMwC9" role="1ZfhKB">
          <node concept="1Z2H0r" id="6WKYICFMwCb" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICFMwCd" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICFMwCg" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMwBV" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMwCh" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5r4" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6WKYICFMwCi" role="1ZmcU8">
          <node concept="1YBJjd" id="6WKYICFMwCl" role="2Oq$k0">
            <ref role="1YBMHb" node="6WKYICFMwBV" resolve="assignment" />
          </node>
          <node concept="3TrEf2" id="6WKYICFMwCm" role="2OqNvi">
            <ref role="3Tt5mk" to="mo8k:6WKYICFF5r4" resolve="expression" />
          </node>
        </node>
        <node concept="Xl_RD" id="6WKYICFMwCn" role="3o8Qv2">
          <property role="Xl_RC" value="The assigned expression does not have the type of the variable" />
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICFMxd3">
    <property role="TrG5h" value="check_TSVariableDeclaration" />
    <node concept="1YaCAy" id="6WKYICFMxd6" role="1YuTPh">
      <property role="TrG5h" value="declaration" />
      <ref role="1YaFvo" to="mo8k:6WKYICFF5hS" resolve="TSVariableDeclaration" />
    </node>
    <node concept="3clFbS" id="6WKYICFMxd7" role="18ibNy">
      <node concept="3clFbJ" id="6WKYICFMxd8" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICFMxdb" role="3clFbw">
          <node concept="3clFbC" id="6WKYICFMxde" role="3uHU7B">
            <node concept="2OqwBi" id="6WKYICFMxdh" role="3uHU7B">
              <node concept="1YBJjd" id="6WKYICFMxdk" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
              </node>
              <node concept="3JvlWi" id="6WKYICFMxdl" role="2OqNvi" />
            </node>
            <node concept="10Nm6u" id="6WKYICFMxdm" role="3uHU7w" />
          </node>
          <node concept="3clFbC" id="6WKYICFMxdn" role="3uHU7w">
            <node concept="2OqwBi" id="6WKYICFMxdq" role="3uHU7B">
              <node concept="1YBJjd" id="6WKYICFMxdt" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMxdu" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFMxdv" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICFMxdw" role="3clFbx">
          <node concept="3SKdUt" id="6WKYICFMxdx" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICFMxd_" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICFMxdB" role="1PaTwD">
                <property role="3oM_SC" value="TypeScript" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdC" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdD" role="1PaTwD">
                <property role="3oM_SC" value="give" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdE" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdF" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdG" role="1PaTwD">
                <property role="3oM_SC" value="implicit" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdH" role="1PaTwD">
                <property role="3oM_SC" value="any" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdI" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdJ" role="1PaTwD">
                <property role="3oM_SC" value="--strict" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdK" role="1PaTwD">
                <property role="3oM_SC" value="rejects," />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdL" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdM" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdN" role="1PaTwD">
                <property role="3oM_SC" value="language" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICFMxdO" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICFMxdS" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICFMxdU" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdV" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdW" role="1PaTwD">
                <property role="3oM_SC" value="any" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdX" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdY" role="1PaTwD">
                <property role="3oM_SC" value="infer," />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxdZ" role="1PaTwD">
                <property role="3oM_SC" value="so" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe0" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe1" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe2" role="1PaTwD">
                <property role="3oM_SC" value="nothing" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe3" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe4" role="1PaTwD">
                <property role="3oM_SC" value="declaration" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe5" role="1PaTwD">
                <property role="3oM_SC" value="could" />
              </node>
              <node concept="3oM_SD" id="6WKYICFMxe6" role="1PaTwD">
                <property role="3oM_SC" value="mean." />
              </node>
            </node>
          </node>
          <node concept="2MkqsV" id="6WKYICFMxe7" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICFMxea" role="2MkJ7o">
              <property role="Xl_RC" value="A declaration needs a type annotation or an initializer" />
            </node>
            <node concept="1YBJjd" id="6WKYICFMxeb" role="1urrMF">
              <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICFMxec" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICFMxef" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICFMxei" role="3uHU7B">
            <node concept="1YBJjd" id="6WKYICFMxel" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
            </node>
            <node concept="1mIQ4w" id="6WKYICFMxem" role="2OqNvi">
              <node concept="chp4Y" id="6WKYICFMxeo" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICFF5kL" resolve="TSConstDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6WKYICFMxep" role="3uHU7w">
            <node concept="2OqwBi" id="6WKYICFMxes" role="3uHU7B">
              <node concept="1YBJjd" id="6WKYICFMxev" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMxew" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5hW" resolve="initializer" />
              </node>
            </node>
            <node concept="10Nm6u" id="6WKYICFMxex" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICFMxey" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICFMxez" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICFMxeA" role="2MkJ7o">
              <property role="Xl_RC" value="A const declaration must be initialized" />
            </node>
            <node concept="1YBJjd" id="6WKYICFMxeB" role="1urrMF">
              <ref role="1YBMHb" node="6WKYICFMxd6" resolve="declaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICFMygY">
    <property role="TrG5h" value="check_TSAssignmentStatement" />
    <node concept="1YaCAy" id="6WKYICFMyh1" role="1YuTPh">
      <property role="TrG5h" value="assignment" />
      <ref role="1YaFvo" to="mo8k:6WKYICFF5r1" resolve="TSAssignmentStatement" />
    </node>
    <node concept="3clFbS" id="6WKYICFMyh2" role="18ibNy">
      <node concept="3cpWs8" id="6WKYICFMyh3" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICFMyh6" role="3cpWs9">
          <property role="TrG5h" value="target" />
          <node concept="3Tqbb2" id="6WKYICFMyh8" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
          </node>
          <node concept="2OqwBi" id="6WKYICFMyh9" role="33vP2m">
            <node concept="2OqwBi" id="6WKYICFMyhc" role="2Oq$k0">
              <node concept="1YBJjd" id="6WKYICFMyhf" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMyh1" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMyhg" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5r3" resolve="target" />
              </node>
            </node>
            <node concept="3TrEf2" id="6WKYICFMyhh" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:6WKYICFF5zd" resolve="declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICFMyhi" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICFMyhl" role="3clFbw">
          <node concept="3y3z36" id="6WKYICFMyho" role="3uHU7B">
            <node concept="37vLTw" id="6WKYICFMyhr" role="3uHU7B">
              <ref role="3cqZAo" node="6WKYICFMyh6" resolve="target" />
            </node>
            <node concept="10Nm6u" id="6WKYICFMyhs" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="6WKYICFMyht" role="3uHU7w">
            <node concept="37vLTw" id="6WKYICFMyhw" role="2Oq$k0">
              <ref role="3cqZAo" node="6WKYICFMyh6" resolve="target" />
            </node>
            <node concept="1mIQ4w" id="6WKYICFMyhx" role="2OqNvi">
              <node concept="chp4Y" id="6WKYICFMyhz" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICFF5kL" resolve="TSConstDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICFMyh$" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICFMyh_" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICFMyhC" role="2MkJ7o">
              <property role="Xl_RC" value="Cannot assign to a const" />
            </node>
            <node concept="2OqwBi" id="6WKYICFMyhD" role="1urrMF">
              <node concept="1YBJjd" id="6WKYICFMyhG" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICFMyh1" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="6WKYICFMyhH" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICFF5r3" resolve="target" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICG5pBC">
    <property role="TrG5h" value="check_TSNumberLiteral" />
    <node concept="1YaCAy" id="6WKYICG5pBF" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:5YMdeQYNSv" resolve="TSNumberLiteral" />
    </node>
    <node concept="3clFbS" id="6WKYICG5pBG" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICG5pBH" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pBL" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pBN" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBO" role="1PaTwD">
            <property role="3oM_SC" value="TSNumberValue" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBP" role="1PaTwD">
            <property role="3oM_SC" value="datatype" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBQ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBR" role="1PaTwD">
            <property role="3oM_SC" value="deliberately" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBS" role="1PaTwD">
            <property role="3oM_SC" value="wider" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBT" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBU" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBV" role="1PaTwD">
            <property role="3oM_SC" value="finished" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBW" role="1PaTwD">
            <property role="3oM_SC" value="number:" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBX" role="1PaTwD">
            <property role="3oM_SC" value="`1e`" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBY" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBZ" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pC0" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pC4" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pC6" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC7" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC8" role="1PaTwD">
            <property role="3oM_SC" value="legal" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC9" role="1PaTwD">
            <property role="3oM_SC" value="intermediate" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCa" role="1PaTwD">
            <property role="3oM_SC" value="state" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCb" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCc" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCd" role="1PaTwD">
            <property role="3oM_SC" value="exponent" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCe" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCf" role="1PaTwD">
            <property role="3oM_SC" value="never" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCg" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCh" role="1PaTwD">
            <property role="3oM_SC" value="typed," />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCi" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCk" role="1PaTwD">
            <property role="3oM_SC" value="editor" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCl" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pCp" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pCr" role="1PaTwD">
            <property role="3oM_SC" value="refuses" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCs" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCt" role="1PaTwD">
            <property role="3oM_SC" value="keystroke" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCu" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCv" role="1PaTwD">
            <property role="3oM_SC" value="leaves" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCw" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCx" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCy" role="1PaTwD">
            <property role="3oM_SC" value="outside" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC$" role="1PaTwD">
            <property role="3oM_SC" value="datatype." />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC_" role="1PaTwD">
            <property role="3oM_SC" value="Everything" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCA" role="1PaTwD">
            <property role="3oM_SC" value="else" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCB" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pCF" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pCH" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCI" role="1PaTwD">
            <property role="3oM_SC" value="admits" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCJ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCK" role="1PaTwD">
            <property role="3oM_SC" value="already" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCL" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCM" role="1PaTwD">
            <property role="3oM_SC" value="complete" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCN" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCO" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCP" role="1PaTwD">
            <property role="3oM_SC" value="—" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCQ" role="1PaTwD">
            <property role="3oM_SC" value="`1.`" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCR" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCS" role="1PaTwD">
            <property role="3oM_SC" value="`.5`" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCT" role="1PaTwD">
            <property role="3oM_SC" value="among" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCU" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCV" role="1PaTwD">
            <property role="3oM_SC" value="—" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCW" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCX" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCY" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pD2" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pD4" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD5" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD7" role="1PaTwD">
            <property role="3oM_SC" value="report" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD8" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD9" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDa" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDb" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDc" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDd" role="1PaTwD">
            <property role="3oM_SC" value="stops" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDe" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDf" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDg" role="1PaTwD">
            <property role="3oM_SC" value="exponent," />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDh" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDi" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDj" role="1PaTwD">
            <property role="3oM_SC" value="missing" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDk" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6WKYICG5pDl" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICG5pDo" role="3cpWs9">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="6WKYICG5pDq" role="1tU5fm" />
          <node concept="2OqwBi" id="6WKYICG5pDr" role="33vP2m">
            <node concept="1YBJjd" id="6WKYICG5pDu" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICG5pBF" resolve="literal" />
            </node>
            <node concept="3TrcHB" id="6WKYICG5pDv" role="2OqNvi">
              <ref role="3TsBF5" to="mo8k:5YMdeQYNSx" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICG5pDw" role="3cqZAp">
        <node concept="3clFbC" id="6WKYICG5pDz" role="3clFbw">
          <node concept="37vLTw" id="6WKYICG5pDA" role="3uHU7B">
            <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
          </node>
          <node concept="10Nm6u" id="6WKYICG5pDB" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="6WKYICG5pDC" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICG5pDD" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICG5pDG" role="2MkJ7o">
              <property role="Xl_RC" value="A number literal needs a value" />
            </node>
            <node concept="1YBJjd" id="6WKYICG5pDH" role="1urrMF">
              <ref role="1YBMHb" node="6WKYICG5pBF" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="6WKYICG5pDI" role="3eNLev">
          <node concept="22lmx$" id="6WKYICG5pDL" role="3eO9$A">
            <node concept="22lmx$" id="6WKYICG5pDO" role="3uHU7B">
              <node concept="22lmx$" id="6WKYICG5pDR" role="3uHU7B">
                <node concept="2OqwBi" id="6WKYICG5pDU" role="3uHU7B">
                  <node concept="37vLTw" id="6WKYICG5pDX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
                  </node>
                  <node concept="liA8E" id="6WKYICG5pDY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="6WKYICG5pDZ" role="37wK5m">
                      <property role="Xl_RC" value="e" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6WKYICG5pE0" role="3uHU7w">
                  <node concept="37vLTw" id="6WKYICG5pE3" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
                  </node>
                  <node concept="liA8E" id="6WKYICG5pE4" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="6WKYICG5pE5" role="37wK5m">
                      <property role="Xl_RC" value="E" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6WKYICG5pE6" role="3uHU7w">
                <node concept="37vLTw" id="6WKYICG5pE9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
                </node>
                <node concept="liA8E" id="6WKYICG5pEa" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="6WKYICG5pEb" role="37wK5m">
                    <property role="Xl_RC" value="+" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6WKYICG5pEc" role="3uHU7w">
              <node concept="37vLTw" id="6WKYICG5pEf" role="2Oq$k0">
                <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
              </node>
              <node concept="liA8E" id="6WKYICG5pEg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="6WKYICG5pEh" role="37wK5m">
                  <property role="Xl_RC" value="-" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICG5pEi" role="3eOfB_">
            <node concept="2MkqsV" id="6WKYICG5pEj" role="3cqZAp">
              <node concept="Xl_RD" id="6WKYICG5pEm" role="2MkJ7o">
                <property role="Xl_RC" value="The exponent of a number literal needs at least one digit" />
              </node>
              <node concept="1YBJjd" id="6WKYICG5pEn" role="1urrMF">
                <ref role="1YBMHb" node="6WKYICG5pBF" resolve="literal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICGxK8n">
    <property role="TrG5h" value="typeof_TSUnaryOperation" />
    <node concept="1YaCAy" id="6WKYICGxK8q" role="1YuTPh">
      <property role="TrG5h" value="operation" />
      <ref role="1YaFvo" to="mo8k:6WKYICGq2yd" resolve="TSUnaryOperation" />
    </node>
    <node concept="3clFbS" id="6WKYICGxK8r" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICGxK8s" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICGxK8v" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICGxK8x" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICGxK8z" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICGxK8q" resolve="operation" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICGxK8$" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICGxK8A" role="mwGJk">
            <node concept="1ku6r5" id="6WKYICGxK8C" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICGxKjW">
    <property role="TrG5h" value="typeof_TSNotExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICGxKjZ" role="1YuTPh">
      <property role="TrG5h" value="not" />
      <ref role="1YaFvo" to="mo8k:6WKYICGq2$h" resolve="TSNotExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICGxKk0" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICGxKk1" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICGxKk4" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICGxKk6" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICGxKk8" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICGxKjZ" resolve="not" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICGxKk9" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICGxKkb" role="mwGJk">
            <node concept="3$6BPE" id="6WKYICGxKkd" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICGJ$g1">
    <property role="TrG5h" value="check_TSExponentExpression" />
    <node concept="1YaCAy" id="6WKYICGJ$g4" role="1YuTPh">
      <property role="TrG5h" value="exponent" />
      <ref role="1YaFvo" to="mo8k:6WKYICGl6K7" resolve="TSExponentExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICGJ$g5" role="18ibNy">
      <node concept="3clFbJ" id="6WKYICGJ$g6" role="3cqZAp">
        <node concept="2OqwBi" id="6WKYICGJ$g9" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICGJ$gc" role="2Oq$k0">
            <node concept="1YBJjd" id="6WKYICGJ$gf" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICGJ$g4" resolve="exponent" />
            </node>
            <node concept="3TrEf2" id="6WKYICGJ$gg" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" />
            </node>
          </node>
          <node concept="1mIQ4w" id="6WKYICGJ$gh" role="2OqNvi">
            <node concept="chp4Y" id="6WKYICGJ$gj" role="cj9EA">
              <ref role="cht4Q" to="mo8k:6WKYICGq2yd" resolve="TSUnaryOperation" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICGJ$gk" role="3clFbx">
          <node concept="3SKdUt" id="6WKYICGJ$gl" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICGJ$gp" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICGJ$gr" role="1PaTwD">
                <property role="3oM_SC" value="Not" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gs" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gt" role="1PaTwD">
                <property role="3oM_SC" value="priority" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gu" role="1PaTwD">
                <property role="3oM_SC" value="question," />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gv" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gw" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gx" role="1PaTwD">
                <property role="3oM_SC" value="why" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gy" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gz" role="1PaTwD">
                <property role="3oM_SC" value="priority" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$g$" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$g_" role="1PaTwD">
                <property role="3oM_SC" value="does" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gA" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gB" role="1PaTwD">
                <property role="3oM_SC" value="catch" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gC" role="1PaTwD">
                <property role="3oM_SC" value="it:" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gD" role="1PaTwD">
                <property role="3oM_SC" value="TypeScript" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICGJ$gE" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICGJ$gI" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICGJ$gK" role="1PaTwD">
                <property role="3oM_SC" value="rejects" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gL" role="1PaTwD">
                <property role="3oM_SC" value="-2" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gM" role="1PaTwD">
                <property role="3oM_SC" value="**" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gN" role="1PaTwD">
                <property role="3oM_SC" value="2" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gO" role="1PaTwD">
                <property role="3oM_SC" value="outright" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gP" role="1PaTwD">
                <property role="3oM_SC" value="(TS17006)" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gQ" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gR" role="1PaTwD">
                <property role="3oM_SC" value="asks" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gS" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gT" role="1PaTwD">
                <property role="3oM_SC" value="parentheses," />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gU" role="1PaTwD">
                <property role="3oM_SC" value="even" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gV" role="1PaTwD">
                <property role="3oM_SC" value="though" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gW" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$gX" role="1PaTwD">
                <property role="3oM_SC" value="prefix" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICGJ$gY" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICGJ$h2" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICGJ$h4" role="1PaTwD">
                <property role="3oM_SC" value="operator" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$h5" role="1PaTwD">
                <property role="3oM_SC" value="does" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$h6" role="1PaTwD">
                <property role="3oM_SC" value="bind" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$h7" role="1PaTwD">
                <property role="3oM_SC" value="tighter." />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$h8" role="1PaTwD">
                <property role="3oM_SC" value="The" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$h9" role="1PaTwD">
                <property role="3oM_SC" value="right" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$ha" role="1PaTwD">
                <property role="3oM_SC" value="operand" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hb" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hc" role="1PaTwD">
                <property role="3oM_SC" value="fine," />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hd" role="1PaTwD">
                <property role="3oM_SC" value="so" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$he" role="1PaTwD">
                <property role="3oM_SC" value="2" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hf" role="1PaTwD">
                <property role="3oM_SC" value="**" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hg" role="1PaTwD">
                <property role="3oM_SC" value="-3" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hh" role="1PaTwD">
                <property role="3oM_SC" value="needs" />
              </node>
              <node concept="3oM_SD" id="6WKYICGJ$hi" role="1PaTwD">
                <property role="3oM_SC" value="nothing." />
              </node>
            </node>
          </node>
          <node concept="2MkqsV" id="6WKYICGJ$hj" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICGJ$hm" role="2MkJ7o">
              <property role="Xl_RC" value="A prefix operator immediately left of ** must be parenthesised" />
            </node>
            <node concept="2OqwBi" id="6WKYICGJ$hn" role="1urrMF">
              <node concept="1YBJjd" id="6WKYICGJ$hq" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICGJ$g4" resolve="exponent" />
              </node>
              <node concept="3TrEf2" id="6WKYICGJ$hr" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

