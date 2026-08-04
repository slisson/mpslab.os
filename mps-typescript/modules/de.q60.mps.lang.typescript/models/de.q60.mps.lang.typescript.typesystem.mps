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
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="8281127187734251692" name="de.q60.mps.lang.typescript.structure.TSConsoleType" flags="ng" index="YlF7x" />
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="3472769636933287167" name="de.q60.mps.lang.typescript.structure.TSBooleanType" flags="ng" index="3$6BPE" />
      <concept id="5086057359599138485" name="de.q60.mps.lang.typescript.structure.TSUndefinedType" flags="ng" index="3OJVyd" />
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
      <concept id="1185805035213" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement" flags="nn" index="nvevp">
        <child id="1185805047793" name="body" index="nvhr_" />
        <child id="1185805056450" name="argument" index="nvjzm" />
        <child id="1205761991995" name="argumentRepresentator" index="2X0Ygz" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
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
      <concept id="1205762105978" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration" flags="ng" index="2X1qdy" />
      <concept id="1205762656241" name="jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference" flags="nn" index="2X3wrD">
        <reference id="1205762683928" name="whenConcreteVar" index="2X3Bk0" />
      </concept>
      <concept id="8124453027370845339" name="jetbrains.mps.lang.typesystem.structure.AbstractOverloadedOpsTypeRule" flags="ng" index="32tDTw">
        <child id="8124453027370845343" name="function" index="32tDT$" />
        <child id="8124453027370845341" name="operationConcept" index="32tDTA" />
      </concept>
      <concept id="8124453027370766044" name="jetbrains.mps.lang.typesystem.structure.OverloadedOpTypeRule_OneTypeSpecified" flags="ng" index="32tXgB">
        <child id="8124453027370845366" name="operandType" index="32tDTd" />
      </concept>
      <concept id="1201607707634" name="jetbrains.mps.lang.typesystem.structure.InequationReplacementRule" flags="ig" index="35pCF_">
        <child id="1201607798918" name="supertypeNode" index="35pZ6h" />
        <child id="3592071576955708909" name="isApplicableClause" index="1xSnZW" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1236083041311" name="jetbrains.mps.lang.typesystem.structure.OverloadedOperatorTypeRule" flags="ng" index="3ciAk0">
        <child id="1236083115043" name="leftOperandType" index="3ciSkW" />
        <child id="1236083115200" name="rightOperandType" index="3ciSnv" />
      </concept>
      <concept id="1236083146670" name="jetbrains.mps.lang.typesystem.structure.OverloadedOperatorTypeFunction" flags="in" index="3ciZUL" />
      <concept id="1236163200695" name="jetbrains.mps.lang.typesystem.structure.GetOperationType" flags="nn" index="3h4ouC">
        <child id="1236163216864" name="operation" index="3h4sjZ" />
        <child id="1236163223950" name="rightOperandType" index="3h4u2h" />
        <child id="1236163223573" name="leftOperandType" index="3h4u4a" />
      </concept>
      <concept id="1236165709895" name="jetbrains.mps.lang.typesystem.structure.OverloadedOpRulesContainer" flags="ng" index="3hdX5o">
        <child id="1236165725858" name="rule" index="3he0YX" />
      </concept>
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="3592071576955708904" name="jetbrains.mps.lang.typesystem.structure.IsReplacementRuleApplicable_ConceptFunction" flags="in" index="1xSnZT" />
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <property id="1216127910019" name="applyImmediately" index="ARO6o" />
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
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
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
      <concept id="1174663239020" name="jetbrains.mps.lang.typesystem.structure.CreateGreaterThanInequationStatement" flags="nn" index="1ZoDhX" />
      <concept id="1174663314467" name="jetbrains.mps.lang.typesystem.structure.CreateComparableEquationStatement" flags="nn" index="1ZoVOM" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
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
      <node concept="3SKdUt" id="6WKYICH5F7x" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F7_" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F7B" role="1PaTwD">
            <property role="3oM_SC" value="One" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7C" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7D" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7E" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7F" role="1PaTwD">
            <property role="3oM_SC" value="binary" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7G" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7H" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7I" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7J" role="1PaTwD">
            <property role="3oM_SC" value="depends" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7K" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7L" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7M" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7N" role="1PaTwD">
            <property role="3oM_SC" value="operands" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7O" role="1PaTwD">
            <property role="3oM_SC" value="are." />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7P" role="1PaTwD">
            <property role="3oM_SC" value="It" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7Q" role="1PaTwD">
            <property role="3oM_SC" value="waits" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH5F7R" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F7V" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F7X" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7Y" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F7Z" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F80" role="1PaTwD">
            <property role="3oM_SC" value="types," />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F81" role="1PaTwD">
            <property role="3oM_SC" value="then" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F82" role="1PaTwD">
            <property role="3oM_SC" value="asks" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F83" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F84" role="1PaTwD">
            <property role="3oM_SC" value="TS_BinaryOperations" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F85" role="1PaTwD">
            <property role="3oM_SC" value="table;" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F86" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F87" role="1PaTwD">
            <property role="3oM_SC" value="table" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F88" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F89" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8a" role="1PaTwD">
            <property role="3oM_SC" value="row" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8b" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH5F8c" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F8g" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F8i" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8j" role="1PaTwD">
            <property role="3oM_SC" value="combination" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8k" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8l" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8m" role="1PaTwD">
            <property role="3oM_SC" value="&quot;cannot" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8n" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8o" role="1PaTwD">
            <property role="3oM_SC" value="applied" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8p" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8q" role="1PaTwD">
            <property role="3oM_SC" value="these" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8r" role="1PaTwD">
            <property role="3oM_SC" value="operands&quot;" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8s" role="1PaTwD">
            <property role="3oM_SC" value="means," />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8t" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8u" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8v" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8w" role="1PaTwD">
            <property role="3oM_SC" value="checks" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH5F8x" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F8_" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F8B" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8C" role="1PaTwD">
            <property role="3oM_SC" value="roadmap" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8D" role="1PaTwD">
            <property role="3oM_SC" value="asked" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8E" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8F" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8G" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8H" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8I" role="1PaTwD">
            <property role="3oM_SC" value="table" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8J" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8K" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8L" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8M" role="1PaTwD">
            <property role="3oM_SC" value="second" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8N" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8O" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8P" role="1PaTwD">
            <property role="3oM_SC" value="rules" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8Q" role="1PaTwD">
            <property role="3oM_SC" value="beside" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8R" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH5F8S" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F8W" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F8Y" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F8Z" role="1PaTwD">
            <property role="3oM_SC" value="operators" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F90" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F91" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F92" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F93" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F94" role="1PaTwD">
            <property role="3oM_SC" value="depend" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F95" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F96" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F97" role="1PaTwD">
            <property role="3oM_SC" value="operands" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F98" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F99" role="1PaTwD">
            <property role="3oM_SC" value="equality," />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9a" role="1PaTwD">
            <property role="3oM_SC" value="&amp;&amp;" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9b" role="1PaTwD">
            <property role="3oM_SC" value="||" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9c" role="1PaTwD">
            <property role="3oM_SC" value="??," />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9d" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9e" role="1PaTwD">
            <property role="3oM_SC" value="comma" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH5F9f" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH5F9j" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH5F9l" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9m" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9n" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9o" role="1PaTwD">
            <property role="3oM_SC" value="override" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9p" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9q" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9r" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9s" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9t" role="1PaTwD">
            <property role="3oM_SC" value="adding" />
          </node>
          <node concept="3oM_SD" id="6WKYICH5F9u" role="1PaTwD">
            <property role="3oM_SC" value="rows." />
          </node>
        </node>
      </node>
      <node concept="nvevp" id="6WKYICH5F9v" role="3cqZAp">
        <node concept="3clFbS" id="6WKYICH5F9$" role="nvhr_">
          <node concept="nvevp" id="6WKYICH5F9_" role="3cqZAp">
            <node concept="3clFbS" id="6WKYICH5F9E" role="nvhr_">
              <node concept="3cpWs8" id="6WKYICH5F9F" role="3cqZAp">
                <node concept="3cpWsn" id="6WKYICH5F9I" role="3cpWs9">
                  <property role="TrG5h" value="operationType" />
                  <node concept="3Tqbb2" id="6WKYICH5F9K" role="1tU5fm" />
                  <node concept="3h4ouC" id="6WKYICH5F9L" role="33vP2m">
                    <node concept="1YBJjd" id="6WKYICH5F9P" role="3h4sjZ">
                      <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
                    </node>
                    <node concept="2X3wrD" id="6WKYICH5F9Q" role="3h4u4a">
                      <ref role="2X3Bk0" node="6WKYICH5Fb5" resolve="leftType" />
                    </node>
                    <node concept="2X3wrD" id="6WKYICH5F9R" role="3h4u2h">
                      <ref role="2X3Bk0" node="6WKYICH5FaV" resolve="rightType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6WKYICH5F9S" role="3cqZAp">
                <node concept="2OqwBi" id="6WKYICH5F9V" role="3clFbw">
                  <node concept="37vLTw" id="6WKYICH5F9Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WKYICH5F9I" resolve="operationType" />
                  </node>
                  <node concept="3x8VRR" id="6WKYICH5F9Z" role="2OqNvi" />
                </node>
                <node concept="3clFbS" id="6WKYICH5Fa0" role="3clFbx">
                  <node concept="1Z5TYs" id="6WKYICH5Fa1" role="3cqZAp">
                    <node concept="mw_s8" id="6WKYICH5Fa4" role="1ZfhK$">
                      <node concept="1Z2H0r" id="6WKYICH5Fa6" role="mwGJk">
                        <node concept="1YBJjd" id="6WKYICH5Fa8" role="1Z2MuG">
                          <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
                        </node>
                      </node>
                    </node>
                    <node concept="mw_s8" id="6WKYICH5Fa9" role="1ZfhKB">
                      <node concept="37vLTw" id="6WKYICH5Fab" role="mwGJk">
                        <ref role="3cqZAo" node="6WKYICH5F9I" resolve="operationType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="6WKYICH5Fac" role="9aQIa">
                  <node concept="3clFbS" id="6WKYICH5Fae" role="9aQI4">
                    <node concept="2MkqsV" id="6WKYICH5Faf" role="3cqZAp">
                      <node concept="3cpWs3" id="6WKYICH5Fai" role="2MkJ7o">
                        <node concept="3cpWs3" id="6WKYICH5Fal" role="3uHU7B">
                          <node concept="3cpWs3" id="6WKYICH5Fao" role="3uHU7B">
                            <node concept="3cpWs3" id="6WKYICH5Far" role="3uHU7B">
                              <node concept="3cpWs3" id="6WKYICH5Fau" role="3uHU7B">
                                <node concept="3cpWs3" id="6WKYICH5Fax" role="3uHU7B">
                                  <node concept="Xl_RD" id="6WKYICH5Fa$" role="3uHU7B">
                                    <property role="Xl_RC" value="Operator '" />
                                  </node>
                                  <node concept="2OqwBi" id="6WKYICH5Fa_" role="3uHU7w">
                                    <node concept="2OqwBi" id="6WKYICH5FaC" role="2Oq$k0">
                                      <node concept="1YBJjd" id="6WKYICH5FaF" role="2Oq$k0">
                                        <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
                                      </node>
                                      <node concept="2yIwOk" id="6WKYICH5FaG" role="2OqNvi" />
                                    </node>
                                    <node concept="liA8E" id="6WKYICH5FaH" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getConceptAlias()" resolve="getConceptAlias" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6WKYICH5FaI" role="3uHU7w">
                                  <property role="Xl_RC" value="' cannot be applied to '" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5TZAFSUnB35" role="3uHU7w">
                                <node concept="2X3wrD" id="5TZAFSUnB38" role="2Oq$k0">
                                  <ref role="2X3Bk0" node="6WKYICH5Fb5" resolve="leftType" />
                                </node>
                                <node concept="2Iv5rx" id="5TZAFSUnB39" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="6WKYICH5FaK" role="3uHU7w">
                              <property role="Xl_RC" value="' and '" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5TZAFSUnB3a" role="3uHU7w">
                            <node concept="2X3wrD" id="5TZAFSUnB3d" role="2Oq$k0">
                              <ref role="2X3Bk0" node="6WKYICH5FaV" resolve="rightType" />
                            </node>
                            <node concept="2Iv5rx" id="5TZAFSUnB3e" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6WKYICH5FaM" role="3uHU7w">
                          <property role="Xl_RC" value="'" />
                        </node>
                      </node>
                      <node concept="1YBJjd" id="6WKYICH5FaN" role="1urrMF">
                        <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="6WKYICH5FaO" role="nvjzm">
              <node concept="2OqwBi" id="6WKYICH5FaQ" role="1Z2MuG">
                <node concept="1YBJjd" id="6WKYICH5FaT" role="2Oq$k0">
                  <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
                </node>
                <node concept="3TrEf2" id="6WKYICH5FaU" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="6WKYICH5FaV" role="2X0Ygz">
              <property role="TrG5h" value="rightType" />
              <node concept="2jxLKc" id="6WKYICH5FaX" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="6WKYICH5FaY" role="nvjzm">
          <node concept="2OqwBi" id="6WKYICH5Fb0" role="1Z2MuG">
            <node concept="1YBJjd" id="6WKYICH5Fb3" role="2Oq$k0">
              <ref role="1YBMHb" node="6QS6LNOKx$o" resolve="operation" />
            </node>
            <node concept="3TrEf2" id="6WKYICH5Fb4" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="6WKYICH5Fb5" role="2X0Ygz">
          <property role="TrG5h" value="leftType" />
          <node concept="2jxLKc" id="6WKYICH5Fb7" role="1tU5fm" />
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
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pBZ" role="1PaTwD">
            <property role="3oM_SC" value="`0x`" />
          </node>
          <node concept="3oM_SD" id="6WKYICGYUAc" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pC0" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pC4" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pC6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC7" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC8" role="1PaTwD">
            <property role="3oM_SC" value="legal" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC9" role="1PaTwD">
            <property role="3oM_SC" value="intermediate" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCa" role="1PaTwD">
            <property role="3oM_SC" value="states" />
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
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCf" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCg" role="1PaTwD">
            <property role="3oM_SC" value="radix" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCh" role="1PaTwD">
            <property role="3oM_SC" value="forms" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCi" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCj" role="1PaTwD">
            <property role="3oM_SC" value="never" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCk" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="6WKYICGYUAd" role="1PaTwD">
            <property role="3oM_SC" value="typed," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCl" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pCp" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pCr" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCs" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCt" role="1PaTwD">
            <property role="3oM_SC" value="editor" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCu" role="1PaTwD">
            <property role="3oM_SC" value="refuses" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCv" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCw" role="1PaTwD">
            <property role="3oM_SC" value="keystroke" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCx" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCy" role="1PaTwD">
            <property role="3oM_SC" value="leaves" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC$" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pC_" role="1PaTwD">
            <property role="3oM_SC" value="outside" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCA" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICGYUAe" role="1PaTwD">
            <property role="3oM_SC" value="datatype." />
          </node>
          <node concept="3oM_SD" id="6WKYICGYUAf" role="1PaTwD">
            <property role="3oM_SC" value="So" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCB" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pCF" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pCH" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCI" role="1PaTwD">
            <property role="3oM_SC" value="datatype" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCJ" role="1PaTwD">
            <property role="3oM_SC" value="admits" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCK" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCL" role="1PaTwD">
            <property role="3oM_SC" value="prefix" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCM" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCN" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCO" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCP" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCQ" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCR" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCS" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCU" role="1PaTwD">
            <property role="3oM_SC" value="ones" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCV" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCW" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pCX" role="1PaTwD">
            <property role="3oM_SC" value="still" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICG5pCY" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICG5pD2" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICG5pD4" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD5" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD6" role="1PaTwD">
            <property role="3oM_SC" value="prefix," />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD7" role="1PaTwD">
            <property role="3oM_SC" value="plus" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pD9" role="1PaTwD">
            <property role="3oM_SC" value="separator" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDa" role="1PaTwD">
            <property role="3oM_SC" value="placements" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDb" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="6WKYICG5pDc" role="1PaTwD">
            <property role="3oM_SC" value="rejects." />
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
        <node concept="3eNFk2" id="6WKYICGYUAg" role="3eNLev">
          <node concept="2OqwBi" id="6WKYICGYUAj" role="3eO9$A">
            <node concept="37vLTw" id="6WKYICGYUAm" role="2Oq$k0">
              <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
            </node>
            <node concept="liA8E" id="6WKYICGYUAn" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
              <node concept="Xl_RD" id="6WKYICGYUAo" role="37wK5m">
                <property role="Xl_RC" value="-?0[xXbBoO]" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICGYUAp" role="3eOfB_">
            <node concept="2MkqsV" id="6WKYICGYUAq" role="3cqZAp">
              <node concept="Xl_RD" id="6WKYICGYUAt" role="2MkJ7o">
                <property role="Xl_RC" value="A 0x, 0b or 0o literal needs at least one digit" />
              </node>
              <node concept="1YBJjd" id="6WKYICGYUAu" role="1urrMF">
                <ref role="1YBMHb" node="6WKYICG5pBF" resolve="literal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WKYICGYUAv" role="9aQIa">
          <node concept="3fqX7Q" id="6WKYICGYUAy" role="3clFbw">
            <node concept="1eOMI4" id="6WKYICGYUA$" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICGYUAA" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICGYUAD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICG5pDo" resolve="text" />
                </node>
                <node concept="liA8E" id="6WKYICGYUAE" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="6WKYICGYUAF" role="37wK5m">
                    <property role="Xl_RC" value="-?(0[xX][0-9a-fA-F]+([_][0-9a-fA-F]+)*n?|0[bB][01]+([_][01]+)*n?|0[oO][0-7]+([_][0-7]+)*n?|[0-9]+([_][0-9]+)*n|([0-9]+([_][0-9]+)*([.]([0-9]+([_][0-9]+)*)?)?|[.][0-9]+([_][0-9]+)*)([eE][-+]?[0-9]+([_][0-9]+)*)?)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6WKYICGYUAG" role="3clFbx">
            <node concept="3SKdUt" id="6WKYICGYUAH" role="3cqZAp">
              <node concept="1PaTwC" id="6WKYICGYUAL" role="1aUNEU">
                <node concept="3oM_SD" id="6WKYICGYUAN" role="1PaTwD">
                  <property role="3oM_SC" value="Everything" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAO" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAP" role="1PaTwD">
                  <property role="3oM_SC" value="datatype" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAQ" role="1PaTwD">
                  <property role="3oM_SC" value="admits" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAR" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAS" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAT" role="1PaTwD">
                  <property role="3oM_SC" value="does" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAU" role="1PaTwD">
                  <property role="3oM_SC" value="not:" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAV" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAW" role="1PaTwD">
                  <property role="3oM_SC" value="numeric" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAX" role="1PaTwD">
                  <property role="3oM_SC" value="separator" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAY" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUAZ" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUB0" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUB1" role="1PaTwD">
                  <property role="3oM_SC" value="between" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6WKYICGYUB2" role="3cqZAp">
              <node concept="1PaTwC" id="6WKYICGYUB6" role="1aUNEU">
                <node concept="3oM_SD" id="6WKYICGYUB8" role="1PaTwD">
                  <property role="3oM_SC" value="two" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUB9" role="1PaTwD">
                  <property role="3oM_SC" value="digits," />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBa" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBb" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBc" role="1PaTwD">
                  <property role="3oM_SC" value="bigint" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBd" role="1PaTwD">
                  <property role="3oM_SC" value="suffix" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBe" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBf" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBg" role="1PaTwD">
                  <property role="3oM_SC" value="value" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBh" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBi" role="1PaTwD">
                  <property role="3oM_SC" value="has" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBj" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBk" role="1PaTwD">
                  <property role="3oM_SC" value="fraction" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBl" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBm" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="6WKYICGYUBn" role="1PaTwD">
                  <property role="3oM_SC" value="exponent." />
                </node>
              </node>
            </node>
            <node concept="2MkqsV" id="6WKYICGYUBo" role="3cqZAp">
              <node concept="Xl_RD" id="6WKYICGYUBr" role="2MkJ7o">
                <property role="Xl_RC" value="A numeric separator must sit between two digits, and n cannot follow a fraction or an exponent" />
              </node>
              <node concept="1YBJjd" id="6WKYICGYUBs" role="1urrMF">
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
      <node concept="3SKdUt" id="6WKYICH6NU9" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6NUd" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6NUf" role="1PaTwD">
            <property role="3oM_SC" value="What" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUg" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUh" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUi" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUk" role="1PaTwD">
            <property role="3oM_SC" value="three" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUl" role="1PaTwD">
            <property role="3oM_SC" value="overriding" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUm" role="1PaTwD">
            <property role="3oM_SC" value="rules" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUn" role="1PaTwD">
            <property role="3oM_SC" value="below" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUo" role="1PaTwD">
            <property role="3oM_SC" value="take" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUp" role="1PaTwD">
            <property role="3oM_SC" value="!," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUq" role="1PaTwD">
            <property role="3oM_SC" value="typeof" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUr" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUs" role="1PaTwD">
            <property role="3oM_SC" value="void:" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUt" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUu" role="1PaTwD">
            <property role="3oM_SC" value="numeric" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6NUv" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6NUz" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6NU_" role="1PaTwD">
            <property role="3oM_SC" value="prefixes" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUA" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUB" role="1PaTwD">
            <property role="3oM_SC" value="unary" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUC" role="1PaTwD">
            <property role="3oM_SC" value="minus," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUD" role="1PaTwD">
            <property role="3oM_SC" value="unary" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUE" role="1PaTwD">
            <property role="3oM_SC" value="plus" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUF" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUG" role="1PaTwD">
            <property role="3oM_SC" value="~" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUH" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUI" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUJ" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUK" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUL" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUM" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUN" role="1PaTwD">
            <property role="3oM_SC" value="give" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUO" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6NUP" role="1PaTwD">
            <property role="3oM_SC" value="back." />
          </node>
        </node>
      </node>
      <node concept="1ZoVOM" id="6WKYICH6NUQ" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6NUT" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6NUV" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICH6NUX" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICH6NV0" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICGxK8q" resolve="operation" />
              </node>
              <node concept="3TrEf2" id="6WKYICH6NV1" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:6WKYICGq2yg" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6NV2" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH6NV4" role="mwGJk">
            <node concept="1ku6r5" id="6WKYICH6NV6" role="2c44tc" />
          </node>
        </node>
        <node concept="2OqwBi" id="6WKYICH6NV7" role="1ZmcU8">
          <node concept="1YBJjd" id="6WKYICH6NVa" role="2Oq$k0">
            <ref role="1YBMHb" node="6WKYICGxK8q" resolve="operation" />
          </node>
          <node concept="3TrEf2" id="6WKYICH6NVb" role="2OqNvi">
            <ref role="3Tt5mk" to="mo8k:6WKYICGq2yg" resolve="expression" />
          </node>
        </node>
        <node concept="Xl_RD" id="6WKYICH6NVc" role="3o8Qv2">
          <property role="Xl_RC" value="The operand of a numeric prefix operator must be a number" />
        </node>
      </node>
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
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
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
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6WKYICGUuwT">
    <property role="TrG5h" value="check_TSNullishCoalescingExpression" />
    <node concept="1YaCAy" id="6WKYICGUuwW" role="1YuTPh">
      <property role="TrG5h" value="nullish" />
      <ref role="1YaFvo" to="mo8k:6WKYICGS4Rx" resolve="TSNullishCoalescingExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICGUuwX" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICGUuwY" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICGUux2" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICGUux4" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux5" role="1PaTwD">
            <property role="3oM_SC" value="refuses" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux7" role="1PaTwD">
            <property role="3oM_SC" value="parse" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux8" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux9" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxa" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxb" role="1PaTwD">
            <property role="3oM_SC" value="&amp;&amp;" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxc" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxd" role="1PaTwD">
            <property role="3oM_SC" value="||" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxe" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxf" role="1PaTwD">
            <property role="3oM_SC" value="parentheses," />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxg" role="1PaTwD">
            <property role="3oM_SC" value="whichever" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxh" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxi" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxj" role="1PaTwD">
            <property role="3oM_SC" value="tree" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICGUuxk" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICGUuxo" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICGUuxq" role="1PaTwD">
            <property role="3oM_SC" value="leans," />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxr" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxs" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxt" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxu" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxv" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxw" role="1PaTwD">
            <property role="3oM_SC" value="priority" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxx" role="1PaTwD">
            <property role="3oM_SC" value="question" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxy" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux$" role="1PaTwD">
            <property role="3oM_SC" value="priority" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUux_" role="1PaTwD">
            <property role="3oM_SC" value="check" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxA" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxB" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxC" role="1PaTwD">
            <property role="3oM_SC" value="catch" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxD" role="1PaTwD">
            <property role="3oM_SC" value="it:" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxE" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxF" role="1PaTwD">
            <property role="3oM_SC" value="sits" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICGUuxG" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICGUuxK" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICGUuxM" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxN" role="1PaTwD">
            <property role="3oM_SC" value="||'s" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxO" role="1PaTwD">
            <property role="3oM_SC" value="level," />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxP" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxQ" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxR" role="1PaTwD">
            <property role="3oM_SC" value="equal" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxS" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxT" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxU" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxV" role="1PaTwD">
            <property role="3oM_SC" value="bad" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxW" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxX" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxY" role="1PaTwD">
            <property role="3oM_SC" value="side," />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuxZ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuy0" role="1PaTwD">
            <property role="3oM_SC" value="&amp;&amp;" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuy1" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuy2" role="1PaTwD">
            <property role="3oM_SC" value="tighter" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuy3" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICGUuy4" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICGUuy8" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICGUuya" role="1PaTwD">
            <property role="3oM_SC" value="both." />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyb" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyc" role="1PaTwD">
            <property role="3oM_SC" value="chained" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyd" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuye" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyf" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyg" role="1PaTwD">
            <property role="3oM_SC" value="fine," />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyh" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyi" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyj" role="1PaTwD">
            <property role="3oM_SC" value="why" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyk" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyl" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuym" role="1PaTwD">
            <property role="3oM_SC" value="excludes" />
          </node>
          <node concept="3oM_SD" id="6WKYICGUuyn" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6WKYICGUuyo" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICGUuyr" role="3cpWs9">
          <property role="TrG5h" value="left" />
          <node concept="3Tqbb2" id="6WKYICGUuyt" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
          </node>
          <node concept="2OqwBi" id="6WKYICGUuyu" role="33vP2m">
            <node concept="1YBJjd" id="6WKYICGUuyx" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICGUuwW" resolve="nullish" />
            </node>
            <node concept="3TrEf2" id="6WKYICGUuyy" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6WKYICGUuyz" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICGUuyA" role="3cpWs9">
          <property role="TrG5h" value="right" />
          <node concept="3Tqbb2" id="6WKYICGUuyC" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
          </node>
          <node concept="2OqwBi" id="6WKYICGUuyD" role="33vP2m">
            <node concept="1YBJjd" id="6WKYICGUuyG" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICGUuwW" resolve="nullish" />
            </node>
            <node concept="3TrEf2" id="6WKYICGUuyH" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6WKYICGUuyI" role="3cqZAp">
        <node concept="3cpWsn" id="6WKYICGUuyL" role="3cpWs9">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="6WKYICGUuyN" role="1tU5fm" />
          <node concept="2OqwBi" id="6WKYICGUuyO" role="33vP2m">
            <node concept="1YBJjd" id="6WKYICGUuyR" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICGUuwW" resolve="nullish" />
            </node>
            <node concept="1mfA1w" id="6WKYICGUuyS" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICGUuyT" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICGUuyW" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICGUuyZ" role="3uHU7B">
            <node concept="37vLTw" id="6WKYICGUuz2" role="2Oq$k0">
              <ref role="3cqZAo" node="6WKYICGUuyr" resolve="left" />
            </node>
            <node concept="1mIQ4w" id="6WKYICGUuz3" role="2OqNvi">
              <node concept="chp4Y" id="6WKYICGUuz5" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICGTM3J" resolve="TSLogicalOperation" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6WKYICGUuz6" role="3uHU7w">
            <node concept="1eOMI4" id="6WKYICGUuz8" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICGUuza" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICGUuzd" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICGUuyr" resolve="left" />
                </node>
                <node concept="1mIQ4w" id="6WKYICGUuze" role="2OqNvi">
                  <node concept="chp4Y" id="6WKYICGUuzg" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:6WKYICGS4Rx" resolve="TSNullishCoalescingExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICGUuzh" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICGUuzi" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICGUuzl" role="2MkJ7o">
              <property role="Xl_RC" value="?? cannot be mixed with &amp;&amp; or || without parentheses" />
            </node>
            <node concept="37vLTw" id="6WKYICGUuzm" role="1urrMF">
              <ref role="3cqZAo" node="6WKYICGUuyr" resolve="left" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICGUuzn" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICGUuzq" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICGUuzt" role="3uHU7B">
            <node concept="37vLTw" id="6WKYICGUuzw" role="2Oq$k0">
              <ref role="3cqZAo" node="6WKYICGUuyA" resolve="right" />
            </node>
            <node concept="1mIQ4w" id="6WKYICGUuzx" role="2OqNvi">
              <node concept="chp4Y" id="6WKYICGUuzz" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICGTM3J" resolve="TSLogicalOperation" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6WKYICGUuz$" role="3uHU7w">
            <node concept="1eOMI4" id="6WKYICGUuzA" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICGUuzC" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICGUuzF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICGUuyA" resolve="right" />
                </node>
                <node concept="1mIQ4w" id="6WKYICGUuzG" role="2OqNvi">
                  <node concept="chp4Y" id="6WKYICGUuzI" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:6WKYICGS4Rx" resolve="TSNullishCoalescingExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICGUuzJ" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICGUuzK" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICGUuzN" role="2MkJ7o">
              <property role="Xl_RC" value="?? cannot be mixed with &amp;&amp; or || without parentheses" />
            </node>
            <node concept="37vLTw" id="6WKYICGUuzO" role="1urrMF">
              <ref role="3cqZAo" node="6WKYICGUuyA" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6WKYICGUuzP" role="3cqZAp">
        <node concept="1Wc70l" id="6WKYICGUuzS" role="3clFbw">
          <node concept="2OqwBi" id="6WKYICGUuzV" role="3uHU7B">
            <node concept="37vLTw" id="6WKYICGUuzY" role="2Oq$k0">
              <ref role="3cqZAo" node="6WKYICGUuyL" resolve="parent" />
            </node>
            <node concept="1mIQ4w" id="6WKYICGUuzZ" role="2OqNvi">
              <node concept="chp4Y" id="6WKYICGUu$1" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICGTM3J" resolve="TSLogicalOperation" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6WKYICGUu$2" role="3uHU7w">
            <node concept="1eOMI4" id="6WKYICGUu$4" role="3fr31v">
              <node concept="2OqwBi" id="6WKYICGUu$6" role="1eOMHV">
                <node concept="37vLTw" id="6WKYICGUu$9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6WKYICGUuyL" resolve="parent" />
                </node>
                <node concept="1mIQ4w" id="6WKYICGUu$a" role="2OqNvi">
                  <node concept="chp4Y" id="6WKYICGUu$c" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:6WKYICGS4Rx" resolve="TSNullishCoalescingExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6WKYICGUu$d" role="3clFbx">
          <node concept="2MkqsV" id="6WKYICGUu$e" role="3cqZAp">
            <node concept="Xl_RD" id="6WKYICGUu$h" role="2MkJ7o">
              <property role="Xl_RC" value="?? cannot be mixed with &amp;&amp; or || without parentheses" />
            </node>
            <node concept="1YBJjd" id="6WKYICGUu$i" role="1urrMF">
              <ref role="1YBMHb" node="6WKYICGUuwW" resolve="nullish" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICGYpMI">
    <property role="TrG5h" value="typeof_TSBooleanLiteral" />
    <node concept="1YaCAy" id="6WKYICGYpML" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:6WKYICGXUWw" resolve="TSBooleanLiteral" />
    </node>
    <node concept="3clFbS" id="6WKYICGYpMM" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICGYpMN" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICGYpMQ" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICGYpMS" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICGYpMU" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICGYpML" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICGYpMV" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICGYpMX" role="mwGJk">
            <node concept="3$6BPE" id="6WKYICGYpMZ" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH018c">
    <property role="TrG5h" value="typeof_TSTemplateLiteral" />
    <node concept="1YaCAy" id="6WKYICH018f" role="1YuTPh">
      <property role="TrG5h" value="template" />
      <ref role="1YaFvo" to="mo8k:6WKYICGZsfC" resolve="TSTemplateLiteral" />
    </node>
    <node concept="3clFbS" id="6WKYICH018g" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICH018h" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH018k" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH018m" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH018o" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH018f" resolve="template" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH018p" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH018r" role="mwGJk">
            <node concept="2Kh4GC" id="6WKYICH018t" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3hdX5o" id="6WKYICH5DEL">
    <property role="TrG5h" value="TS_BinaryOperations" />
    <node concept="32tXgB" id="6WKYICH5DEM" role="3he0YX">
      <node concept="2c44tf" id="6WKYICH5DER" role="32tDTd">
        <node concept="2Kh4GC" id="6WKYICH5DET" role="2c44tc" />
      </node>
      <node concept="3gn64h" id="6WKYICH5DEU" role="32tDTA">
        <ref role="3gnhBz" to="mo8k:5YMdeQYNSE" resolve="TSPlusExpression" />
      </node>
      <node concept="3ciZUL" id="6WKYICH5DEV" role="32tDT$">
        <node concept="3clFbS" id="6WKYICH5DEX" role="2VODD2">
          <node concept="3SKdUt" id="6WKYICH5DEY" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICH5DF2" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICH5DF4" role="1PaTwD">
                <property role="3oM_SC" value="The" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF5" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF6" role="1PaTwD">
                <property role="3oM_SC" value="overload" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF7" role="1PaTwD">
                <property role="3oM_SC" value="TypeScript" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF8" role="1PaTwD">
                <property role="3oM_SC" value="gives" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF9" role="1PaTwD">
                <property role="3oM_SC" value="+:" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFa" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFb" role="1PaTwD">
                <property role="3oM_SC" value="string" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFc" role="1PaTwD">
                <property role="3oM_SC" value="on" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFd" role="1PaTwD">
                <property role="3oM_SC" value="either" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFe" role="1PaTwD">
                <property role="3oM_SC" value="side" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFf" role="1PaTwD">
                <property role="3oM_SC" value="makes" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFg" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFh" role="1PaTwD">
                <property role="3oM_SC" value="whole" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFi" role="1PaTwD">
                <property role="3oM_SC" value="thing" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFj" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICH5DFk" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICH5DFo" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICH5DFq" role="1PaTwD">
                <property role="3oM_SC" value="string," />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFr" role="1PaTwD">
                <property role="3oM_SC" value="whatever" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFs" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFt" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFu" role="1PaTwD">
                <property role="3oM_SC" value="side" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFv" role="1PaTwD">
                <property role="3oM_SC" value="is." />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFw" role="1PaTwD">
                <property role="3oM_SC" value="Every" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFx" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFy" role="1PaTwD">
                <property role="3oM_SC" value="arithmetic" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFz" role="1PaTwD">
                <property role="3oM_SC" value="operator" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF$" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DF_" role="1PaTwD">
                <property role="3oM_SC" value="numbers" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DFA" role="1PaTwD">
                <property role="3oM_SC" value="only." />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6WKYICH5DFB" role="3cqZAp">
            <node concept="2c44tf" id="6WKYICH5DFC" role="3cqZAk">
              <node concept="2Kh4GC" id="6WKYICH5DFE" role="2c44tc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ciAk0" id="6WKYICH5DFF" role="3he0YX">
      <node concept="2c44tf" id="6WKYICH5DFL" role="3ciSkW">
        <node concept="1ku6r5" id="6WKYICH5DFN" role="2c44tc" />
      </node>
      <node concept="2c44tf" id="6WKYICH5DFO" role="3ciSnv">
        <node concept="1ku6r5" id="6WKYICH5DFQ" role="2c44tc" />
      </node>
      <node concept="3gn64h" id="6WKYICH5DFR" role="32tDTA">
        <ref role="3gnhBz" to="mo8k:6WKYICGTLWY" resolve="TSArithmeticOperation" />
      </node>
      <node concept="3ciZUL" id="6WKYICH5DFS" role="32tDT$">
        <node concept="3clFbS" id="6WKYICH5DFU" role="2VODD2">
          <node concept="3cpWs6" id="6WKYICH5DFV" role="3cqZAp">
            <node concept="2c44tf" id="6WKYICH5DFW" role="3cqZAk">
              <node concept="1ku6r5" id="6WKYICH5DFY" role="2c44tc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ciAk0" id="6WKYICH5DFZ" role="3he0YX">
      <node concept="2c44tf" id="6WKYICH5DG5" role="3ciSkW">
        <node concept="1ku6r5" id="6WKYICH5DG7" role="2c44tc" />
      </node>
      <node concept="2c44tf" id="6WKYICH5DG8" role="3ciSnv">
        <node concept="1ku6r5" id="6WKYICH5DGa" role="2c44tc" />
      </node>
      <node concept="3gn64h" id="6WKYICH5DGb" role="32tDTA">
        <ref role="3gnhBz" to="mo8k:6WKYICGTM6a" resolve="TSBitwiseOperation" />
      </node>
      <node concept="3ciZUL" id="6WKYICH5DGc" role="32tDT$">
        <node concept="3clFbS" id="6WKYICH5DGe" role="2VODD2">
          <node concept="3cpWs6" id="6WKYICH5DGf" role="3cqZAp">
            <node concept="2c44tf" id="6WKYICH5DGg" role="3cqZAk">
              <node concept="1ku6r5" id="6WKYICH5DGi" role="2c44tc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ciAk0" id="6WKYICH5DGj" role="3he0YX">
      <node concept="2c44tf" id="6WKYICH5DGp" role="3ciSkW">
        <node concept="1ku6r5" id="6WKYICH5DGr" role="2c44tc" />
      </node>
      <node concept="2c44tf" id="6WKYICH5DGs" role="3ciSnv">
        <node concept="1ku6r5" id="6WKYICH5DGu" role="2c44tc" />
      </node>
      <node concept="3gn64h" id="6WKYICH5DGv" role="32tDTA">
        <ref role="3gnhBz" to="mo8k:6WKYICGTLZ9" resolve="TSComparisonOperation" />
      </node>
      <node concept="3ciZUL" id="6WKYICH5DGw" role="32tDT$">
        <node concept="3clFbS" id="6WKYICH5DGy" role="2VODD2">
          <node concept="3cpWs6" id="6WKYICH5DGz" role="3cqZAp">
            <node concept="2c44tf" id="6WKYICH5DG$" role="3cqZAk">
              <node concept="3$6BPE" id="6WKYICH5DGA" role="2c44tc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ciAk0" id="6WKYICH5DGB" role="3he0YX">
      <node concept="2c44tf" id="6WKYICH5DGH" role="3ciSkW">
        <node concept="2Kh4GC" id="6WKYICH5DGJ" role="2c44tc" />
      </node>
      <node concept="2c44tf" id="6WKYICH5DGK" role="3ciSnv">
        <node concept="2Kh4GC" id="6WKYICH5DGM" role="2c44tc" />
      </node>
      <node concept="3gn64h" id="6WKYICH5DGN" role="32tDTA">
        <ref role="3gnhBz" to="mo8k:6WKYICGTLZ9" resolve="TSComparisonOperation" />
      </node>
      <node concept="3ciZUL" id="6WKYICH5DGO" role="32tDT$">
        <node concept="3clFbS" id="6WKYICH5DGQ" role="2VODD2">
          <node concept="3SKdUt" id="6WKYICH5DGR" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICH5DGV" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICH5DGX" role="1PaTwD">
                <property role="3oM_SC" value="TypeScript" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DGY" role="1PaTwD">
                <property role="3oM_SC" value="orders" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DGZ" role="1PaTwD">
                <property role="3oM_SC" value="strings" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH0" role="1PaTwD">
                <property role="3oM_SC" value="lexicographically," />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH1" role="1PaTwD">
                <property role="3oM_SC" value="so" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH2" role="1PaTwD">
                <property role="3oM_SC" value="&lt;" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH3" role="1PaTwD">
                <property role="3oM_SC" value="&gt;" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH4" role="1PaTwD">
                <property role="3oM_SC" value="&lt;=" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH5" role="1PaTwD">
                <property role="3oM_SC" value="&gt;=" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH6" role="1PaTwD">
                <property role="3oM_SC" value="take" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH7" role="1PaTwD">
                <property role="3oM_SC" value="two" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH8" role="1PaTwD">
                <property role="3oM_SC" value="strings" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH9" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHa" role="1PaTwD">
                <property role="3oM_SC" value="well" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHb" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICH5DHc" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICH5DHg" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICH5DHi" role="1PaTwD">
                <property role="3oM_SC" value="two" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHj" role="1PaTwD">
                <property role="3oM_SC" value="numbers" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHk" role="1PaTwD">
                <property role="3oM_SC" value="-" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHl" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHm" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHn" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHo" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHp" role="1PaTwD">
                <property role="3oM_SC" value="each," />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHq" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHr" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHs" role="1PaTwD">
                <property role="3oM_SC" value="why" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHt" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHu" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHv" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHw" role="1PaTwD">
                <property role="3oM_SC" value="second" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHx" role="1PaTwD">
                <property role="3oM_SC" value="row" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHy" role="1PaTwD">
                <property role="3oM_SC" value="rather" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHz" role="1PaTwD">
                <property role="3oM_SC" value="than" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DH$" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="6WKYICH5DH_" role="3cqZAp">
            <node concept="1PaTwC" id="6WKYICH5DHD" role="1aUNEU">
              <node concept="3oM_SD" id="6WKYICH5DHF" role="1PaTwD">
                <property role="3oM_SC" value="widening" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHG" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHH" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="6WKYICH5DHI" role="1PaTwD">
                <property role="3oM_SC" value="first." />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6WKYICH5DHJ" role="3cqZAp">
            <node concept="2c44tf" id="6WKYICH5DHK" role="3cqZAk">
              <node concept="3$6BPE" id="6WKYICH5DHM" role="2c44tc" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6dBv">
    <property role="TrG5h" value="typeof_TSEqualityOperation" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6dBy" role="1YuTPh">
      <property role="TrG5h" value="equality" />
      <ref role="1YaFvo" to="mo8k:6WKYICGTM1y" resolve="TSEqualityOperation" />
    </node>
    <node concept="3clFbS" id="6WKYICH6dBz" role="18ibNy">
      <node concept="1ZoVOM" id="6WKYICH6dB$" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6dBB" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6dBD" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICH6dBF" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICH6dBI" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICH6dBy" resolve="equality" />
              </node>
              <node concept="3TrEf2" id="6WKYICH6dBJ" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6dBK" role="1ZfhKB">
          <node concept="1Z2H0r" id="6WKYICH6dBM" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICH6dBO" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICH6dBR" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICH6dBy" resolve="equality" />
              </node>
              <node concept="3TrEf2" id="6WKYICH6dBS" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1YBJjd" id="6WKYICH6dBT" role="1ZmcU8">
          <ref role="1YBMHb" node="6WKYICH6dBy" resolve="equality" />
        </node>
        <node concept="Xl_RD" id="6WKYICH6dBU" role="3o8Qv2">
          <property role="Xl_RC" value="The operands of an equality comparison must have the same type" />
        </node>
      </node>
      <node concept="1Z5TYs" id="6WKYICH6dBV" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6dBY" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6dC0" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH6dC2" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH6dBy" resolve="equality" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6dC3" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH6dC5" role="mwGJk">
            <node concept="3$6BPE" id="6WKYICH6dC7" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6e08">
    <property role="TrG5h" value="typeof_TSInExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6e0b" role="1YuTPh">
      <property role="TrG5h" value="inExpression" />
      <ref role="1YaFvo" to="mo8k:6WKYICGS4EK" resolve="TSInExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICH6e0c" role="18ibNy">
      <node concept="1Z5TYs" id="6WKYICH6e0d" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6e0g" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6e0i" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH6e0k" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH6e0b" resolve="inExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6e0l" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH6e0n" role="mwGJk">
            <node concept="3$6BPE" id="6WKYICH6e0p" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6enW">
    <property role="TrG5h" value="typeof_TSCommaExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6enZ" role="1YuTPh">
      <property role="TrG5h" value="comma" />
      <ref role="1YaFvo" to="mo8k:6WKYICGS56Z" resolve="TSCommaExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICH6eo0" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICH6eo1" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6eo5" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6eo7" role="1PaTwD">
            <property role="3oM_SC" value="a," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eo8" role="1PaTwD">
            <property role="3oM_SC" value="b" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eo9" role="1PaTwD">
            <property role="3oM_SC" value="evaluates" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoa" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eob" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoc" role="1PaTwD">
            <property role="3oM_SC" value="yields" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eod" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoe" role="1PaTwD">
            <property role="3oM_SC" value="second," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eof" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eog" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoh" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoi" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eoj" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eok" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eol" role="1PaTwD">
            <property role="3oM_SC" value="right" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eom" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eon" role="1PaTwD">
            <property role="3oM_SC" value="whatever" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6eoo" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6eos" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6eou" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eov" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eow" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6eox" role="1PaTwD">
            <property role="3oM_SC" value="is." />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="6WKYICH6eoy" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6eo_" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6eoB" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH6eoD" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH6enZ" resolve="comma" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6eoE" role="1ZfhKB">
          <node concept="1Z2H0r" id="6WKYICH6eoG" role="mwGJk">
            <node concept="2OqwBi" id="6WKYICH6eoI" role="1Z2MuG">
              <node concept="1YBJjd" id="6WKYICH6eoL" role="2Oq$k0">
                <ref role="1YBMHb" node="6WKYICH6enZ" resolve="comma" />
              </node>
              <node concept="3TrEf2" id="6WKYICH6eoM" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6fIR">
    <property role="TrG5h" value="typeof_TSLogicalOperation" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6fIU" role="1YuTPh">
      <property role="TrG5h" value="logical" />
      <ref role="1YaFvo" to="mo8k:6WKYICGTM3J" resolve="TSLogicalOperation" />
    </node>
    <node concept="3clFbS" id="6WKYICH6fIV" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICH6fIW" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6fJ0" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6fJ2" role="1PaTwD">
            <property role="3oM_SC" value="&amp;&amp;" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ3" role="1PaTwD">
            <property role="3oM_SC" value="||" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ4" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ5" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ6" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ7" role="1PaTwD">
            <property role="3oM_SC" value="yield" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ8" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ9" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJa" role="1PaTwD">
            <property role="3oM_SC" value="their" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJb" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJc" role="1PaTwD">
            <property role="3oM_SC" value="operands," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJd" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJe" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJf" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJg" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJi" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJj" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJk" role="1PaTwD">
            <property role="3oM_SC" value="both." />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJl" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6fJm" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6fJq" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6fJs" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJt" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJu" role="1PaTwD">
            <property role="3oM_SC" value="approximation" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJv" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJw" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJx" role="1PaTwD">
            <property role="3oM_SC" value="direction" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJy" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJz" role="1PaTwD">
            <property role="3oM_SC" value="itself" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ$" role="1PaTwD">
            <property role="3oM_SC" value="narrows:" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJ_" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJA" role="1PaTwD">
            <property role="3oM_SC" value="||" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJB" role="1PaTwD">
            <property role="3oM_SC" value="b" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJC" role="1PaTwD">
            <property role="3oM_SC" value="actually" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJD" role="1PaTwD">
            <property role="3oM_SC" value="drops" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJE" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6fJF" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6fJJ" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6fJL" role="1PaTwD">
            <property role="3oM_SC" value="falsy" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJM" role="1PaTwD">
            <property role="3oM_SC" value="part" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJN" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJO" role="1PaTwD">
            <property role="3oM_SC" value="a," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJP" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJQ" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJR" role="1PaTwD">
            <property role="3oM_SC" value="??" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJS" role="1PaTwD">
            <property role="3oM_SC" value="b" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJU" role="1PaTwD">
            <property role="3oM_SC" value="nullish" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJV" role="1PaTwD">
            <property role="3oM_SC" value="part," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJW" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJX" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJY" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fJZ" role="1PaTwD">
            <property role="3oM_SC" value="narrowing" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fK0" role="1PaTwD">
            <property role="3oM_SC" value="phase" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fK1" role="1PaTwD">
            <property role="3oM_SC" value="5" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6fK2" role="1PaTwD">
            <property role="3oM_SC" value="owns." />
          </node>
        </node>
      </node>
      <node concept="nvevp" id="6WKYICH6fK3" role="3cqZAp">
        <node concept="3clFbS" id="6WKYICH6fK8" role="nvhr_">
          <node concept="nvevp" id="6WKYICH6fK9" role="3cqZAp">
            <node concept="3clFbS" id="6WKYICH6fKe" role="nvhr_">
              <node concept="3cpWs8" id="6WKYICH6fKf" role="3cqZAp">
                <node concept="3cpWsn" id="6WKYICH6fKi" role="3cpWs9">
                  <property role="TrG5h" value="operands" />
                  <node concept="_YKpA" id="6WKYICH6fKk" role="1tU5fm">
                    <node concept="3Tqbb2" id="6WKYICH6fKm" role="_ZDj9">
                      <ref role="ehGHo" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="6WKYICH6fKn" role="33vP2m">
                    <node concept="Tc6Ow" id="6WKYICH6fKp" role="2ShVmc">
                      <node concept="3Tqbb2" id="6WKYICH6fKq" role="HW$YZ">
                        <ref role="ehGHo" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6WKYICH6fKr" role="3cqZAp">
                <node concept="2OqwBi" id="6WKYICH6fKt" role="3clFbG">
                  <node concept="37vLTw" id="6WKYICH6fKw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WKYICH6fKi" resolve="operands" />
                  </node>
                  <node concept="TSZUe" id="6WKYICH6fKx" role="2OqNvi">
                    <node concept="1PxgMI" id="6WKYICH6fKz" role="25WWJ7">
                      <node concept="2X3wrD" id="6WKYICH6fKA" role="1m5AlR">
                        <ref role="2X3Bk0" node="6WKYICH6fLi" resolve="leftType" />
                      </node>
                      <node concept="chp4Y" id="6WKYICH6fKB" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6WKYICH6fKC" role="3cqZAp">
                <node concept="2OqwBi" id="6WKYICH6fKE" role="3clFbG">
                  <node concept="37vLTw" id="6WKYICH6fKH" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WKYICH6fKi" resolve="operands" />
                  </node>
                  <node concept="TSZUe" id="6WKYICH6fKI" role="2OqNvi">
                    <node concept="1PxgMI" id="6WKYICH6fKK" role="25WWJ7">
                      <node concept="2X3wrD" id="6WKYICH6fKN" role="1m5AlR">
                        <ref role="2X3Bk0" node="6WKYICH6fL8" resolve="rightType" />
                      </node>
                      <node concept="chp4Y" id="6WKYICH6fKO" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Z5TYs" id="6WKYICH6fKP" role="3cqZAp">
                <node concept="mw_s8" id="6WKYICH6fKS" role="1ZfhK$">
                  <node concept="1Z2H0r" id="6WKYICH6fKU" role="mwGJk">
                    <node concept="1YBJjd" id="6WKYICH6fKW" role="1Z2MuG">
                      <ref role="1YBMHb" node="6WKYICH6fIU" resolve="logical" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="6WKYICH6fKX" role="1ZfhKB">
                  <node concept="2YIFZM" id="6WKYICH6fKZ" role="mwGJk">
                    <ref role="1Pybhc" to="tw2a:6WKYICH2zO1" resolve="TSTypeUtil" />
                    <ref role="37wK5l" to="tw2a:6WKYICH2zOb" resolve="union" />
                    <node concept="37vLTw" id="6WKYICH6fL0" role="37wK5m">
                      <ref role="3cqZAo" node="6WKYICH6fKi" resolve="operands" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Z2H0r" id="6WKYICH6fL1" role="nvjzm">
              <node concept="2OqwBi" id="6WKYICH6fL3" role="1Z2MuG">
                <node concept="1YBJjd" id="6WKYICH6fL6" role="2Oq$k0">
                  <ref role="1YBMHb" node="6WKYICH6fIU" resolve="logical" />
                </node>
                <node concept="3TrEf2" id="6WKYICH6fL7" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
            </node>
            <node concept="2X1qdy" id="6WKYICH6fL8" role="2X0Ygz">
              <property role="TrG5h" value="rightType" />
              <node concept="2jxLKc" id="6WKYICH6fLa" role="1tU5fm" />
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="6WKYICH6fLb" role="nvjzm">
          <node concept="2OqwBi" id="6WKYICH6fLd" role="1Z2MuG">
            <node concept="1YBJjd" id="6WKYICH6fLg" role="2Oq$k0">
              <ref role="1YBMHb" node="6WKYICH6fIU" resolve="logical" />
            </node>
            <node concept="3TrEf2" id="6WKYICH6fLh" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="6WKYICH6fLi" role="2X0Ygz">
          <property role="TrG5h" value="leftType" />
          <node concept="2jxLKc" id="6WKYICH6fLk" role="1tU5fm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6OmV">
    <property role="TrG5h" value="typeof_TSTypeofExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6OmY" role="1YuTPh">
      <property role="TrG5h" value="typeofExpression" />
      <ref role="1YaFvo" to="mo8k:6WKYICGUW72" resolve="TSTypeofExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICH6OmZ" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICH6On0" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6On4" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6On6" role="1PaTwD">
            <property role="3oM_SC" value="typeof" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6On7" role="1PaTwD">
            <property role="3oM_SC" value="takes" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6On8" role="1PaTwD">
            <property role="3oM_SC" value="anything" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6On9" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Ona" role="1PaTwD">
            <property role="3oM_SC" value="yields" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onc" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Ond" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6One" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onf" role="1PaTwD">
            <property role="3oM_SC" value="runtime" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Ong" role="1PaTwD">
            <property role="3oM_SC" value="type." />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onh" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Oni" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onj" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onk" role="1PaTwD">
            <property role="3oM_SC" value="really" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onl" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6Onm" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6Onq" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6Ons" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Ont" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onu" role="1PaTwD">
            <property role="3oM_SC" value="seven" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onv" role="1PaTwD">
            <property role="3oM_SC" value="string" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onw" role="1PaTwD">
            <property role="3oM_SC" value="literals;" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onx" role="1PaTwD">
            <property role="3oM_SC" value="string" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Ony" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6Onz" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6On$" role="1PaTwD">
            <property role="3oM_SC" value="close" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6On_" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OnA" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OnB" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OnC" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OnD" role="1PaTwD">
            <property role="3oM_SC" value="say." />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="6WKYICH6OnE" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6OnH" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6OnJ" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH6OnL" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH6OmY" resolve="typeofExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6OnM" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH6OnO" role="mwGJk">
            <node concept="2Kh4GC" id="6WKYICH6OnQ" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="6WKYICH6OK8">
    <property role="TrG5h" value="typeof_TSVoidExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="6WKYICH6OKb" role="1YuTPh">
      <property role="TrG5h" value="voidExpression" />
      <ref role="1YaFvo" to="mo8k:6WKYICGUW9j" resolve="TSVoidExpression" />
    </node>
    <node concept="3clFbS" id="6WKYICH6OKc" role="18ibNy">
      <node concept="3SKdUt" id="6WKYICH6OKd" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6OKh" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6OKj" role="1PaTwD">
            <property role="3oM_SC" value="void" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKk" role="1PaTwD">
            <property role="3oM_SC" value="evaluates" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKl" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKm" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKn" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKo" role="1PaTwD">
            <property role="3oM_SC" value="throws" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKp" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKq" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKr" role="1PaTwD">
            <property role="3oM_SC" value="away," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKs" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKt" role="1PaTwD">
            <property role="3oM_SC" value="whatever" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKu" role="1PaTwD">
            <property role="3oM_SC" value="went" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKv" role="1PaTwD">
            <property role="3oM_SC" value="in," />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKw" role="1PaTwD">
            <property role="3oM_SC" value="undefined" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="6WKYICH6OKx" role="3cqZAp">
        <node concept="1PaTwC" id="6WKYICH6OK_" role="1aUNEU">
          <node concept="3oM_SD" id="6WKYICH6OKB" role="1PaTwD">
            <property role="3oM_SC" value="comes" />
          </node>
          <node concept="3oM_SD" id="6WKYICH6OKC" role="1PaTwD">
            <property role="3oM_SC" value="out." />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="6WKYICH6OKD" role="3cqZAp">
        <node concept="mw_s8" id="6WKYICH6OKG" role="1ZfhK$">
          <node concept="1Z2H0r" id="6WKYICH6OKI" role="mwGJk">
            <node concept="1YBJjd" id="6WKYICH6OKK" role="1Z2MuG">
              <ref role="1YBMHb" node="6WKYICH6OKb" resolve="voidExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6WKYICH6OKL" role="1ZfhKB">
          <node concept="2c44tf" id="6WKYICH6OKN" role="mwGJk">
            <node concept="3OJVyd" id="6WKYICH6OKP" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="5TZAFSUsCj3">
    <property role="TrG5h" value="typeof_TSNullLiteral" />
    <node concept="1YaCAy" id="5TZAFSUsCj6" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:5TZAFSUs1Ds" resolve="TSNullLiteral" />
    </node>
    <node concept="3clFbS" id="5TZAFSUsCj7" role="18ibNy">
      <node concept="1Z5TYs" id="5TZAFSUsCj8" role="3cqZAp">
        <node concept="mw_s8" id="5TZAFSUsCjb" role="1ZfhK$">
          <node concept="1Z2H0r" id="5TZAFSUsCjd" role="mwGJk">
            <node concept="1YBJjd" id="5TZAFSUsCjf" role="1Z2MuG">
              <ref role="1YBMHb" node="5TZAFSUsCj6" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5TZAFSUsCjg" role="1ZfhKB">
          <node concept="2c44tf" id="5TZAFSUsCji" role="mwGJk">
            <node concept="2UUy$f" id="5TZAFSUsCjk" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="5TZAFSUsCFJ">
    <property role="TrG5h" value="typeof_TSUndefinedLiteral" />
    <node concept="1YaCAy" id="5TZAFSUsCFM" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:5TZAFSUs1G7" resolve="TSUndefinedLiteral" />
    </node>
    <node concept="3clFbS" id="5TZAFSUsCFN" role="18ibNy">
      <node concept="1Z5TYs" id="5TZAFSUsCFO" role="3cqZAp">
        <node concept="mw_s8" id="5TZAFSUsCFR" role="1ZfhK$">
          <node concept="1Z2H0r" id="5TZAFSUsCFT" role="mwGJk">
            <node concept="1YBJjd" id="5TZAFSUsCFV" role="1Z2MuG">
              <ref role="1YBMHb" node="5TZAFSUsCFM" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5TZAFSUsCFW" role="1ZfhKB">
          <node concept="2c44tf" id="5TZAFSUsCFY" role="mwGJk">
            <node concept="3OJVyd" id="5TZAFSUsCG0" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="35pCF_" id="5TZAFSUtp_C">
    <property role="TrG5h" value="TSIType_subtypeOf_TSUnionType" />
    <node concept="1YaCAy" id="5TZAFSUtp_G" role="1YuTPh">
      <property role="TrG5h" value="sub" />
      <ref role="1YaFvo" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1YaCAy" id="5TZAFSUtp_H" role="35pZ6h">
      <property role="TrG5h" value="union" />
      <ref role="1YaFvo" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
    </node>
    <node concept="1xSnZT" id="5TZAFSUtp_I" role="1xSnZW">
      <node concept="3clFbS" id="5TZAFSUtp_K" role="2VODD2">
        <node concept="3SKdUt" id="5TZAFSUtp_L" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUtp_P" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUtp_R" role="1PaTwD">
              <property role="3oM_SC" value="BaseConcept" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_S" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_T" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_U" role="1PaTwD">
              <property role="3oM_SC" value="TSIType," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_V" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_W" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_X" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_Y" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtp_Z" role="1PaTwD">
              <property role="3oM_SC" value="makes" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA0" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA2" role="1PaTwD">
              <property role="3oM_SC" value="it:" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA3" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA4" role="1PaTwD">
              <property role="3oM_SC" value="looks" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpA5" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUtpA8" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUtpAc" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUtpAe" role="1PaTwD">
              <property role="3oM_SC" value="replacement" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAf" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAg" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAh" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAj" role="1PaTwD">
              <property role="3oM_SC" value="sub-type's" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAk" role="1PaTwD">
              <property role="3oM_SC" value="superconcept" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAl" role="1PaTwD">
              <property role="3oM_SC" value="chain" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAm" role="1PaTwD">
              <property role="3oM_SC" value="only," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAn" role="1PaTwD">
              <property role="3oM_SC" value="never" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAo" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUtpAp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUulTm" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUulTq" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUulTs" role="1PaTwD">
              <property role="3oM_SC" value="interfaces" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTt" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTu" role="1PaTwD">
              <property role="3oM_SC" value="implements," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTv" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTw" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTx" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTy" role="1PaTwD">
              <property role="3oM_SC" value="declared" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTz" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulT$" role="1PaTwD">
              <property role="3oM_SC" value="TSIType" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulT_" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTA" role="1PaTwD">
              <property role="3oM_SC" value="never" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTB" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTC" role="1PaTwD">
              <property role="3oM_SC" value="found" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTD" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTF" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUulTG" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUulTK" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUulTM" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTN" role="1PaTwD">
              <property role="3oM_SC" value="merely" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTO" role="1PaTwD">
              <property role="3oM_SC" value="implements" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTP" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTQ" role="1PaTwD">
              <property role="3oM_SC" value="jetbrains.mps.lang.typesystem's" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTR" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTS" role="1PaTwD">
              <property role="3oM_SC" value="JoinType" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTT" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTU" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulTV" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUulTW" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUulU0" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUulU2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU3" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU4" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU5" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU6" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU8" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU9" role="1PaTwD">
              <property role="3oM_SC" value="reason." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5TZAFSUulUa" role="3cqZAp">
          <node concept="3fqX7Q" id="5TZAFSUulUd" role="3clFbw">
            <node concept="2OqwBi" id="5TZAFSUulUf" role="3fr31v">
              <node concept="1YBJjd" id="5TZAFSUulUi" role="2Oq$k0">
                <ref role="1YBMHb" node="5TZAFSUtp_G" resolve="sub" />
              </node>
              <node concept="1mIQ4w" id="5TZAFSUulUj" role="2OqNvi">
                <node concept="chp4Y" id="5TZAFSUulUl" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5TZAFSUulUm" role="3clFbx">
            <node concept="3cpWs6" id="5TZAFSUulUn" role="3cqZAp">
              <node concept="3clFbT" id="5TZAFSUulUo" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUulUp" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUulUt" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUulUv" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUw" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUx" role="1PaTwD">
              <property role="3oM_SC" value="claims" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUy" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUz" role="1PaTwD">
              <property role="3oM_SC" value="inequation" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU$" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulU_" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUA" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUB" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUC" role="1PaTwD">
              <property role="3oM_SC" value="satisfy" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUD" role="1PaTwD">
              <property role="3oM_SC" value="it:" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUF" role="1PaTwD">
              <property role="3oM_SC" value="sub-type" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUH" role="1PaTwD">
              <property role="3oM_SC" value="union" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUI" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUJ" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5TZAFSUulUK" role="3cqZAp">
          <node concept="1PaTwC" id="5TZAFSUulUO" role="1aUNEU">
            <node concept="3oM_SD" id="5TZAFSUulUQ" role="1PaTwD">
              <property role="3oM_SC" value="cover" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUR" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUS" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUV" role="1PaTwD">
              <property role="3oM_SC" value="ordinary" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUW" role="1PaTwD">
              <property role="3oM_SC" value="machinery," />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUX" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUY" role="1PaTwD">
              <property role="3oM_SC" value="reports" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulUZ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulV0" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulV1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulV2" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulV3" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5TZAFSUulV4" role="1PaTwD">
              <property role="3oM_SC" value="is." />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5TZAFSUtpAt" role="3cqZAp">
          <node concept="2GrKxI" id="5TZAFSUtpAx" role="2Gsz3X">
            <property role="TrG5h" value="part" />
          </node>
          <node concept="2YIFZM" id="5TZAFSUtpAy" role="2GsD0m">
            <ref role="1Pybhc" to="tw2a:6WKYICH2zO1" resolve="TSTypeUtil" />
            <ref role="37wK5l" to="tw2a:6WKYICH2zSq" resolve="parts" />
            <node concept="1PxgMI" id="5TZAFSUulV5" role="37wK5m">
              <node concept="1YBJjd" id="5TZAFSUulV8" role="1m5AlR">
                <ref role="1YBMHb" node="5TZAFSUtp_G" resolve="sub" />
              </node>
              <node concept="chp4Y" id="5TZAFSUulV9" role="3oSUPX">
                <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5TZAFSUtpA$" role="2LFqv$">
            <node concept="3cpWs8" id="5TZAFSUtpA_" role="3cqZAp">
              <node concept="3cpWsn" id="5TZAFSUtpAC" role="3cpWs9">
                <property role="TrG5h" value="covered" />
                <node concept="10P_77" id="5TZAFSUtpAE" role="1tU5fm" />
                <node concept="3clFbT" id="5TZAFSUtpAF" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="5TZAFSUtpAG" role="3cqZAp">
              <node concept="2GrKxI" id="5TZAFSUtpAK" role="2Gsz3X">
                <property role="TrG5h" value="member" />
              </node>
              <node concept="2OqwBi" id="5TZAFSUtpAL" role="2GsD0m">
                <node concept="1YBJjd" id="5TZAFSUtpAO" role="2Oq$k0">
                  <ref role="1YBMHb" node="5TZAFSUtp_H" resolve="union" />
                </node>
                <node concept="3Tsc0h" id="5TZAFSUtpAP" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:6WKYICH1adp" resolve="types" />
                </node>
              </node>
              <node concept="3clFbS" id="5TZAFSUtpAQ" role="2LFqv$">
                <node concept="3clFbJ" id="5TZAFSUtpAR" role="3cqZAp">
                  <node concept="3JuTUA" id="5TZAFSUtpAU" role="3clFbw">
                    <node concept="2GrUjf" id="5TZAFSUtpAX" role="3JuY14">
                      <ref role="2Gs0qQ" node="5TZAFSUtpAx" resolve="part" />
                    </node>
                    <node concept="2GrUjf" id="5TZAFSUtpAY" role="3JuZjQ">
                      <ref role="2Gs0qQ" node="5TZAFSUtpAK" resolve="member" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5TZAFSUtpAZ" role="3clFbx">
                    <node concept="3clFbF" id="5TZAFSUtpB0" role="3cqZAp">
                      <node concept="37vLTI" id="5TZAFSUtpB2" role="3clFbG">
                        <node concept="37vLTw" id="5TZAFSUtpB5" role="37vLTJ">
                          <ref role="3cqZAo" node="5TZAFSUtpAC" resolve="covered" />
                        </node>
                        <node concept="3clFbT" id="5TZAFSUtpB6" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5TZAFSUtpB7" role="3cqZAp">
              <node concept="3fqX7Q" id="5TZAFSUtpBa" role="3clFbw">
                <node concept="37vLTw" id="5TZAFSUtpBc" role="3fr31v">
                  <ref role="3cqZAo" node="5TZAFSUtpAC" resolve="covered" />
                </node>
              </node>
              <node concept="3clFbS" id="5TZAFSUtpBd" role="3clFbx">
                <node concept="3cpWs6" id="5TZAFSUtpBe" role="3cqZAp">
                  <node concept="3clFbT" id="5TZAFSUtpBf" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5TZAFSUtpBg" role="3cqZAp">
          <node concept="3clFbT" id="5TZAFSUtpBh" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5TZAFSUtpBi" role="2sgrp5">
      <node concept="3SKdUt" id="5TZAFSUtpBj" role="3cqZAp">
        <node concept="1PaTwC" id="5TZAFSUtpBn" role="1aUNEU">
          <node concept="3oM_SD" id="5TZAFSUtpBp" role="1PaTwD">
            <property role="3oM_SC" value="Every" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBq" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBr" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBs" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBt" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBu" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBv" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBw" role="1PaTwD">
            <property role="3oM_SC" value="subtype" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBx" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBy" role="1PaTwD">
            <property role="3oM_SC" value="it," />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBz" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpB$" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpB_" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBA" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBB" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBC" role="1PaTwD">
            <property role="3oM_SC" value="subtype" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBD" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBE" role="1PaTwD">
            <property role="3oM_SC" value="another" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBF" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBG" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5TZAFSUtpBH" role="3cqZAp">
        <node concept="1PaTwC" id="5TZAFSUtpBL" role="1aUNEU">
          <node concept="3oM_SD" id="5TZAFSUtpBN" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBO" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBP" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBQ" role="1PaTwD">
            <property role="3oM_SC" value="members" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBR" role="1PaTwD">
            <property role="3oM_SC" value="is." />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBS" role="1PaTwD">
            <property role="3oM_SC" value="Both" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBT" role="1PaTwD">
            <property role="3oM_SC" value="cases" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBU" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBV" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBW" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBX" role="1PaTwD">
            <property role="3oM_SC" value="loop," />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBY" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpBZ" role="1PaTwD">
            <property role="3oM_SC" value="parts()" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpC0" role="1PaTwD">
            <property role="3oM_SC" value="hands" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpC1" role="1PaTwD">
            <property role="3oM_SC" value="back" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpC2" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5TZAFSUtpC3" role="3cqZAp">
        <node concept="1PaTwC" id="5TZAFSUtpC7" role="1aUNEU">
          <node concept="3oM_SD" id="5TZAFSUtpC9" role="1PaTwD">
            <property role="3oM_SC" value="one-element" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCa" role="1PaTwD">
            <property role="3oM_SC" value="sequence" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCb" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCc" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCd" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCe" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCf" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCg" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCh" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5TZAFSUtpCi" role="1PaTwD">
            <property role="3oM_SC" value="union." />
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="5TZAFSUtpCj" role="3cqZAp">
        <node concept="2GrKxI" id="5TZAFSUtpCn" role="2Gsz3X">
          <property role="TrG5h" value="part" />
        </node>
        <node concept="2YIFZM" id="5TZAFSUtpCo" role="2GsD0m">
          <ref role="1Pybhc" to="tw2a:6WKYICH2zO1" resolve="TSTypeUtil" />
          <ref role="37wK5l" to="tw2a:6WKYICH2zSq" resolve="parts" />
          <node concept="1PxgMI" id="5TZAFSUulVa" role="37wK5m">
            <node concept="1YBJjd" id="5TZAFSUulVd" role="1m5AlR">
              <ref role="1YBMHb" node="5TZAFSUtp_G" resolve="sub" />
            </node>
            <node concept="chp4Y" id="5TZAFSUulVe" role="3oSUPX">
              <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5TZAFSUtpCq" role="2LFqv$">
          <node concept="3cpWs8" id="5TZAFSUtpCr" role="3cqZAp">
            <node concept="3cpWsn" id="5TZAFSUtpCu" role="3cpWs9">
              <property role="TrG5h" value="matched" />
              <node concept="10P_77" id="5TZAFSUtpCw" role="1tU5fm" />
              <node concept="3clFbT" id="5TZAFSUtpCx" role="33vP2m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="5TZAFSUtpCy" role="3cqZAp">
            <node concept="2GrKxI" id="5TZAFSUtpCA" role="2Gsz3X">
              <property role="TrG5h" value="member" />
            </node>
            <node concept="2OqwBi" id="5TZAFSUtpCB" role="2GsD0m">
              <node concept="1YBJjd" id="5TZAFSUtpCE" role="2Oq$k0">
                <ref role="1YBMHb" node="5TZAFSUtp_H" resolve="union" />
              </node>
              <node concept="3Tsc0h" id="5TZAFSUtpCF" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:6WKYICH1adp" resolve="types" />
              </node>
            </node>
            <node concept="3clFbS" id="5TZAFSUtpCG" role="2LFqv$">
              <node concept="3clFbJ" id="5TZAFSUtpCH" role="3cqZAp">
                <node concept="1Wc70l" id="5TZAFSUtpCK" role="3clFbw">
                  <node concept="3fqX7Q" id="5TZAFSUtpCN" role="3uHU7B">
                    <node concept="37vLTw" id="5TZAFSUtpCP" role="3fr31v">
                      <ref role="3cqZAo" node="5TZAFSUtpCu" resolve="matched" />
                    </node>
                  </node>
                  <node concept="3JuTUA" id="5TZAFSUtpCQ" role="3uHU7w">
                    <node concept="2GrUjf" id="5TZAFSUtpCT" role="3JuY14">
                      <ref role="2Gs0qQ" node="5TZAFSUtpCn" resolve="part" />
                    </node>
                    <node concept="2GrUjf" id="5TZAFSUtpCU" role="3JuZjQ">
                      <ref role="2Gs0qQ" node="5TZAFSUtpCA" resolve="member" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5TZAFSUtpCV" role="3clFbx">
                  <node concept="3clFbF" id="5TZAFSUtpCW" role="3cqZAp">
                    <node concept="37vLTI" id="5TZAFSUtpCY" role="3clFbG">
                      <node concept="37vLTw" id="5TZAFSUtpD1" role="37vLTJ">
                        <ref role="3cqZAo" node="5TZAFSUtpCu" resolve="matched" />
                      </node>
                      <node concept="3clFbT" id="5TZAFSUtpD2" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="1ZobV4" id="5TZAFSUtpD3" role="3cqZAp">
                    <node concept="mw_s8" id="5TZAFSUtpD6" role="1ZfhK$">
                      <node concept="2GrUjf" id="5TZAFSUtpD8" role="mwGJk">
                        <ref role="2Gs0qQ" node="5TZAFSUtpCn" resolve="part" />
                      </node>
                    </node>
                    <node concept="mw_s8" id="5TZAFSUtpD9" role="1ZfhKB">
                      <node concept="2GrUjf" id="5TZAFSUtpDb" role="mwGJk">
                        <ref role="2Gs0qQ" node="5TZAFSUtpCA" resolve="member" />
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
  </node>
  <node concept="18kY7G" id="30$vFINEfuk">
    <property role="TrG5h" value="check_TSUnionType" />
    <node concept="1YaCAy" id="30$vFINEfun" role="1YuTPh">
      <property role="TrG5h" value="union" />
      <ref role="1YaFvo" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
    </node>
    <node concept="3clFbS" id="30$vFINEfuo" role="18ibNy">
      <node concept="3SKdUt" id="30$vFINEfup" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfut" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfuv" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuw" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfux" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuy" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuz" role="1PaTwD">
            <property role="3oM_SC" value="reads" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfu$" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfu_" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuA" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuB" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuC" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuD" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuE" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuF" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuG" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuH" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuI" role="1PaTwD">
            <property role="3oM_SC" value="compares" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuJ" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuK" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuL" role="1PaTwD">
            <property role="3oM_SC" value="trees," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFINEfuM" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfuQ" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfuS" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuU" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuV" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuW" role="1PaTwD">
            <property role="3oM_SC" value="different" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuX" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuY" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfuZ" role="1PaTwD">
            <property role="3oM_SC" value="generate" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv1" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv2" role="1PaTwD">
            <property role="3oM_SC" value="text," />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv3" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv4" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv5" role="1PaTwD">
            <property role="3oM_SC" value="downstream" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv6" role="1PaTwD">
            <property role="3oM_SC" value="would" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFINEfv7" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfvb" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfvd" role="1PaTwD">
            <property role="3oM_SC" value="ever" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfve" role="1PaTwD">
            <property role="3oM_SC" value="say" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvf" role="1PaTwD">
            <property role="3oM_SC" value="so." />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvg" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvh" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvi" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvj" role="1PaTwD">
            <property role="3oM_SC" value="none" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvk" role="1PaTwD">
            <property role="3oM_SC" value="generates" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvl" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvm" role="1PaTwD">
            <property role="3oM_SC" value="empty" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvn" role="1PaTwD">
            <property role="3oM_SC" value="annotation," />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvo" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvp" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvq" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvr" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvs" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFINEfvt" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfvx" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfvz" role="1PaTwD">
            <property role="3oM_SC" value="all." />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv$" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfv_" role="1PaTwD">
            <property role="3oM_SC" value="editor" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvA" role="1PaTwD">
            <property role="3oM_SC" value="cannot" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvB" role="1PaTwD">
            <property role="3oM_SC" value="produce" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvC" role="1PaTwD">
            <property role="3oM_SC" value="either" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvD" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvE" role="1PaTwD">
            <property role="3oM_SC" value="more" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvF" role="1PaTwD">
            <property role="3oM_SC" value="(deleting" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvH" role="1PaTwD">
            <property role="3oM_SC" value="second-to-last" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvI" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvJ" role="1PaTwD">
            <property role="3oM_SC" value="takes" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFINEfvK" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfvO" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfvQ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvR" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvS" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvT" role="1PaTwD">
            <property role="3oM_SC" value="it)," />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvU" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvV" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvW" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvX" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvY" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfvZ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw0" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw1" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw2" role="1PaTwD">
            <property role="3oM_SC" value="in:" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw3" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw4" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw5" role="1PaTwD">
            <property role="3oM_SC" value="reducing" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfw6" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFINEfw7" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFINEfwb" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFINEfwd" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript," />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwe" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwf" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwg" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwh" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwi" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwj" role="1PaTwD">
            <property role="3oM_SC" value="matters" />
          </node>
          <node concept="3oM_SD" id="30$vFINEfwk" role="1PaTwD">
            <property role="3oM_SC" value="most." />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="30$vFINEfwl" role="3cqZAp">
        <node concept="3eOVzh" id="30$vFINEfwo" role="3clFbw">
          <node concept="2OqwBi" id="30$vFINEfwr" role="3uHU7B">
            <node concept="2OqwBi" id="30$vFINEfwu" role="2Oq$k0">
              <node concept="1YBJjd" id="30$vFINEfwx" role="2Oq$k0">
                <ref role="1YBMHb" node="30$vFINEfun" resolve="union" />
              </node>
              <node concept="3Tsc0h" id="30$vFINEfwy" role="2OqNvi">
                <ref role="3TtcxE" to="mo8k:6WKYICH1adp" resolve="types" />
              </node>
            </node>
            <node concept="34oBXx" id="30$vFINEfwz" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="30$vFINEfw$" role="3uHU7w">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
        <node concept="3clFbS" id="30$vFINEfw_" role="3clFbx">
          <node concept="2MkqsV" id="30$vFINEfwA" role="3cqZAp">
            <node concept="Xl_RD" id="30$vFINEfwD" role="2MkJ7o">
              <property role="Xl_RC" value="A union type needs at least two members" />
            </node>
            <node concept="1YBJjd" id="30$vFINEfwE" role="1urrMF">
              <ref role="1YBMHb" node="30$vFINEfun" resolve="union" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1dYSrZvyq6J">
    <property role="TrG5h" value="typeof_TSAssignmentExpression" />
    <property role="18ip37" value="true" />
    <node concept="1YaCAy" id="1dYSrZvyq6M" role="1YuTPh">
      <property role="TrG5h" value="assignment" />
      <ref role="1YaFvo" to="mo8k:1dYSrZvw$Fg" resolve="TSAssignmentExpression" />
    </node>
    <node concept="3clFbS" id="1dYSrZvyq6N" role="18ibNy">
      <node concept="3SKdUt" id="1dYSrZvyq6O" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyq6S" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyq6U" role="1PaTwD">
            <property role="3oM_SC" value="An" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq6V" role="1PaTwD">
            <property role="3oM_SC" value="assignment" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq6W" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq6X" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq6Y" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq6Z" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq70" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq71" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq72" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq73" role="1PaTwD">
            <property role="3oM_SC" value="come" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq74" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq75" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq76" role="1PaTwD">
            <property role="3oM_SC" value="overload" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq77" role="1PaTwD">
            <property role="3oM_SC" value="table," />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq78" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq79" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="1dYSrZvyq7a" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyq7e" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyq7g" role="1PaTwD">
            <property role="3oM_SC" value="overrides" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7h" role="1PaTwD">
            <property role="3oM_SC" value="typeof_TSBinaryOperation" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7i" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7j" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7k" role="1PaTwD">
            <property role="3oM_SC" value="adding" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7l" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7m" role="1PaTwD">
            <property role="3oM_SC" value="row:" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7n" role="1PaTwD">
            <property role="3oM_SC" value="x" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7o" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7p" role="1PaTwD">
            <property role="3oM_SC" value="v" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7q" role="1PaTwD">
            <property role="3oM_SC" value="evaluates" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7r" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7s" role="1PaTwD">
            <property role="3oM_SC" value="v," />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7t" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="1dYSrZvyq7u" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyq7y" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyq7$" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7_" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7A" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7B" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7C" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7D" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7E" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7F" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7G" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7H" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7I" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7J" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyq7K" role="1PaTwD">
            <property role="3oM_SC" value="variable." />
          </node>
        </node>
      </node>
      <node concept="1ZoVOM" id="1dYSrZvyq7L" role="3cqZAp">
        <node concept="mw_s8" id="1dYSrZvyq7O" role="1ZfhK$">
          <node concept="1Z2H0r" id="1dYSrZvyq7Q" role="mwGJk">
            <node concept="2OqwBi" id="1dYSrZvyq7S" role="1Z2MuG">
              <node concept="1YBJjd" id="1dYSrZvyq7V" role="2Oq$k0">
                <ref role="1YBMHb" node="1dYSrZvyq6M" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="1dYSrZvyq7W" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1dYSrZvyq7X" role="1ZfhKB">
          <node concept="1Z2H0r" id="1dYSrZvyq7Z" role="mwGJk">
            <node concept="2OqwBi" id="1dYSrZvyq81" role="1Z2MuG">
              <node concept="1YBJjd" id="1dYSrZvyq84" role="2Oq$k0">
                <ref role="1YBMHb" node="1dYSrZvyq6M" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="1dYSrZvyq85" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1dYSrZvyq86" role="1ZmcU8">
          <node concept="1YBJjd" id="1dYSrZvyq89" role="2Oq$k0">
            <ref role="1YBMHb" node="1dYSrZvyq6M" resolve="assignment" />
          </node>
          <node concept="3TrEf2" id="1dYSrZvyq8a" role="2OqNvi">
            <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
          </node>
        </node>
        <node concept="Xl_RD" id="1dYSrZvyq8b" role="3o8Qv2">
          <property role="Xl_RC" value="The assigned expression does not have the type of the variable" />
        </node>
      </node>
      <node concept="1Z5TYs" id="1dYSrZvyq8c" role="3cqZAp">
        <node concept="mw_s8" id="1dYSrZvyq8f" role="1ZfhK$">
          <node concept="1Z2H0r" id="1dYSrZvyq8h" role="mwGJk">
            <node concept="1YBJjd" id="1dYSrZvyq8j" role="1Z2MuG">
              <ref role="1YBMHb" node="1dYSrZvyq6M" resolve="assignment" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1dYSrZvyq8k" role="1ZfhKB">
          <node concept="1Z2H0r" id="1dYSrZvyq8m" role="mwGJk">
            <node concept="2OqwBi" id="1dYSrZvyq8o" role="1Z2MuG">
              <node concept="1YBJjd" id="1dYSrZvyq8r" role="2Oq$k0">
                <ref role="1YBMHb" node="1dYSrZvyq6M" resolve="assignment" />
              </node>
              <node concept="3TrEf2" id="1dYSrZvyq8s" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1dYSrZvyrRs">
    <property role="TrG5h" value="check_TSAssignmentExpression" />
    <node concept="1YaCAy" id="1dYSrZvyrRv" role="1YuTPh">
      <property role="TrG5h" value="assignment" />
      <ref role="1YaFvo" to="mo8k:1dYSrZvw$Fg" resolve="TSAssignmentExpression" />
    </node>
    <node concept="3clFbS" id="1dYSrZvyrRw" role="18ibNy">
      <node concept="3SKdUt" id="1dYSrZvyrRx" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyrR_" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyrRB" role="1PaTwD">
            <property role="3oM_SC" value="Now" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRC" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRD" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRE" role="1PaTwD">
            <property role="3oM_SC" value="assignment" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRF" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRG" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRH" role="1PaTwD">
            <property role="3oM_SC" value="operator," />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRI" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRJ" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRK" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRL" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRM" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRN" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRP" role="1PaTwD">
            <property role="3oM_SC" value="structure" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="1dYSrZvyrRQ" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyrRU" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyrRW" role="1PaTwD">
            <property role="3oM_SC" value="allows," />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRX" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRY" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrRZ" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS0" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS1" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS2" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS3" role="1PaTwD">
            <property role="3oM_SC" value="link" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS4" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS5" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS6" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS7" role="1PaTwD">
            <property role="3oM_SC" value="check:" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrS9" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSa" role="1PaTwD">
            <property role="3oM_SC" value="assignable" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSb" role="1PaTwD">
            <property role="3oM_SC" value="thing" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSc" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSd" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="1dYSrZvyrSe" role="3cqZAp">
        <node concept="1PaTwC" id="1dYSrZvyrSi" role="1aUNEU">
          <node concept="3oM_SD" id="1dYSrZvyrSk" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSl" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSm" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSn" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSo" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSp" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSq" role="1PaTwD">
            <property role="3oM_SC" value="declaration." />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSr" role="1PaTwD">
            <property role="3oM_SC" value="Property" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSs" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSt" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSu" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSv" role="1PaTwD">
            <property role="3oM_SC" value="make" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSw" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSx" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSy" role="1PaTwD">
            <property role="3oM_SC" value="real" />
          </node>
          <node concept="3oM_SD" id="1dYSrZvyrSz" role="1PaTwD">
            <property role="3oM_SC" value="question." />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="1dYSrZvyrS$" role="3cqZAp">
        <node concept="3cpWsn" id="1dYSrZvyrSB" role="3cpWs9">
          <property role="TrG5h" value="target" />
          <node concept="3Tqbb2" id="1dYSrZvyrSD" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
          </node>
          <node concept="2OqwBi" id="1dYSrZvyrSE" role="33vP2m">
            <node concept="1YBJjd" id="1dYSrZvyrSH" role="2Oq$k0">
              <ref role="1YBMHb" node="1dYSrZvyrRv" resolve="assignment" />
            </node>
            <node concept="3TrEf2" id="1dYSrZvyrSI" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1dYSrZvyrSJ" role="3cqZAp">
        <node concept="3fqX7Q" id="1dYSrZvyrSM" role="3clFbw">
          <node concept="1eOMI4" id="1dYSrZvyrSO" role="3fr31v">
            <node concept="2OqwBi" id="1dYSrZvyrSQ" role="1eOMHV">
              <node concept="37vLTw" id="1dYSrZvyrST" role="2Oq$k0">
                <ref role="3cqZAo" node="1dYSrZvyrSB" resolve="target" />
              </node>
              <node concept="1mIQ4w" id="1dYSrZvyrSU" role="2OqNvi">
                <node concept="chp4Y" id="1dYSrZvyrSW" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1dYSrZvyrSX" role="3clFbx">
          <node concept="2MkqsV" id="1dYSrZvyrSY" role="3cqZAp">
            <node concept="Xl_RD" id="1dYSrZvyrT1" role="2MkJ7o">
              <property role="Xl_RC" value="The left-hand side of an assignment must be a variable" />
            </node>
            <node concept="37vLTw" id="1dYSrZvyrT2" role="1urrMF">
              <ref role="3cqZAo" node="1dYSrZvyrSB" resolve="target" />
            </node>
          </node>
          <node concept="3cpWs6" id="1dYSrZvyrT3" role="3cqZAp" />
        </node>
      </node>
      <node concept="3cpWs8" id="1dYSrZvyrT4" role="3cqZAp">
        <node concept="3cpWsn" id="1dYSrZvyrT7" role="3cpWs9">
          <property role="TrG5h" value="declaration" />
          <node concept="3Tqbb2" id="1dYSrZvyrT9" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:6WKYICFF5f7" resolve="TSIDeclaration" />
          </node>
          <node concept="2OqwBi" id="1dYSrZvyrTa" role="33vP2m">
            <node concept="1eOMI4" id="1dYSrZvyrTd" role="2Oq$k0">
              <node concept="1PxgMI" id="1dYSrZvyrTf" role="1eOMHV">
                <node concept="37vLTw" id="1dYSrZvyrTi" role="1m5AlR">
                  <ref role="3cqZAo" node="1dYSrZvyrSB" resolve="target" />
                </node>
                <node concept="chp4Y" id="1dYSrZvyrTj" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:1UjCfdjUYX7" resolve="TSIdentifier" />
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="1dYSrZvyrTk" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:6WKYICFF5zd" resolve="declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="1dYSrZvyrTl" role="3cqZAp">
        <node concept="1Wc70l" id="1dYSrZvyrTo" role="3clFbw">
          <node concept="3y3z36" id="1dYSrZvyrTr" role="3uHU7B">
            <node concept="37vLTw" id="1dYSrZvyrTu" role="3uHU7B">
              <ref role="3cqZAo" node="1dYSrZvyrT7" resolve="declaration" />
            </node>
            <node concept="10Nm6u" id="1dYSrZvyrTv" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="1dYSrZvyrTw" role="3uHU7w">
            <node concept="37vLTw" id="1dYSrZvyrTz" role="2Oq$k0">
              <ref role="3cqZAo" node="1dYSrZvyrT7" resolve="declaration" />
            </node>
            <node concept="1mIQ4w" id="1dYSrZvyrT$" role="2OqNvi">
              <node concept="chp4Y" id="1dYSrZvyrTA" role="cj9EA">
                <ref role="cht4Q" to="mo8k:6WKYICFF5kL" resolve="TSConstDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1dYSrZvyrTB" role="3clFbx">
          <node concept="2MkqsV" id="1dYSrZvyrTC" role="3cqZAp">
            <node concept="Xl_RD" id="1dYSrZvyrTF" role="2MkJ7o">
              <property role="Xl_RC" value="Cannot assign to a const" />
            </node>
            <node concept="37vLTw" id="1dYSrZvyrTG" role="1urrMF">
              <ref role="3cqZAo" node="1dYSrZvyrSB" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="465JEkTd6sr">
    <property role="TrG5h" value="check_TSStringLiteral" />
    <node concept="1YaCAy" id="465JEkTd6su" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="mo8k:1TCdlWHrFuI" resolve="TSStringLiteral" />
    </node>
    <node concept="3clFbS" id="465JEkTd6sv" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTd6sw" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTd6s$" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTd6sA" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sB" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sC" role="1PaTwD">
            <property role="3oM_SC" value="constraint" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sD" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sE" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sF" role="1PaTwD">
            <property role="3oM_SC" value="admit" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sG" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sH" role="1PaTwD">
            <property role="3oM_SC" value="trailing" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sI" role="1PaTwD">
            <property role="3oM_SC" value="backslash," />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sJ" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sK" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sL" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sM" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sN" role="1PaTwD">
            <property role="3oM_SC" value="half" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sO" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTd6sP" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTd6sT" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTd6sV" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sW" role="1PaTwD">
            <property role="3oM_SC" value="escape" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sX" role="1PaTwD">
            <property role="3oM_SC" value="looks" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sY" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6sZ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t1" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t2" role="1PaTwD">
            <property role="3oM_SC" value="keystroke" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t3" role="1PaTwD">
            <property role="3oM_SC" value="completes" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t4" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t5" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t6" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t7" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t8" role="1PaTwD">
            <property role="3oM_SC" value="ones" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t9" role="1PaTwD">
            <property role="3oM_SC" value="nobody" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTd6ta" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTd6te" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTd6tg" role="1PaTwD">
            <property role="3oM_SC" value="completed" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6th" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6ti" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tj" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tk" role="1PaTwD">
            <property role="3oM_SC" value="division" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tl" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tm" role="1PaTwD">
            <property role="3oM_SC" value="labour" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tn" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6to" role="1PaTwD">
            <property role="3oM_SC" value="TSNumberValue" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tp" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tq" role="1PaTwD">
            <property role="3oM_SC" value="check_TSNumberLiteral," />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tr" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTd6ts" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTd6tw" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTd6ty" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tz" role="1PaTwD">
            <property role="3oM_SC" value="datatype" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t$" role="1PaTwD">
            <property role="3oM_SC" value="admits" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6t_" role="1PaTwD">
            <property role="3oM_SC" value="`1e`" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tA" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tB" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tC" role="1PaTwD">
            <property role="3oM_SC" value="`1e5`" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tD" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tE" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tF" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tG" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="465JEkTd6tH" role="1PaTwD">
            <property role="3oM_SC" value="all." />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTd6tI" role="3cqZAp">
        <node concept="3fqX7Q" id="465JEkTd6tL" role="3clFbw">
          <node concept="1eOMI4" id="465JEkTd6tN" role="3fr31v">
            <node concept="2YIFZM" id="465JEkTd6tP" role="1eOMHV">
              <ref role="1Pybhc" to="tw2a:1dYSrZvFRsW" resolve="TSStringUtil" />
              <ref role="37wK5l" to="tw2a:1dYSrZvFR_D" resolve="isValidEscaping" />
              <node concept="2OqwBi" id="465JEkTd6tQ" role="37wK5m">
                <node concept="1YBJjd" id="465JEkTd6tT" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTd6su" resolve="literal" />
                </node>
                <node concept="3TrcHB" id="465JEkTd6tU" role="2OqNvi">
                  <ref role="3TsBF5" to="mo8k:1TCdlWHrFuK" resolve="escapedValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTd6tV" role="3clFbx">
          <node concept="2MkqsV" id="465JEkTd6tW" role="3cqZAp">
            <node concept="Xl_RD" id="465JEkTd6tZ" role="2MkJ7o">
              <property role="Xl_RC" value="The string literal ends in an unfinished escape sequence" />
            </node>
            <node concept="1YBJjd" id="465JEkTd6u0" role="1urrMF">
              <ref role="1YBMHb" node="465JEkTd6su" resolve="literal" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="465JEkTuevN">
    <property role="TrG5h" value="typeof_TSParameter" />
    <node concept="1YaCAy" id="465JEkTuevQ" role="1YuTPh">
      <property role="TrG5h" value="parameter" />
      <ref role="1YaFvo" to="mo8k:465JEkTkTYf" resolve="TSParameter" />
    </node>
    <node concept="3clFbS" id="465JEkTuevR" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTuevS" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTuevW" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTuevY" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="465JEkTuevZ" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew0" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew2" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew3" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew4" role="1PaTwD">
            <property role="3oM_SC" value="declares," />
          </node>
          <node concept="3oM_SD" id="465JEkTuew5" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew6" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew7" role="1PaTwD">
            <property role="3oM_SC" value="infers" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew8" role="1PaTwD">
            <property role="3oM_SC" value="one:" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew9" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewa" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewb" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewc" role="1PaTwD">
            <property role="3oM_SC" value="`any`" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewd" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewe" role="1PaTwD">
            <property role="3oM_SC" value="fall" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTuewf" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTuewj" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTuewl" role="1PaTwD">
            <property role="3oM_SC" value="back" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewm" role="1PaTwD">
            <property role="3oM_SC" value="on," />
          </node>
          <node concept="3oM_SD" id="465JEkTuewn" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewo" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewp" role="1PaTwD">
            <property role="3oM_SC" value="why" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewr" role="1PaTwD">
            <property role="3oM_SC" value="annotation" />
          </node>
          <node concept="3oM_SD" id="465JEkTuews" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewt" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewu" role="1PaTwD">
            <property role="3oM_SC" value="mandatory" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewv" role="1PaTwD">
            <property role="3oM_SC" value="child" />
          </node>
          <node concept="3oM_SD" id="465JEkTueww" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewx" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewy" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewz" role="1PaTwD">
            <property role="3oM_SC" value="optional" />
          </node>
          <node concept="3oM_SD" id="465JEkTuew$" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTuew_" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTuewD" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTuewF" role="1PaTwD">
            <property role="3oM_SC" value="Everything" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewG" role="1PaTwD">
            <property role="3oM_SC" value="else" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewH" role="1PaTwD">
            <property role="3oM_SC" value="follows" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewI" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewJ" role="1PaTwD">
            <property role="3oM_SC" value="TSIdentifier" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewK" role="1PaTwD">
            <property role="3oM_SC" value="already" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewL" role="1PaTwD">
            <property role="3oM_SC" value="being" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewM" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewN" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewO" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="465JEkTuewP" role="1PaTwD">
            <property role="3oM_SC" value="declaration." />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="465JEkTuewQ" role="3cqZAp">
        <node concept="mw_s8" id="465JEkTuewT" role="1ZfhK$">
          <node concept="1Z2H0r" id="465JEkTuewV" role="mwGJk">
            <node concept="1YBJjd" id="465JEkTuewX" role="1Z2MuG">
              <ref role="1YBMHb" node="465JEkTuevQ" resolve="parameter" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="465JEkTuewY" role="1ZfhKB">
          <node concept="2OqwBi" id="465JEkTuex0" role="mwGJk">
            <node concept="2OqwBi" id="465JEkTuex3" role="2Oq$k0">
              <node concept="1YBJjd" id="465JEkTuex6" role="2Oq$k0">
                <ref role="1YBMHb" node="465JEkTuevQ" resolve="parameter" />
              </node>
              <node concept="3TrEf2" id="465JEkTuex7" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkTYh" resolve="declaredType" />
              </node>
            </node>
            <node concept="1$rogu" id="465JEkTuex8" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="465JEkTug6L">
    <property role="TrG5h" value="typeof_TSFunctionDeclaration" />
    <node concept="1YaCAy" id="465JEkTug6O" role="1YuTPh">
      <property role="TrG5h" value="function" />
      <ref role="1YaFvo" to="mo8k:465JEkTkU7b" resolve="TSFunctionDeclaration" />
    </node>
    <node concept="3clFbS" id="465JEkTug6P" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTug6Q" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug6U" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug6W" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="465JEkTug6X" role="1PaTwD">
            <property role="3oM_SC" value="function's" />
          </node>
          <node concept="3oM_SD" id="465JEkTug6Y" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTug6Z" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug70" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="465JEkTug71" role="1PaTwD">
            <property role="3oM_SC" value="signature:" />
          </node>
          <node concept="3oM_SD" id="465JEkTug72" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug73" role="1PaTwD">
            <property role="3oM_SC" value="declared" />
          </node>
          <node concept="3oM_SD" id="465JEkTug74" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="465JEkTug75" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="465JEkTug76" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTug77" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug78" role="1PaTwD">
            <property role="3oM_SC" value="declared" />
          </node>
          <node concept="3oM_SD" id="465JEkTug79" role="1PaTwD">
            <property role="3oM_SC" value="return" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug7a" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug7e" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug7g" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="465JEkTug7h" role="1PaTwD">
            <property role="3oM_SC" value="built" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7i" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7j" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7k" role="1PaTwD">
            <property role="3oM_SC" value="TSFunctionType." />
          </node>
          <node concept="3oM_SD" id="465JEkTug7l" role="1PaTwD">
            <property role="3oM_SC" value="That" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7m" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7n" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7o" role="1PaTwD">
            <property role="3oM_SC" value="makes" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7p" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7q" role="1PaTwD">
            <property role="3oM_SC" value="identifier" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7r" role="1PaTwD">
            <property role="3oM_SC" value="pointing" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7s" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7t" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7u" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug7v" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug7z" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug7_" role="1PaTwD">
            <property role="3oM_SC" value="callable," />
          </node>
          <node concept="3oM_SD" id="465JEkTug7A" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7B" role="1PaTwD">
            <property role="3oM_SC" value="typeof_TSIdentifier" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7C" role="1PaTwD">
            <property role="3oM_SC" value="already" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7D" role="1PaTwD">
            <property role="3oM_SC" value="hands" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7E" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7F" role="1PaTwD">
            <property role="3oM_SC" value="whatever" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7G" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7H" role="1PaTwD">
            <property role="3oM_SC" value="declaration" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7I" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7J" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7K" role="1PaTwD">
            <property role="3oM_SC" value="as." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug7L" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug7P" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug7R" role="1PaTwD">
            <property role="3oM_SC" value="An" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7S" role="1PaTwD">
            <property role="3oM_SC" value="undeclared" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7T" role="1PaTwD">
            <property role="3oM_SC" value="return" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7U" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7V" role="1PaTwD">
            <property role="3oM_SC" value="means" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7W" role="1PaTwD">
            <property role="3oM_SC" value="void" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7X" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7Y" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="465JEkTug7Z" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="465JEkTug80" role="1PaTwD">
            <property role="3oM_SC" value="inferred" />
          </node>
          <node concept="3oM_SD" id="465JEkTug81" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
          <node concept="3oM_SD" id="465JEkTug82" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript" />
          </node>
          <node concept="3oM_SD" id="465JEkTug83" role="1PaTwD">
            <property role="3oM_SC" value="would" />
          </node>
          <node concept="3oM_SD" id="465JEkTug84" role="1PaTwD">
            <property role="3oM_SC" value="infer," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug85" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug89" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug8b" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8c" role="1PaTwD">
            <property role="3oM_SC" value="inferring" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8d" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8e" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8f" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8g" role="1PaTwD">
            <property role="3oM_SC" value="several" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8h" role="1PaTwD">
            <property role="3oM_SC" value="returns" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8i" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8j" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8k" role="1PaTwD">
            <property role="3oM_SC" value="something" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8l" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8m" role="1PaTwD">
            <property role="3oM_SC" value="typesystem" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8n" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8o" role="1PaTwD">
            <property role="3oM_SC" value="express" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug8p" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug8t" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug8v" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8w" role="1PaTwD">
            <property role="3oM_SC" value="leaking" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8x" role="1PaTwD">
            <property role="3oM_SC" value="MPS's" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8y" role="1PaTwD">
            <property role="3oM_SC" value="own" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8z" role="1PaTwD">
            <property role="3oM_SC" value="JoinType" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8$" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8A" role="1PaTwD">
            <property role="3oM_SC" value="language's" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8B" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8C" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8D" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8E" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8F" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8G" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8H" role="1PaTwD">
            <property role="3oM_SC" value="returns" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8I" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug8J" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug8N" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug8P" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8Q" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8R" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8S" role="1PaTwD">
            <property role="3oM_SC" value="say" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8T" role="1PaTwD">
            <property role="3oM_SC" value="what," />
          </node>
          <node concept="3oM_SD" id="465JEkTug8U" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8V" role="1PaTwD">
            <property role="3oM_SC" value="check_TSReturnStatement" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8W" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8X" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8Y" role="1PaTwD">
            <property role="3oM_SC" value="says" />
          </node>
          <node concept="3oM_SD" id="465JEkTug8Z" role="1PaTwD">
            <property role="3oM_SC" value="so." />
          </node>
          <node concept="3oM_SD" id="465JEkTug90" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="465JEkTug91" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTug92" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTug93" role="1PaTwD">
            <property role="3oM_SC" value="returns" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTug94" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTug98" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTug9a" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9b" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9c" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9d" role="1PaTwD">
            <property role="3oM_SC" value="annotation," />
          </node>
          <node concept="3oM_SD" id="465JEkTug9e" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9f" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9g" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9h" role="1PaTwD">
            <property role="3oM_SC" value="common" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9i" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9j" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9k" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9l" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9m" role="1PaTwD">
            <property role="3oM_SC" value="worth" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9n" role="1PaTwD">
            <property role="3oM_SC" value="keeping" />
          </node>
          <node concept="3oM_SD" id="465JEkTug9o" role="1PaTwD">
            <property role="3oM_SC" value="free." />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="465JEkTug9p" role="3cqZAp">
        <node concept="3cpWsn" id="465JEkTug9s" role="3cpWs9">
          <property role="TrG5h" value="returnType" />
          <node concept="3Tqbb2" id="465JEkTug9u" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
          </node>
          <node concept="1eOMI4" id="465JEkTug9v" role="33vP2m">
            <node concept="3K4zz7" id="465JEkTug9x" role="1eOMHV">
              <node concept="3y3z36" id="465JEkTug9_" role="3K4Cdx">
                <node concept="2OqwBi" id="465JEkTug9C" role="3uHU7B">
                  <node concept="1YBJjd" id="465JEkTug9F" role="2Oq$k0">
                    <ref role="1YBMHb" node="465JEkTug6O" resolve="function" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTug9G" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                  </node>
                </node>
                <node concept="10Nm6u" id="465JEkTug9H" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="465JEkTug9I" role="3K4E3e">
                <node concept="1YBJjd" id="465JEkTug9L" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTug6O" resolve="function" />
                </node>
                <node concept="3TrEf2" id="465JEkTug9M" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                </node>
              </node>
              <node concept="2ShNRf" id="465JEkTug9N" role="3K4GZi">
                <node concept="3zrR0B" id="465JEkTug9P" role="2ShVmc">
                  <node concept="3Tqbb2" id="465JEkTug9R" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="465JEkTug9S" role="3cqZAp">
        <node concept="mw_s8" id="465JEkTug9V" role="1ZfhK$">
          <node concept="1Z2H0r" id="465JEkTug9X" role="mwGJk">
            <node concept="1YBJjd" id="465JEkTug9Z" role="1Z2MuG">
              <ref role="1YBMHb" node="465JEkTug6O" resolve="function" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="465JEkTuga0" role="1ZfhKB">
          <node concept="2YIFZM" id="465JEkTuga2" role="mwGJk">
            <ref role="1Pybhc" to="tw2a:465JEkTp6cM" resolve="TSFunctionUtil" />
            <ref role="37wK5l" to="tw2a:465JEkTp6g6" resolve="functionTypeOf" />
            <node concept="1YBJjd" id="465JEkTuga3" role="37wK5m">
              <ref role="1YBMHb" node="465JEkTug6O" resolve="function" />
            </node>
            <node concept="37vLTw" id="465JEkTuga4" role="37wK5m">
              <ref role="3cqZAo" node="465JEkTug9s" resolve="returnType" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="465JEkTvanD">
    <property role="TrG5h" value="typeof_TSReturnStatement" />
    <node concept="1YaCAy" id="465JEkTvanG" role="1YuTPh">
      <property role="TrG5h" value="returnStatement" />
      <ref role="1YaFvo" to="mo8k:465JEkTkU41" resolve="TSReturnStatement" />
    </node>
    <node concept="3clFbS" id="465JEkTvanH" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTvanI" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvanM" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvanO" role="1PaTwD">
            <property role="3oM_SC" value="What" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanP" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanQ" role="1PaTwD">
            <property role="3oM_SC" value="returned" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanR" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanS" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanT" role="1PaTwD">
            <property role="3oM_SC" value="agree" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanU" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanV" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanW" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanX" role="1PaTwD">
            <property role="3oM_SC" value="enclosing" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanY" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTvanZ" role="1PaTwD">
            <property role="3oM_SC" value="declares," />
          </node>
          <node concept="3oM_SD" id="465JEkTvao0" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTvao1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvao2" role="1PaTwD">
            <property role="3oM_SC" value="check" />
          </node>
          <node concept="3oM_SD" id="465JEkTvao3" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvao4" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvao8" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvaoa" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaob" role="1PaTwD">
            <property role="3oM_SC" value="comparable" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoc" role="1PaTwD">
            <property role="3oM_SC" value="equation" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaod" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoe" role="1PaTwD">
            <property role="3oM_SC" value="initializer" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaof" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaog" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoh" role="1PaTwD">
            <property role="3oM_SC" value="declaration" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoi" role="1PaTwD">
            <property role="3oM_SC" value="goes" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoj" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaok" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaol" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaom" role="1PaTwD">
            <property role="3oM_SC" value="`return" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaon" role="1PaTwD">
            <property role="3oM_SC" value="1`" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoo" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaop" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvaoq" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvaou" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvaow" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaox" role="1PaTwD">
            <property role="3oM_SC" value="returning" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoy" role="1PaTwD">
            <property role="3oM_SC" value="`number" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoz" role="1PaTwD">
            <property role="3oM_SC" value="|" />
          </node>
          <node concept="3oM_SD" id="465JEkTvao$" role="1PaTwD">
            <property role="3oM_SC" value="string`" />
          </node>
          <node concept="3oM_SD" id="465JEkTvao_" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoA" role="1PaTwD">
            <property role="3oM_SC" value="fine" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoB" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoC" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoD" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoE" role="1PaTwD">
            <property role="3oM_SC" value="reason" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoF" role="1PaTwD">
            <property role="3oM_SC" value="`let" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoG" role="1PaTwD">
            <property role="3oM_SC" value="x:" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoH" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoI" role="1PaTwD">
            <property role="3oM_SC" value="|" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoJ" role="1PaTwD">
            <property role="3oM_SC" value="string" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoK" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvaoL" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvaoP" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvaoR" role="1PaTwD">
            <property role="3oM_SC" value="1`" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoS" role="1PaTwD">
            <property role="3oM_SC" value="is," />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoT" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoU" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoV" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoW" role="1PaTwD">
            <property role="3oM_SC" value="subtyping" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoX" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoY" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaoZ" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="465JEkTvap0" role="1PaTwD">
            <property role="3oM_SC" value="has." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvap1" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvap5" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvap7" role="1PaTwD">
            <property role="3oM_SC" value="Two" />
          </node>
          <node concept="3oM_SD" id="465JEkTvap8" role="1PaTwD">
            <property role="3oM_SC" value="shapes" />
          </node>
          <node concept="3oM_SD" id="465JEkTvap9" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapa" role="1PaTwD">
            <property role="3oM_SC" value="deliberately" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapb" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapc" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapd" role="1PaTwD">
            <property role="3oM_SC" value="check_TSReturnStatement" />
          </node>
          <node concept="3oM_SD" id="465JEkTvape" role="1PaTwD">
            <property role="3oM_SC" value="instead," />
          </node>
          <node concept="3oM_SD" id="465JEkTvapf" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapg" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="465JEkTvaph" role="1PaTwD">
            <property role="3oM_SC" value="says" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvapq" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvapu" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvapw" role="1PaTwD">
            <property role="3oM_SC" value="something" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapx" role="1PaTwD">
            <property role="3oM_SC" value="more" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapy" role="1PaTwD">
            <property role="3oM_SC" value="precise" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapz" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="465JEkTvap$" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="465JEkTvap_" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="465JEkTvapA" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYd" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYe" role="1PaTwD">
            <property role="3oM_SC" value="mismatch" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYf" role="1PaTwD">
            <property role="3oM_SC" value="would:" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYg" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYh" role="1PaTwD">
            <property role="3oM_SC" value="return" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYi" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYj" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYk" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYl" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYm" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTANYn" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTANYr" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTANYt" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYu" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYv" role="1PaTwD">
            <property role="3oM_SC" value="declares" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYw" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYx" role="1PaTwD">
            <property role="3oM_SC" value="return" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYy" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="465JEkTANYz" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTANY$" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="465JEkTANY_" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYA" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYB" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYC" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYD" role="1PaTwD">
            <property role="3oM_SC" value="declares" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYE" role="1PaTwD">
            <property role="3oM_SC" value="void." />
          </node>
          <node concept="3oM_SD" id="465JEkTANYF" role="1PaTwD">
            <property role="3oM_SC" value="Leaving" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTANYG" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTANYK" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTANYM" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYN" role="1PaTwD">
            <property role="3oM_SC" value="equation" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYO" role="1PaTwD">
            <property role="3oM_SC" value="out" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYP" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYQ" role="1PaTwD">
            <property role="3oM_SC" value="those" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYR" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYS" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYT" role="1PaTwD">
            <property role="3oM_SC" value="keeps" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYU" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYV" role="1PaTwD">
            <property role="3oM_SC" value="single" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYW" role="1PaTwD">
            <property role="3oM_SC" value="mistake" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYX" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYY" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTANYZ" role="1PaTwD">
            <property role="3oM_SC" value="single" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZ0" role="1PaTwD">
            <property role="3oM_SC" value="error" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZ1" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZ2" role="1PaTwD">
            <property role="3oM_SC" value="reporting" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTANZ3" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTANZ7" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTANZ9" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZa" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZc" role="1PaTwD">
            <property role="3oM_SC" value="flaw" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZd" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZe" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZf" role="1PaTwD">
            <property role="3oM_SC" value="went" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZg" role="1PaTwD">
            <property role="3oM_SC" value="out" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZh" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZi" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZj" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZk" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZl" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZm" role="1PaTwD">
            <property role="3oM_SC" value="copy" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZn" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZo" role="1PaTwD">
            <property role="3oM_SC" value="baseLanguage's" />
          </node>
          <node concept="3oM_SD" id="465JEkTANZp" role="1PaTwD">
            <property role="3oM_SC" value="calls." />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="465JEkTvapB" role="3cqZAp">
        <node concept="3cpWsn" id="465JEkTvapE" role="3cpWs9">
          <property role="TrG5h" value="function" />
          <node concept="3Tqbb2" id="465JEkTvapG" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:465JEkTkU1f" resolve="TSIFunctionLike" />
          </node>
          <node concept="2YIFZM" id="465JEkTvapH" role="33vP2m">
            <ref role="1Pybhc" to="tw2a:465JEkTp6cM" resolve="TSFunctionUtil" />
            <ref role="37wK5l" to="tw2a:465JEkTp6cW" resolve="enclosingFunctionOf" />
            <node concept="1YBJjd" id="465JEkTvapI" role="37wK5m">
              <ref role="1YBMHb" node="465JEkTvanG" resolve="returnStatement" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTvapJ" role="3cqZAp">
        <node concept="22lmx$" id="465JEkTANZq" role="3clFbw">
          <node concept="3clFbC" id="465JEkTANZt" role="3uHU7B">
            <node concept="37vLTw" id="465JEkTANZw" role="3uHU7B">
              <ref role="3cqZAo" node="465JEkTvapE" resolve="function" />
            </node>
            <node concept="10Nm6u" id="465JEkTANZx" role="3uHU7w" />
          </node>
          <node concept="3clFbC" id="465JEkTANZy" role="3uHU7w">
            <node concept="2OqwBi" id="465JEkTANZ_" role="3uHU7B">
              <node concept="37vLTw" id="465JEkTANZC" role="2Oq$k0">
                <ref role="3cqZAo" node="465JEkTvapE" resolve="function" />
              </node>
              <node concept="3TrEf2" id="465JEkTANZD" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTANZE" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTvaqf" role="3clFbx">
          <node concept="3cpWs6" id="465JEkTANZF" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTANZG" role="3cqZAp">
        <node concept="2OqwBi" id="465JEkTANZJ" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTANZM" role="2Oq$k0">
            <node concept="37vLTw" id="465JEkTANZP" role="2Oq$k0">
              <ref role="3cqZAo" node="465JEkTvapE" resolve="function" />
            </node>
            <node concept="3TrEf2" id="465JEkTANZQ" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" />
            </node>
          </node>
          <node concept="1mIQ4w" id="465JEkTANZR" role="2OqNvi">
            <node concept="chp4Y" id="465JEkTANZT" role="cj9EA">
              <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTANZU" role="3clFbx">
          <node concept="3cpWs6" id="465JEkTANZV" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTANZW" role="3cqZAp">
        <node concept="3y3z36" id="465JEkTANZZ" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTAO02" role="3uHU7B">
            <node concept="1YBJjd" id="465JEkTAO05" role="2Oq$k0">
              <ref role="1YBMHb" node="465JEkTvanG" resolve="returnStatement" />
            </node>
            <node concept="3TrEf2" id="465JEkTAO06" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkU43" />
            </node>
          </node>
          <node concept="10Nm6u" id="465JEkTAO07" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="465JEkTAO08" role="3clFbx">
          <node concept="1ZoVOM" id="465JEkTAO09" role="3cqZAp">
            <node concept="mw_s8" id="465JEkTAO0c" role="1ZfhK$">
              <node concept="1Z2H0r" id="465JEkTAO0e" role="mwGJk">
                <node concept="2OqwBi" id="465JEkTAO0g" role="1Z2MuG">
                  <node concept="1YBJjd" id="465JEkTAO0j" role="2Oq$k0">
                    <ref role="1YBMHb" node="465JEkTvanG" resolve="returnStatement" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTAO0k" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU43" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="465JEkTAO0l" role="1ZfhKB">
              <node concept="2OqwBi" id="465JEkTAO0n" role="mwGJk">
                <node concept="2OqwBi" id="465JEkTAO0q" role="2Oq$k0">
                  <node concept="37vLTw" id="465JEkTAO0t" role="2Oq$k0">
                    <ref role="3cqZAo" node="465JEkTvapE" resolve="function" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTAO0u" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" />
                  </node>
                </node>
                <node concept="1$rogu" id="465JEkTAO0v" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="465JEkTAO0w" role="1ZmcU8">
              <node concept="1YBJjd" id="465JEkTAO0z" role="2Oq$k0">
                <ref role="1YBMHb" node="465JEkTvanG" resolve="returnStatement" />
              </node>
              <node concept="3TrEf2" id="465JEkTAO0$" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU43" />
              </node>
            </node>
            <node concept="Xl_RD" id="465JEkTAO0_" role="3o8Qv2">
              <property role="Xl_RC" value="The returned value does not have the declared return type" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="465JEkTvn$L">
    <property role="TrG5h" value="typeof_TSCallExpression" />
    <node concept="1YaCAy" id="465JEkTvn$O" role="1YuTPh">
      <property role="TrG5h" value="call" />
      <ref role="1YaFvo" to="mo8k:465JEkTkUgx" resolve="TSCallExpression" />
    </node>
    <node concept="3clFbS" id="465JEkTvn$P" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTvn$Q" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvn$U" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvn$W" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn$X" role="1PaTwD">
            <property role="3oM_SC" value="call" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn$Y" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn$Z" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_0" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_1" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_2" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_3" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_4" role="1PaTwD">
            <property role="3oM_SC" value="turns" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_5" role="1PaTwD">
            <property role="3oM_SC" value="out" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_7" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_8" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_9" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_a" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_b" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_c" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_d" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_e" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvn_f" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvn_j" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvn_l" role="1PaTwD">
            <property role="3oM_SC" value="named" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_m" role="1PaTwD">
            <property role="3oM_SC" value="declaration" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_n" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_o" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_p" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_q" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_r" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_s" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_t" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_u" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_v" role="1PaTwD">
            <property role="3oM_SC" value="later" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_w" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_x" role="1PaTwD">
            <property role="3oM_SC" value="arrow" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_y" role="1PaTwD">
            <property role="3oM_SC" value="function," />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_z" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvn_$" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvn_C" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvn_E" role="1PaTwD">
            <property role="3oM_SC" value="callable" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_F" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_G" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_H" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_I" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_J" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_K" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_L" role="1PaTwD">
            <property role="3oM_SC" value="added." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvn_M" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvn_Q" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvn_S" role="1PaTwD">
            <property role="3oM_SC" value="Three" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_T" role="1PaTwD">
            <property role="3oM_SC" value="things" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_U" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_V" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_W" role="1PaTwD">
            <property role="3oM_SC" value="shape," />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_X" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_Y" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTvn_Z" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA0" role="1PaTwD">
            <property role="3oM_SC" value="borrowed" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA1" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA2" role="1PaTwD">
            <property role="3oM_SC" value="iets3's" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA3" role="1PaTwD">
            <property role="3oM_SC" value="FunctionStyleExecOp" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA4" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnA5" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnA9" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnAb" role="1PaTwD">
            <property role="3oM_SC" value="none" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAc" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAd" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAe" role="1PaTwD">
            <property role="3oM_SC" value="free." />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAf" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAg" role="1PaTwD">
            <property role="3oM_SC" value="callee's" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAh" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAi" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAj" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAk" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAl" role="1PaTwD">
            <property role="3oM_SC" value="*concrete*" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAm" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAn" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAo" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAp" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAq" role="1PaTwD">
            <property role="3oM_SC" value="taken" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAr" role="1PaTwD">
            <property role="3oM_SC" value="apart," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnAs" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnAw" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnAy" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAz" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA$" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnA_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAA" role="1PaTwD">
            <property role="3oM_SC" value="when-concrete" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAB" role="1PaTwD">
            <property role="3oM_SC" value="block" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAC" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAD" role="1PaTwD">
            <property role="3oM_SC" value="for." />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAE" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAF" role="1PaTwD">
            <property role="3oM_SC" value="arity" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAG" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAH" role="1PaTwD">
            <property role="3oM_SC" value="checked" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAI" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAJ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAK" role="1PaTwD">
            <property role="3oM_SC" value="arguments," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnAL" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnAP" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnAR" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAS" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAT" role="1PaTwD">
            <property role="3oM_SC" value="per-argument" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAU" role="1PaTwD">
            <property role="3oM_SC" value="inequations" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAV" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAW" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAX" role="1PaTwD">
            <property role="3oM_SC" value="created" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAY" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnAZ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB0" role="1PaTwD">
            <property role="3oM_SC" value="branch" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB1" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB2" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB3" role="1PaTwD">
            <property role="3oM_SC" value="matched" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB4" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB5" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB6" role="1PaTwD">
            <property role="3oM_SC" value="call" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnB7" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnBb" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnBd" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBe" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBf" role="1PaTwD">
            <property role="3oM_SC" value="wrong" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBg" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBh" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBi" role="1PaTwD">
            <property role="3oM_SC" value="arguments" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBj" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBk" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBl" role="1PaTwD">
            <property role="3oM_SC" value="once," />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBm" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBn" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBo" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBp" role="1PaTwD">
            <property role="3oM_SC" value="plus" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBq" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnBr" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnBv" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnBx" role="1PaTwD">
            <property role="3oM_SC" value="assignability" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBy" role="1PaTwD">
            <property role="3oM_SC" value="error" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBz" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB$" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnB_" role="1PaTwD">
            <property role="3oM_SC" value="argument" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBA" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBB" role="1PaTwD">
            <property role="3oM_SC" value="happened" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBC" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBD" role="1PaTwD">
            <property role="3oM_SC" value="line" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBE" role="1PaTwD">
            <property role="3oM_SC" value="up" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBF" role="1PaTwD">
            <property role="3oM_SC" value="wrong." />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBG" role="1PaTwD">
            <property role="3oM_SC" value="And" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBH" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBI" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBJ" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnBK" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnBO" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnBQ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBR" role="1PaTwD">
            <property role="3oM_SC" value="equated" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBS" role="1PaTwD">
            <property role="3oM_SC" value="outside" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBU" role="1PaTwD">
            <property role="3oM_SC" value="arity" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBV" role="1PaTwD">
            <property role="3oM_SC" value="branch," />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBW" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBX" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBY" role="1PaTwD">
            <property role="3oM_SC" value="call" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnBZ" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC0" role="1PaTwD">
            <property role="3oM_SC" value="arity" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC1" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC2" role="1PaTwD">
            <property role="3oM_SC" value="wrong" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC3" role="1PaTwD">
            <property role="3oM_SC" value="still" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC4" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC5" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC6" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnC7" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTvnC8" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTvnCc" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTvnCe" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCf" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCg" role="1PaTwD">
            <property role="3oM_SC" value="around" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCh" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCi" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCj" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCk" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCl" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCm" role="1PaTwD">
            <property role="3oM_SC" value="broken" />
          </node>
          <node concept="3oM_SD" id="465JEkTvnCn" role="1PaTwD">
            <property role="3oM_SC" value="too." />
          </node>
        </node>
      </node>
      <node concept="nvevp" id="465JEkTvnCo" role="3cqZAp">
        <node concept="3clFbS" id="465JEkTvnCt" role="nvhr_">
          <node concept="3clFbJ" id="465JEkTvnCu" role="3cqZAp">
            <node concept="2OqwBi" id="465JEkTvnCx" role="3clFbw">
              <node concept="2X3wrD" id="465JEkTvnC$" role="2Oq$k0">
                <ref role="2X3Bk0" node="465JEkTvnFv" resolve="calleeType" />
              </node>
              <node concept="1mIQ4w" id="465JEkTvnC_" role="2OqNvi">
                <node concept="chp4Y" id="465JEkTvnCB" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="465JEkTvnCC" role="3clFbx">
              <node concept="3cpWs8" id="465JEkTvnCD" role="3cqZAp">
                <node concept="3cpWsn" id="465JEkTvnCG" role="3cpWs9">
                  <property role="TrG5h" value="signature" />
                  <node concept="3Tqbb2" id="465JEkTvnCI" role="1tU5fm">
                    <ref role="ehGHo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                  </node>
                  <node concept="1PxgMI" id="465JEkTvnCJ" role="33vP2m">
                    <node concept="2X3wrD" id="465JEkTvnCM" role="1m5AlR">
                      <ref role="2X3Bk0" node="465JEkTvnFv" resolve="calleeType" />
                    </node>
                    <node concept="chp4Y" id="465JEkTvnCN" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="465JEkTvnCO" role="3cqZAp">
                <node concept="3clFbC" id="465JEkTvnCR" role="3clFbw">
                  <node concept="2OqwBi" id="465JEkTvnCU" role="3uHU7B">
                    <node concept="2OqwBi" id="465JEkTvnCX" role="2Oq$k0">
                      <node concept="37vLTw" id="465JEkTvnD0" role="2Oq$k0">
                        <ref role="3cqZAo" node="465JEkTvnCG" resolve="signature" />
                      </node>
                      <node concept="3Tsc0h" id="465JEkTvnD1" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="465JEkTvnD2" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="465JEkTvnD3" role="3uHU7w">
                    <node concept="2OqwBi" id="465JEkTvnD6" role="2Oq$k0">
                      <node concept="1YBJjd" id="465JEkTvnD9" role="2Oq$k0">
                        <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                      </node>
                      <node concept="3Tsc0h" id="465JEkTvnDa" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:465JEkTkUg$" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="465JEkTvnDb" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbS" id="465JEkTvnDc" role="3clFbx">
                  <node concept="2Gpval" id="465JEkTvnDd" role="3cqZAp">
                    <node concept="2GrKxI" id="465JEkTvnDh" role="2Gsz3X">
                      <property role="TrG5h" value="formal" />
                    </node>
                    <node concept="2OqwBi" id="465JEkTvnDi" role="2GsD0m">
                      <node concept="37vLTw" id="465JEkTvnDl" role="2Oq$k0">
                        <ref role="3cqZAo" node="465JEkTvnCG" resolve="signature" />
                      </node>
                      <node concept="3Tsc0h" id="465JEkTvnDm" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="465JEkTvnDn" role="2LFqv$">
                      <node concept="1ZoVOM" id="465JEkTvnDo" role="3cqZAp">
                        <node concept="mw_s8" id="465JEkTvnDr" role="1ZfhK$">
                          <node concept="1Z2H0r" id="465JEkTvnDt" role="mwGJk">
                            <node concept="2OqwBi" id="465JEkTvnDv" role="1Z2MuG">
                              <node concept="2OqwBi" id="465JEkTvnDy" role="2Oq$k0">
                                <node concept="1YBJjd" id="465JEkTvnD_" role="2Oq$k0">
                                  <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                                </node>
                                <node concept="3Tsc0h" id="465JEkTvnDA" role="2OqNvi">
                                  <ref role="3TtcxE" to="mo8k:465JEkTkUg$" resolve="arguments" />
                                </node>
                              </node>
                              <node concept="34jXtK" id="465JEkTvnDB" role="2OqNvi">
                                <node concept="2OqwBi" id="465JEkTvnDD" role="25WWJ7">
                                  <node concept="2GrUjf" id="465JEkTvnDG" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="465JEkTvnDh" resolve="formal" />
                                  </node>
                                  <node concept="2bSWHS" id="465JEkTvnDH" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="mw_s8" id="465JEkTvnDI" role="1ZfhKB">
                          <node concept="2OqwBi" id="465JEkTvnDK" role="mwGJk">
                            <node concept="2OqwBi" id="465JEkTvnDN" role="2Oq$k0">
                              <node concept="2GrUjf" id="465JEkTvnDQ" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="465JEkTvnDh" resolve="formal" />
                              </node>
                              <node concept="3TrEf2" id="465JEkTvnDR" role="2OqNvi">
                                <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                              </node>
                            </node>
                            <node concept="1$rogu" id="465JEkTvnDS" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="465JEkTvnDT" role="1ZmcU8">
                          <node concept="2OqwBi" id="465JEkTvnDW" role="2Oq$k0">
                            <node concept="1YBJjd" id="465JEkTvnDZ" role="2Oq$k0">
                              <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                            </node>
                            <node concept="3Tsc0h" id="465JEkTvnE0" role="2OqNvi">
                              <ref role="3TtcxE" to="mo8k:465JEkTkUg$" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="34jXtK" id="465JEkTvnE1" role="2OqNvi">
                            <node concept="2OqwBi" id="465JEkTvnE3" role="25WWJ7">
                              <node concept="2GrUjf" id="465JEkTvnE6" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="465JEkTvnDh" resolve="formal" />
                              </node>
                              <node concept="2bSWHS" id="465JEkTvnE7" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="465JEkTvnE8" role="3o8Qv2">
                          <node concept="3cpWs3" id="465JEkTvnEb" role="3uHU7B">
                            <node concept="Xl_RD" id="465JEkTvnEe" role="3uHU7B">
                              <property role="Xl_RC" value="The argument does not have the type of parameter '" />
                            </node>
                            <node concept="2OqwBi" id="465JEkTvnEf" role="3uHU7w">
                              <node concept="2GrUjf" id="465JEkTvnEi" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="465JEkTvnDh" resolve="formal" />
                              </node>
                              <node concept="3TrcHB" id="465JEkTvnEj" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="465JEkTvnEk" role="3uHU7w">
                            <property role="Xl_RC" value="'" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="465JEkTvnEl" role="9aQIa">
                  <node concept="3clFbS" id="465JEkTvnEn" role="9aQI4">
                    <node concept="2MkqsV" id="465JEkTvnEo" role="3cqZAp">
                      <node concept="3cpWs3" id="465JEkTvnEr" role="2MkJ7o">
                        <node concept="3cpWs3" id="465JEkTvnEu" role="3uHU7B">
                          <node concept="3cpWs3" id="465JEkTvnEx" role="3uHU7B">
                            <node concept="Xl_RD" id="465JEkTvnE$" role="3uHU7B">
                              <property role="Xl_RC" value="Expected " />
                            </node>
                            <node concept="2OqwBi" id="465JEkTvnE_" role="3uHU7w">
                              <node concept="2OqwBi" id="465JEkTvnEC" role="2Oq$k0">
                                <node concept="37vLTw" id="465JEkTvnEF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="465JEkTvnCG" resolve="signature" />
                                </node>
                                <node concept="3Tsc0h" id="465JEkTvnEG" role="2OqNvi">
                                  <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="465JEkTvnEH" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="465JEkTvnEI" role="3uHU7w">
                            <property role="Xl_RC" value=" argument(s), but got " />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="465JEkTvnEJ" role="3uHU7w">
                          <node concept="2OqwBi" id="465JEkTvnEM" role="2Oq$k0">
                            <node concept="1YBJjd" id="465JEkTvnEP" role="2Oq$k0">
                              <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                            </node>
                            <node concept="3Tsc0h" id="465JEkTvnEQ" role="2OqNvi">
                              <ref role="3TtcxE" to="mo8k:465JEkTkUg$" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="465JEkTvnER" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="1YBJjd" id="465JEkTvnES" role="1urrMF">
                        <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Z5TYs" id="465JEkTvnET" role="3cqZAp">
                <node concept="mw_s8" id="465JEkTvnEW" role="1ZfhK$">
                  <node concept="1Z2H0r" id="465JEkTvnEY" role="mwGJk">
                    <node concept="1YBJjd" id="465JEkTvnF0" role="1Z2MuG">
                      <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="465JEkTvnF1" role="1ZfhKB">
                  <node concept="2OqwBi" id="465JEkTvnF3" role="mwGJk">
                    <node concept="2OqwBi" id="465JEkTvnF6" role="2Oq$k0">
                      <node concept="37vLTw" id="465JEkTvnF9" role="2Oq$k0">
                        <ref role="3cqZAo" node="465JEkTvnCG" resolve="signature" />
                      </node>
                      <node concept="3TrEf2" id="465JEkTvnFa" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="465JEkTvnFb" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="465JEkTvnFc" role="9aQIa">
              <node concept="3clFbS" id="465JEkTvnFe" role="9aQI4">
                <node concept="2MkqsV" id="465JEkTvnFf" role="3cqZAp">
                  <node concept="Xl_RD" id="465JEkTvnFi" role="2MkJ7o">
                    <property role="Xl_RC" value="This expression is not callable" />
                  </node>
                  <node concept="2OqwBi" id="465JEkTvnFj" role="1urrMF">
                    <node concept="1YBJjd" id="465JEkTvnFm" role="2Oq$k0">
                      <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
                    </node>
                    <node concept="3TrEf2" id="465JEkTvnFn" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:465JEkTkUgz" resolve="callee" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Z2H0r" id="465JEkTvnFo" role="nvjzm">
          <node concept="2OqwBi" id="465JEkTvnFq" role="1Z2MuG">
            <node concept="1YBJjd" id="465JEkTvnFt" role="2Oq$k0">
              <ref role="1YBMHb" node="465JEkTvn$O" resolve="call" />
            </node>
            <node concept="3TrEf2" id="465JEkTvnFu" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkUgz" resolve="callee" />
            </node>
          </node>
        </node>
        <node concept="2X1qdy" id="465JEkTvnFv" role="2X0Ygz">
          <property role="TrG5h" value="calleeType" />
          <node concept="2jxLKc" id="465JEkTvnFx" role="1tU5fm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="465JEkTwkBY">
    <property role="TrG5h" value="check_TSReturnStatement" />
    <node concept="1YaCAy" id="465JEkTwkC1" role="1YuTPh">
      <property role="TrG5h" value="returnStatement" />
      <ref role="1YaFvo" to="mo8k:465JEkTkU41" resolve="TSReturnStatement" />
    </node>
    <node concept="3clFbS" id="465JEkTwkC2" role="18ibNy">
      <node concept="3cpWs8" id="465JEkTwkC3" role="3cqZAp">
        <node concept="3cpWsn" id="465JEkTwkC6" role="3cpWs9">
          <property role="TrG5h" value="function" />
          <node concept="3Tqbb2" id="465JEkTwkC8" role="1tU5fm">
            <ref role="ehGHo" to="mo8k:465JEkTkU1f" resolve="TSIFunctionLike" />
          </node>
          <node concept="2YIFZM" id="465JEkTwkC9" role="33vP2m">
            <ref role="1Pybhc" to="tw2a:465JEkTp6cM" resolve="TSFunctionUtil" />
            <ref role="37wK5l" to="tw2a:465JEkTp6cW" resolve="enclosingFunctionOf" />
            <node concept="1YBJjd" id="465JEkTwkCa" role="37wK5m">
              <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="465JEkTwkCb" role="3cqZAp">
        <node concept="3cpWsn" id="465JEkTwkCe" role="3cpWs9">
          <property role="TrG5h" value="returnsAValue" />
          <node concept="10P_77" id="465JEkTwkCg" role="1tU5fm" />
          <node concept="3y3z36" id="465JEkTwkCh" role="33vP2m">
            <node concept="2OqwBi" id="465JEkTwkCk" role="3uHU7B">
              <node concept="1YBJjd" id="465JEkTwkCn" role="2Oq$k0">
                <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
              </node>
              <node concept="3TrEf2" id="465JEkTwkCo" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU43" resolve="expression" />
              </node>
            </node>
            <node concept="10Nm6u" id="465JEkTwkCp" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwkCq" role="3cqZAp">
        <node concept="3clFbC" id="465JEkTwkCt" role="3clFbw">
          <node concept="37vLTw" id="465JEkTwkCw" role="3uHU7B">
            <ref role="3cqZAo" node="465JEkTwkC6" resolve="function" />
          </node>
          <node concept="10Nm6u" id="465JEkTwkCx" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="465JEkTwkCy" role="3clFbx">
          <node concept="3SKdUt" id="465JEkTwkCz" role="3cqZAp">
            <node concept="1PaTwC" id="465JEkTwkCB" role="1aUNEU">
              <node concept="3oM_SD" id="465JEkTwkCD" role="1PaTwD">
                <property role="3oM_SC" value="TypeScript" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCE" role="1PaTwD">
                <property role="3oM_SC" value="rejects" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCF" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCG" role="1PaTwD">
                <property role="3oM_SC" value="top-level" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCH" role="1PaTwD">
                <property role="3oM_SC" value="return" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCI" role="1PaTwD">
                <property role="3oM_SC" value="outright," />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCJ" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCK" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCL" role="1PaTwD">
                <property role="3oM_SC" value="unitTest" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCM" role="1PaTwD">
                <property role="3oM_SC" value="language" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCN" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="465JEkTwkCO" role="3cqZAp">
            <node concept="1PaTwC" id="465JEkTwkCS" role="1aUNEU">
              <node concept="3oM_SD" id="465JEkTwkCU" role="1PaTwD">
                <property role="3oM_SC" value="otherwise" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCV" role="1PaTwD">
                <property role="3oM_SC" value="let" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCW" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCX" role="1PaTwD">
                <property role="3oM_SC" value="sit" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCY" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkCZ" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD0" role="1PaTwD">
                <property role="3oM_SC" value="test" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD1" role="1PaTwD">
                <property role="3oM_SC" value="method" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD2" role="1PaTwD">
                <property role="3oM_SC" value="body," />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD3" role="1PaTwD">
                <property role="3oM_SC" value="where" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD4" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD5" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD6" role="1PaTwD">
                <property role="3oM_SC" value="generate" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD7" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD8" role="1PaTwD">
                <property role="3oM_SC" value="bare" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkD9" role="1PaTwD">
                <property role="3oM_SC" value="`return`" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="465JEkTwkDa" role="3cqZAp">
            <node concept="1PaTwC" id="465JEkTwkDe" role="1aUNEU">
              <node concept="3oM_SD" id="465JEkTwkDg" role="1PaTwD">
                <property role="3oM_SC" value="inside" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDh" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDi" role="1PaTwD">
                <property role="3oM_SC" value="arrow" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDj" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDk" role="1PaTwD">
                <property role="3oM_SC" value="wraps" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDl" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDm" role="1PaTwD">
                <property role="3oM_SC" value="test" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDn" role="1PaTwD">
                <property role="3oM_SC" value="-" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDo" role="1PaTwD">
                <property role="3oM_SC" value="legal" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDp" role="1PaTwD">
                <property role="3oM_SC" value="JavaScript" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDq" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDr" role="1PaTwD">
                <property role="3oM_SC" value="silently" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDs" role="1PaTwD">
                <property role="3oM_SC" value="skips" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDt" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDu" role="1PaTwD">
                <property role="3oM_SC" value="rest" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="465JEkTwkDv" role="3cqZAp">
            <node concept="1PaTwC" id="465JEkTwkDz" role="1aUNEU">
              <node concept="3oM_SD" id="465JEkTwkD_" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDA" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="465JEkTwkDB" role="1PaTwD">
                <property role="3oM_SC" value="test." />
              </node>
            </node>
          </node>
          <node concept="2MkqsV" id="465JEkTwkDC" role="3cqZAp">
            <node concept="Xl_RD" id="465JEkTwkDF" role="2MkJ7o">
              <property role="Xl_RC" value="A return statement must be inside a function" />
            </node>
            <node concept="1YBJjd" id="465JEkTwkDG" role="1urrMF">
              <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
            </node>
          </node>
          <node concept="3cpWs6" id="465JEkTwkDH" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwkDI" role="3cqZAp">
        <node concept="3clFbC" id="465JEkTwkDL" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTwkDO" role="3uHU7B">
            <node concept="37vLTw" id="465JEkTwkDR" role="2Oq$k0">
              <ref role="3cqZAo" node="465JEkTwkC6" resolve="function" />
            </node>
            <node concept="3TrEf2" id="465JEkTwkDS" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
            </node>
          </node>
          <node concept="10Nm6u" id="465JEkTwkDT" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="465JEkTwkDU" role="3clFbx">
          <node concept="3clFbJ" id="465JEkTwkDV" role="3cqZAp">
            <node concept="37vLTw" id="465JEkTwkDY" role="3clFbw">
              <ref role="3cqZAo" node="465JEkTwkCe" resolve="returnsAValue" />
            </node>
            <node concept="3clFbS" id="465JEkTwkDZ" role="3clFbx">
              <node concept="3SKdUt" id="465JEkTwkE0" role="3cqZAp">
                <node concept="1PaTwC" id="465JEkTwkE4" role="1aUNEU">
                  <node concept="3oM_SD" id="465JEkTwkE6" role="1PaTwD">
                    <property role="3oM_SC" value="The" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkE7" role="1PaTwD">
                    <property role="3oM_SC" value="one" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkE8" role="1PaTwD">
                    <property role="3oM_SC" value="place" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkE9" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEa" role="1PaTwD">
                    <property role="3oM_SC" value="language" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEb" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEc" role="1PaTwD">
                    <property role="3oM_SC" value="deliberately" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEd" role="1PaTwD">
                    <property role="3oM_SC" value="stricter" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEe" role="1PaTwD">
                    <property role="3oM_SC" value="than" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEf" role="1PaTwD">
                    <property role="3oM_SC" value="TypeScript." />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEg" role="1PaTwD">
                    <property role="3oM_SC" value="An" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEh" role="1PaTwD">
                    <property role="3oM_SC" value="undeclared" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="465JEkTwkEi" role="3cqZAp">
                <node concept="1PaTwC" id="465JEkTwkEm" role="1aUNEU">
                  <node concept="3oM_SD" id="465JEkTwkEo" role="1PaTwD">
                    <property role="3oM_SC" value="return" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEp" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEq" role="1PaTwD">
                    <property role="3oM_SC" value="means" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEr" role="1PaTwD">
                    <property role="3oM_SC" value="void" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEs" role="1PaTwD">
                    <property role="3oM_SC" value="here," />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEt" role="1PaTwD">
                    <property role="3oM_SC" value="because" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEu" role="1PaTwD">
                    <property role="3oM_SC" value="inferring" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEv" role="1PaTwD">
                    <property role="3oM_SC" value="it" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEw" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEx" role="1PaTwD">
                    <property role="3oM_SC" value="several" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEy" role="1PaTwD">
                    <property role="3oM_SC" value="returns" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEz" role="1PaTwD">
                    <property role="3oM_SC" value="would" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkE$" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkE_" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="465JEkTwkEA" role="3cqZAp">
                <node concept="1PaTwC" id="465JEkTwkEE" role="1aUNEU">
                  <node concept="3oM_SD" id="465JEkTwkEG" role="1PaTwD">
                    <property role="3oM_SC" value="union" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEH" role="1PaTwD">
                    <property role="3oM_SC" value="built" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEI" role="1PaTwD">
                    <property role="3oM_SC" value="by" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEJ" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEK" role="1PaTwD">
                    <property role="3oM_SC" value="solver" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEL" role="1PaTwD">
                    <property role="3oM_SC" value="rather" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEM" role="1PaTwD">
                    <property role="3oM_SC" value="than" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEN" role="1PaTwD">
                    <property role="3oM_SC" value="by" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEO" role="1PaTwD">
                    <property role="3oM_SC" value="TSTypeUtil" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEP" role="1PaTwD">
                    <property role="3oM_SC" value="-" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkEQ" role="1PaTwD">
                    <property role="3oM_SC" value="see" />
                  </node>
                  <node concept="3oM_SD" id="465JEkTwkER" role="1PaTwD">
                    <property role="3oM_SC" value="typeof_TSFunctionDeclaration." />
                  </node>
                </node>
              </node>
              <node concept="2MkqsV" id="465JEkTwkES" role="3cqZAp">
                <node concept="Xl_RD" id="465JEkTwkEV" role="2MkJ7o">
                  <property role="Xl_RC" value="A function that returns a value must declare its return type" />
                </node>
                <node concept="1YBJjd" id="465JEkTwkEW" role="1urrMF">
                  <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="465JEkTwkEX" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwkEY" role="3cqZAp">
        <node concept="1Wc70l" id="465JEkTwkF1" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTwkF4" role="3uHU7B">
            <node concept="2OqwBi" id="465JEkTwkF7" role="2Oq$k0">
              <node concept="37vLTw" id="465JEkTwkFa" role="2Oq$k0">
                <ref role="3cqZAo" node="465JEkTwkC6" resolve="function" />
              </node>
              <node concept="3TrEf2" id="465JEkTwkFb" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
              </node>
            </node>
            <node concept="1mIQ4w" id="465JEkTwkFc" role="2OqNvi">
              <node concept="chp4Y" id="465JEkTwkFe" role="cj9EA">
                <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="465JEkTwkFf" role="3uHU7w">
            <ref role="3cqZAo" node="465JEkTwkCe" resolve="returnsAValue" />
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTwkFg" role="3clFbx">
          <node concept="2MkqsV" id="465JEkTwkFh" role="3cqZAp">
            <node concept="Xl_RD" id="465JEkTwkFk" role="2MkJ7o">
              <property role="Xl_RC" value="A function whose return type is void cannot return a value" />
            </node>
            <node concept="2OqwBi" id="465JEkTwkFl" role="1urrMF">
              <node concept="1YBJjd" id="465JEkTwkFo" role="2Oq$k0">
                <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
              </node>
              <node concept="3TrEf2" id="465JEkTwkFp" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkU43" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwkFq" role="3cqZAp">
        <node concept="1Wc70l" id="465JEkTwkFt" role="3clFbw">
          <node concept="3fqX7Q" id="465JEkTwkFw" role="3uHU7B">
            <node concept="2OqwBi" id="465JEkTwkFy" role="3fr31v">
              <node concept="2OqwBi" id="465JEkTwkF_" role="2Oq$k0">
                <node concept="37vLTw" id="465JEkTwkFC" role="2Oq$k0">
                  <ref role="3cqZAo" node="465JEkTwkC6" resolve="function" />
                </node>
                <node concept="3TrEf2" id="465JEkTwkFD" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                </node>
              </node>
              <node concept="1mIQ4w" id="465JEkTwkFE" role="2OqNvi">
                <node concept="chp4Y" id="465JEkTwkFG" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="465JEkTwkFH" role="3uHU7w">
            <node concept="37vLTw" id="465JEkTwkFJ" role="3fr31v">
              <ref role="3cqZAo" node="465JEkTwkCe" resolve="returnsAValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTwkFK" role="3clFbx">
          <node concept="2MkqsV" id="465JEkTwkFL" role="3cqZAp">
            <node concept="3cpWs3" id="465JEkTwkFO" role="2MkJ7o">
              <node concept="3cpWs3" id="465JEkTwkFR" role="3uHU7B">
                <node concept="Xl_RD" id="465JEkTwkFU" role="3uHU7B">
                  <property role="Xl_RC" value="A return statement must return a value of type '" />
                </node>
                <node concept="2OqwBi" id="465JEkTwkFV" role="3uHU7w">
                  <node concept="2OqwBi" id="465JEkTwkFY" role="2Oq$k0">
                    <node concept="37vLTw" id="465JEkTwkG1" role="2Oq$k0">
                      <ref role="3cqZAo" node="465JEkTwkC6" resolve="function" />
                    </node>
                    <node concept="3TrEf2" id="465JEkTwkG2" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                    </node>
                  </node>
                  <node concept="2Iv5rx" id="465JEkTwkG3" role="2OqNvi" />
                </node>
              </node>
              <node concept="Xl_RD" id="465JEkTwkG4" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
            </node>
            <node concept="1YBJjd" id="465JEkTwkG5" role="1urrMF">
              <ref role="1YBMHb" node="465JEkTwkC1" resolve="returnStatement" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="465JEkTwmXG">
    <property role="TrG5h" value="check_TSFunctionDeclaration" />
    <node concept="1YaCAy" id="465JEkTwmXJ" role="1YuTPh">
      <property role="TrG5h" value="function" />
      <ref role="1YaFvo" to="mo8k:465JEkTkU7b" resolve="TSFunctionDeclaration" />
    </node>
    <node concept="3clFbS" id="465JEkTwmXK" role="18ibNy">
      <node concept="3SKdUt" id="465JEkTwmXL" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTwmXP" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTwmXR" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXS" role="1PaTwD">
            <property role="3oM_SC" value="cheap" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXT" role="1PaTwD">
            <property role="3oM_SC" value="half" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXU" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXV" role="1PaTwD">
            <property role="3oM_SC" value="&quot;missing" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXW" role="1PaTwD">
            <property role="3oM_SC" value="return&quot;:" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXX" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXY" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmXZ" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY0" role="1PaTwD">
            <property role="3oM_SC" value="promises" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY1" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY2" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY3" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY4" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY5" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY6" role="1PaTwD">
            <property role="3oM_SC" value="return" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTwmY7" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTwmYb" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTwmYd" role="1PaTwD">
            <property role="3oM_SC" value="statement" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYe" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYf" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYg" role="1PaTwD">
            <property role="3oM_SC" value="cannot" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYh" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYi" role="1PaTwD">
            <property role="3oM_SC" value="keeping" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYj" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYk" role="1PaTwD">
            <property role="3oM_SC" value="promise." />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYl" role="1PaTwD">
            <property role="3oM_SC" value="What" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYm" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYn" role="1PaTwD">
            <property role="3oM_SC" value="deliberately" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYo" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYp" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYq" role="1PaTwD">
            <property role="3oM_SC" value="do" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYr" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYs" role="1PaTwD">
            <property role="3oM_SC" value="ask" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTwmYt" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTwmYx" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTwmYz" role="1PaTwD">
            <property role="3oM_SC" value="whether" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY$" role="1PaTwD">
            <property role="3oM_SC" value="*every" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmY_" role="1PaTwD">
            <property role="3oM_SC" value="path*" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYA" role="1PaTwD">
            <property role="3oM_SC" value="returns" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYB" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYC" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYD" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYE" role="1PaTwD">
            <property role="3oM_SC" value="reachability" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYF" role="1PaTwD">
            <property role="3oM_SC" value="analysis," />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYG" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYH" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYI" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYJ" role="1PaTwD">
            <property role="3oM_SC" value="dataflow" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYK" role="1PaTwD">
            <property role="3oM_SC" value="aspect" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTwmYL" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTwmYP" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTwmYR" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYS" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYT" role="1PaTwD">
            <property role="3oM_SC" value="statement" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYU" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYV" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYW" role="1PaTwD">
            <property role="3oM_SC" value="belongs" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYX" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYY" role="1PaTwD">
            <property role="3oM_SC" value="phase" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmYZ" role="1PaTwD">
            <property role="3oM_SC" value="4's" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZ0" role="1PaTwD">
            <property role="3oM_SC" value="dataflow" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZ1" role="1PaTwD">
            <property role="3oM_SC" value="work." />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZ2" role="1PaTwD">
            <property role="3oM_SC" value="`tsc`" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZ3" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZ4" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="465JEkTwmZ5" role="3cqZAp">
        <node concept="1PaTwC" id="465JEkTwmZ9" role="1aUNEU">
          <node concept="3oM_SD" id="465JEkTwmZb" role="1PaTwD">
            <property role="3oM_SC" value="paths" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZc" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZd" role="1PaTwD">
            <property role="3oM_SC" value="misses," />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZe" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZf" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZg" role="1PaTwD">
            <property role="3oM_SC" value="decision" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZh" role="1PaTwD">
            <property role="3oM_SC" value="1" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZi" role="1PaTwD">
            <property role="3oM_SC" value="working" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZj" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="465JEkTwmZk" role="1PaTwD">
            <property role="3oM_SC" value="intended." />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwmZl" role="3cqZAp">
        <node concept="3clFbC" id="465JEkTwmZo" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTwmZr" role="3uHU7B">
            <node concept="1YBJjd" id="465JEkTwmZu" role="2Oq$k0">
              <ref role="1YBMHb" node="465JEkTwmXJ" resolve="function" />
            </node>
            <node concept="3TrEf2" id="465JEkTwmZv" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
            </node>
          </node>
          <node concept="10Nm6u" id="465JEkTwmZw" role="3uHU7w" />
        </node>
        <node concept="3clFbS" id="465JEkTwmZx" role="3clFbx">
          <node concept="3cpWs6" id="465JEkTwmZy" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwmZz" role="3cqZAp">
        <node concept="2OqwBi" id="465JEkTwmZA" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTwmZD" role="2Oq$k0">
            <node concept="1YBJjd" id="465JEkTwmZG" role="2Oq$k0">
              <ref role="1YBMHb" node="465JEkTwmXJ" resolve="function" />
            </node>
            <node concept="3TrEf2" id="465JEkTwmZH" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
            </node>
          </node>
          <node concept="1mIQ4w" id="465JEkTwmZI" role="2OqNvi">
            <node concept="chp4Y" id="465JEkTwmZK" role="cj9EA">
              <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTwmZL" role="3clFbx">
          <node concept="3cpWs6" id="465JEkTwmZM" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="465JEkTwmZN" role="3cqZAp">
        <node concept="2OqwBi" id="465JEkTwmZQ" role="3clFbw">
          <node concept="2YIFZM" id="465JEkTwmZT" role="2Oq$k0">
            <ref role="1Pybhc" to="tw2a:465JEkTp6cM" resolve="TSFunctionUtil" />
            <ref role="37wK5l" to="tw2a:465JEkTp6ec" resolve="returnStatementsOf" />
            <node concept="1YBJjd" id="465JEkTwmZU" role="37wK5m">
              <ref role="1YBMHb" node="465JEkTwmXJ" resolve="function" />
            </node>
          </node>
          <node concept="1v1jN8" id="465JEkTwmZV" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="465JEkTwmZW" role="3clFbx">
          <node concept="2MkqsV" id="465JEkTwmZX" role="3cqZAp">
            <node concept="3cpWs3" id="465JEkTwn00" role="2MkJ7o">
              <node concept="3cpWs3" id="465JEkTwn03" role="3uHU7B">
                <node concept="Xl_RD" id="465JEkTwn06" role="3uHU7B">
                  <property role="Xl_RC" value="A function declaring the return type '" />
                </node>
                <node concept="2OqwBi" id="465JEkTwn07" role="3uHU7w">
                  <node concept="2OqwBi" id="465JEkTwn0a" role="2Oq$k0">
                    <node concept="1YBJjd" id="465JEkTwn0d" role="2Oq$k0">
                      <ref role="1YBMHb" node="465JEkTwmXJ" resolve="function" />
                    </node>
                    <node concept="3TrEf2" id="465JEkTwn0e" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:465JEkTkU1h" resolve="returnType" />
                    </node>
                  </node>
                  <node concept="2Iv5rx" id="465JEkTwn0f" role="2OqNvi" />
                </node>
              </node>
              <node concept="Xl_RD" id="465JEkTwn0g" role="3uHU7w">
                <property role="Xl_RC" value="' must return a value" />
              </node>
            </node>
            <node concept="1YBJjd" id="465JEkTwn0h" role="1urrMF">
              <ref role="1YBMHb" node="465JEkTwmXJ" resolve="function" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="35pCF_" id="465JEkTyubf">
    <property role="TrG5h" value="TSFunctionType_subtypeOf_TSFunctionType" />
    <node concept="1YaCAy" id="465JEkTyubj" role="1YuTPh">
      <property role="TrG5h" value="sub" />
      <ref role="1YaFvo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
    </node>
    <node concept="1YaCAy" id="465JEkTyubk" role="35pZ6h">
      <property role="TrG5h" value="target" />
      <ref role="1YaFvo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
    </node>
    <node concept="1xSnZT" id="465JEkTyubl" role="1xSnZW">
      <node concept="3clFbS" id="465JEkTyubn" role="2VODD2">
        <node concept="3SKdUt" id="465JEkTyubo" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyubs" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyubu" role="1PaTwD">
              <property role="3oM_SC" value="Without" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubv" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubw" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubx" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuby" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubz" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="465JEkTyub$" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="465JEkTyub_" role="1PaTwD">
              <property role="3oM_SC" value="compared" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubA" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubB" role="1PaTwD">
              <property role="3oM_SC" value="trees," />
            </node>
            <node concept="3oM_SD" id="465JEkTyubC" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubD" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubE" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubF" role="1PaTwD">
              <property role="3oM_SC" value="carries" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyubH" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyubL" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyubN" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubO" role="1PaTwD">
              <property role="3oM_SC" value="*names*" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubP" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubQ" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubR" role="1PaTwD">
              <property role="3oM_SC" value="`double`," />
            </node>
            <node concept="3oM_SD" id="465JEkTyubS" role="1PaTwD">
              <property role="3oM_SC" value="whose" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubT" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubU" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubV" role="1PaTwD">
              <property role="3oM_SC" value="built" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubW" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubY" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="465JEkTyubZ" role="1PaTwD">
              <property role="3oM_SC" value="called" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuc0" role="1PaTwD">
              <property role="3oM_SC" value="`value`," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyuc1" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyuc5" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyuc7" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuc8" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuc9" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuca" role="1PaTwD">
              <property role="3oM_SC" value="assignable" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucb" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucc" role="1PaTwD">
              <property role="3oM_SC" value="`(a:" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucd" role="1PaTwD">
              <property role="3oM_SC" value="number)" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuce" role="1PaTwD">
              <property role="3oM_SC" value="=&gt;" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucf" role="1PaTwD">
              <property role="3oM_SC" value="number`." />
            </node>
            <node concept="3oM_SD" id="465JEkTyucg" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuch" role="1PaTwD">
              <property role="3oM_SC" value="ignores" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuci" role="1PaTwD">
              <property role="3oM_SC" value="parameter" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucj" role="1PaTwD">
              <property role="3oM_SC" value="names" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyuck" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyuco" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyucq" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucr" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucs" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuct" role="1PaTwD">
              <property role="3oM_SC" value="compatibility," />
            </node>
            <node concept="3oM_SD" id="465JEkTyucu" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucv" role="1PaTwD">
              <property role="3oM_SC" value="comparing" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucw" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucx" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucy" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucz" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuc$" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuc_" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucA" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucB" role="1PaTwD">
              <property role="3oM_SC" value="is." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyucC" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyucG" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyucI" role="1PaTwD">
              <property role="3oM_SC" value="Declared" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucJ" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucK" role="1PaTwD">
              <property role="3oM_SC" value="TSFunctionType" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucL" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucM" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucN" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucO" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucP" role="1PaTwD">
              <property role="3oM_SC" value="BaseConcept" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucQ" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucR" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucS" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="465JEkTyucT" role="1PaTwD">
              <property role="3oM_SC" value="test:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyucU" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyucY" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyud0" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud1" role="1PaTwD">
              <property role="3oM_SC" value="dodge" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud2" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud3" role="1PaTwD">
              <property role="3oM_SC" value="needed" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud4" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud5" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud6" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud7" role="1PaTwD">
              <property role="3oM_SC" value="sub-type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud8" role="1PaTwD">
              <property role="3oM_SC" value="side" />
            </node>
            <node concept="3oM_SD" id="465JEkTyud9" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuda" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudb" role="1PaTwD">
              <property role="3oM_SC" value="interface," />
            </node>
            <node concept="3oM_SD" id="465JEkTyudc" role="1PaTwD">
              <property role="3oM_SC" value="since" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudd" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="465JEkTyude" role="1PaTwD">
              <property role="3oM_SC" value="looks" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudf" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyudg" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyudk" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyudm" role="1PaTwD">
              <property role="3oM_SC" value="replacement" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudn" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudo" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudp" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudr" role="1PaTwD">
              <property role="3oM_SC" value="superconcept" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuds" role="1PaTwD">
              <property role="3oM_SC" value="chain" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudt" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudu" role="1PaTwD">
              <property role="3oM_SC" value="never" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudv" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudw" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyudx" role="1PaTwD">
              <property role="3oM_SC" value="interfaces." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTyudy" role="3cqZAp">
          <node concept="3y3z36" id="465JEkTyud_" role="3clFbw">
            <node concept="2OqwBi" id="465JEkTyudC" role="3uHU7B">
              <node concept="2OqwBi" id="465JEkTyudF" role="2Oq$k0">
                <node concept="1YBJjd" id="465JEkTyudI" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTyubj" resolve="sub" />
                </node>
                <node concept="3Tsc0h" id="465JEkTyudJ" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                </node>
              </node>
              <node concept="34oBXx" id="465JEkTyudK" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="465JEkTyudL" role="3uHU7w">
              <node concept="2OqwBi" id="465JEkTyudO" role="2Oq$k0">
                <node concept="1YBJjd" id="465JEkTyudR" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
                </node>
                <node concept="3Tsc0h" id="465JEkTyudS" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                </node>
              </node>
              <node concept="34oBXx" id="465JEkTyudT" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTyudU" role="3clFbx">
            <node concept="3cpWs6" id="465JEkTyudV" role="3cqZAp">
              <node concept="3clFbT" id="465JEkTyudW" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyudX" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyue1" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyue3" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue4" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue5" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue6" role="1PaTwD">
              <property role="3oM_SC" value="covariant," />
            </node>
            <node concept="3oM_SD" id="465JEkTyue7" role="1PaTwD">
              <property role="3oM_SC" value="except" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue8" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue9" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuea" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueb" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuec" role="1PaTwD">
              <property role="3oM_SC" value="handed" />
            </node>
            <node concept="3oM_SD" id="465JEkTyued" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuee" role="1PaTwD">
              <property role="3oM_SC" value="something" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuef" role="1PaTwD">
              <property role="3oM_SC" value="expecting" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueg" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyueh" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyuel" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyuen" role="1PaTwD">
              <property role="3oM_SC" value="void-returning" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueo" role="1PaTwD">
              <property role="3oM_SC" value="function:" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuep" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueq" role="1PaTwD">
              <property role="3oM_SC" value="caller" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuer" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="465JEkTyues" role="1PaTwD">
              <property role="3oM_SC" value="said" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuet" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueu" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuev" role="1PaTwD">
              <property role="3oM_SC" value="discard" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuew" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuex" role="1PaTwD">
              <property role="3oM_SC" value="result," />
            </node>
            <node concept="3oM_SD" id="465JEkTyuey" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuez" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyue$" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyue_" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyueD" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyueF" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueG" role="1PaTwD">
              <property role="3oM_SC" value="produces" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueH" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueI" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueJ" role="1PaTwD">
              <property role="3oM_SC" value="fits." />
            </node>
            <node concept="3oM_SD" id="465JEkTyueK" role="1PaTwD">
              <property role="3oM_SC" value="That" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueM" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript's" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueN" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueO" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueP" role="1PaTwD">
              <property role="3oM_SC" value="closures'" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueQ" role="1PaTwD">
              <property role="3oM_SC" value="FunctionType" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueR" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyueS" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyueW" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyueY" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="465JEkTyueZ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuf0" role="1PaTwD">
              <property role="3oM_SC" value="too." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="465JEkTyuf1" role="3cqZAp">
          <node concept="1Wc70l" id="465JEkTyuf4" role="3clFbw">
            <node concept="3fqX7Q" id="465JEkTyuf7" role="3uHU7B">
              <node concept="2OqwBi" id="465JEkTyuf9" role="3fr31v">
                <node concept="2OqwBi" id="465JEkTyufc" role="2Oq$k0">
                  <node concept="1YBJjd" id="465JEkTyuff" role="2Oq$k0">
                    <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTyufg" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="465JEkTyufh" role="2OqNvi">
                  <node concept="chp4Y" id="465JEkTyufj" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="465JEkTyufk" role="3uHU7w">
              <node concept="3JuTUA" id="465JEkTyufm" role="3fr31v">
                <node concept="2OqwBi" id="465JEkTyufp" role="3JuY14">
                  <node concept="1YBJjd" id="465JEkTyufs" role="2Oq$k0">
                    <ref role="1YBMHb" node="465JEkTyubj" resolve="sub" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTyuft" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                  </node>
                </node>
                <node concept="2OqwBi" id="465JEkTyufu" role="3JuZjQ">
                  <node concept="1YBJjd" id="465JEkTyufx" role="2Oq$k0">
                    <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
                  </node>
                  <node concept="3TrEf2" id="465JEkTyufy" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTyufz" role="3clFbx">
            <node concept="3cpWs6" id="465JEkTyuf$" role="3cqZAp">
              <node concept="3clFbT" id="465JEkTyuf_" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyufA" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyufE" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyufG" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufH" role="1PaTwD">
              <property role="3oM_SC" value="parameters" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufI" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufJ" role="1PaTwD">
              <property role="3oM_SC" value="contravariant:" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufK" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufL" role="1PaTwD">
              <property role="3oM_SC" value="function" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufM" role="1PaTwD">
              <property role="3oM_SC" value="accepting" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufN" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufO" role="1PaTwD">
              <property role="3oM_SC" value="wider" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufP" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufQ" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufR" role="1PaTwD">
              <property role="3oM_SC" value="stand" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufS" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="465JEkTyufT" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyufU" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyufY" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyug0" role="1PaTwD">
              <property role="3oM_SC" value="accepting" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug1" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug2" role="1PaTwD">
              <property role="3oM_SC" value="narrower" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug3" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug4" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug5" role="1PaTwD">
              <property role="3oM_SC" value="wanted," />
            </node>
            <node concept="3oM_SD" id="465JEkTyug6" role="1PaTwD">
              <property role="3oM_SC" value="never" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug8" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug9" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="465JEkTyuga" role="1PaTwD">
              <property role="3oM_SC" value="round." />
            </node>
            <node concept="3oM_SD" id="465JEkTyugb" role="1PaTwD">
              <property role="3oM_SC" value="TypeScript" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugc" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugd" role="1PaTwD">
              <property role="3oM_SC" value="bivariant" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyuge" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyugi" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyugk" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugl" role="1PaTwD">
              <property role="3oM_SC" value="*method*" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugm" role="1PaTwD">
              <property role="3oM_SC" value="parameters" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugn" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugo" role="1PaTwD">
              <property role="3oM_SC" value="contravariant" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugp" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugq" role="1PaTwD">
              <property role="3oM_SC" value="function-type" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugr" role="1PaTwD">
              <property role="3oM_SC" value="ones" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugs" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugt" role="1PaTwD">
              <property role="3oM_SC" value="strictFunctionTypes," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="465JEkTyugu" role="3cqZAp">
          <node concept="1PaTwC" id="465JEkTyugy" role="1aUNEU">
            <node concept="3oM_SD" id="465JEkTyug$" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="465JEkTyug_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugA" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugB" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugC" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugD" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugE" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugF" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugI" role="1PaTwD">
              <property role="3oM_SC" value="sound" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugJ" role="1PaTwD">
              <property role="3oM_SC" value="direction" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugK" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugL" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugM" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugN" role="1PaTwD">
              <property role="3oM_SC" value="tsc" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugO" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugP" role="1PaTwD">
              <property role="3oM_SC" value="agree" />
            </node>
            <node concept="3oM_SD" id="465JEkTyugQ" role="1PaTwD">
              <property role="3oM_SC" value="with." />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="465JEkTyugR" role="3cqZAp">
          <node concept="2GrKxI" id="465JEkTyugV" role="2Gsz3X">
            <property role="TrG5h" value="formal" />
          </node>
          <node concept="2OqwBi" id="465JEkTyugW" role="2GsD0m">
            <node concept="1YBJjd" id="465JEkTyugZ" role="2Oq$k0">
              <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
            </node>
            <node concept="3Tsc0h" id="465JEkTyuh0" role="2OqNvi">
              <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
            </node>
          </node>
          <node concept="3clFbS" id="465JEkTyuh1" role="2LFqv$">
            <node concept="3clFbJ" id="465JEkTyuh2" role="3cqZAp">
              <node concept="3fqX7Q" id="465JEkTyuh5" role="3clFbw">
                <node concept="3JuTUA" id="465JEkTyuh7" role="3fr31v">
                  <node concept="2OqwBi" id="465JEkTyuha" role="3JuY14">
                    <node concept="2GrUjf" id="465JEkTyuhd" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="465JEkTyugV" resolve="formal" />
                    </node>
                    <node concept="3TrEf2" id="465JEkTyuhe" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="465JEkTyuhf" role="3JuZjQ">
                    <node concept="2OqwBi" id="465JEkTyuhi" role="2Oq$k0">
                      <node concept="2OqwBi" id="465JEkTyuhl" role="2Oq$k0">
                        <node concept="1YBJjd" id="465JEkTyuho" role="2Oq$k0">
                          <ref role="1YBMHb" node="465JEkTyubj" resolve="sub" />
                        </node>
                        <node concept="3Tsc0h" id="465JEkTyuhp" role="2OqNvi">
                          <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                        </node>
                      </node>
                      <node concept="34jXtK" id="465JEkTyuhq" role="2OqNvi">
                        <node concept="2OqwBi" id="465JEkTyuhs" role="25WWJ7">
                          <node concept="2GrUjf" id="465JEkTyuhv" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="465JEkTyugV" resolve="formal" />
                          </node>
                          <node concept="2bSWHS" id="465JEkTyuhw" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="465JEkTyuhx" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="465JEkTyuhy" role="3clFbx">
                <node concept="3cpWs6" id="465JEkTyuhz" role="3cqZAp">
                  <node concept="3clFbT" id="465JEkTyuh$" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="465JEkTyuh_" role="3cqZAp">
          <node concept="3clFbT" id="465JEkTyuhA" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTyuhB" role="2sgrp5">
      <node concept="3clFbJ" id="465JEkTyuhC" role="3cqZAp">
        <node concept="3fqX7Q" id="465JEkTyuhF" role="3clFbw">
          <node concept="2OqwBi" id="465JEkTyuhH" role="3fr31v">
            <node concept="2OqwBi" id="465JEkTyuhK" role="2Oq$k0">
              <node concept="1YBJjd" id="465JEkTyuhN" role="2Oq$k0">
                <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
              </node>
              <node concept="3TrEf2" id="465JEkTyuhO" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
              </node>
            </node>
            <node concept="1mIQ4w" id="465JEkTyuhP" role="2OqNvi">
              <node concept="chp4Y" id="465JEkTyuhR" role="cj9EA">
                <ref role="cht4Q" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTyuhS" role="3clFbx">
          <node concept="1ZobV4" id="465JEkTyuhT" role="3cqZAp">
            <node concept="mw_s8" id="465JEkTyuhW" role="1ZfhK$">
              <node concept="2OqwBi" id="465JEkTyuhY" role="mwGJk">
                <node concept="1YBJjd" id="465JEkTyui1" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTyubj" resolve="sub" />
                </node>
                <node concept="3TrEf2" id="465JEkTyui2" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="465JEkTyui3" role="1ZfhKB">
              <node concept="2OqwBi" id="465JEkTyui5" role="mwGJk">
                <node concept="1YBJjd" id="465JEkTyui8" role="2Oq$k0">
                  <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
                </node>
                <node concept="3TrEf2" id="465JEkTyui9" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="465JEkTyuia" role="3cqZAp">
        <node concept="2GrKxI" id="465JEkTyuie" role="2Gsz3X">
          <property role="TrG5h" value="formal" />
        </node>
        <node concept="2OqwBi" id="465JEkTyuif" role="2GsD0m">
          <node concept="1YBJjd" id="465JEkTyuii" role="2Oq$k0">
            <ref role="1YBMHb" node="465JEkTyubk" resolve="target" />
          </node>
          <node concept="3Tsc0h" id="465JEkTyuij" role="2OqNvi">
            <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
          </node>
        </node>
        <node concept="3clFbS" id="465JEkTyuik" role="2LFqv$">
          <node concept="1ZobV4" id="465JEkTyuil" role="3cqZAp">
            <node concept="mw_s8" id="465JEkTyuio" role="1ZfhK$">
              <node concept="2OqwBi" id="465JEkTyuiq" role="mwGJk">
                <node concept="2GrUjf" id="465JEkTyuit" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="465JEkTyuie" resolve="formal" />
                </node>
                <node concept="3TrEf2" id="465JEkTyuiu" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="465JEkTyuiv" role="1ZfhKB">
              <node concept="2OqwBi" id="465JEkTyuix" role="mwGJk">
                <node concept="2OqwBi" id="465JEkTyui$" role="2Oq$k0">
                  <node concept="2OqwBi" id="465JEkTyuiB" role="2Oq$k0">
                    <node concept="1YBJjd" id="465JEkTyuiE" role="2Oq$k0">
                      <ref role="1YBMHb" node="465JEkTyubj" resolve="sub" />
                    </node>
                    <node concept="3Tsc0h" id="465JEkTyuiF" role="2OqNvi">
                      <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                    </node>
                  </node>
                  <node concept="34jXtK" id="465JEkTyuiG" role="2OqNvi">
                    <node concept="2OqwBi" id="465JEkTyuiI" role="25WWJ7">
                      <node concept="2GrUjf" id="465JEkTyuiL" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="465JEkTyuie" resolve="formal" />
                      </node>
                      <node concept="2bSWHS" id="465JEkTyuiM" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="465JEkTyuiN" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

