<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d8d4003-bdc2-4cff-95e1-0269570b382e(de.q60.mps.lang.typescript.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="hb1i" ref="r:68855d6a-0611-45d5-9d54-ada096e93139(de.q60.mps.lang.typescript.intentions)" implicit="true" />
    <import index="gawc" ref="r:ca666ffb-a99b-49fd-a375-315208406478(de.q60.mps.lang.typescript.lib)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215526290564" name="jetbrains.mps.lang.test.structure.NodeTypeCheckOperation" flags="ng" index="30Omv">
        <child id="1215526393912" name="type" index="31d$z" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7835233914436786109" name="jetbrains.mps.lang.test.structure.NodeUnknownErrorCheckOperation" flags="ng" index="mDk06" />
      <concept id="1228934484974" name="jetbrains.mps.lang.test.structure.PressKeyStatement" flags="nn" index="yd1bK">
        <child id="1228934507814" name="keyStrokes" index="yd6KS" />
      </concept>
      <concept id="7011073693661765739" name="jetbrains.mps.lang.test.structure.InvokeActionStatement" flags="nn" index="2HxZob">
        <child id="1101347953350127927" name="actionReference" index="3iKnsn" />
      </concept>
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <child id="3143335925185262946" name="testNodeBefore" index="25YQCW" />
        <child id="3143335925185262981" name="testNodeResult" index="25YQFr" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="6268941039745498163" name="selectionStart" index="p6zMq" />
        <property id="6268941039745498165" name="selectionEnd" index="p6zMs" />
        <property id="1229194968596" name="caretPosition" index="LIFWa" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
        <property id="1932269937152561478" name="useLabelSelection" index="OXtK3" />
        <property id="1229432188737" name="isLastPosition" index="ZRATv" />
      </concept>
      <concept id="1227182079811" name="jetbrains.mps.lang.test.structure.TypeKeyStatement" flags="nn" index="2TK7Tu">
        <property id="1227184461946" name="keys" index="2TTd_B" />
      </concept>
      <concept id="5773579205429866751" name="jetbrains.mps.lang.test.structure.EditorComponentExpression" flags="nn" index="369mXd" />
      <concept id="4239542196496927193" name="jetbrains.mps.lang.test.structure.MPSActionReference" flags="ng" index="1iFQzN">
        <reference id="4239542196496929559" name="action" index="1iFR8X" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1225989773458" name="jetbrains.mps.lang.test.structure.InvokeIntentionStatement" flags="nn" index="1MFPAf">
        <reference id="1225989811227" name="intention" index="1MFYO6" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="2282927104365302788" name="de.q60.mps.lang.typescript.structure.TSTernaryOperatorExpression" flags="ng" index="0o88v">
        <child id="7744661840340332174" name="ifTrue" index="10ubTB" />
        <child id="4217550342683633468" name="ifFalse" index="3nuTyc" />
        <child id="7687543187806104797" name="condition" index="3y1SWh" />
      </concept>
      <concept id="5942537026495012038" name="de.q60.mps.lang.typescript.structure.TSMulAssignExpression" flags="ng" index="22FROQ" />
      <concept id="1507547570108522935" name="de.q60.mps.lang.typescript.structure.TSMinusExpression" flags="ng" index="2IocK" />
      <concept id="1140500669856697243" name="de.q60.mps.lang.typescript.structure.TSExponentAssignExpression" flags="ng" index="3d9ja" />
      <concept id="885131696144140641" name="de.q60.mps.lang.typescript.structure.TSCommaExpression" flags="ng" index="24ldvR" />
      <concept id="168856877714170834" name="de.q60.mps.lang.typescript.structure.TSBitwiseAndExpression" flags="ng" index="24nKmX" />
      <concept id="8373526123298530633" name="de.q60.mps.lang.typescript.structure.TSNumberLiteral" flags="ng" index="24BhzH">
        <property id="7606013538328487736" name="value" index="2Hr5CV" />
      </concept>
      <concept id="2596016207932595749" name="de.q60.mps.lang.typescript.structure.TSModule" flags="ng" index="24Z7zp">
        <child id="906924707476882095" name="statements" index="1JIkAo" />
      </concept>
      <concept id="2363935850608653464" name="de.q60.mps.lang.typescript.structure.TSGreaterThanExpression" flags="ng" index="27A9uT" />
      <concept id="5273689272520536483" name="de.q60.mps.lang.typescript.structure.TSArrayType" flags="ng" index="29s1Bg">
        <child id="8144558156267705696" name="elementType" index="2XRTOt" />
      </concept>
      <concept id="3625690808891259473" name="de.q60.mps.lang.typescript.structure.TSForStatement" flags="ng" index="2b3r35">
        <child id="3805913402361037029" name="initializer" index="tspbQ" />
      </concept>
      <concept id="1571062397014420555" name="de.q60.mps.lang.typescript.structure.TSExpressionBody" flags="ng" index="bMiiA">
        <child id="7669103814434551014" name="expression" index="QAdmJ" />
      </concept>
      <concept id="8935702142937456039" name="de.q60.mps.lang.typescript.structure.TSModExpression" flags="ng" index="cuy1A" />
      <concept id="793978610932627840" name="de.q60.mps.lang.typescript.structure.TSUnknownType" flags="ng" index="cSnVn" />
      <concept id="7661040975551884702" name="de.q60.mps.lang.typescript.structure.TSWhileStatement" flags="ng" index="fax6N">
        <child id="8176306495002123692" name="condition" index="20awV3" />
      </concept>
      <concept id="2450593264803086893" name="de.q60.mps.lang.typescript.structure.TSNotExpression" flags="ng" index="fzWeU" />
      <concept id="7893345815834438480" name="de.q60.mps.lang.typescript.structure.TSStrictEqualsExpression" flags="ng" index="2fEAty" />
      <concept id="1686735314819989884" name="de.q60.mps.lang.typescript.structure.TSStrictNotEqualsExpression" flags="ng" index="iAVQD" />
      <concept id="519210219420976711" name="de.q60.mps.lang.typescript.structure.TSPrefixIncrementExpression" flags="ng" index="2joTMQ" />
      <concept id="5318128150707536103" name="de.q60.mps.lang.typescript.structure.TSLeftShiftAssignExpression" flags="ng" index="l84A7" />
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="4892061089786907168" name="de.q60.mps.lang.typescript.structure.TSRightShiftExpression" flags="ng" index="nD_Q4" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="7021042242623486884" name="de.q60.mps.lang.typescript.structure.TSTemplateLiteral" flags="ng" index="pYBGs">
        <property id="1331468974520002934" name="head" index="15NrEc" />
        <child id="912235450054412245" name="spans" index="cEYUq" />
      </concept>
      <concept id="8753009674359597755" name="de.q60.mps.lang.typescript.structure.TSVoidType" flags="ng" index="qIwln" />
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4951537840020102359" name="de.q60.mps.lang.typescript.structure.TSDivAssignExpression" flags="ng" index="qYJAT" />
      <concept id="4004210842016756869" name="de.q60.mps.lang.typescript.structure.TSDoWhileStatement" flags="ng" index="2rJege">
        <child id="2022861889023822418" name="condition" index="2SSALT" />
      </concept>
      <concept id="3676654959372615760" name="de.q60.mps.lang.typescript.structure.TSLogicalAndExpression" flags="ng" index="2s4PD$" />
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="9182737273483795847" name="de.q60.mps.lang.typescript.structure.TSDefaultClause" flags="ng" index="2sOzXy" />
      <concept id="5261423696657887118" name="de.q60.mps.lang.typescript.structure.TSUnaryMinusExpression" flags="ng" index="2t6vHR" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="9011752434925346572" name="de.q60.mps.lang.typescript.structure.TSSwitchStatement" flags="ng" index="2yrb8r">
        <child id="6299422987900026855" name="expression" index="2WQvgN" />
        <child id="7921438235492334414" name="clauses" index="1_mi5l" />
      </concept>
      <concept id="6653327715734904214" name="de.q60.mps.lang.typescript.structure.TSUnsignedRightShiftAssignExpression" flags="ng" index="yXCfo" />
      <concept id="1336511613465215979" name="de.q60.mps.lang.typescript.structure.TSLogicalAndAssignExpression" flags="ng" index="$iRRg" />
      <concept id="1148579228915497614" name="de.q60.mps.lang.typescript.structure.TSNullLiteral" flags="ng" index="C5IwR" />
      <concept id="4043624921075319313" name="de.q60.mps.lang.typescript.structure.TSForInStatement" flags="ng" index="Dwllw" />
      <concept id="6957642462239564337" name="de.q60.mps.lang.typescript.structure.TSFunctionTypeParameter" flags="ng" index="2Fu235">
        <child id="5089302120831439094" name="declaredType" index="3cr0mA" />
      </concept>
      <concept id="4042126980422580726" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingExpression" flags="ng" index="2H1bN$" />
      <concept id="4387831483603896369" name="de.q60.mps.lang.typescript.structure.TSVoidExpression" flags="ng" index="2IAfPd" />
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="229562936135476531" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingAssignExpression" flags="ng" index="IRftP" />
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="3620359941814459762" name="de.q60.mps.lang.typescript.structure.TSBitwiseNotExpression" flags="ng" index="2KQott" />
      <concept id="1113920793110829741" name="de.q60.mps.lang.typescript.structure.TSILoop" flags="ngI" index="MfUIy">
        <child id="462024174991291677" name="body" index="d_Gmn" />
      </concept>
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
      <concept id="1480981823278437632" name="de.q60.mps.lang.typescript.structure.TSBitwiseOrExpression" flags="ng" index="NRXgv" />
      <concept id="342608947274766106" name="de.q60.mps.lang.typescript.structure.TSBitwiseAndAssignExpression" flags="ng" index="2NVYov" />
      <concept id="8023700100379537636" name="de.q60.mps.lang.typescript.structure.TSUndefinedLiteral" flags="ng" index="2OeDxu" />
      <concept id="366526391699699314" name="de.q60.mps.lang.typescript.structure.TSObjectLiteral" flags="ng" index="2R1HYX">
        <child id="6341575094518739874" name="properties" index="1hgjXh" />
      </concept>
      <concept id="2484694207365394374" name="de.q60.mps.lang.typescript.structure.TSCallExpression" flags="ng" index="2R1OvL">
        <child id="3404169969160214164" name="arguments" index="DTHKp" />
        <child id="1900045458059135536" name="callee" index="3yUXHQ" />
      </concept>
      <concept id="5643999388749572804" name="de.q60.mps.lang.typescript.structure.TSParameter" flags="ng" index="SCM_e">
        <property id="1387303607322514150" name="isOptional" index="35kMex" />
        <property id="7857640121654572745" name="isRest" index="1d60j6" />
        <child id="7998306445341946095" name="declaredType" index="2xFk6U" />
        <child id="1643725414952352214" name="defaultValue" index="1ciTpo" />
      </concept>
      <concept id="4707017410924436820" name="de.q60.mps.lang.typescript.structure.TSMemberAccess" flags="ng" index="SU78L">
        <property id="3383418614321625020" name="name" index="2nSurL" />
        <child id="3144187431954323160" name="operand" index="2Bgfcn" />
      </concept>
      <concept id="255943911805286420" name="de.q60.mps.lang.typescript.structure.TSISwitchClause" flags="ngI" index="2U7FeP">
        <child id="5295775359691522895" name="statements" index="3HO5NI" />
      </concept>
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="5203292047127445673" name="de.q60.mps.lang.typescript.structure.TSUnaryOperation" flags="ng" index="V$4S_">
        <child id="1920165562965334341" name="expression" index="3CQlky" />
      </concept>
      <concept id="4852639209182938254" name="de.q60.mps.lang.typescript.structure.TSCatchParameter" flags="ng" index="X8OOC" />
      <concept id="3854543600690315319" name="de.q60.mps.lang.typescript.structure.TSLessThanOrEqualsExpression" flags="ng" index="2Z6drc" />
      <concept id="7767684701842828021" name="de.q60.mps.lang.typescript.structure.TSBreakStatement" flags="ng" index="2ZnVrx" />
      <concept id="8230984297125240977" name="de.q60.mps.lang.typescript.structure.TSIForEachLoop" flags="ngI" index="2ZNrga">
        <child id="5572694192943756872" name="expression" index="2p7lAv" />
        <child id="7086253282184478317" name="declaration" index="2Fm_eX" />
      </concept>
      <concept id="7113081857034482378" name="de.q60.mps.lang.typescript.structure.TSPostfixIncrementExpression" flags="ng" index="10p$M9" />
      <concept id="5386741445896491392" name="de.q60.mps.lang.typescript.structure.TSPostfixOperation" flags="ng" index="11ilPe">
        <child id="3230647348629920174" name="expression" index="2Psk$b" />
      </concept>
      <concept id="3854180306267379657" name="de.q60.mps.lang.typescript.structure.TSTypeofExpression" flags="ng" index="128PHo" />
      <concept id="8939379926891817692" name="de.q60.mps.lang.typescript.structure.TSLeftShiftExpression" flags="ng" index="12EYhM" />
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="escapedValue" index="3b_9E9" />
      </concept>
      <concept id="6837294514292652218" name="de.q60.mps.lang.typescript.structure.TSContinueStatement" flags="ng" index="33KgIo" />
      <concept id="3431481493934648401" name="de.q60.mps.lang.typescript.structure.TSPostfixDecrementExpression" flags="ng" index="34OzTH" />
      <concept id="3355733505089403539" name="de.q60.mps.lang.typescript.structure.TSAssignmentExpression" flags="ng" index="35aKX4" />
      <concept id="4112825962079110083" name="de.q60.mps.lang.typescript.structure.TSExponentExpression" flags="ng" index="35EnaC" />
      <concept id="7168794925149236725" name="de.q60.mps.lang.typescript.structure.TSLogicalOrAssignExpression" flags="ng" index="36m03P" />
      <concept id="2552176483587294401" name="de.q60.mps.lang.typescript.structure.TSPropertyAssignment" flags="ng" index="17ea8W">
        <child id="5678931280796787468" name="initializer" index="hsbV_" />
      </concept>
      <concept id="1105819224358179769" name="de.q60.mps.lang.typescript.structure.TSCaseClause" flags="ng" index="3aWBG0">
        <child id="113394964859828794" name="expression" index="2AmQo$" />
      </concept>
      <concept id="9916445101189094" name="de.q60.mps.lang.typescript.structure.TSArrowFunction" flags="ng" index="1b$XOi">
        <child id="4933867365879096709" name="body" index="34pjIZ" />
      </concept>
      <concept id="5232066951734860421" name="de.q60.mps.lang.typescript.structure.TSBitwiseOrAssignExpression" flags="ng" index="1bETeD" />
      <concept id="8473436592292004310" name="de.q60.mps.lang.typescript.structure.TSMinusAssignExpression" flags="ng" index="3bMN1T" />
      <concept id="7026554582782322030" name="de.q60.mps.lang.typescript.structure.TSTryStatement" flags="ng" index="1c8nd4">
        <child id="7910050254052730252" name="catchClause" index="2hyK57" />
        <child id="4854415673904191394" name="tryBlock" index="2CuSVR" />
        <child id="5449485796123857302" name="finallyBlock" index="PRUvz" />
      </concept>
      <concept id="7652281983549135489" name="de.q60.mps.lang.typescript.structure.TSLessThanExpression" flags="ng" index="3cCKtE" />
      <concept id="7517680150159072311" name="de.q60.mps.lang.typescript.structure.TSBitwiseXorAssignExpression" flags="ng" index="1dqbpN" />
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="1623722890794836876" name="de.q60.mps.lang.typescript.structure.TSThrowStatement" flags="ng" index="3hXVNh">
        <child id="87263482773472484" name="expression" index="3tDo58" />
      </concept>
      <concept id="7694618822963474221" name="de.q60.mps.lang.typescript.structure.TSModAssignExpression" flags="ng" index="1i3mww" />
      <concept id="3285196913916941830" name="de.q60.mps.lang.typescript.structure.TSPlusAssignExpression" flags="ng" index="3iFsGD" />
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
      <concept id="4182053541792754620" name="de.q60.mps.lang.typescript.structure.TSVarDeclaration" flags="ng" index="3kcgwP" />
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="1382782322912190867" name="de.q60.mps.lang.typescript.structure.TSIncompleteLeftParen" flags="ng" index="1lV$2x" />
      <concept id="4291374753109167949" name="de.q60.mps.lang.typescript.structure.TSIIncompleteParen" flags="ngI" index="3mEcBk">
        <property id="3567944042883971429" name="count" index="R4xHh" />
      </concept>
      <concept id="1940646736673164813" name="de.q60.mps.lang.typescript.structure.TSObjectType" flags="ng" index="3n0$7x">
        <child id="5485283431336319566" name="members" index="2XfbTT" />
      </concept>
      <concept id="4462294479766427379" name="de.q60.mps.lang.typescript.structure.TSUnsignedRightShiftExpression" flags="ng" index="3ohPvs" />
      <concept id="4523838444874165896" name="de.q60.mps.lang.typescript.structure.TSUnionType" flags="ng" index="3pfgAg">
        <child id="4870825102337838263" name="types" index="3KvU$C" />
      </concept>
      <concept id="5495870994482695625" name="de.q60.mps.lang.typescript.structure.TSRightShiftAssignExpression" flags="ng" index="1pLGL4" />
      <concept id="1480635482070849035" name="de.q60.mps.lang.typescript.structure.TSTemplateSpan" flags="ng" index="1q850F">
        <property id="6377797546063508848" name="tail" index="3AYOxz" />
        <child id="954812604092234846" name="expression" index="wIT5v" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="9084056344319210901" name="de.q60.mps.lang.typescript.structure.TSUnaryPlusExpression" flags="ng" index="3sPFy8" />
      <concept id="2766191210374331012" name="de.q60.mps.lang.typescript.structure.TSIFunctionLike" flags="ngI" index="3ti0qV">
        <child id="2122589399313796228" name="returnType" index="jrNXk" />
        <child id="6735212671840276135" name="parameters" index="3qLSqq" />
      </concept>
      <concept id="6260345984398119061" name="de.q60.mps.lang.typescript.structure.TSTrueLiteral" flags="ng" index="1tXIsk" />
      <concept id="3372963032200918088" name="de.q60.mps.lang.typescript.structure.TSLogicalOrExpression" flags="ng" index="3w4Lx9" />
      <concept id="6565583381729432161" name="de.q60.mps.lang.typescript.structure.TSReturnStatement" flags="ng" index="3wbn4H">
        <child id="9210120436657261188" name="expression" index="qlm4T" />
      </concept>
      <concept id="3472769636933287167" name="de.q60.mps.lang.typescript.structure.TSBooleanType" flags="ng" index="3$6BPE" />
      <concept id="2240197384627242780" name="de.q60.mps.lang.typescript.structure.TSIncompleteRightParen" flags="ng" index="3Aoo2U" />
      <concept id="6275768358144507624" name="de.q60.mps.lang.typescript.structure.TSEqualsExpression" flags="ng" index="1CNJNU" />
      <concept id="1470766081798713625" name="de.q60.mps.lang.typescript.structure.TSPropertySignature" flags="ng" index="1D9KjG">
        <property id="6065535284884101344" name="isOptional" index="Cc4jk" />
        <child id="905576507103305314" name="declaredType" index="ahpXF" />
      </concept>
      <concept id="3288523768773114486" name="de.q60.mps.lang.typescript.structure.TSFunctionDeclaration" flags="ng" index="3Gxli7">
        <child id="6635070173404449213" name="body" index="1PAOym" />
      </concept>
      <concept id="6335351762904969106" name="de.q60.mps.lang.typescript.structure.TSArrayLiteral" flags="ng" index="3GWXXe">
        <child id="3540710438080071319" name="elements" index="1VpevP" />
      </concept>
      <concept id="2676595144476088988" name="de.q60.mps.lang.typescript.structure.TSVariableDeclaration" flags="ng" index="1Jbnu6">
        <child id="7603193039132759139" name="declaredType" index="19IeeE" />
        <child id="8956598854396892412" name="initializer" index="1bGQZ8" />
      </concept>
      <concept id="3284552453049428227" name="de.q60.mps.lang.typescript.structure.TSFalseLiteral" flags="ng" index="3JGNCe" />
      <concept id="6275493024567124969" name="de.q60.mps.lang.typescript.structure.TSForOfStatement" flags="ng" index="1KPeh1" />
      <concept id="1451663585142773798" name="de.q60.mps.lang.typescript.structure.TSPrefixDecrementExpression" flags="ng" index="3LUO1K" />
      <concept id="316800515626931645" name="de.q60.mps.lang.typescript.structure.TSFunctionType" flags="ng" index="3MZLnu">
        <child id="2138071087599881886" name="parameters" index="2thRFd" />
        <child id="4744527248198108312" name="returnType" index="19PnrX" />
      </concept>
      <concept id="1786862727331701833" name="de.q60.mps.lang.typescript.structure.TSIfStatement" flags="ng" index="3Oct9B">
        <child id="186330115020247543" name="elseBlock" index="2uaaIR" />
        <child id="6415352913453783659" name="thenBlock" index="12avcn" />
        <child id="264280299738157132" name="condition" index="18F3B4" />
        <child id="2578765457793828190" name="elseIfClauses" index="1X4dzr" />
      </concept>
      <concept id="5086057359599138485" name="de.q60.mps.lang.typescript.structure.TSUndefinedType" flags="ng" index="3OJVyd" />
      <concept id="3149544303132428410" name="de.q60.mps.lang.typescript.structure.TSNotEqualsExpression" flags="ng" index="1V9imx" />
      <concept id="1249726736402875518" name="de.q60.mps.lang.typescript.structure.TSGreaterThanOrEqualsExpression" flags="ng" index="1WNuYA" />
      <concept id="6380736331902577846" name="de.q60.mps.lang.typescript.structure.TSCatchClause" flags="ng" index="1WXS5l">
        <child id="5205009883105838996" name="binding" index="6O2XX" />
        <child id="5251133188521413811" name="block" index="1UMC_z" />
      </concept>
      <concept id="3294391100268350012" name="de.q60.mps.lang.typescript.structure.TSNeverType" flags="ng" index="1Z30PW" />
    </language>
    <language id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest">
      <concept id="7474925316805868297" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertTrue" flags="ng" index="2xtvZL">
        <child id="923496749372008960" name="condition" index="2tmK5A" />
      </concept>
      <concept id="2893403391783031051" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestMethod" flags="ng" index="B13S5">
        <child id="3423858813637018076" name="body" index="1OrNMJ" />
      </concept>
      <concept id="2540675105150896836" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestCase" flags="ng" index="Jsc18">
        <child id="3377630177900161387" name="testMethods" index="1QJMAF" />
      </concept>
      <concept id="9159215323861021911" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertEquals" flags="ng" index="174eko">
        <child id="4433563903700617020" name="actual" index="1s_IBt" />
        <child id="4065307100039490071" name="expected" index="3SOflj" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
  <node concept="LiM7Y" id="5YMdeRgphv">
    <property role="TrG5h" value="Type_plus_then_times_binds_times_tighter" />
    <property role="3GE5qa" value="expressions.precedence" />
    <node concept="1qefOq" id="5YMdeRgphw" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgphy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgphz" role="1JIkAo">
          <node concept="24BhzH" id="5YMdeRgph_" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5YMdeRgphA" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgphB" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgphC" role="3cqZAp">
        <property role="2TTd_B" value="+2*3" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgphD" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgphF" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgphG" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgphI" role="$a3P1">
            <node concept="24BhzH" id="5YMdeRgphL" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="5YMdeRgphM" role="GyX5B">
              <node concept="24BhzH" id="5YMdeRgphP" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5YMdeRgphQ" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5YMdeRgFi1">
    <property role="TrG5h" value="Type_times_then_plus_rebalances_the_tree" />
    <property role="3GE5qa" value="expressions.precedence" />
    <node concept="1qefOq" id="5YMdeRgFi2" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgFi4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFi5" role="1JIkAo">
          <node concept="24BhzH" id="5YMdeRgFi7" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5YMdeRgFi8" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgFi9" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgFia" role="3cqZAp">
        <property role="2TTd_B" value="*2+3" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgFib" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgFid" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFie" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgFig" role="$a3P1">
            <node concept="mk1J3" id="5YMdeRgFij" role="33kRt2">
              <node concept="24BhzH" id="5YMdeRgFim" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="5YMdeRgFin" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="24BhzH" id="5YMdeRgFio" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5YMdeRgFld">
    <property role="TrG5h" value="Type_close_paren_matches_the_open_one_and_restructures" />
    <property role="3GE5qa" value="expressions.precedence" />
    <node concept="1qefOq" id="5YMdeRgFle" role="25YQCW">
      <node concept="24Z7zp" id="5YMdeRgFlg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFlh" role="1JIkAo">
          <node concept="1rvuUm" id="5YMdeRgFlj" role="$a3P1">
            <node concept="24BhzH" id="5YMdeRgFlm" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="5YMdeRgFln" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="mk1J3" id="5YMdeRgFlo" role="GyX5B">
              <node concept="24BhzH" id="5YMdeRgFlr" role="33kRt2">
                <property role="2Hr5CV" value="2" />
                <node concept="LIFWc" id="5YMdeRgFls" role="lGtFl">
                  <property role="LIFWd" value="value" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
              <node concept="24BhzH" id="5YMdeRgFlt" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5YMdeRgFlu" role="LjaKd">
      <node concept="2TK7Tu" id="5YMdeRgFlv" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5YMdeRgFlw" role="25YQFr">
      <node concept="24Z7zp" id="5YMdeRgFly" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5YMdeRgFlz" role="1JIkAo">
          <node concept="mk1J3" id="5YMdeRgFl_" role="$a3P1">
            <node concept="pJsIj" id="5YMdeRgFlC" role="33kRt2">
              <node concept="1rvuUm" id="5YMdeRgFlE" role="3tJ$EF">
                <node concept="24BhzH" id="5YMdeRgFlH" role="33kRt2">
                  <property role="2Hr5CV" value="1" />
                </node>
                <node concept="24BhzH" id="5YMdeRgFlI" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5YMdeRgFlJ" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgltnr">
    <property role="TrG5h" value="Enter_then_a_number_makes_a_new_expression_statement" />
    <property role="3GE5qa" value="statements" />
    <node concept="1qefOq" id="5Xb8BFgltns" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgltnu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgltnv" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnx" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5Xb8BFgltny" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgltnz" role="LjaKd">
      <node concept="2HxZob" id="5Xb8BFgltn$" role="3cqZAp">
        <node concept="1iFQzN" id="5Xb8BFgltnA" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5Xb8BFgltnB" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgltnC" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgltnE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgltnF" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnH" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5Xb8BFgltnI" role="1JIkAo">
          <node concept="24BhzH" id="5Xb8BFgltnK" role="$a3P1">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$II">
    <property role="TrG5h" value="Ternary_takes_the_whole_binary_expression_as_its_condition" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgt$IJ" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$IB" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IA" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNORYVI" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNORYVL" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6QS6LNORYVM" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="6QS6LNORYVN" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$IK" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$IL" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
      <node concept="2HxZob" id="6WKYICH5iQJ" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICH5iQL" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$IM" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$IH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IG" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$IF" role="$a3P1">
            <node concept="1rvuUm" id="6QS6LNORYVO" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNORYVR" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNORYVS" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$J0">
    <property role="TrG5h" value="Ternary_typed_on_a_left_operand_is_wrapped_in_parentheses" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgt$J1" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$IS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IR" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNOSc2E" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSc2H" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOSc2I" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSc2J" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$J2" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$J3" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
      <node concept="2HxZob" id="6WKYICH5j4V" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICH5j4X" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$J4" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$IZ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$IY" role="1JIkAo">
          <node concept="1rvuUm" id="6QS6LNOSc2K" role="$a3P1">
            <node concept="pJsIj" id="6QS6LNOSc2N" role="33kRt2">
              <node concept="0o88v" id="6QS6LNOSc2P" role="3tJ$EF">
                <node concept="24BhzH" id="6QS6LNOSc2T" role="3y1SWh">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSc2U" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgt$Jk">
    <property role="TrG5h" value="Ternary_typed_on_a_ternary_condition_is_wrapped_in_parentheses" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgt$Jl" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgt$Jb" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$Ja" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$J9" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScbn" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOScbo" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$J7" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$J8" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgt$Jm" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgt$Jn" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
      <node concept="2HxZob" id="6WKYICH5jjG" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICH5jjI" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgt$Jo" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgt$Jj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgt$Ji" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgt$Jh" role="$a3P1">
            <node concept="pJsIj" id="5Xb8BFgt$Je" role="3y1SWh">
              <node concept="0o88v" id="5Xb8BFgt$Jd" role="3tJ$EF">
                <node concept="24BhzH" id="6QS6LNOScbp" role="3y1SWh">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$Jf" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgt$Jg" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhJy">
    <property role="TrG5h" value="Binary_operation_typed_in_the_true_branch_stays_in_the_branch" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgvhJz" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhJp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJo" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJn" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScjR" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJk" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="5Xb8BFgvhJl" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJm" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhJ$" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhJ_" role="3cqZAp">
        <property role="2TTd_B" value="+4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhJA" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhJx" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJw" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJv" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScjS" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgvhJt" role="10ubTB">
              <node concept="24BhzH" id="5Xb8BFgvhJr" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5Xb8BFgvhJs" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJu" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhJQ">
    <property role="TrG5h" value="Binary_operation_typed_in_the_false_branch_stays_in_the_branch" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgvhJR" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhJH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJG" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJF" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScsk" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJC" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJD" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
              <node concept="LIFWc" id="5Xb8BFgvhJE" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhJS" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhJT" role="3cqZAp">
        <property role="2TTd_B" value="+4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhJU" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhJP" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhJO" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJN" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScsl" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJJ" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgvhJM" role="3nuTyc">
              <node concept="24BhzH" id="5Xb8BFgvhJK" role="33kRt2">
                <property role="2Hr5CV" value="3" />
              </node>
              <node concept="24BhzH" id="5Xb8BFgvhJL" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgvhKa">
    <property role="TrG5h" value="Binary_operation_typed_after_the_condition_stays_in_the_condition" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgvhKb" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgvhK1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhK0" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhJZ" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSc$M" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6QS6LNOSc$N" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJX" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhJY" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgvhKc" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgvhKd" role="3cqZAp">
        <property role="2TTd_B" value="*4" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgvhKe" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgvhK9" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgvhK8" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgvhK7" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOSc$O" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNOSc$R" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOSc$S" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhK5" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgvhK6" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgwx7E">
    <property role="TrG5h" value="Close_paren_inside_a_ternary_branch_rebalances_that_branch_only" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgwx7F" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgwx7u" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7t" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7s" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScI8" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="1rvuUm" id="5Xb8BFgwx7q" role="10ubTB">
              <node concept="24BhzH" id="5Xb8BFgwx7k" role="33kRt2">
                <property role="2Hr5CV" value="2" />
                <node concept="1lV$2x" id="5Xb8BFgwx7l" role="lGtFl">
                  <property role="R4xHh" value="1" />
                </node>
              </node>
              <node concept="mk1J3" id="5Xb8BFgwx7p" role="GyX5B">
                <node concept="24BhzH" id="5Xb8BFgwx7m" role="33kRt2">
                  <property role="2Hr5CV" value="3" />
                  <node concept="LIFWc" id="5Xb8BFgwx7n" role="lGtFl">
                    <property role="LIFWd" value="value" />
                    <property role="ZRATv" value="true" />
                    <property role="p6zMs" value="1" />
                    <property role="p6zMq" value="1" />
                    <property role="OXtK3" value="true" />
                  </node>
                </node>
                <node concept="24BhzH" id="5Xb8BFgwx7o" role="GyX5B">
                  <property role="2Hr5CV" value="4" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7r" role="3nuTyc">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgwx7G" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgwx7H" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgwx7I" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgwx7D" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7C" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7B" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScI9" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="5Xb8BFgwx7_" role="10ubTB">
              <node concept="pJsIj" id="5Xb8BFgwx7z" role="33kRt2">
                <node concept="1rvuUm" id="5Xb8BFgwx7y" role="3tJ$EF">
                  <node concept="24BhzH" id="5Xb8BFgwx7w" role="33kRt2">
                    <property role="2Hr5CV" value="2" />
                  </node>
                  <node concept="24BhzH" id="5Xb8BFgwx7x" role="GyX5B">
                    <property role="2Hr5CV" value="3" />
                  </node>
                </node>
              </node>
              <node concept="24BhzH" id="5Xb8BFgwx7$" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7A" role="3nuTyc">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5Xb8BFgwx7Z">
    <property role="TrG5h" value="Close_paren_does_not_match_an_open_paren_in_another_ternary_branch" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="5Xb8BFgwx80" role="25YQCW">
      <node concept="24Z7zp" id="5Xb8BFgwx7Q" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7P" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7O" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScQt" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="6QS6LNOScQu" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7L" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="5Xb8BFgwx7M" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7N" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5Xb8BFgwx81" role="LjaKd">
      <node concept="2TK7Tu" id="5Xb8BFgwx82" role="3cqZAp">
        <property role="2TTd_B" value=")" />
      </node>
    </node>
    <node concept="1qefOq" id="5Xb8BFgwx83" role="25YQFr">
      <node concept="24Z7zp" id="5Xb8BFgwx7Y" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5Xb8BFgwx7X" role="1JIkAo">
          <node concept="0o88v" id="5Xb8BFgwx7W" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOScQv" role="3y1SWh">
              <property role="2Hr5CV" value="1" />
              <node concept="1lV$2x" id="6QS6LNOScQw" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7T" role="10ubTB">
              <property role="2Hr5CV" value="2" />
              <node concept="3Aoo2U" id="5Xb8BFgwx7U" role="lGtFl">
                <property role="R4xHh" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgwx7V" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6QS6LNOMncg">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Any_expression_is_allowed_as_a_ternary_condition" />
    <property role="3GE5qa" value="expressions.ternary" />
    <node concept="1qefOq" id="6QS6LNOMnch" role="1SKRRt">
      <node concept="24Z7zp" id="6QS6LNOMncj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6QS6LNOMnck" role="1JIkAo">
          <node concept="0o88v" id="6QS6LNOMncm" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOMncq" role="3y1SWh">
              <node concept="24BhzH" id="6QS6LNOMnct" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOMncu" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="7CXmI" id="6QS6LNOMncv" role="lGtFl">
                <node concept="30Omv" id="6QS6LNOMncw" role="7EUXB">
                  <node concept="1ku6r5" id="6QS6LNOMncy" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOMnc$" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6QS6LNOMnc_" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="7CXmI" id="6QS6LNOScWB" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOScWC" role="7EUXB">
                <node concept="1ku6r5" id="6QS6LNOScWE" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6QS6LNOScWF" role="lGtFl">
          <node concept="7OXhh" id="6QS6LNOScWG" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6QS6LNOMnhN">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Expression_types_are_computed" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="6QS6LNOMnhO" role="1SKRRt">
      <node concept="24Z7zp" id="6QS6LNOMnhQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6QS6LNOMnhR" role="1JIkAo">
          <node concept="1CNJNU" id="6QS6LNOSd39" role="$a3P1">
            <node concept="mk1J3" id="6QS6LNOSd3c" role="33kRt2">
              <node concept="24BhzH" id="6QS6LNOSd3f" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6QS6LNOSd3g" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="7CXmI" id="6QS6LNOSd3h" role="lGtFl">
                <node concept="30Omv" id="6QS6LNOSd3i" role="7EUXB">
                  <node concept="1ku6r5" id="6QS6LNOSd3k" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6QS6LNOSd3l" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
            <node concept="7CXmI" id="6QS6LNOSd3m" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3n" role="7EUXB">
                <node concept="3$6BPE" id="6QS6LNOSd3p" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6QS6LNONIX5" role="lGtFl">
          <node concept="7OXhh" id="6QS6LNONIX6" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="6QS6LNOSd3q" role="1JIkAo">
          <node concept="33xXhr" id="6QS6LNOSd3s" role="$a3P1">
            <property role="3b_9E9" value="a" />
            <node concept="7CXmI" id="6QS6LNOSd3t" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3u" role="7EUXB">
                <node concept="2Kh4GC" id="6QS6LNOSYhN" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6QS6LNOSd3x" role="1JIkAo">
          <node concept="pJsIj" id="6QS6LNOSd3z" role="$a3P1">
            <node concept="24BhzH" id="6QS6LNOSd3_" role="3tJ$EF">
              <property role="2Hr5CV" value="5" />
            </node>
            <node concept="7CXmI" id="6QS6LNOSd3A" role="lGtFl">
              <node concept="30Omv" id="6QS6LNOSd3B" role="7EUXB">
                <node concept="1ku6r5" id="6QS6LNOSd3D" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEOjj">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_test_case_with_boolean_assertions_is_free_of_errors" />
    <property role="3GE5qa" value="unit_test_language" />
    <node concept="1qefOq" id="6WKYICFEOjk" role="1SKRRt">
      <node concept="Jsc18" id="6WKYICFEOjm" role="1qenE9">
        <property role="TrG5h" value="t" />
        <node concept="B13S5" id="6WKYICFEOjn" role="1QJMAF">
          <property role="TrG5h" value="a test" />
          <node concept="2xtvZL" id="6WKYICFEOjo" role="1OrNMJ">
            <node concept="1CNJNU" id="6WKYICFEOjq" role="2tmK5A">
              <node concept="24BhzH" id="6WKYICFEOjt" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFEOju" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="7CXmI" id="6WKYICFEOjv" role="lGtFl">
                <node concept="30Omv" id="6WKYICFEOjw" role="7EUXB">
                  <node concept="3$6BPE" id="6WKYICFEOjy" role="31d$z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="174eko" id="6WKYICFEOjz" role="1OrNMJ">
            <node concept="1rvuUm" id="6WKYICFEOjA" role="1s_IBt">
              <node concept="24BhzH" id="6WKYICFEOjD" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFEOjE" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICFEOjF" role="3SOflj">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFEOjG" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFEOjH" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEWGi">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_assertion_condition_that_is_not_boolean_is_an_error" />
    <property role="3GE5qa" value="unit_test_language" />
    <node concept="1qefOq" id="6WKYICFEWGj" role="1SKRRt">
      <node concept="Jsc18" id="6WKYICFEWGl" role="1qenE9">
        <property role="TrG5h" value="t" />
        <node concept="B13S5" id="6WKYICFEWGm" role="1QJMAF">
          <property role="TrG5h" value="a test" />
          <node concept="2xtvZL" id="6WKYICFEWGn" role="1OrNMJ">
            <node concept="24BhzH" id="6WKYICFEWGp" role="2tmK5A">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="6WKYICFEWGq" role="lGtFl">
                <node concept="mDk06" id="6WKYICFEWGr" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFEWLE">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_assertion_is_not_allowed_outside_a_test_method" />
    <property role="3GE5qa" value="unit_test_language" />
    <node concept="1qefOq" id="6WKYICFEWLF" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFEWLH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2xtvZL" id="6WKYICFEWLI" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFEWLK" role="2tmK5A">
            <node concept="24BhzH" id="6WKYICFEWLN" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFEWLO" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="7CXmI" id="6WKYICFEWLP" role="lGtFl">
            <node concept="mDk06" id="6WKYICFEWRw" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTf5f">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Declarations_and_the_identifiers_that_point_at_them_are_typed" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICFTf5g" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTf5i" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTf5j" role="1JIkAo">
          <property role="TrG5h" value="annotated" />
          <node concept="1ku6r5" id="6WKYICFTf5k" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICFTf5l" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFTf5m" role="1JIkAo">
          <property role="TrG5h" value="inferred" />
          <node concept="33xXhr" id="6WKYICFTf5n" role="1bGQZ8">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICFTf5o" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf5q" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf5j" resolve="annotated" />
            <node concept="7CXmI" id="6WKYICFTf5r" role="lGtFl">
              <node concept="30Omv" id="6WKYICFTf5s" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICFTf5u" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICFTf5v" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf5x" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf5m" resolve="inferred" />
            <node concept="7CXmI" id="6WKYICFTf5y" role="lGtFl">
              <node concept="30Omv" id="6WKYICFTf5z" role="7EUXB">
                <node concept="2Kh4GC" id="6WKYICFTf5_" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFTf5A" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFTf5B" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfby">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Assigning_to_a_const_is_an_error" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICFTfbz" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfb_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTfbA" role="1JIkAo">
          <property role="TrG5h" value="fixed" />
          <node concept="24BhzH" id="6WKYICFTfbB" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="1dYSrZvz9af" role="1JIkAo">
          <node concept="35aKX4" id="1dYSrZvz9ae" role="$a3P1">
            <node concept="2v$HdM" id="6WKYICFTfbF" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTfbA" resolve="fixed" />
              <node concept="7CXmI" id="6WKYICFTfbG" role="lGtFl">
                <node concept="mDk06" id="6WKYICFTfbH" role="7EUXB" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICFTfbI" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfhr">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_needs_a_type_annotation_or_an_initializer" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICFTfhs" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfhu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICFTfhv" role="1JIkAo">
          <property role="TrG5h" value="undecided" />
          <node concept="7CXmI" id="6WKYICFTfhw" role="lGtFl">
            <node concept="mDk06" id="6WKYICFTfhx" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTfnj">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_initializer_must_have_the_declared_type" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICFTfnk" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTfnm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTfnn" role="1JIkAo">
          <property role="TrG5h" value="mistyped" />
          <node concept="2Kh4GC" id="6WKYICFTfno" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICFTfnp" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="7CXmI" id="6WKYICFTfnq" role="lGtFl">
              <node concept="mDk06" id="6WKYICFTfnr" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTftP">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_of_an_enclosing_block_is_visible_inside_a_nested_one" />
    <property role="3GE5qa" value="declarations.scopes" />
    <node concept="1qefOq" id="6WKYICFTftQ" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTftS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICFTftT" role="1JIkAo">
          <property role="TrG5h" value="enclosing" />
          <node concept="24BhzH" id="6WKYICFTftU" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3Oct9B" id="6WKYICFTftV" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFTftY" role="18F3B4">
            <node concept="2v$HdM" id="6WKYICFTfu1" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTftT" resolve="enclosing" />
            </node>
            <node concept="24BhzH" id="6WKYICFTfu2" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFTfu3" role="12avcn">
            <node concept="3ja7nU" id="6WKYICFTfu4" role="6EW52">
              <node concept="2v$HdM" id="6WKYICFTfu6" role="$a3P1">
                <ref role="2oxrr9" node="6WKYICFTftT" resolve="enclosing" />
                <node concept="7CXmI" id="6WKYICFTfu7" role="lGtFl">
                  <node concept="30Omv" id="6WKYICFTfu8" role="7EUXB">
                    <node concept="1ku6r5" id="6WKYICFTfua" role="31d$z" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICFTfub" role="lGtFl">
          <node concept="7OXhh" id="6WKYICFTfuc" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICFTf$C">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_declaration_is_not_visible_before_it_is_declared" />
    <property role="3GE5qa" value="declarations.scopes" />
    <node concept="1qefOq" id="6WKYICFTf$D" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICFTf$F" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFTf$G" role="1JIkAo">
          <node concept="2v$HdM" id="6WKYICFTf$I" role="$a3P1">
            <ref role="2oxrr9" node="6WKYICFTf$L" resolve="declaredLater" />
            <node concept="7CXmI" id="6WKYICFTf$J" role="lGtFl">
              <node concept="mDk06" id="6WKYICFTf$K" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFTf$L" role="1JIkAo">
          <property role="TrG5h" value="declaredLater" />
          <node concept="24BhzH" id="6WKYICFTf$M" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICFY8me">
    <property role="TrG5h" value="Typing_const_in_a_statement_list_creates_a_const_declaration" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICFY8mf" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICFY8mh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFY8mi" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICFY8mk" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICFY8ml" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICFY8mm" role="LjaKd">
      <node concept="2HxZob" id="6WKYICFY8mn" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICFY8mp" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="6WKYICFY8mq" role="3cqZAp">
        <property role="2TTd_B" value="const" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICFY8mr" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICFY8mt" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICFY8mu" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICFY8mw" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2MuU66" id="6WKYICFY8mx" role="1JIkAo" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICFYEeV">
    <property role="TrG5h" value="The_intention_adds_the_else_branch_the_editor_hides_when_it_is_empty" />
    <property role="3GE5qa" value="statements.control_flow" />
    <node concept="1qefOq" id="6WKYICFYEeW" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICFYEeY" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICFYEeZ" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFYEf2" role="18F3B4">
            <node concept="24BhzH" id="6WKYICFYEf5" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFYEf7" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFYEf8" role="12avcn" />
          <node concept="LIFWc" id="6WKYICFZVvr" role="lGtFl">
            <property role="LIFWd" value="ifKeyword" />
            <property role="ZRATv" value="true" />
            <property role="p6zMq" value="2" />
            <property role="p6zMs" value="2" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICFYEf9" role="LjaKd">
      <node concept="1MFPAf" id="6WKYICFYXzv" role="3cqZAp">
        <ref role="1MFYO6" to="hb1i:6WKYICFLkqh" resolve="AddElseBranch" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICFYEfb" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICFYEfd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICFYEfe" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICFYEfh" role="18F3B4">
            <node concept="24BhzH" id="6WKYICFYEfk" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFYEfl" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFYEfm" role="12avcn" />
          <node concept="qYD23" id="6WKYICFYEfn" role="2uaaIR" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG1agd">
    <property role="TrG5h" value="Typing_a_declarations_name_creates_a_reference_to_it" />
    <property role="3GE5qa" value="declarations.scopes" />
    <node concept="1qefOq" id="6WKYICG1age" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG1agg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICG1agh" role="1JIkAo">
          <property role="TrG5h" value="greeted" />
          <node concept="24BhzH" id="6WKYICG1agi" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG1agj" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG1agl" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICG1agm" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG1agn" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG1ago" role="3cqZAp">
        <property role="2TTd_B" value="+greeted" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG1agp" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG1agr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="6WKYICG1ags" role="1JIkAo">
          <property role="TrG5h" value="greeted" />
          <node concept="24BhzH" id="6WKYICG1agt" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG1agu" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICG1agw" role="$a3P1">
            <node concept="24BhzH" id="6WKYICG1agz" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="2v$HdM" id="6WKYICG1ag$" role="GyX5B">
              <ref role="2oxrr9" node="6WKYICG1ags" resolve="greeted" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICG5KN1">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Floating_point_literals_are_numbers" />
    <property role="3GE5qa" value="expressions.numbers" />
    <node concept="1qefOq" id="6WKYICG5KN2" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICG5KN4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5KN5" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICG5KN7" role="$a3P1">
            <node concept="24BhzH" id="6WKYICG5KNa" role="33kRt2">
              <property role="2Hr5CV" value="1.5" />
              <node concept="7CXmI" id="6WKYICG5KNb" role="lGtFl">
                <node concept="30Omv" id="6WKYICG5KNc" role="7EUXB">
                  <node concept="1ku6r5" id="6WKYICG5KNe" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICG5KNf" role="GyX5B">
              <property role="2Hr5CV" value=".25" />
              <node concept="7CXmI" id="6WKYICG5KNg" role="lGtFl">
                <node concept="30Omv" id="6WKYICG5KNh" role="7EUXB">
                  <node concept="1ku6r5" id="6WKYICG5KNj" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="6WKYICG5KNk" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KNl" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNn" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICG5KNo" role="lGtFl">
          <node concept="7OXhh" id="6WKYICG5KNp" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG5KNq" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KNs" role="$a3P1">
            <property role="2Hr5CV" value="1.5e-3" />
            <node concept="7CXmI" id="6WKYICG5KNt" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KNu" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNw" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICG5KNx" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KNz" role="$a3P1">
            <property role="2Hr5CV" value="1." />
            <node concept="7CXmI" id="6WKYICG5KN$" role="lGtFl">
              <node concept="30Omv" id="6WKYICG5KN_" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICG5KNB" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICG5KVx">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_number_literal_that_stops_at_its_exponent_is_an_error" />
    <property role="3GE5qa" value="expressions.numbers" />
    <node concept="1qefOq" id="6WKYICG5KVy" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICG5KV$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5KV_" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5KVB" role="$a3P1">
            <property role="2Hr5CV" value="1.5e" />
            <node concept="7CXmI" id="6WKYICG5KVC" role="lGtFl">
              <node concept="mDk06" id="6WKYICG5KVD" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG5L3S">
    <property role="TrG5h" value="Typing_a_decimal_point_continues_the_number_literal" />
    <property role="3GE5qa" value="expressions.numbers" />
    <node concept="1qefOq" id="6WKYICG5L3T" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG5L3V" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5L3W" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5L3Y" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICG5L3Z" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG5L40" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG5L41" role="3cqZAp">
        <property role="2TTd_B" value=".5" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG5L42" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG5L44" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5L45" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5L47" role="$a3P1">
            <property role="2Hr5CV" value="1.5" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICG5LcP">
    <property role="TrG5h" value="Typing_an_exponent_continues_the_number_literal" />
    <property role="3GE5qa" value="expressions.numbers" />
    <node concept="1qefOq" id="6WKYICG5LcQ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICG5LcS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5LcT" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5LcV" role="$a3P1">
            <property role="2Hr5CV" value="1.5" />
            <node concept="LIFWc" id="6WKYICG5LcW" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="3" />
              <property role="p6zMq" value="3" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICG5LcX" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICG5LcY" role="3cqZAp">
        <property role="2TTd_B" value="e3" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICG5LcZ" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICG5Ld1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICG5Ld2" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICG5Ld4" role="$a3P1">
            <property role="2Hr5CV" value="1.5e3" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_e5">
    <property role="TrG5h" value="Typing_a_colon_after_the_name_adds_the_type_annotation" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICGd_e6" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_e8" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_e9" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="6WKYICGd_ea" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="LIFWc" id="6WKYICGd_eb" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_ec" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_ed" role="3cqZAp">
        <property role="2TTd_B" value=":number" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_ee" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_eg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_eh" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_ei" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_ej" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_nB">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_name_adds_the_initializer" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICGd_nC" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_nE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_nF" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_nG" role="19IeeE" />
          <node concept="LIFWc" id="6WKYICGd_nH" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_nI" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_nJ" role="3cqZAp">
        <property role="2TTd_B" value="=1" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_nK" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_nM" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_nN" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_nO" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_nP" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_xo">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_type_annotation_adds_the_initializer" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="6WKYICGd_xp" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_xr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_xs" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_xt" role="19IeeE">
            <node concept="LIFWc" id="6WKYICGd_xu" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_xv" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_xw" role="3cqZAp">
        <property role="2TTd_B" value="=1" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_xx" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_xz" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="6WKYICGd_x$" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="6WKYICGd_x_" role="19IeeE" />
          <node concept="24BhzH" id="6WKYICGd_xA" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGd_FI">
    <property role="TrG5h" value="Typing_else_after_the_then_block_adds_the_else_branch" />
    <property role="3GE5qa" value="statements.control_flow" />
    <node concept="1qefOq" id="6WKYICGd_FJ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGd_FL" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGd_FM" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGd_FP" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGd_FS" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGd_FT" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGd_FU" role="12avcn">
            <node concept="LIFWc" id="6WKYICGd_FV" role="lGtFl">
              <property role="LIFWd" value="closingBrace" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGd_FW" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGd_FX" role="3cqZAp">
        <property role="2TTd_B" value="else{" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGd_FY" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGd_G0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGd_G1" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGd_G4" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGd_G7" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGd_G8" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGd_G9" role="12avcn" />
          <node concept="qYD23" id="6WKYICGd_Ga" role="2uaaIR" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGdA1a">
    <property role="TrG5h" value="Typing_else_if_after_the_then_block_adds_a_clause" />
    <property role="3GE5qa" value="statements.control_flow" />
    <node concept="1qefOq" id="6WKYICGdA1b" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGdA1d" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdA1e" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGdA1h" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGdA1k" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGdA1l" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGdA1m" role="12avcn">
            <node concept="LIFWc" id="6WKYICGdA1n" role="lGtFl">
              <property role="LIFWd" value="closingBrace" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGdA1o" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGdA1p" role="3cqZAp">
        <property role="2TTd_B" value="else if" />
      </node>
      <node concept="2TK7Tu" id="6WKYICGdA1q" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGdA1r" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGdA1t" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdA1u" role="1JIkAo">
          <node concept="1CNJNU" id="6WKYICGdA1x" role="18F3B4">
            <node concept="24BhzH" id="6WKYICGdA1$" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICGdA1_" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICGdA1A" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdA1B" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdA1E" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdA1F" role="1TBx7Y" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGdAc_">
    <property role="TrG5h" value="Typing_else_if_after_a_clauses_block_appends_a_second_clause" />
    <property role="3GE5qa" value="statements.control_flow" />
    <node concept="1qefOq" id="6WKYICGdAcA" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGdAcC" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdAcD" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGdAcG" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGdAcH" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdAcI" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAcL" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdAcM" role="1TBx7Y">
              <node concept="LIFWc" id="6WKYICGdAcN" role="lGtFl">
                <property role="LIFWd" value="closingBrace" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGdAcO" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGdAcP" role="3cqZAp">
        <property role="2TTd_B" value="else if" />
      </node>
      <node concept="2TK7Tu" id="6WKYICGdAcQ" role="3cqZAp">
        <property role="2TTd_B" value="3" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGdAcR" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGdAcT" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGdAcU" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGdAcX" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGdAcY" role="12avcn" />
          <node concept="ILWLb" id="6WKYICGdAcZ" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAd2" role="1usCvQ">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="qYD23" id="6WKYICGdAd3" role="1TBx7Y" />
          </node>
          <node concept="ILWLb" id="6WKYICGdAd4" role="1X4dzr">
            <node concept="24BhzH" id="6WKYICGdAd7" role="1usCvQ">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="qYD23" id="6WKYICGdAd8" role="1TBx7Y" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGgGmP">
    <property role="TrG5h" value="Typing_else_after_a_block_that_is_only_a_statement_does_nothing" />
    <property role="3GE5qa" value="statements.control_flow" />
    <node concept="1qefOq" id="6WKYICGgGmQ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGgGmS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGgGmT" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGgGmW" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGgGmX" role="12avcn">
            <node concept="qYD23" id="6WKYICGgGmY" role="6EW52">
              <node concept="LIFWc" id="6WKYICGgGmZ" role="lGtFl">
                <property role="LIFWd" value="closingBrace" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGgGn0" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGgGn1" role="3cqZAp">
        <property role="2TTd_B" value="else{" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGgGn2" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGgGn4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Oct9B" id="6WKYICGgGn5" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGgGn8" role="18F3B4">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="qYD23" id="6WKYICGgGn9" role="12avcn">
            <node concept="qYD23" id="6WKYICGgGna" role="6EW52" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGJz5W">
    <property role="TrG5h" value="Exponentiation_is_right_associative" />
    <property role="3GE5qa" value="expressions.precedence" />
    <node concept="1qefOq" id="6WKYICGJz5X" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGJz5Z" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJz60" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGJz62" role="$a3P1">
            <property role="2Hr5CV" value="2" />
            <node concept="LIFWc" id="6WKYICGJz63" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGJz64" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGJz65" role="3cqZAp">
        <property role="2TTd_B" value="**3**4" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGJz66" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGJz68" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJz69" role="1JIkAo">
          <node concept="35EnaC" id="6WKYICGJz6b" role="$a3P1">
            <node concept="24BhzH" id="6WKYICGJz6e" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="35EnaC" id="6WKYICGJz6f" role="GyX5B">
              <node concept="24BhzH" id="6WKYICGJz6i" role="33kRt2">
                <property role="2Hr5CV" value="3" />
              </node>
              <node concept="24BhzH" id="6WKYICGJz6j" role="GyX5B">
                <property role="2Hr5CV" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGJzhP">
    <property role="TrG5h" value="Multiplication_is_left_associative" />
    <property role="3GE5qa" value="expressions.precedence" />
    <node concept="1qefOq" id="6WKYICGJzhQ" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGJzhS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJzhT" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICGJzhV" role="$a3P1">
            <property role="2Hr5CV" value="2" />
            <node concept="LIFWc" id="6WKYICGJzhW" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGJzhX" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGJzhY" role="3cqZAp">
        <property role="2TTd_B" value="*3*4" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGJzhZ" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGJzi1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJzi2" role="1JIkAo">
          <node concept="mk1J3" id="6WKYICGJzi4" role="$a3P1">
            <node concept="mk1J3" id="6WKYICGJzi7" role="33kRt2">
              <node concept="24BhzH" id="6WKYICGJzia" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="6WKYICGJzib" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICGJzic" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICGJzu3">
    <property role="TrG5h" value="A_prefix_operator_binds_tighter_than_the_binary_one_around_it" />
    <property role="3GE5qa" value="expressions.unary" />
    <node concept="1qefOq" id="6WKYICGJzu4" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICGJzu6" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJzu7" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICGJzu9" role="$a3P1">
            <node concept="24BhzH" id="6WKYICGJzuc" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="6WKYICGJzud" role="lGtFl">
                <property role="LIFWa" value="0" />
                <property role="LIFWd" value="value" />
                <property role="p6zMs" value="0" />
                <property role="p6zMq" value="0" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICGJzue" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICGJzuf" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICGJzug" role="3cqZAp">
        <property role="2TTd_B" value="!" />
      </node>
      <node concept="2HxZob" id="6WKYICH5fQP" role="3cqZAp">
        <node concept="1iFQzN" id="6WKYICH5fRn" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICGJzuh" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICGJzuj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJzuk" role="1JIkAo">
          <node concept="1rvuUm" id="6WKYICGJzum" role="$a3P1">
            <node concept="fzWeU" id="6WKYICH5fTj" role="33kRt2">
              <node concept="24BhzH" id="6WKYICH5fTV" role="3CQlky">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="6WKYICGJzus" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6WKYICGJzEF">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Prefix_operators_are_typed" />
    <property role="3GE5qa" value="expressions.unary" />
    <node concept="1qefOq" id="6WKYICGJzEG" role="1SKRRt">
      <node concept="24Z7zp" id="6WKYICGJzEI" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICGJzEJ" role="1JIkAo">
          <node concept="fzWeU" id="6WKYICGJzEL" role="$a3P1">
            <node concept="pJsIj" id="6WKYICGJzEN" role="3CQlky">
              <node concept="1CNJNU" id="6WKYICGJzEP" role="3tJ$EF">
                <node concept="24BhzH" id="6WKYICGJzES" role="33kRt2">
                  <property role="2Hr5CV" value="1" />
                </node>
                <node concept="24BhzH" id="6WKYICGJzET" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="6WKYICGJzEU" role="lGtFl">
              <node concept="30Omv" id="6WKYICGJzEV" role="7EUXB">
                <node concept="3$6BPE" id="6WKYICGJzEX" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="6WKYICGJzEY" role="lGtFl">
          <node concept="7OXhh" id="6WKYICGJzEZ" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICGJzF0" role="1JIkAo">
          <node concept="2t6vHR" id="6WKYICGJzF2" role="$a3P1">
            <node concept="24BhzH" id="6WKYICGJzF4" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
            <node concept="7CXmI" id="6WKYICGJzF5" role="lGtFl">
              <node concept="30Omv" id="6WKYICGJzF6" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICGJzF8" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="6WKYICGJzF9" role="1JIkAo">
          <node concept="3sPFy8" id="6WKYICGJzFb" role="$a3P1">
            <node concept="24BhzH" id="6WKYICGJzFd" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
            <node concept="7CXmI" id="6WKYICGJzFe" role="lGtFl">
              <node concept="30Omv" id="6WKYICGJzFf" role="7EUXB">
                <node concept="1ku6r5" id="6WKYICGJzFh" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="6WKYICH3_LH">
    <property role="TrG5h" value="Typing_not_commits_once_the_next_key_cannot_extend_it" />
    <property role="3GE5qa" value="expressions.unary" />
    <node concept="1qefOq" id="6WKYICH3_LI" role="25YQCW">
      <node concept="24Z7zp" id="6WKYICH3_LK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICH3_LL" role="1JIkAo">
          <node concept="24BhzH" id="6WKYICH3_LN" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="6WKYICH3_LO" role="lGtFl">
              <property role="LIFWa" value="0" />
              <property role="LIFWd" value="value" />
              <property role="p6zMs" value="0" />
              <property role="p6zMq" value="0" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="6WKYICH3_LP" role="LjaKd">
      <node concept="2TK7Tu" id="6WKYICH3_LQ" role="3cqZAp">
        <property role="2TTd_B" value="!1" />
      </node>
    </node>
    <node concept="1qefOq" id="6WKYICH3_LR" role="25YQFr">
      <node concept="24Z7zp" id="6WKYICH3_LT" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="6WKYICH3_LU" role="1JIkAo">
          <node concept="fzWeU" id="6WKYICH3_LW" role="$a3P1">
            <node concept="24BhzH" id="6WKYICH3_LY" role="3CQlky">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUkdKT">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Operator_result_types_come_from_the_overload_table" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUkdKU" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUkdKW" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5TZAFSUkdKX" role="lGtFl">
          <node concept="7OXhh" id="5TZAFSUkdKY" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdKZ" role="1JIkAo">
          <node concept="1rvuUm" id="5TZAFSUkdL1" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUkdL4" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdL5" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdL6" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdL7" role="7EUXB">
                <node concept="1ku6r5" id="5TZAFSUkdL9" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdLa" role="1JIkAo">
          <node concept="1rvuUm" id="5TZAFSUkdLc" role="$a3P1">
            <node concept="33xXhr" id="5TZAFSUkdLf" role="33kRt2">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdLg" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdLh" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdLi" role="7EUXB">
                <node concept="2Kh4GC" id="5TZAFSUkdLk" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdLl" role="1JIkAo">
          <node concept="3cCKtE" id="5TZAFSUkdLn" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUkdLq" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdLr" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdLs" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdLt" role="7EUXB">
                <node concept="3$6BPE" id="5TZAFSUkdLv" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdLw" role="1JIkAo">
          <node concept="3cCKtE" id="5TZAFSUkdLy" role="$a3P1">
            <node concept="33xXhr" id="5TZAFSUkdL_" role="33kRt2">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="33xXhr" id="5TZAFSUkdLA" role="GyX5B">
              <property role="3b_9E9" value="b" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdLB" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdLC" role="7EUXB">
                <node concept="3$6BPE" id="5TZAFSUkdLE" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdLF" role="1JIkAo">
          <node concept="24nKmX" id="5TZAFSUkdLH" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUkdLK" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdLL" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdLM" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdLN" role="7EUXB">
                <node concept="1ku6r5" id="5TZAFSUkdLP" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdLQ" role="1JIkAo">
          <node concept="2fEAty" id="5TZAFSUkdLS" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUkdLV" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdLW" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdLX" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdLY" role="7EUXB">
                <node concept="3$6BPE" id="5TZAFSUkdM0" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUkdM1" role="1JIkAo">
          <node concept="35EnaC" id="5TZAFSUkdM3" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUkdM6" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5TZAFSUkdM7" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="7CXmI" id="5TZAFSUkdM8" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUkdM9" role="7EUXB">
                <node concept="1ku6r5" id="5TZAFSUkdMb" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUke1U">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Prefix_and_short_circuiting_operators_are_typed" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUke1V" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUke1X" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5TZAFSUke1Y" role="lGtFl">
          <node concept="7OXhh" id="5TZAFSUke1Z" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke20" role="1JIkAo">
          <node concept="128PHo" id="5TZAFSUke22" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUke24" role="3CQlky">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke25" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke26" role="7EUXB">
                <node concept="2Kh4GC" id="5TZAFSUke28" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke29" role="1JIkAo">
          <node concept="2IAfPd" id="5TZAFSUke2b" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUke2d" role="3CQlky">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke2e" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke2f" role="7EUXB">
                <node concept="3OJVyd" id="5TZAFSUke2h" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke2i" role="1JIkAo">
          <node concept="2KQott" id="5TZAFSUke2k" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUke2m" role="3CQlky">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke2n" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke2o" role="7EUXB">
                <node concept="1ku6r5" id="5TZAFSUke2q" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke2r" role="1JIkAo">
          <node concept="3w4Lx9" id="5TZAFSUke2t" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUke2w" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5TZAFSUke2x" role="GyX5B">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke2y" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke2z" role="7EUXB">
                <node concept="3pfgAg" id="5TZAFSUke2_" role="31d$z">
                  <node concept="1ku6r5" id="5TZAFSUke2A" role="3KvU$C" />
                  <node concept="2Kh4GC" id="5TZAFSUke2B" role="3KvU$C" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke2C" role="1JIkAo">
          <node concept="2s4PD$" id="5TZAFSUke2E" role="$a3P1">
            <node concept="33xXhr" id="5TZAFSUke2H" role="33kRt2">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="24BhzH" id="5TZAFSUke2I" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke2J" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke2K" role="7EUXB">
                <node concept="3pfgAg" id="5TZAFSUke2M" role="31d$z">
                  <node concept="1ku6r5" id="5TZAFSUke2N" role="3KvU$C" />
                  <node concept="2Kh4GC" id="5TZAFSUke2O" role="3KvU$C" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUke2P" role="1JIkAo">
          <node concept="24ldvR" id="5TZAFSUke2R" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUke2U" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5TZAFSUke2V" role="GyX5B">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="7CXmI" id="5TZAFSUke2W" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUke2X" role="7EUXB">
                <node concept="2Kh4GC" id="5TZAFSUke2Z" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUmerl">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_operator_with_no_row_in_the_table_cannot_be_applied" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUmerm" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUmero" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5TZAFSUmerp" role="1JIkAo">
          <node concept="3cCKtE" id="5TZAFSUmerr" role="$a3P1">
            <node concept="24BhzH" id="5TZAFSUmeru" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5TZAFSUmerv" role="GyX5B">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="7CXmI" id="5TZAFSUmerw" role="lGtFl">
              <node concept="mDk06" id="5TZAFSUmerx" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUmery" role="1JIkAo">
          <node concept="mk1J3" id="5TZAFSUmer$" role="$a3P1">
            <node concept="33xXhr" id="5TZAFSUmerB" role="33kRt2">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="24BhzH" id="5TZAFSUmerC" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5TZAFSUmerD" role="lGtFl">
              <node concept="mDk06" id="5TZAFSUmerE" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUuZCD">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_member_of_a_union_can_be_assigned_to_it" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5TZAFSUuZCE" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUuZCG" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5TZAFSUuZCH" role="lGtFl">
          <node concept="7OXhh" id="5TZAFSUuZCI" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5TZAFSUuZCJ" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="3pfgAg" id="5TZAFSUuZCK" role="19IeeE">
            <node concept="2Kh4GC" id="5TZAFSUuZCL" role="3KvU$C" />
            <node concept="1ku6r5" id="5TZAFSUuZCM" role="3KvU$C" />
          </node>
          <node concept="24BhzH" id="5TZAFSUuZCN" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5TZAFSUuZCO" role="1JIkAo">
          <property role="TrG5h" value="b" />
          <node concept="3pfgAg" id="5TZAFSUuZCP" role="19IeeE">
            <node concept="1ku6r5" id="5TZAFSUuZCQ" role="3KvU$C" />
            <node concept="2Kh4GC" id="5TZAFSUuZCR" role="3KvU$C" />
          </node>
          <node concept="33xXhr" id="5TZAFSUuZCS" role="1bGQZ8">
            <property role="3b_9E9" value="x" />
          </node>
        </node>
        <node concept="2MuU66" id="5TZAFSUuZCT" role="1JIkAo">
          <property role="TrG5h" value="c" />
          <node concept="3pfgAg" id="5TZAFSUuZCU" role="19IeeE">
            <node concept="3$6BPE" id="5TZAFSUuZCV" role="3KvU$C" />
            <node concept="1ku6r5" id="5TZAFSUuZCW" role="3KvU$C" />
            <node concept="2Kh4GC" id="5TZAFSUuZCX" role="3KvU$C" />
          </node>
          <node concept="3w4Lx9" id="5TZAFSUuZCY" role="1bGQZ8">
            <node concept="24BhzH" id="5TZAFSUuZD1" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5TZAFSUuZD2" role="GyX5B">
              <property role="3b_9E9" value="x" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUuZSM">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_type_that_is_no_member_of_the_union_is_an_error" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5TZAFSUuZSN" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUuZSP" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5TZAFSUuZSQ" role="1JIkAo">
          <property role="TrG5h" value="mistyped" />
          <node concept="3pfgAg" id="5TZAFSUuZSR" role="19IeeE">
            <node concept="1ku6r5" id="5TZAFSUuZSS" role="3KvU$C" />
            <node concept="2Kh4GC" id="5TZAFSUuZST" role="3KvU$C" />
          </node>
          <node concept="1tXIsk" id="5TZAFSUuZSU" role="1bGQZ8">
            <node concept="7CXmI" id="5TZAFSUuZSV" role="lGtFl">
              <node concept="mDk06" id="5TZAFSUuZSW" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5TZAFSUv08o">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_null_and_undefined_literals_are_typed" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUv08p" role="1SKRRt">
      <node concept="24Z7zp" id="5TZAFSUv08r" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5TZAFSUv08s" role="lGtFl">
          <node concept="7OXhh" id="5TZAFSUv08t" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUv08u" role="1JIkAo">
          <node concept="C5IwR" id="5TZAFSUv08w" role="$a3P1">
            <node concept="7CXmI" id="5TZAFSUv08x" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUv08y" role="7EUXB">
                <node concept="2UUy$f" id="5TZAFSUv08$" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUv08_" role="1JIkAo">
          <node concept="2OeDxu" id="5TZAFSUv08B" role="$a3P1">
            <node concept="7CXmI" id="5TZAFSUv08C" role="lGtFl">
              <node concept="30Omv" id="5TZAFSUv08D" role="7EUXB">
                <node concept="3OJVyd" id="5TZAFSUv08F" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5TZAFSUv08G" role="1JIkAo">
          <property role="TrG5h" value="nullable" />
          <node concept="3pfgAg" id="5TZAFSUv08H" role="19IeeE">
            <node concept="2UUy$f" id="5TZAFSUv08I" role="3KvU$C" />
            <node concept="1ku6r5" id="5TZAFSUv08J" role="3KvU$C" />
          </node>
          <node concept="C5IwR" id="5TZAFSUv08K" role="1bGQZ8" />
        </node>
        <node concept="2swglJ" id="5TZAFSUv08L" role="1JIkAo">
          <property role="TrG5h" value="optional" />
          <node concept="3pfgAg" id="5TZAFSUv08M" role="19IeeE">
            <node concept="1ku6r5" id="5TZAFSUv08N" role="3KvU$C" />
            <node concept="3OJVyd" id="5TZAFSUv08O" role="3KvU$C" />
          </node>
          <node concept="2OeDxu" id="5TZAFSUv08P" role="1bGQZ8" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5TZAFSUv0oy">
    <property role="TrG5h" value="Typing_null_creates_the_null_literal" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUv0oz" role="25YQCW">
      <node concept="24Z7zp" id="5TZAFSUv0o_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5TZAFSUv0oA" role="1JIkAo">
          <node concept="24BhzH" id="5TZAFSUv0oC" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5TZAFSUv0oD" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5TZAFSUv0oE" role="LjaKd">
      <node concept="2HxZob" id="5TZAFSUv0oF" role="3cqZAp">
        <node concept="1iFQzN" id="5TZAFSUv0oH" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5TZAFSUv0oI" role="3cqZAp">
        <property role="2TTd_B" value="null" />
      </node>
    </node>
    <node concept="1qefOq" id="5TZAFSUv0oJ" role="25YQFr">
      <node concept="24Z7zp" id="5TZAFSUv0oL" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5TZAFSUv0oM" role="1JIkAo">
          <node concept="24BhzH" id="5TZAFSUv0oO" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUv0oP" role="1JIkAo">
          <node concept="C5IwR" id="5TZAFSUv0oR" role="$a3P1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5TZAFSUv0Cl">
    <property role="TrG5h" value="Typing_undefined_creates_the_undefined_literal" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="5TZAFSUv0Cm" role="25YQCW">
      <node concept="24Z7zp" id="5TZAFSUv0Co" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5TZAFSUv0Cp" role="1JIkAo">
          <node concept="24BhzH" id="5TZAFSUv0Cr" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5TZAFSUv0Cs" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5TZAFSUv0Ct" role="LjaKd">
      <node concept="2HxZob" id="5TZAFSUv0Cu" role="3cqZAp">
        <node concept="1iFQzN" id="5TZAFSUv0Cw" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5TZAFSUv0Cx" role="3cqZAp">
        <property role="2TTd_B" value="undefined" />
      </node>
    </node>
    <node concept="1qefOq" id="5TZAFSUv0Cy" role="25YQFr">
      <node concept="24Z7zp" id="5TZAFSUv0C$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5TZAFSUv0C_" role="1JIkAo">
          <node concept="24BhzH" id="5TZAFSUv0CB" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5TZAFSUv0CC" role="1JIkAo">
          <node concept="2OeDxu" id="5TZAFSUv0CE" role="$a3P1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5TZAFSUAl3y">
    <property role="TrG5h" value="Typing_a_pipe_after_a_type_annotation_makes_a_union" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5TZAFSUAl3z" role="25YQCW">
      <node concept="24Z7zp" id="5TZAFSUAl3_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5TZAFSUAl3A" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="5TZAFSUAl3B" role="19IeeE">
            <node concept="LIFWc" id="5TZAFSUAl3C" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5TZAFSUAl3D" role="LjaKd">
      <node concept="2TK7Tu" id="5TZAFSUAl3E" role="3cqZAp">
        <property role="2TTd_B" value="|string" />
      </node>
    </node>
    <node concept="1qefOq" id="5TZAFSUAl3F" role="25YQFr">
      <node concept="24Z7zp" id="5TZAFSUAl3H" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5TZAFSUAl3I" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="5TZAFSUAl3J" role="19IeeE">
            <node concept="1ku6r5" id="5TZAFSUAl3K" role="3KvU$C" />
            <node concept="2Kh4GC" id="5TZAFSUAl3L" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5TZAFSUAlka">
    <property role="TrG5h" value="Typing_a_pipe_after_a_union_member_appends_a_member" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5TZAFSUAlkb" role="25YQCW">
      <node concept="24Z7zp" id="5TZAFSUAlkd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5TZAFSUAlke" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="5TZAFSUAlkf" role="19IeeE">
            <node concept="2Kh4GC" id="5TZAFSUAlkg" role="3KvU$C" />
            <node concept="1ku6r5" id="5TZAFSUAlkh" role="3KvU$C">
              <node concept="LIFWc" id="5TZAFSUAlki" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5TZAFSUAlkj" role="LjaKd">
      <node concept="2TK7Tu" id="5TZAFSUAlkk" role="3cqZAp">
        <property role="2TTd_B" value="|boolean" />
      </node>
    </node>
    <node concept="1qefOq" id="5TZAFSUAlkl" role="25YQFr">
      <node concept="24Z7zp" id="5TZAFSUAlkn" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5TZAFSUAlko" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="5TZAFSUAlkp" role="19IeeE">
            <node concept="2Kh4GC" id="5TZAFSUAlkq" role="3KvU$C" />
            <node concept="1ku6r5" id="5TZAFSUAlkr" role="3KvU$C" />
            <node concept="3$6BPE" id="5TZAFSUAlks" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINDpRM">
    <property role="TrG5h" value="Deleting_a_member_of_a_two_member_union_twice_leaves_the_type_it_wrapped" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFINDpRN" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINDpRP" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINDpRQ" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFINDpRR" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFINDpRS" role="3KvU$C" />
            <node concept="1ku6r5" id="30$vFINDpRT" role="3KvU$C">
              <node concept="LIFWc" id="30$vFINDpRU" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINDpRV" role="LjaKd">
      <node concept="2HxZob" id="30$vFINPYW_" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINPYWB" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFINDpRW" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINDpRY" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINDpRZ" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINDpS1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINDpS2" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="2Kh4GC" id="30$vFINDpS3" role="19IeeE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINEe9B">
    <property role="TrG5h" value="Deleting_a_member_of_a_longer_union_empties_it_before_it_goes" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFINEe9C" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINEe9E" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINEe9F" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFINEe9G" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFINEe9H" role="3KvU$C" />
            <node concept="1ku6r5" id="30$vFINEe9I" role="3KvU$C">
              <node concept="LIFWc" id="30$vFINEe9J" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="3$6BPE" id="30$vFINEe9K" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINEe9L" role="LjaKd">
      <node concept="2HxZob" id="30$vFINEe9M" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINEe9O" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFINPZh6" role="3cqZAp">
        <property role="2TTd_B" value="boolean" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINEe9P" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINEe9R" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINEe9S" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFINEe9T" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFINEe9U" role="3KvU$C" />
            <node concept="3$6BPE" id="30$vFINEe9V" role="3KvU$C" />
            <node concept="3$6BPE" id="30$vFINPZh7" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="30$vFINF04A">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_union_of_one_member_is_an_error" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFINF04B" role="1SKRRt">
      <node concept="24Z7zp" id="30$vFINF04D" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINF04E" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFINF04F" role="19IeeE">
            <node concept="1ku6r5" id="30$vFINF04G" role="3KvU$C" />
            <node concept="7CXmI" id="30$vFINF04H" role="lGtFl">
              <node concept="mDk06" id="30$vFINF04I" role="7EUXB" />
            </node>
          </node>
          <node concept="24BhzH" id="30$vFINF04J" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINH80h">
    <property role="TrG5h" value="Deleting_the_right_operand_twice_leaves_the_left_one" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="30$vFINH80i" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINH80k" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINH80l" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINH80n" role="$a3P1">
            <node concept="24BhzH" id="30$vFINH80q" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFINH80r" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="30$vFINJuBc" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINH80t" role="LjaKd">
      <node concept="2HxZob" id="30$vFINH80u" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINH80w" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFINOjr0" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINOjr2" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINH80x" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINH80z" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINH80$" role="1JIkAo">
          <node concept="24BhzH" id="30$vFINH80A" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINH8hY">
    <property role="TrG5h" value="Deleting_a_parenthesis_unwraps_the_expression" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="30$vFINH8hZ" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINH8i1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINH8i2" role="1JIkAo">
          <node concept="pJsIj" id="30$vFINH8i4" role="$a3P1">
            <node concept="1rvuUm" id="30$vFINH8i6" role="3tJ$EF">
              <node concept="24BhzH" id="30$vFINH8i9" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="30$vFINH8ia" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="LIFWc" id="30$vFINH8ib" role="lGtFl">
              <property role="LIFWd" value="leftParen" />
              <property role="p6zMs" value="0" />
              <property role="p6zMq" value="0" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINH8ic" role="LjaKd">
      <node concept="2HxZob" id="30$vFINH8id" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINH8if" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINH8ig" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINH8ii" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINH8ij" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINH8il" role="$a3P1">
            <node concept="24BhzH" id="30$vFINH8io" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFINH8ip" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINH8zY">
    <property role="TrG5h" value="Deleting_the_type_annotation_twice_leaves_the_declaration" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFINH8zZ" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINH8$1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINH8$2" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFINH8$3" role="19IeeE">
            <node concept="LIFWc" id="30$vFINH8$4" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
          <node concept="24BhzH" id="30$vFINH8$5" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINH8$6" role="LjaKd">
      <node concept="2HxZob" id="30$vFINQP1r" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINQP1t" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFINH8$7" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINH8$9" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINH8$a" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINH8$c" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINH8$d" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="30$vFINH8$e" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINJvbL">
    <property role="TrG5h" value="Backspacing_the_left_operand_twice_leaves_the_right_one" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="30$vFINJvbM" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINJvbO" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINJvbP" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINJvbR" role="$a3P1">
            <node concept="24BhzH" id="30$vFINJvbU" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="30$vFINJvbV" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="p6zMs" value="0" />
                <property role="p6zMq" value="0" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="30$vFINJvbW" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINJvbX" role="LjaKd">
      <node concept="2HxZob" id="30$vFINJvbY" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINJvc0" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFINOjIo" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINOjIq" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINJvc1" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINJvc3" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINJvc4" role="1JIkAo">
          <node concept="24BhzH" id="30$vFINJvc6" role="$a3P1">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINJvtM">
    <property role="TrG5h" value="Deleting_the_initializer_twice_leaves_the_annotated_declaration" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFINJvtN" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINJvtP" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINJvtQ" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFINJvtR" role="19IeeE" />
          <node concept="24BhzH" id="30$vFINJvtS" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFINJvtT" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINJvtU" role="LjaKd">
      <node concept="2HxZob" id="30$vFINQPl3" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINQPl5" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFINJvtV" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINJvtX" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINJvtY" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINJvu0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFINJvu1" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFINJvu2" role="19IeeE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINKsOz">
    <property role="TrG5h" value="Deleting_a_parenthesis_from_the_right_unwraps_the_expression" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="30$vFINKsO$" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINKsOA" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINKsOB" role="1JIkAo">
          <node concept="pJsIj" id="30$vFINLSJg" role="$a3P1">
            <node concept="1rvuUm" id="30$vFINLSJi" role="3tJ$EF">
              <node concept="24BhzH" id="30$vFINLSJl" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="30$vFINLSJm" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="LIFWc" id="30$vFINLSJn" role="lGtFl">
              <property role="LIFWd" value="rightParen" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINKsOH" role="LjaKd">
      <node concept="2HxZob" id="30$vFINKsOI" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINKsOK" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINKsOL" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINKsON" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINKsOO" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINLSJo" role="$a3P1">
            <node concept="24BhzH" id="30$vFINLSJr" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFINLSJs" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFINMIet">
    <property role="TrG5h" value="Deleting_the_right_operand_leaves_the_operation_with_a_hole" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="30$vFINMIeu" role="25YQCW">
      <node concept="24Z7zp" id="30$vFINMIew" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINMIex" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINMIez" role="$a3P1">
            <node concept="24BhzH" id="30$vFINMIeA" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFINMIeB" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="30$vFINMIeC" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFINMIeD" role="LjaKd">
      <node concept="2HxZob" id="30$vFINMIeE" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFINMIeG" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFINMIeH" role="3cqZAp">
        <property role="2TTd_B" value="3" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFINMIeI" role="25YQFr">
      <node concept="24Z7zp" id="30$vFINMIeK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFINMIeL" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFINMIeN" role="$a3P1">
            <node concept="24BhzH" id="30$vFINMIeQ" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFINMIeR" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOrGvF">
    <property role="TrG5h" value="Typing_brackets_after_a_type_annotation_makes_an_array" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrGvG" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOrGvI" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrGvJ" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOrGvK" role="19IeeE">
            <node concept="LIFWc" id="30$vFIOrGvL" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOrGvM" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOrGvN" role="3cqZAp">
        <property role="2TTd_B" value="[]" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOrGvO" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOrGvQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrGvR" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOrGvS" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrGvU" role="2XRTOt" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOrGNm">
    <property role="TrG5h" value="Typing_brackets_after_a_union_member_arrays_that_member_only" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrGNn" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOrGNp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrGNq" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOrGNr" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrGNs" role="3KvU$C" />
            <node concept="2Kh4GC" id="30$vFIOrGNt" role="3KvU$C">
              <node concept="LIFWc" id="30$vFIOrGNu" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOrGNv" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOrGNw" role="3cqZAp">
        <property role="2TTd_B" value="[]" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOrGNx" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOrGNz" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrGN$" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOrGN_" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrGNA" role="3KvU$C" />
            <node concept="29s1Bg" id="30$vFIOrGNB" role="3KvU$C">
              <node concept="2Kh4GC" id="30$vFIOrGND" role="2XRTOt" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOrH7k">
    <property role="TrG5h" value="Deleting_the_array_suffix_leaves_the_element_type" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrH7l" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOrH7n" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrH7o" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOrH7p" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrH7r" role="2XRTOt">
              <node concept="LIFWc" id="30$vFIOvaNY" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOrH7t" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOrH7u" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOrH7w" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOrH7x" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOrH7z" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrH7$" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOrH7_" role="19IeeE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOrHra">
    <property role="TrG5h" value="Backspacing_the_array_suffix_undoes_the_keystroke_that_made_it" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrHrb" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOrHrd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrHre" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOrHrf" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrHrh" role="2XRTOt" />
            <node concept="LIFWc" id="30$vFIOrHri" role="lGtFl">
              <property role="LIFWd" value="arraySuffix" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="2" />
              <property role="p6zMq" value="2" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOrHrj" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOrHrk" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOrHrm" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOrHrn" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOrHrp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrHrq" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOrHrr" role="19IeeE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="30$vFIOrHJI">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_array_type_is_a_type_like_any_other" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrHJJ" role="1SKRRt">
      <node concept="24Z7zp" id="30$vFIOrHJL" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="30$vFIOrHJM" role="lGtFl">
          <node concept="7OXhh" id="30$vFIOrHJN" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="30$vFIOrHJO" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="29s1Bg" id="30$vFIOrHJP" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrHJR" role="2XRTOt" />
          </node>
        </node>
        <node concept="2swglJ" id="30$vFIOrHJS" role="1JIkAo">
          <property role="TrG5h" value="b" />
          <node concept="3pfgAg" id="30$vFIOrHJT" role="19IeeE">
            <node concept="29s1Bg" id="30$vFIOrHJU" role="3KvU$C">
              <node concept="1ku6r5" id="30$vFIOrHJW" role="2XRTOt" />
            </node>
            <node concept="1ku6r5" id="30$vFIOrHJX" role="3KvU$C" />
          </node>
          <node concept="24BhzH" id="30$vFIOrHJY" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="30$vFIOrHJZ" role="1JIkAo">
          <property role="TrG5h" value="c" />
          <node concept="29s1Bg" id="30$vFIOrHK0" role="19IeeE">
            <node concept="29s1Bg" id="30$vFIOrHK2" role="2XRTOt">
              <node concept="2Kh4GC" id="30$vFIOrHK4" role="2XRTOt" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="30$vFIOrIny">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_number_is_not_an_array_of_numbers" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOrInz" role="1SKRRt">
      <node concept="24Z7zp" id="30$vFIOrIn_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOrInA" role="1JIkAo">
          <property role="TrG5h" value="mistyped" />
          <node concept="29s1Bg" id="30$vFIOrInB" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOrInD" role="2XRTOt" />
          </node>
          <node concept="24BhzH" id="30$vFIOrInE" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="7CXmI" id="30$vFIOrInF" role="lGtFl">
              <node concept="mDk06" id="30$vFIOrInG" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOvb8y">
    <property role="TrG5h" value="Typing_a_pipe_after_an_arrays_element_unions_the_element" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOvb8z" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOvb8_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOvb8A" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOvb8B" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFIOvb8D" role="2XRTOt">
              <node concept="LIFWc" id="30$vFIOvb8E" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOvb8F" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOvb8G" role="3cqZAp">
        <property role="2TTd_B" value="|number" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOvb8H" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOvb8J" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOvb8K" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOvb8L" role="19IeeE">
            <node concept="3pfgAg" id="30$vFIOvb8N" role="2XRTOt">
              <node concept="2Kh4GC" id="30$vFIOvb8O" role="3KvU$C" />
              <node concept="1ku6r5" id="30$vFIOvb8P" role="3KvU$C" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOvqQj">
    <property role="TrG5h" value="Deleting_at_an_array_element_that_is_a_union_member_empties_the_member" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="30$vFIOvqQk" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOvqQm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOvqQn" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOvqQo" role="19IeeE">
            <node concept="3pfgAg" id="30$vFIOvqQq" role="2XRTOt">
              <node concept="1ku6r5" id="30$vFIOvqQr" role="3KvU$C" />
              <node concept="2Kh4GC" id="30$vFIOvqQs" role="3KvU$C">
                <node concept="LIFWc" id="30$vFIOvqQt" role="lGtFl">
                  <property role="LIFWd" value="typeKeyword" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="6" />
                  <property role="p6zMq" value="6" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOvqQu" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOvqQv" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOvqQx" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOvqQy" role="3cqZAp">
        <property role="2TTd_B" value="boolean" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOvqQz" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOvqQ_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOvqQA" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOvqQB" role="19IeeE">
            <node concept="3pfgAg" id="30$vFIOvqQD" role="2XRTOt">
              <node concept="1ku6r5" id="30$vFIOvqQE" role="3KvU$C" />
              <node concept="3$6BPE" id="30$vFIOvqQF" role="3KvU$C" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="30$vFIOLomV">
    <property role="TrG5h" value="EditorText" />
    <node concept="3Tm1VV" id="30$vFIOLomX" role="1B3o_S" />
    <node concept="312cEg" id="30$vFIOMsai" role="jymVt">
      <property role="TrG5h" value="editor" />
      <node concept="3Tm6S6" id="30$vFIOMsal" role="1B3o_S" />
      <node concept="3uibUv" id="30$vFIOMsam" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="30$vFIOMsan" role="jymVt" />
    <node concept="3clFbW" id="30$vFIOMsao" role="jymVt">
      <node concept="3cqZAl" id="30$vFIOMsap" role="3clF45" />
      <node concept="3Tm1VV" id="30$vFIOMsas" role="1B3o_S" />
      <node concept="37vLTG" id="30$vFIOMsat" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="30$vFIOMsav" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="30$vFIOMsaw" role="3clF47">
        <node concept="3clFbF" id="30$vFIOMsax" role="3cqZAp">
          <node concept="37vLTI" id="30$vFIOMsaz" role="3clFbG">
            <node concept="2OqwBi" id="30$vFIOMsaA" role="37vLTJ">
              <node concept="Xjq3P" id="30$vFIOMsaD" role="2Oq$k0" />
              <node concept="2OwXpG" id="30$vFIOMsaE" role="2OqNvi">
                <ref role="2Oxat5" node="30$vFIOMsai" resolve="editor" />
              </node>
            </node>
            <node concept="37vLTw" id="30$vFIOMsaF" role="37vLTx">
              <ref role="3cqZAo" node="30$vFIOMsat" resolve="editor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="30$vFIOMsaG" role="jymVt" />
    <node concept="3clFb_" id="30$vFIOMsaH" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3Tm1VV" id="30$vFIOMsaL" role="1B3o_S" />
      <node concept="3cqZAl" id="30$vFIOMsaM" role="3clF45" />
      <node concept="3clFbS" id="30$vFIOMsaN" role="3clF47">
        <node concept="3SKdUt" id="30$vFIOMsaO" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsaS" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsaU" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsaV" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsaW" role="1PaTwD">
              <property role="3oM_SC" value="thing" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsaX" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsaY" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsaZ" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb0" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb2" role="1PaTwD">
              <property role="3oM_SC" value="EDT," />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb3" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb5" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb7" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb9" role="1PaTwD">
              <property role="3oM_SC" value="Runnable" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsba" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbb" role="1PaTwD">
              <property role="3oM_SC" value="all:" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbc" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsbd" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsbh" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsbj" role="1PaTwD">
              <property role="3oM_SC" value="EditorTestCase's" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbk" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbl" role="1PaTwD">
              <property role="3oM_SC" value="block" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbm" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbn" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbo" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbp" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbq" role="1PaTwD">
              <property role="3oM_SC" value="BaseEditorTestBody" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbr" role="1PaTwD">
              <property role="3oM_SC" value="calls" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbs" role="1PaTwD">
              <property role="3oM_SC" value="testMethodImpl" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsbt" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsbx" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsbz" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb$" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsb_" role="1PaTwD">
              <property role="3oM_SC" value="sends" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbA" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbC" role="1PaTwD">
              <property role="3oM_SC" value="keystrokes" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbD" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbE" role="1PaTwD">
              <property role="3oM_SC" value="runUndoableInEDTAndWait," />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbF" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbG" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbH" role="1PaTwD">
              <property role="3oM_SC" value="keystroke" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsbI" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsbM" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsbO" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbP" role="1PaTwD">
              <property role="3oM_SC" value="leave" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbQ" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbR" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbS" role="1PaTwD">
              <property role="3oM_SC" value="event" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbU" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbV" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbW" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbX" role="1PaTwD">
              <property role="3oM_SC" value="turned" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbY" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsbZ" role="1PaTwD">
              <property role="3oM_SC" value="cells" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc0" role="1PaTwD">
              <property role="3oM_SC" value="yet." />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc1" role="1PaTwD">
              <property role="3oM_SC" value="Reading" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc3" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc4" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsc5" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsc9" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMscb" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscc" role="1PaTwD">
              <property role="3oM_SC" value="flushing" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscd" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsce" role="1PaTwD">
              <property role="3oM_SC" value="answers" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscf" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscg" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsch" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsci" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscj" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsck" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscl" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscm" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscn" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsco" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscp" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMscq" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMscu" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMscw" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscx" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscy" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscz" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc$" role="1PaTwD">
              <property role="3oM_SC" value="answer" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsc_" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscA" role="1PaTwD">
              <property role="3oM_SC" value="exactly" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscC" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscD" role="1PaTwD">
              <property role="3oM_SC" value="worth" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscE" role="1PaTwD">
              <property role="3oM_SC" value="writing" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscF" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscH" role="1PaTwD">
              <property role="3oM_SC" value="flushing" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscI" role="1PaTwD">
              <property role="3oM_SC" value="off" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscK" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMscL" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMscP" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMscR" role="1PaTwD">
              <property role="3oM_SC" value="logs" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscS" role="1PaTwD">
              <property role="3oM_SC" value="&quot;This" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscT" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscU" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscV" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscW" role="1PaTwD">
              <property role="3oM_SC" value="called" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscX" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscY" role="1PaTwD">
              <property role="3oM_SC" value="EDT&quot;" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMscZ" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd0" role="1PaTwD">
              <property role="3oM_SC" value="ERROR," />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd1" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd2" role="1PaTwD">
              <property role="3oM_SC" value="fails" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd3" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd4" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd5" role="1PaTwD">
              <property role="3oM_SC" value="whatever" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsd7" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsdb" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsdd" role="1PaTwD">
              <property role="3oM_SC" value="asserted." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="30$vFIOMsde" role="3cqZAp">
          <node concept="2OqwBi" id="30$vFIOMsdg" role="3clFbG">
            <node concept="2OqwBi" id="30$vFIOMsdj" role="2Oq$k0">
              <node concept="2OqwBi" id="30$vFIOMsdm" role="2Oq$k0">
                <node concept="Xjq3P" id="30$vFIOMsdp" role="2Oq$k0" />
                <node concept="2OwXpG" id="30$vFIOMsdq" role="2OqNvi">
                  <ref role="2Oxat5" node="30$vFIOMsai" resolve="editor" />
                </node>
              </node>
              <node concept="liA8E" id="30$vFIOMsdr" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="30$vFIOMsds" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorContext.flushEvents()" resolve="flushEvents" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="30$vFIOMsdt" role="jymVt" />
    <node concept="2YIFZL" id="30$vFIOLomY" role="jymVt">
      <property role="TrG5h" value="withCaret" />
      <node concept="3Tm1VV" id="30$vFIOLon2" role="1B3o_S" />
      <node concept="3uibUv" id="30$vFIOLon3" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="30$vFIOLon4" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="30$vFIOLon6" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="30$vFIOLon7" role="3clF47">
        <node concept="3SKdUt" id="30$vFIOLon8" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLonc" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLone" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonf" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLong" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonh" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoni" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonj" role="1PaTwD">
              <property role="3oM_SC" value="reads" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonk" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonl" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonm" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonn" role="1PaTwD">
              <property role="3oM_SC" value="|" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLono" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonq" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonr" role="1PaTwD">
              <property role="3oM_SC" value="is." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLons" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLonw" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLony" role="1PaTwD">
              <property role="3oM_SC" value="//" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonz" role="1PaTwD">
              <property role="3oM_SC" value="One" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLon$" role="1PaTwD">
              <property role="3oM_SC" value="string" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLon_" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonA" role="1PaTwD">
              <property role="3oM_SC" value="says" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonB" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonC" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonE" role="1PaTwD">
              <property role="3oM_SC" value="notation" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonF" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonG" role="1PaTwD">
              <property role="3oM_SC" value="shows" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonH" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonI" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonK" role="1PaTwD">
              <property role="3oM_SC" value="next" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonL" role="1PaTwD">
              <property role="3oM_SC" value="keystroke" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonM" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLonN" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLonR" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLonT" role="1PaTwD">
              <property role="3oM_SC" value="land," />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonU" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonV" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonW" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonX" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonY" role="1PaTwD">
              <property role="3oM_SC" value="EditorTestCase's" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLonZ" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo0" role="1PaTwD">
              <property role="3oM_SC" value="comparison" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo1" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo2" role="1PaTwD">
              <property role="3oM_SC" value="say:" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo3" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo4" role="1PaTwD">
              <property role="3oM_SC" value="edits" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo5" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoo6" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLoo7" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLoob" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLood" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooe" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoof" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoog" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooh" role="1PaTwD">
              <property role="3oM_SC" value="leave" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooj" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLook" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLool" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoom" role="1PaTwD">
              <property role="3oM_SC" value="places" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoon" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooo" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoop" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooq" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoor" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoos" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoot" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoou" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLoov" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLooz" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLoo_" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooA" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooB" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooC" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooD" role="1PaTwD">
              <property role="3oM_SC" value="user." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLooE" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLooI" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLooK" role="1PaTwD">
              <property role="3oM_SC" value="//" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooL" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooM" role="1PaTwD">
              <property role="3oM_SC" value="cells" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooN" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooP" role="1PaTwD">
              <property role="3oM_SC" value="leaves" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooQ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooR" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooS" role="1PaTwD">
              <property role="3oM_SC" value="order," />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooT" role="1PaTwD">
              <property role="3oM_SC" value="joined" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooU" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooW" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooX" role="1PaTwD">
              <property role="3oM_SC" value="space" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooY" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLooZ" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLop0" role="1PaTwD">
              <property role="3oM_SC" value="laid" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLop1" role="1PaTwD">
              <property role="3oM_SC" value="out," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLop2" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLop6" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLop8" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLop9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopa" role="1PaTwD">
              <property role="3oM_SC" value="answer" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopb" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopc" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopd" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLope" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopf" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopg" role="1PaTwD">
              <property role="3oM_SC" value="style" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoph" role="1PaTwD">
              <property role="3oM_SC" value="item" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopi" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopj" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopk" role="1PaTwD">
              <property role="3oM_SC" value="indent" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopl" role="1PaTwD">
              <property role="3oM_SC" value="does." />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopm" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopn" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopo" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopp" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdu" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdv" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLopq" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLopu" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLopw" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopx" role="1PaTwD">
              <property role="3oM_SC" value="hole" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopy" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopz" role="1PaTwD">
              <property role="3oM_SC" value="two-step" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLop$" role="1PaTwD">
              <property role="3oM_SC" value="delete" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLop_" role="1PaTwD">
              <property role="3oM_SC" value="leaves," />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopA" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopB" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopC" role="1PaTwD">
              <property role="3oM_SC" value="property" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopD" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopE" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopF" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopG" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopH" role="1PaTwD">
              <property role="3oM_SC" value="_," />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopI" role="1PaTwD">
              <property role="3oM_SC" value="since" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopJ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopL" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLopP" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLopT" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLopV" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopW" role="1PaTwD">
              <property role="3oM_SC" value="position" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopX" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopY" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLopZ" role="1PaTwD">
              <property role="3oM_SC" value="nothing." />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq0" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq1" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq2" role="1PaTwD">
              <property role="3oM_SC" value="goes" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq3" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq5" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq6" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq8" role="1PaTwD">
              <property role="3oM_SC" value="cell" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoq9" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqa" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqb" role="1PaTwD">
              <property role="3oM_SC" value="in;" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdw" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOLoqc" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOLoqg" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOLoqi" role="1PaTwD">
              <property role="3oM_SC" value="selection" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqj" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqk" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoql" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqm" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOLoqn" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdx" role="1PaTwD">
              <property role="3oM_SC" value="label" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdy" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdz" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd$" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsd_" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdA" role="1PaTwD">
              <property role="3oM_SC" value="selected" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdB" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdC" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdD" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdE" role="1PaTwD">
              <property role="3oM_SC" value="position" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdG" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdH" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="30$vFIOMsdI" role="3cqZAp">
          <node concept="1PaTwC" id="30$vFIOMsdM" role="1aUNEU">
            <node concept="3oM_SD" id="30$vFIOMsdO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdP" role="1PaTwD">
              <property role="3oM_SC" value="written" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdQ" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdR" role="1PaTwD">
              <property role="3oM_SC" value="[the" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdS" role="1PaTwD">
              <property role="3oM_SC" value="cell]" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdT" role="1PaTwD">
              <property role="3oM_SC" value="instead," />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdU" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdV" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdW" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdX" role="1PaTwD">
              <property role="3oM_SC" value="position" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdY" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMsdZ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMse0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="30$vFIOMse1" role="1PaTwD">
              <property role="3oM_SC" value="mark." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="30$vFIOMse2" role="3cqZAp">
          <node concept="2YIFZM" id="30$vFIOMse4" role="3clFbG">
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <node concept="2ShNRf" id="30$vFIOMse5" role="37wK5m">
              <node concept="1pGfFk" id="30$vFIOMse7" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="30$vFIOMsao" resolve="EditorText" />
                <node concept="37vLTw" id="30$vFIOMse8" role="37wK5m">
                  <ref role="3cqZAo" node="30$vFIOLon4" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30$vFIOMse9" role="3cqZAp">
          <node concept="3cpWsn" id="30$vFIOMsec" role="3cpWs9">
            <property role="TrG5h" value="caretCell" />
            <node concept="3uibUv" id="30$vFIOMsee" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="30$vFIOMsef" role="33vP2m">
              <node concept="37vLTw" id="30$vFIOMsei" role="2Oq$k0">
                <ref role="3cqZAo" node="30$vFIOLon4" resolve="editor" />
              </node>
              <node concept="liA8E" id="30$vFIOMsej" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30$vFIOLoqI" role="3cqZAp">
          <node concept="3cpWsn" id="30$vFIOLoqL" role="3cpWs9">
            <property role="TrG5h" value="caret" />
            <node concept="10Oyi0" id="30$vFIOLoqN" role="1tU5fm" />
            <node concept="3cmrfG" id="30$vFIOLoqO" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="30$vFIOLoqP" role="3cqZAp">
          <node concept="2ZW3vV" id="30$vFIOLoqS" role="3clFbw">
            <node concept="37vLTw" id="30$vFIOLoqV" role="2ZW6bz">
              <ref role="3cqZAo" node="30$vFIOMsec" resolve="caretCell" />
            </node>
            <node concept="3uibUv" id="30$vFIOLoqW" role="2ZW6by">
              <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
            </node>
          </node>
          <node concept="3clFbS" id="30$vFIOLoqX" role="3clFbx">
            <node concept="3clFbF" id="30$vFIOLoqY" role="3cqZAp">
              <node concept="37vLTI" id="30$vFIOLor0" role="3clFbG">
                <node concept="37vLTw" id="30$vFIOLor3" role="37vLTJ">
                  <ref role="3cqZAo" node="30$vFIOLoqL" resolve="caret" />
                </node>
                <node concept="2OqwBi" id="30$vFIOLor4" role="37vLTx">
                  <node concept="1eOMI4" id="30$vFIOLor7" role="2Oq$k0">
                    <node concept="10QFUN" id="30$vFIOLor9" role="1eOMHV">
                      <node concept="3uibUv" id="30$vFIOLorc" role="10QFUM">
                        <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                      </node>
                      <node concept="37vLTw" id="30$vFIOLord" role="10QFUP">
                        <ref role="3cqZAo" node="30$vFIOMsec" resolve="caretCell" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="30$vFIOLore" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Label.getCaretPosition()" resolve="getCaretPosition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30$vFIOLorf" role="3cqZAp">
          <node concept="3cpWsn" id="30$vFIOLori" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="30$vFIOLork" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="30$vFIOLorl" role="33vP2m">
              <node concept="1pGfFk" id="30$vFIOLorn" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="30$vFIOLoro" role="3cqZAp">
          <node concept="3cpWsn" id="30$vFIOLorr" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="30$vFIOLort" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2YIFZM" id="30$vFIOLoru" role="33vP2m">
              <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
              <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getFirstLeaf(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getFirstLeaf" />
              <node concept="2OqwBi" id="30$vFIOLorv" role="37wK5m">
                <node concept="37vLTw" id="30$vFIOLory" role="2Oq$k0">
                  <ref role="3cqZAo" node="30$vFIOLon4" resolve="editor" />
                </node>
                <node concept="liA8E" id="30$vFIOLorz" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="30$vFIOLor$" role="3cqZAp">
          <node concept="3y3z36" id="30$vFIOLorB" role="2$JKZa">
            <node concept="37vLTw" id="30$vFIOLorE" role="3uHU7B">
              <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
            </node>
            <node concept="10Nm6u" id="30$vFIOLorF" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="30$vFIOLorG" role="2LFqv$">
            <node concept="3cpWs8" id="30$vFIOLorH" role="3cqZAp">
              <node concept="3cpWsn" id="30$vFIOLorK" role="3cpWs9">
                <property role="TrG5h" value="rendered" />
                <node concept="3uibUv" id="30$vFIOLorM" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="30$vFIOLorN" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="30$vFIOMsek" role="3cqZAp">
              <node concept="3cpWsn" id="30$vFIOMsen" role="3cpWs9">
                <property role="TrG5h" value="isLabel" />
                <node concept="10P_77" id="30$vFIOMsep" role="1tU5fm" />
                <node concept="2ZW3vV" id="30$vFIOMseq" role="33vP2m">
                  <node concept="37vLTw" id="30$vFIOMset" role="2ZW6bz">
                    <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
                  </node>
                  <node concept="3uibUv" id="30$vFIOMseu" role="2ZW6by">
                    <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="30$vFIOMsev" role="3cqZAp">
              <node concept="37vLTw" id="30$vFIOMsey" role="3clFbw">
                <ref role="3cqZAo" node="30$vFIOMsen" resolve="isLabel" />
              </node>
              <node concept="3clFbS" id="30$vFIOMsez" role="3clFbx">
                <node concept="3clFbF" id="30$vFIOMse$" role="3cqZAp">
                  <node concept="37vLTI" id="30$vFIOMseA" role="3clFbG">
                    <node concept="37vLTw" id="30$vFIOMseD" role="37vLTJ">
                      <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                    </node>
                    <node concept="2OqwBi" id="30$vFIOMseE" role="37vLTx">
                      <node concept="1eOMI4" id="30$vFIOMseH" role="2Oq$k0">
                        <node concept="10QFUN" id="30$vFIOMseJ" role="1eOMHV">
                          <node concept="3uibUv" id="30$vFIOMseM" role="10QFUM">
                            <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
                          </node>
                          <node concept="37vLTw" id="30$vFIOMseN" role="10QFUP">
                            <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="30$vFIOMseO" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Label.getText()" resolve="getText" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="30$vFIOLose" role="3cqZAp">
              <node concept="3clFbC" id="30$vFIOLosh" role="3clFbw">
                <node concept="37vLTw" id="30$vFIOLosk" role="3uHU7B">
                  <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
                </node>
                <node concept="37vLTw" id="30$vFIOLosl" role="3uHU7w">
                  <ref role="3cqZAo" node="30$vFIOMsec" resolve="caretCell" />
                </node>
              </node>
              <node concept="3clFbS" id="30$vFIOLosm" role="3clFbx">
                <node concept="3clFbJ" id="30$vFIOLosn" role="3cqZAp">
                  <node concept="1Wc70l" id="30$vFIOLosq" role="3clFbw">
                    <node concept="2d3UOw" id="30$vFIOLost" role="3uHU7B">
                      <node concept="37vLTw" id="30$vFIOLosw" role="3uHU7B">
                        <ref role="3cqZAo" node="30$vFIOLoqL" resolve="caret" />
                      </node>
                      <node concept="3cmrfG" id="30$vFIOLosx" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="2dkUwp" id="30$vFIOLosy" role="3uHU7w">
                      <node concept="37vLTw" id="30$vFIOLos_" role="3uHU7B">
                        <ref role="3cqZAo" node="30$vFIOLoqL" resolve="caret" />
                      </node>
                      <node concept="2OqwBi" id="30$vFIOLosA" role="3uHU7w">
                        <node concept="37vLTw" id="30$vFIOLosD" role="2Oq$k0">
                          <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                        </node>
                        <node concept="liA8E" id="30$vFIOLosE" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="30$vFIOLosF" role="3clFbx">
                    <node concept="3clFbF" id="30$vFIOLosG" role="3cqZAp">
                      <node concept="37vLTI" id="30$vFIOLosI" role="3clFbG">
                        <node concept="37vLTw" id="30$vFIOLosL" role="37vLTJ">
                          <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                        </node>
                        <node concept="3cpWs3" id="30$vFIOLosM" role="37vLTx">
                          <node concept="3cpWs3" id="30$vFIOLosP" role="3uHU7B">
                            <node concept="2OqwBi" id="30$vFIOLosS" role="3uHU7B">
                              <node concept="37vLTw" id="30$vFIOLosV" role="2Oq$k0">
                                <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                              </node>
                              <node concept="liA8E" id="30$vFIOLosW" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                <node concept="3cmrfG" id="30$vFIOLosX" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="37vLTw" id="30$vFIOLosY" role="37wK5m">
                                  <ref role="3cqZAo" node="30$vFIOLoqL" resolve="caret" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="30$vFIOLosZ" role="3uHU7w">
                              <property role="Xl_RC" value="|" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="30$vFIOLot0" role="3uHU7w">
                            <node concept="37vLTw" id="30$vFIOLot3" role="2Oq$k0">
                              <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                            </node>
                            <node concept="liA8E" id="30$vFIOLot4" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                              <node concept="37vLTw" id="30$vFIOLot5" role="37wK5m">
                                <ref role="3cqZAo" node="30$vFIOLoqL" resolve="caret" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="30$vFIOLot6" role="9aQIa">
                    <node concept="3clFbS" id="30$vFIOLot8" role="9aQI4">
                      <node concept="3clFbF" id="30$vFIOLot9" role="3cqZAp">
                        <node concept="37vLTI" id="30$vFIOLotb" role="3clFbG">
                          <node concept="37vLTw" id="30$vFIOLote" role="37vLTJ">
                            <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                          </node>
                          <node concept="3cpWs3" id="30$vFIOLotf" role="37vLTx">
                            <node concept="3cpWs3" id="30$vFIOLoti" role="3uHU7B">
                              <node concept="Xl_RD" id="30$vFIOLotl" role="3uHU7B">
                                <property role="Xl_RC" value="[" />
                              </node>
                              <node concept="37vLTw" id="30$vFIOLotm" role="3uHU7w">
                                <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="30$vFIOLotn" role="3uHU7w">
                              <property role="Xl_RC" value="]" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="30$vFIOM_K1" role="3eNLev">
                <node concept="1Wc70l" id="30$vFIOM_K4" role="3eO9$A">
                  <node concept="37vLTw" id="30$vFIOM_K7" role="3uHU7B">
                    <ref role="3cqZAo" node="30$vFIOMsen" resolve="isLabel" />
                  </node>
                  <node concept="3clFbC" id="30$vFIOM_K8" role="3uHU7w">
                    <node concept="2OqwBi" id="30$vFIOM_Kb" role="3uHU7B">
                      <node concept="37vLTw" id="30$vFIOM_Ke" role="2Oq$k0">
                        <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                      </node>
                      <node concept="liA8E" id="30$vFIOM_Kf" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="30$vFIOM_Kg" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="30$vFIOM_Kh" role="3eOfB_">
                  <node concept="3clFbF" id="30$vFIOM_Ki" role="3cqZAp">
                    <node concept="37vLTI" id="30$vFIOM_Kk" role="3clFbG">
                      <node concept="37vLTw" id="30$vFIOM_Kn" role="37vLTJ">
                        <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                      </node>
                      <node concept="Xl_RD" id="30$vFIOM_Ko" role="37vLTx">
                        <property role="Xl_RC" value="_" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="30$vFIOLoto" role="3cqZAp">
              <node concept="3eOSWO" id="30$vFIOLotr" role="3clFbw">
                <node concept="2OqwBi" id="30$vFIOLotu" role="3uHU7B">
                  <node concept="37vLTw" id="30$vFIOLotx" role="2Oq$k0">
                    <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                  </node>
                  <node concept="liA8E" id="30$vFIOLoty" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
                <node concept="3cmrfG" id="30$vFIOLotz" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="30$vFIOLot$" role="3clFbx">
                <node concept="3clFbJ" id="30$vFIOLot_" role="3cqZAp">
                  <node concept="3eOSWO" id="30$vFIOLotC" role="3clFbw">
                    <node concept="2OqwBi" id="30$vFIOLotF" role="3uHU7B">
                      <node concept="37vLTw" id="30$vFIOLotI" role="2Oq$k0">
                        <ref role="3cqZAo" node="30$vFIOLori" resolve="text" />
                      </node>
                      <node concept="liA8E" id="30$vFIOLotJ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="30$vFIOLotK" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="30$vFIOLotL" role="3clFbx">
                    <node concept="3clFbF" id="30$vFIOLotM" role="3cqZAp">
                      <node concept="2OqwBi" id="30$vFIOLotO" role="3clFbG">
                        <node concept="37vLTw" id="30$vFIOLotR" role="2Oq$k0">
                          <ref role="3cqZAo" node="30$vFIOLori" resolve="text" />
                        </node>
                        <node concept="liA8E" id="30$vFIOLotS" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="Xl_RD" id="30$vFIOLotT" role="37wK5m">
                            <property role="Xl_RC" value=" " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="30$vFIOLotU" role="3cqZAp">
                  <node concept="2OqwBi" id="30$vFIOLotW" role="3clFbG">
                    <node concept="37vLTw" id="30$vFIOLotZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="30$vFIOLori" resolve="text" />
                    </node>
                    <node concept="liA8E" id="30$vFIOLou0" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="37vLTw" id="30$vFIOLou1" role="37wK5m">
                        <ref role="3cqZAo" node="30$vFIOLorK" resolve="rendered" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="30$vFIOLou2" role="3cqZAp">
              <node concept="37vLTI" id="30$vFIOLou4" role="3clFbG">
                <node concept="37vLTw" id="30$vFIOLou7" role="37vLTJ">
                  <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
                </node>
                <node concept="2YIFZM" id="30$vFIOLou8" role="37vLTx">
                  <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
                  <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getNextLeaf(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getNextLeaf" />
                  <node concept="37vLTw" id="30$vFIOLou9" role="37wK5m">
                    <ref role="3cqZAo" node="30$vFIOLorr" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="30$vFIOLoua" role="3cqZAp">
          <node concept="2OqwBi" id="30$vFIOLoub" role="3cqZAk">
            <node concept="37vLTw" id="30$vFIOLoue" role="2Oq$k0">
              <ref role="3cqZAo" node="30$vFIOLori" resolve="text" />
            </node>
            <node concept="liA8E" id="30$vFIOLouf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="30$vFIOMsah" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOLxPf">
    <property role="TrG5h" value="Deleting_the_initializer_puts_the_caret_after_the_type_annotation" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOLxPg" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOLxPi" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="30$vFIOLxPj" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="1ku6r5" id="30$vFIOLxPk" role="19IeeE" />
          <node concept="24BhzH" id="30$vFIOLxPl" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFIOLxPm" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOLxPn" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOLxPo" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOLxPq" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOLxPr" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOLxPt" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOLxPu" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOLxPx" role="3tpDZB">
          <property role="Xl_RC" value="module m { const a : number| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOLxPy" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOLxPz" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOLyDG">
    <property role="TrG5h" value="Emptying_the_initializer_puts_the_caret_in_the_hole_it_leaves" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOLyDH" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOLyDJ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="30$vFIOLyDK" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="1ku6r5" id="30$vFIOLyDL" role="19IeeE" />
          <node concept="24BhzH" id="30$vFIOLyDM" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFIOLyDN" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOLyDO" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOLyDP" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOLyDR" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOLyDS" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOLyDV" role="3tpDZB">
          <property role="Xl_RC" value="module m { const a : number = | ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOLyDW" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOLyDX" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOLz4T">
    <property role="TrG5h" value="Emptying_the_right_operand_puts_the_caret_in_the_hole_it_leaves" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOLz4U" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOLz4W" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOLz4X" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFIOLz4Z" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOLz52" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFIOLz53" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="30$vFIOLz54" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOLz55" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOLz56" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOLz58" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOLz59" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOLz5c" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 + | ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOLz5d" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOLz5e" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOLzU7">
    <property role="TrG5h" value="Typing_a_colon_puts_the_caret_in_the_annotation_it_opens" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOLzU8" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOLzUa" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOLzUb" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="30$vFIOLzUc" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="LIFWc" id="30$vFIOLzUd" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOLzUe" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOLzUf" role="3cqZAp">
        <property role="2TTd_B" value=":" />
      </node>
      <node concept="3vlDli" id="30$vFIOLzUg" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOLzUj" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : | = 1 ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOLzUk" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOLzUl" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOL$lG">
    <property role="TrG5h" value="Deleting_the_left_parenthesis_puts_the_caret_before_the_expression" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOL$lH" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOL$lJ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOL$lK" role="1JIkAo">
          <node concept="pJsIj" id="30$vFIOL$lM" role="$a3P1">
            <node concept="1rvuUm" id="30$vFIOL$lO" role="3tJ$EF">
              <node concept="24BhzH" id="30$vFIOL$lR" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="30$vFIOL$lS" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="LIFWc" id="30$vFIOL$lT" role="lGtFl">
              <property role="LIFWd" value="leftParen" />
              <property role="p6zMs" value="0" />
              <property role="p6zMq" value="0" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOL$lU" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOL$lV" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOL$lX" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOL$lY" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOL$m1" role="3tpDZB">
          <property role="Xl_RC" value="module m { |1 + 2 ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOL$m2" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOL$m3" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOL_cA">
    <property role="TrG5h" value="Removing_a_member_from_a_longer_union_puts_the_caret_after_the_one_before_it" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOL_cB" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOL_cD" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOL_cE" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOL_cF" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFIOL_cG" role="3KvU$C" />
            <node concept="1ku6r5" id="30$vFIOL_cH" role="3KvU$C">
              <node concept="LIFWc" id="30$vFIOL_cI" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="3$6BPE" id="30$vFIOL_cJ" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOL_cK" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOL_cL" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOL_cN" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOL_cO" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOL_cQ" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOL_cR" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOL_cU" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : string| | boolean ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOL_cV" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOL_cW" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMKzw">
    <property role="TrG5h" value="Deleting_the_initializer_of_an_unannotated_declaration_puts_the_caret_after_the_name" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOMKzx" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMKzz" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="30$vFIOMKz$" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="24BhzH" id="30$vFIOMKz_" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFIOMKzA" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMKzB" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMKzC" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMKzE" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMKzF" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMKzH" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMKzI" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMKzL" role="3tpDZB">
          <property role="Xl_RC" value="module m { const a| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMKzM" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMKzN" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOML30">
    <property role="TrG5h" value="Deleting_the_type_annotation_puts_the_caret_after_the_name" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOML31" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOML33" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOML34" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOML35" role="19IeeE">
            <node concept="LIFWc" id="30$vFIOML36" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
          <node concept="24BhzH" id="30$vFIOML37" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOML38" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOML39" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOML3b" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOML3c" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOML3e" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOML3f" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOML3i" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x| = 1 ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOML3j" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOML3k" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMLyX">
    <property role="TrG5h" value="Backspacing_the_right_operand_away_puts_the_caret_after_the_left_one" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMLyY" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMLz0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMLz1" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFIOMLz3" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOMLz6" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFIOMLz7" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="30$vFIOMLz8" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMLz9" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMLza" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMLzc" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMLzd" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMLzf" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMLzg" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMLzj" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMLzk" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMLzl" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMM3b">
    <property role="TrG5h" value="Backspacing_the_left_operand_away_puts_the_caret_before_the_right_one" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMM3c" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMM3e" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMM3f" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFIOMM3h" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOMM3k" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="LIFWc" id="30$vFIOMM3l" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="p6zMs" value="0" />
                <property role="p6zMq" value="0" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="24BhzH" id="30$vFIOMM3m" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMM3n" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMM3o" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMM3q" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMM3r" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMM3t" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMM3u" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMM3x" role="3tpDZB">
          <property role="Xl_RC" value="module m { |2 ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMM3y" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMM3z" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMMzF">
    <property role="TrG5h" value="Backspacing_the_right_parenthesis_puts_the_caret_after_the_expression" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMMzG" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMMzI" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMMzJ" role="1JIkAo">
          <node concept="pJsIj" id="30$vFIOMMzL" role="$a3P1">
            <node concept="1rvuUm" id="30$vFIOMMzN" role="3tJ$EF">
              <node concept="24BhzH" id="30$vFIOMMzQ" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="30$vFIOMMzR" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="LIFWc" id="30$vFIOMMzS" role="lGtFl">
              <property role="LIFWd" value="rightParen" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMMzT" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMMzU" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMMzW" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMMzX" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMM$0" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 + 2| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMM$1" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMM$2" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMNzv">
    <property role="TrG5h" value="Deleting_the_array_suffix_puts_the_caret_after_the_element_type" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOMNzw" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMNzy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMNzz" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOMNz$" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOMNzA" role="2XRTOt">
              <node concept="LIFWc" id="30$vFIOMNzB" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMNzC" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMNzD" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMNzF" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMNzG" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMNzJ" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : number| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMNzK" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMNzL" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMOzQ">
    <property role="TrG5h" value="Collapsing_a_two_member_union_puts_the_caret_after_the_member_that_survives" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOMOzR" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMOzT" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMOzU" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOMOzV" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFIOMOzW" role="3KvU$C" />
            <node concept="1ku6r5" id="30$vFIOMOzX" role="3KvU$C">
              <node concept="LIFWc" id="30$vFIOMOzY" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMOzZ" role="LjaKd">
      <node concept="2HxZob" id="30$vFIOMO$0" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMO$2" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMO$3" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMO$5" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="3vlDli" id="30$vFIOMO$6" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMO$9" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : string| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMO$a" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMO$b" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMP$k">
    <property role="TrG5h" value="Typing_an_equals_sign_puts_the_caret_in_the_initializer_it_opens" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOMP$l" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMP$n" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMP$o" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOMP$p" role="19IeeE">
            <node concept="LIFWc" id="30$vFIOMP$q" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMP$r" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOMP$s" role="3cqZAp">
        <property role="2TTd_B" value="=" />
      </node>
      <node concept="3vlDli" id="30$vFIOMP$t" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMP$w" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : number = | ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMP$x" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMP$y" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMQ$T">
    <property role="TrG5h" value="Typing_a_pipe_puts_the_caret_in_the_member_it_opens" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOMQ$U" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMQ$W" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMQ$X" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOMQ$Y" role="19IeeE">
            <node concept="LIFWc" id="30$vFIOMQ$Z" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMQ_0" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOMQ_1" role="3cqZAp">
        <property role="2TTd_B" value="|" />
      </node>
      <node concept="3vlDli" id="30$vFIOMQ_2" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMQ_5" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : number | | ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMQ_6" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMQ_7" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMR_Q">
    <property role="TrG5h" value="Typing_the_array_suffix_puts_the_caret_behind_it_rather_than_in_a_hole" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOMR_R" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMR_T" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMR_U" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOMR_V" role="19IeeE">
            <node concept="LIFWc" id="30$vFIOMR_W" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMR_X" role="LjaKd">
      <node concept="2TK7Tu" id="30$vFIOMR_Y" role="3cqZAp">
        <property role="2TTd_B" value="[]" />
      </node>
      <node concept="3vlDli" id="30$vFIOMR_Z" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMRA2" role="3tpDZB">
          <property role="Xl_RC" value="module m { let x : number []| ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMRA3" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMRA4" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMS75">
    <property role="TrG5h" value="Typing_an_operator_puts_the_caret_in_the_operand_it_opens" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMS76" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMS78" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMS79" role="1JIkAo">
          <node concept="24BhzH" id="30$vFIOMS7b" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFIOMS7c" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMS7d" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6f$cKs" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6f$cKw" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6f$cKy" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKz" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cK$" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cK_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKA" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKB" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKC" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKD" role="1PaTwD">
            <property role="3oM_SC" value="longer" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKE" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKF" role="1PaTwD">
            <property role="3oM_SC" value="extends," />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKG" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKH" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKI" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKJ" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKK" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKL" role="1PaTwD">
            <property role="3oM_SC" value="assert:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKM" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6f$cKN" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6f$cKR" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6f$cKT" role="1PaTwD">
            <property role="3oM_SC" value="pending" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKU" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKV" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKW" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKX" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKY" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cKZ" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL0" role="1PaTwD">
            <property role="3oM_SC" value="yet," />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL1" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL3" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL4" role="1PaTwD">
            <property role="3oM_SC" value="keystrokes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL5" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL6" role="1PaTwD">
            <property role="3oM_SC" value="commit" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL7" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cL8" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6f$cL9" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6f$cLd" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6f$cLf" role="1PaTwD">
            <property role="3oM_SC" value="MoveRight," />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLg" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLi" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLj" role="1PaTwD">
            <property role="3oM_SC" value="itself" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLk" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLl" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLm" role="1PaTwD">
            <property role="3oM_SC" value="take" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLn" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLo" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLp" role="1PaTwD">
            <property role="3oM_SC" value="past" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLr" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLs" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLt" role="1PaTwD">
            <property role="3oM_SC" value="commit." />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLu" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6f$cLv" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6f$cLz" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6f$cL_" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLA" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLB" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLC" role="1PaTwD">
            <property role="3oM_SC" value="&quot;+&quot;," />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLD" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLE" role="1PaTwD">
            <property role="3oM_SC" value="compound" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLF" role="1PaTwD">
            <property role="3oM_SC" value="assignment" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLG" role="1PaTwD">
            <property role="3oM_SC" value="turned" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLH" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLI" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLJ" role="1PaTwD">
            <property role="3oM_SC" value="prefix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLK" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLL" role="1PaTwD">
            <property role="3oM_SC" value="&quot;+=&quot;." />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLM" role="1PaTwD">
            <property role="3oM_SC" value="&lt;=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLN" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLO" role="1PaTwD">
            <property role="3oM_SC" value="terminal" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6f$cLP" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6f$cLT" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6f$cLV" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLW" role="1PaTwD">
            <property role="3oM_SC" value="&lt;&lt;=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLX" role="1PaTwD">
            <property role="3oM_SC" value="diverges" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLY" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cLZ" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cM0" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cM1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cM2" role="1PaTwD">
            <property role="3oM_SC" value="second" />
          </node>
          <node concept="3oM_SD" id="5OpYk6f$cM3" role="1PaTwD">
            <property role="3oM_SC" value="character." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOMS7e" role="3cqZAp">
        <property role="2TTd_B" value="&lt;=" />
      </node>
      <node concept="3vlDli" id="30$vFIOMS7f" role="3cqZAp">
        <node concept="Xl_RD" id="30$vFIOMS7i" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 &lt;= | ; }" />
        </node>
        <node concept="2YIFZM" id="30$vFIOMS7j" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="30$vFIOMS7k" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMTd6">
    <property role="TrG5h" value="Deleting_an_initializer_and_arraying_the_type_needs_no_keystroke_in_between" />
    <property role="3GE5qa" value="caret.declarations" />
    <node concept="1qefOq" id="30$vFIOMTd7" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMTd9" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMTda" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="30$vFIOMTdb" role="19IeeE" />
          <node concept="24BhzH" id="30$vFIOMTdc" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="30$vFIOMTdd" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMTde" role="LjaKd">
      <node concept="3SKdUt" id="30$vFIOMTdf" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTdj" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTdl" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdm" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdn" role="1PaTwD">
            <property role="3oM_SC" value="assertion" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdo" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdp" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdq" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdr" role="1PaTwD">
            <property role="3oM_SC" value="edit" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTds" role="1PaTwD">
            <property role="3oM_SC" value="says" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdt" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdu" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdv" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdw" role="1PaTwD">
            <property role="3oM_SC" value="went;" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdx" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdy" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdz" role="1PaTwD">
            <property role="3oM_SC" value="says" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTd$" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTd_" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTdD" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTdF" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdG" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdH" role="1PaTwD">
            <property role="3oM_SC" value="worth." />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdI" role="1PaTwD">
            <property role="3oM_SC" value="`[]`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdJ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdK" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdL" role="1PaTwD">
            <property role="3oM_SC" value="RIGHT" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdM" role="1PaTwD">
            <property role="3oM_SC" value="side" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdN" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdO" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdP" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdQ" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdR" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdS" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdT" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdU" role="1PaTwD">
            <property role="3oM_SC" value="something" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTdV" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTdW" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTe0" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTe2" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe3" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe4" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe5" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe6" role="1PaTwD">
            <property role="3oM_SC" value="deletes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe7" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe9" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTea" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTec" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTed" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTee" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTef" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeg" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeh" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTei" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTej" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTek" role="1PaTwD">
            <property role="3oM_SC" value="back" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTel" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTem" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTeq" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTes" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTet" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeu" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTev" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTew" role="1PaTwD">
            <property role="3oM_SC" value="dead," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTex" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTey" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTez" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe$" role="1PaTwD">
            <property role="3oM_SC" value="fails" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTe_" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeA" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeB" role="1PaTwD">
            <property role="3oM_SC" value="array" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeC" role="1PaTwD">
            <property role="3oM_SC" value="missing" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeD" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeE" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeF" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeG" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTeH" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTeL" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTeN" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeO" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeP" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeQ" role="1PaTwD">
            <property role="3oM_SC" value="wrong" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeR" role="1PaTwD">
            <property role="3oM_SC" value="place." />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeS" role="1PaTwD">
            <property role="3oM_SC" value="That" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeT" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeU" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeV" role="1PaTwD">
            <property role="3oM_SC" value="shape" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeW" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeX" role="1PaTwD">
            <property role="3oM_SC" value="reach" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeY" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTeZ" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTf0" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTf1" role="1PaTwD">
            <property role="3oM_SC" value="placement" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTf2" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTf3" role="1PaTwD">
            <property role="3oM_SC" value="worth" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTf4" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTf8" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTfa" role="1PaTwD">
            <property role="3oM_SC" value="pinning" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfb" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfc" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfd" role="1PaTwD">
            <property role="3oM_SC" value="assertion" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfe" role="1PaTwD">
            <property role="3oM_SC" value="should" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTff" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfg" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfh" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfi" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfj" role="1PaTwD">
            <property role="3oM_SC" value="gesture:" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfk" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfl" role="1PaTwD">
            <property role="3oM_SC" value="arrow" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfm" role="1PaTwD">
            <property role="3oM_SC" value="key," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfn" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTfo" role="1PaTwD">
            <property role="3oM_SC" value="click." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMTfp" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMTfr" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMTfs" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMTfu" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOMTfv" role="3cqZAp">
        <property role="2TTd_B" value="[]" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOMTfw" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOMTfy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMTfz" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="29s1Bg" id="30$vFIOMTf$" role="19IeeE">
            <node concept="1ku6r5" id="30$vFIOMTfA" role="2XRTOt" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMTOo">
    <property role="TrG5h" value="Backspacing_an_operation_away_and_typing_another_needs_no_keystroke_in_between" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMTOp" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMTOr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMTOs" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFIOMTOu" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOMTOx" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFIOMTOy" role="GyX5B">
              <property role="2Hr5CV" value="2" />
              <node concept="LIFWc" id="30$vFIOMTOz" role="lGtFl">
                <property role="LIFWd" value="value" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="1" />
                <property role="p6zMq" value="1" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMTO$" role="LjaKd">
      <node concept="3SKdUt" id="30$vFIOMTO_" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTOD" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTOF" role="1PaTwD">
            <property role="3oM_SC" value="Two" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOG" role="1PaTwD">
            <property role="3oM_SC" value="backspaces" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOH" role="1PaTwD">
            <property role="3oM_SC" value="put" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOI" role="1PaTwD">
            <property role="3oM_SC" value="`1" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOJ" role="1PaTwD">
            <property role="3oM_SC" value="+" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOK" role="1PaTwD">
            <property role="3oM_SC" value="2`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOL" role="1PaTwD">
            <property role="3oM_SC" value="back" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOM" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTON" role="1PaTwD">
            <property role="3oM_SC" value="`1`," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOO" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOP" role="1PaTwD">
            <property role="3oM_SC" value="`*3`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOQ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOR" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOS" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOT" role="1PaTwD">
            <property role="3oM_SC" value="side" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOU" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOV" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOW" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTOX" role="1PaTwD">
            <property role="3oM_SC" value="`1`" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTOY" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTP2" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTP4" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP5" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP6" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP7" role="1PaTwD">
            <property role="3oM_SC" value="came" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP8" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP9" role="1PaTwD">
            <property role="3oM_SC" value="rest" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPa" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPc" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPd" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPe" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPf" role="1PaTwD">
            <property role="3oM_SC" value="Four" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPg" role="1PaTwD">
            <property role="3oM_SC" value="keystrokes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPh" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPi" role="1PaTwD">
            <property role="3oM_SC" value="`1" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPj" role="1PaTwD">
            <property role="3oM_SC" value="*" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPk" role="1PaTwD">
            <property role="3oM_SC" value="3`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPl" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPm" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPn" role="1PaTwD">
            <property role="3oM_SC" value="count" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTPo" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTPs" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTPu" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPv" role="1PaTwD">
            <property role="3oM_SC" value="keep:" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPw" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPx" role="1PaTwD">
            <property role="3oM_SC" value="placement" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPy" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPz" role="1PaTwD">
            <property role="3oM_SC" value="cell" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP$" role="1PaTwD">
            <property role="3oM_SC" value="off" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTP_" role="1PaTwD">
            <property role="3oM_SC" value="costs" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPA" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPB" role="1PaTwD">
            <property role="3oM_SC" value="arrow" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPC" role="1PaTwD">
            <property role="3oM_SC" value="key" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPD" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPE" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPF" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPG" role="1PaTwD">
            <property role="3oM_SC" value="should" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPH" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPI" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMTPJ" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMTPN" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMTPP" role="1PaTwD">
            <property role="3oM_SC" value="think" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMTPQ" role="1PaTwD">
            <property role="3oM_SC" value="about." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMTPR" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMTPT" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMTPU" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMTPW" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOMTPX" role="3cqZAp">
        <property role="2TTd_B" value="*3" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOMTPY" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOMTQ0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMTQ1" role="1JIkAo">
          <node concept="mk1J3" id="30$vFIOMTQ3" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOMTQ6" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="30$vFIOMTQ7" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMUsu">
    <property role="TrG5h" value="Removing_a_union_member_and_arraying_the_one_before_it_needs_no_keystroke_in_between" />
    <property role="3GE5qa" value="caret.types" />
    <node concept="1qefOq" id="30$vFIOMUsv" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMUsx" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMUsy" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOMUsz" role="19IeeE">
            <node concept="2Kh4GC" id="30$vFIOMUs$" role="3KvU$C" />
            <node concept="1ku6r5" id="30$vFIOMUs_" role="3KvU$C">
              <node concept="LIFWc" id="30$vFIOMUsA" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="3$6BPE" id="30$vFIOMUsB" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMUsC" role="LjaKd">
      <node concept="3SKdUt" id="30$vFIOMUsD" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMUsH" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMUsJ" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsK" role="1PaTwD">
            <property role="3oM_SC" value="middle" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsL" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsM" role="1PaTwD">
            <property role="3oM_SC" value="goes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsN" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsO" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsP" role="1PaTwD">
            <property role="3oM_SC" value="keystrokes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsQ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsR" role="1PaTwD">
            <property role="3oM_SC" value="`[]`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsS" role="1PaTwD">
            <property role="3oM_SC" value="then" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsT" role="1PaTwD">
            <property role="3oM_SC" value="arrays" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsU" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsV" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsW" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsX" role="1PaTwD">
            <property role="3oM_SC" value="it," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUsY" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMUsZ" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMUt3" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMUt5" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt7" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt8" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt9" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUta" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtb" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtc" role="1PaTwD">
            <property role="3oM_SC" value="`string`." />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtd" role="1PaTwD">
            <property role="3oM_SC" value="Left" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUte" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtf" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtg" role="1PaTwD">
            <property role="3oM_SC" value="puts" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUth" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUti" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtj" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtk" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtl" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zM" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zN" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMUtm" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMUtq" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMUts" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtt" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtu" role="1PaTwD">
            <property role="3oM_SC" value="followed" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtv" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtw" role="1PaTwD">
            <property role="3oM_SC" value="`[]`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtx" role="1PaTwD">
            <property role="3oM_SC" value="reaches" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUty" role="1PaTwD">
            <property role="3oM_SC" value="nothing," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtz" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt$" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUt_" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtA" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtB" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtC" role="1PaTwD">
            <property role="3oM_SC" value="LEFT" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtD" role="1PaTwD">
            <property role="3oM_SC" value="transform," />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMUtI" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMUtM" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMUtO" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtP" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtQ" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtR" role="1PaTwD">
            <property role="3oM_SC" value="comes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtS" role="1PaTwD">
            <property role="3oM_SC" value="out" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUtT" role="1PaTwD">
            <property role="3oM_SC" value="unarrayed." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMUu2" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMUu6" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMUu8" role="1PaTwD">
            <property role="3oM_SC" value="//" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUu9" role="1PaTwD">
            <property role="3oM_SC" value="`|`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMUua" role="1PaTwD">
            <property role="3oM_SC" value="would" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zO" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zP" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zQ" role="1PaTwD">
            <property role="3oM_SC" value="told" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zR" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zS" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zT" role="1PaTwD">
            <property role="3oM_SC" value="apart:" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zU" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zV" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zW" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zX" role="1PaTwD">
            <property role="3oM_SC" value="one-character" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zY" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="30$vFION1zZ" role="1PaTwD">
            <property role="3oM_SC" value="separator" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$0" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$1" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFION1$2" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFION1$6" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFION1$8" role="1PaTwD">
            <property role="3oM_SC" value="insert" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$9" role="1PaTwD">
            <property role="3oM_SC" value="key" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$a" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$b" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$c" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$d" role="1PaTwD">
            <property role="3oM_SC" value="cell," />
          </node>
          <node concept="3oM_SD" id="30$vFION1$e" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$f" role="1PaTwD">
            <property role="3oM_SC" value="typing" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$g" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$h" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$i" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$j" role="1PaTwD">
            <property role="3oM_SC" value="*start*" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$k" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$l" role="1PaTwD">
            <property role="3oM_SC" value="`boolean`" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$m" role="1PaTwD">
            <property role="3oM_SC" value="inserts" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$n" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFION1$o" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFION1$s" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFION1$u" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$v" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$w" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$x" role="1PaTwD">
            <property role="3oM_SC" value="produces" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$y" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$z" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$$" role="1PaTwD">
            <property role="3oM_SC" value="tree." />
          </node>
          <node concept="3oM_SD" id="30$vFION1$_" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$A" role="1PaTwD">
            <property role="3oM_SC" value="chained" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$B" role="1PaTwD">
            <property role="3oM_SC" value="edit" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$C" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$D" role="1PaTwD">
            <property role="3oM_SC" value="pins" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$E" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$F" role="1PaTwD">
            <property role="3oM_SC" value="placement" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$G" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$H" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFION1$I" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFION1$M" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFION1$O" role="1PaTwD">
            <property role="3oM_SC" value="keystroke" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$P" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$Q" role="1PaTwD">
            <property role="3oM_SC" value="chains" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$R" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$S" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$T" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$U" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$V" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$W" role="1PaTwD">
            <property role="3oM_SC" value="placement" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$X" role="1PaTwD">
            <property role="3oM_SC" value="cannot" />
          </node>
          <node concept="3oM_SD" id="30$vFION1$Y" role="1PaTwD">
            <property role="3oM_SC" value="serve." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMUub" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMUud" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMUue" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMUug" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg84hwg" resolve="Delete" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOMUuh" role="3cqZAp">
        <property role="2TTd_B" value="[]" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOMUui" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOMUuk" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="30$vFIOMUul" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="3pfgAg" id="30$vFIOMUum" role="19IeeE">
            <node concept="29s1Bg" id="30$vFION1$Z" role="3KvU$C">
              <node concept="2Kh4GC" id="30$vFION1_1" role="2XRTOt" />
            </node>
            <node concept="3$6BPE" id="30$vFIOMUuo" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="30$vFIOMV6G">
    <property role="TrG5h" value="Unwrapping_parentheses_and_extending_the_expression_needs_no_keystroke_in_between" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="30$vFIOMV6H" role="25YQCW">
      <node concept="24Z7zp" id="30$vFIOMV6J" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMV6K" role="1JIkAo">
          <node concept="pJsIj" id="30$vFIOMV6M" role="$a3P1">
            <node concept="1rvuUm" id="30$vFIOMV6O" role="3tJ$EF">
              <node concept="24BhzH" id="30$vFIOMV6R" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="30$vFIOMV6S" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="LIFWc" id="30$vFIOMV6T" role="lGtFl">
              <property role="LIFWd" value="rightParen" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="30$vFIOMV6U" role="LjaKd">
      <node concept="3SKdUt" id="30$vFIOMV6V" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMV6Z" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMV71" role="1PaTwD">
            <property role="3oM_SC" value="Backspacing" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV72" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV73" role="1PaTwD">
            <property role="3oM_SC" value="closing" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV74" role="1PaTwD">
            <property role="3oM_SC" value="bracket" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV75" role="1PaTwD">
            <property role="3oM_SC" value="leaves" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV76" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV77" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV78" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV79" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7a" role="1PaTwD">
            <property role="3oM_SC" value="bracket" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7b" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7c" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7d" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7e" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7f" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7g" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMV7h" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMV7l" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMV7n" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7o" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7p" role="1PaTwD">
            <property role="3oM_SC" value="wrapped" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7q" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7r" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7s" role="1PaTwD">
            <property role="3oM_SC" value="`*3`" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7t" role="1PaTwD">
            <property role="3oM_SC" value="carries" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7u" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7v" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7w" role="1PaTwD">
            <property role="3oM_SC" value="there," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7x" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7y" role="1PaTwD">
            <property role="3oM_SC" value="precedence" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7z" role="1PaTwD">
            <property role="3oM_SC" value="puts" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7$" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7_" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7A" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7B" role="1PaTwD">
            <property role="3oM_SC" value="sum" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMV7C" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMV7G" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMV7I" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7J" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7K" role="1PaTwD">
            <property role="3oM_SC" value="around" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7L" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7M" role="1PaTwD">
            <property role="3oM_SC" value="Had" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7N" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7O" role="1PaTwD">
            <property role="3oM_SC" value="unwrap" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7P" role="1PaTwD">
            <property role="3oM_SC" value="sent" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7Q" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7R" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7S" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7T" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7U" role="1PaTwD">
            <property role="3oM_SC" value="front" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7V" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7W" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV7X" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="30$vFIOMV7Y" role="3cqZAp">
        <node concept="1PaTwC" id="30$vFIOMV82" role="1aUNEU">
          <node concept="3oM_SD" id="30$vFIOMV84" role="1PaTwD">
            <property role="3oM_SC" value="instead," />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV85" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV86" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV87" role="1PaTwD">
            <property role="3oM_SC" value="keystrokes" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV88" role="1PaTwD">
            <property role="3oM_SC" value="would" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV89" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8a" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8b" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8c" role="1PaTwD">
            <property role="3oM_SC" value="`3" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8d" role="1PaTwD">
            <property role="3oM_SC" value="*" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8e" role="1PaTwD">
            <property role="3oM_SC" value="1" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8f" role="1PaTwD">
            <property role="3oM_SC" value="+" />
          </node>
          <node concept="3oM_SD" id="30$vFIOMV8g" role="1PaTwD">
            <property role="3oM_SC" value="2`." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="30$vFIOMV8h" role="3cqZAp">
        <node concept="1iFQzN" id="30$vFIOMV8j" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:7HPyHg86S0x" resolve="Backspace" />
        </node>
      </node>
      <node concept="2TK7Tu" id="30$vFIOMV8k" role="3cqZAp">
        <property role="2TTd_B" value="*3" />
      </node>
    </node>
    <node concept="1qefOq" id="30$vFIOMV8l" role="25YQFr">
      <node concept="24Z7zp" id="30$vFIOMV8n" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="30$vFIOMV8o" role="1JIkAo">
          <node concept="1rvuUm" id="30$vFIOMV8q" role="$a3P1">
            <node concept="24BhzH" id="30$vFIOMV8t" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="30$vFIOMV8u" role="GyX5B">
              <node concept="24BhzH" id="30$vFIOMV8x" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="30$vFIOMV8y" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq21J">
    <property role="TrG5h" value="Typing_a_second_question_mark_makes_nullish_coalescing_rather_than_a_ternary" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq21K" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq21M" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq21N" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq21P" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq21Q" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq21R" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq21S" role="3cqZAp">
        <property role="2TTd_B" value="??2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq21T" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq21V" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq21W" role="1JIkAo">
          <node concept="2H1bN$" id="1dYSrZvq21Y" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq221" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq222" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq2Eh">
    <property role="TrG5h" value="Typing_two_equals_signs_makes_the_loose_equality" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq2Ei" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq2Ek" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq2El" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq2En" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq2Eo" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq2Ep" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq2Eq" role="3cqZAp">
        <property role="2TTd_B" value="==2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq2Er" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq2Et" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq2Eu" role="1JIkAo">
          <node concept="1CNJNU" id="1dYSrZvq2Ew" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq2Ez" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq2E$" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq3j1">
    <property role="TrG5h" value="Typing_a_third_equals_sign_makes_the_strict_equality" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq3j2" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq3j4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq3j5" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq3j7" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq3j8" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq3j9" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq3ja" role="3cqZAp">
        <property role="2TTd_B" value="===2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq3jb" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq3jd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq3je" role="1JIkAo">
          <node concept="2fEAty" id="1dYSrZvq3jg" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq3jj" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq3jk" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq3VI">
    <property role="TrG5h" value="Typing_an_exclamation_mark_and_an_equals_sign_makes_the_loose_inequality" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq3VJ" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq3VL" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq3VM" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq3VO" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq3VP" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq3VQ" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq3VR" role="3cqZAp">
        <property role="2TTd_B" value="!=2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq3VS" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq3VU" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq3VV" role="1JIkAo">
          <node concept="1V9imx" id="1dYSrZvq3VX" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq3W0" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq3W1" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq4$U">
    <property role="TrG5h" value="Typing_a_second_equals_sign_after_the_exclamation_mark_makes_the_strict_inequality" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq4$V" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq4$X" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq4$Y" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq4_0" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq4_1" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq4_2" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq4_3" role="3cqZAp">
        <property role="2TTd_B" value="!==2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq4_4" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq4_6" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq4_7" role="1JIkAo">
          <node concept="iAVQD" id="1dYSrZvq4_9" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq4_c" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq4_d" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq5em">
    <property role="TrG5h" value="Typing_a_less_than_sign_makes_the_comparison" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq5en" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq5ep" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq5eq" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq5es" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq5et" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq5eu" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq5ev" role="3cqZAp">
        <property role="2TTd_B" value="&lt;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq5ew" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq5ey" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq5ez" role="1JIkAo">
          <node concept="3cCKtE" id="1dYSrZvq5e_" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq5eC" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq5eD" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq5RL">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_less_than_sign_makes_the_or_equal_comparison" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq5RM" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq5RO" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq5RP" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq5RR" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq5RS" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq5RT" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq5RU" role="3cqZAp">
        <property role="2TTd_B" value="&lt;=2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq5RV" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq5RX" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq5RY" role="1JIkAo">
          <node concept="2Z6drc" id="1dYSrZvq5S0" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq5S3" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq5S4" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq6xF">
    <property role="TrG5h" value="Typing_a_second_less_than_sign_makes_the_left_shift" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq6xG" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq6xI" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq6xJ" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq6xL" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq6xM" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq6xN" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq6xO" role="3cqZAp">
        <property role="2TTd_B" value="&lt;&lt;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq6xP" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq6xR" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq6xS" role="1JIkAo">
          <node concept="12EYhM" id="1dYSrZvq6xU" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq6xX" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq6xY" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq7bN">
    <property role="TrG5h" value="Typing_a_greater_than_sign_makes_the_comparison" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq7bO" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq7bQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq7bR" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq7bT" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq7bU" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq7bV" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq7bW" role="3cqZAp">
        <property role="2TTd_B" value="&gt;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq7bX" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq7bZ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq7c0" role="1JIkAo">
          <node concept="27A9uT" id="1dYSrZvq7c2" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq7c5" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq7c6" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq7Q9">
    <property role="TrG5h" value="Typing_an_equals_sign_after_the_greater_than_sign_makes_the_or_equal_comparison" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq7Qa" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq7Qc" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq7Qd" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq7Qf" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq7Qg" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq7Qh" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq7Qi" role="3cqZAp">
        <property role="2TTd_B" value="&gt;=2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq7Qj" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq7Ql" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq7Qm" role="1JIkAo">
          <node concept="1WNuYA" id="1dYSrZvq7Qo" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq7Qr" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq7Qs" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq8wH">
    <property role="TrG5h" value="Typing_a_second_greater_than_sign_makes_the_signed_right_shift" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq8wI" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq8wK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq8wL" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq8wN" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq8wO" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq8wP" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq8wQ" role="3cqZAp">
        <property role="2TTd_B" value="&gt;&gt;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq8wR" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq8wT" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq8wU" role="1JIkAo">
          <node concept="nD_Q4" id="1dYSrZvq8wW" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq8wZ" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq8x0" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq9bv">
    <property role="TrG5h" value="Typing_a_third_greater_than_sign_makes_the_unsigned_right_shift" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq9bw" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq9by" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq9bz" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq9b_" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq9bA" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq9bB" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq9bC" role="3cqZAp">
        <property role="2TTd_B" value="&gt;&gt;&gt;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq9bD" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq9bF" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq9bG" role="1JIkAo">
          <node concept="3ohPvs" id="1dYSrZvq9bI" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq9bL" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq9bM" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvq9Qe">
    <property role="TrG5h" value="Typing_one_ampersand_makes_the_bitwise_and" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvq9Qf" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvq9Qh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq9Qi" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvq9Qk" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvq9Ql" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvq9Qm" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvq9Qn" role="3cqZAp">
        <property role="2TTd_B" value="&amp;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvq9Qo" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvq9Qq" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvq9Qr" role="1JIkAo">
          <node concept="24nKmX" id="1dYSrZvq9Qt" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvq9Qw" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvq9Qx" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvqaxq">
    <property role="TrG5h" value="Typing_a_second_ampersand_makes_the_logical_and" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvqaxr" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvqaxt" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqaxu" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvqaxw" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvqaxx" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvqaxy" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvqaxz" role="3cqZAp">
        <property role="2TTd_B" value="&amp;&amp;2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvqax$" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvqaxA" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqaxB" role="1JIkAo">
          <node concept="2s4PD$" id="1dYSrZvqaxD" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvqaxG" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvqaxH" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvqbcO">
    <property role="TrG5h" value="Typing_one_pipe_makes_the_bitwise_or" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvqbcP" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvqbcR" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqbcS" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvqbcU" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvqbcV" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvqbcW" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvqbcX" role="3cqZAp">
        <property role="2TTd_B" value="|2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvqbcY" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvqbd0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqbd1" role="1JIkAo">
          <node concept="NRXgv" id="1dYSrZvqbd3" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvqbd6" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvqbd7" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvqbSb">
    <property role="TrG5h" value="Typing_a_second_pipe_makes_the_logical_or" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvqbSc" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvqbSe" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqbSf" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvqbSh" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvqbSi" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvqbSj" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvqbSk" role="3cqZAp">
        <property role="2TTd_B" value="||2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvqbSl" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvqbSn" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqbSo" role="1JIkAo">
          <node concept="3w4Lx9" id="1dYSrZvqbSq" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvqbSt" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="1dYSrZvqbSu" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvqc$U">
    <property role="TrG5h" value="A_less_than_sign_typed_alone_stays_pending_until_the_caret_leaves_the_cell" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="1dYSrZvqc$V" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvqc$X" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvqc$Y" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvqc_0" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvqc_1" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvqc_2" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvqc_3" role="3cqZAp">
        <property role="2TTd_B" value="&lt;" />
      </node>
      <node concept="3vlDli" id="1dYSrZvqc_4" role="3cqZAp">
        <node concept="Xl_RD" id="1dYSrZvqc_7" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 &lt;| ; }" />
        </node>
        <node concept="2YIFZM" id="1dYSrZvqc_8" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="1dYSrZvqc_9" role="37wK5m" />
        </node>
      </node>
      <node concept="2HxZob" id="1dYSrZvqc_a" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvqc_c" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
      <node concept="3vlDli" id="1dYSrZvqc_d" role="3cqZAp">
        <node concept="Xl_RD" id="1dYSrZvqc_g" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 &lt; _ ;| }" />
        </node>
        <node concept="2YIFZM" id="1dYSrZvqc_h" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="1dYSrZvqc_i" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvrLa9">
    <property role="TrG5h" value="An_empty_template_literal_head_and_tail_render_as_nothing" />
    <property role="3GE5qa" value="expressions.templates" />
    <node concept="1qefOq" id="1dYSrZvrLaa" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvrLac" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrLad" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrLaf" role="$a3P1">
            <property role="15NrEc" value="" />
            <node concept="1q850F" id="1dYSrZvrLag" role="cEYUq">
              <property role="3AYOxz" value="" />
              <node concept="24BhzH" id="1dYSrZvrLai" role="wIT5v">
                <property role="2Hr5CV" value="1" />
                <node concept="LIFWc" id="1dYSrZvrLaj" role="lGtFl">
                  <property role="LIFWd" value="value" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvrLak" role="LjaKd">
      <node concept="3vlDli" id="1dYSrZvrLal" role="3cqZAp">
        <node concept="Xl_RD" id="1dYSrZvrLao" role="3tpDZB">
          <property role="Xl_RC" value="module m { ` _ ${ 1| } _ ` ; }" />
        </node>
        <node concept="2YIFZM" id="1dYSrZvrLap" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="1dYSrZvrLaq" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvrLQp">
    <property role="TrG5h" value="The_head_of_a_template_literal_can_be_typed_into_while_it_is_still_empty" />
    <property role="3GE5qa" value="expressions.templates" />
    <node concept="1qefOq" id="1dYSrZvrLQq" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvrLQs" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrLQt" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrLQv" role="$a3P1">
            <property role="15NrEc" value="" />
            <node concept="LIFWc" id="1dYSrZvrLQw" role="lGtFl">
              <property role="LIFWa" value="0" />
              <property role="LIFWd" value="head" />
              <property role="p6zMs" value="0" />
              <property role="p6zMq" value="0" />
              <property role="OXtK3" value="true" />
            </node>
            <node concept="1q850F" id="1dYSrZvrLQx" role="cEYUq">
              <property role="3AYOxz" value="" />
              <node concept="24BhzH" id="1dYSrZvrLQz" role="wIT5v">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvrLQ$" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvrLQ_" role="3cqZAp">
        <property role="2TTd_B" value="n=" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvrLQA" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvrLQC" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrLQD" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrLQF" role="$a3P1">
            <property role="15NrEc" value="n=" />
            <node concept="1q850F" id="1dYSrZvrLQG" role="cEYUq">
              <property role="3AYOxz" value="" />
              <node concept="24BhzH" id="1dYSrZvrLQI" role="wIT5v">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvrNzH">
    <property role="TrG5h" value="An_operator_can_be_typed_after_the_expression_of_an_interpolation" />
    <property role="3GE5qa" value="expressions.templates" />
    <node concept="1qefOq" id="1dYSrZvrNzI" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvrNzK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrNzL" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrNzN" role="$a3P1">
            <property role="15NrEc" value="" />
            <node concept="1q850F" id="1dYSrZvrNzO" role="cEYUq">
              <property role="3AYOxz" value="" />
              <node concept="24BhzH" id="1dYSrZvrNzQ" role="wIT5v">
                <property role="2Hr5CV" value="1" />
                <node concept="LIFWc" id="1dYSrZvrNzR" role="lGtFl">
                  <property role="LIFWd" value="value" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvrNzS" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZvrNzT" role="3cqZAp">
        <property role="2TTd_B" value="+2" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvrNzU" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvrNzW" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrNzX" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrNzZ" role="$a3P1">
            <property role="15NrEc" value="" />
            <node concept="1q850F" id="1dYSrZvrN$0" role="cEYUq">
              <property role="3AYOxz" value="" />
              <node concept="1rvuUm" id="1dYSrZvrN$2" role="wIT5v">
                <node concept="24BhzH" id="1dYSrZvrN$5" role="33kRt2">
                  <property role="2Hr5CV" value="1" />
                </node>
                <node concept="24BhzH" id="1dYSrZvrN$6" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvrQFP">
    <property role="TrG5h" value="The_hole_of_a_newly_created_interpolation_can_be_typed_into" />
    <property role="3GE5qa" value="expressions.templates" />
    <node concept="1qefOq" id="1dYSrZvrQFQ" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvrQFS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrQFT" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrQFV" role="$a3P1">
            <property role="15NrEc" value="abc" />
            <node concept="LIFWc" id="1dYSrZvrQFW" role="lGtFl">
              <property role="LIFWd" value="head" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="3" />
              <property role="p6zMq" value="3" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvrQFZ" role="LjaKd">
      <node concept="1MFPAf" id="1dYSrZvrZVL" role="3cqZAp">
        <ref role="1MFYO6" to="hb1i:6WKYICH0EzB" resolve="AddTemplateInterpolation" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvrRAt" role="3cqZAp">
        <property role="2TTd_B" value="1" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvrRAu" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvrRAw" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvrRAx" role="1JIkAo">
          <node concept="pYBGs" id="1dYSrZvrRAz" role="$a3P1">
            <property role="15NrEc" value="abc" />
            <node concept="1q850F" id="1dYSrZvrRA$" role="cEYUq">
              <node concept="24BhzH" id="1dYSrZvrRAA" role="wIT5v">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvtAgc">
    <property role="TrG5h" value="A_whole_program_can_be_typed_into_an_empty_module" />
    <property role="3GE5qa" value="programs" />
    <node concept="1qefOq" id="1dYSrZvtAgd" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvtAgf" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="LIFWc" id="1dYSrZvAa37" role="lGtFl">
          <property role="LIFWd" value="name" />
          <property role="ZRATv" value="true" />
          <property role="p6zMs" value="1" />
          <property role="p6zMq" value="1" />
          <property role="OXtK3" value="true" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvtAgh" role="LjaKd">
      <node concept="yd1bK" id="1dYSrZvAa38" role="3cqZAp">
        <node concept="pLAjd" id="1dYSrZvAa3a" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAa3b" role="3cqZAp">
        <property role="2TTd_B" value="const" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXF" role="3cqZAp">
        <property role="2TTd_B" value="x:number=1+2*3" />
      </node>
      <node concept="2HxZob" id="1dYSrZvAaXG" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvAaXI" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXJ" role="3cqZAp">
        <property role="2TTd_B" value="let" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAa3c" role="3cqZAp">
        <property role="2TTd_B" value="total:number=0" />
      </node>
      <node concept="2HxZob" id="1dYSrZvAaXK" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvAaXM" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXN" role="3cqZAp">
        <property role="2TTd_B" value="let" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXO" role="3cqZAp">
        <property role="2TTd_B" value="label:string|null=null" />
      </node>
      <node concept="2HxZob" id="1dYSrZvAa3d" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvAa3f" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAa3g" role="3cqZAp">
        <property role="2TTd_B" value="const" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAa3h" role="3cqZAp">
        <property role="2TTd_B" value="ready:boolean=x&gt;0" />
      </node>
      <node concept="2HxZob" id="1dYSrZvA14J" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvA14L" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvA14M" role="3cqZAp">
        <property role="2TTd_B" value="if" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXP" role="3cqZAp">
        <property role="2TTd_B" value="total&lt;x" />
      </node>
      <node concept="yd1bK" id="1dYSrZvAaXQ" role="3cqZAp">
        <node concept="pLAjd" id="1dYSrZvAaXS" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXT" role="3cqZAp">
        <property role="2TTd_B" value="total=x*2" />
      </node>
      <node concept="2HxZob" id="1dYSrZvAaXU" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvAaXW" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBO2" resolve="MoveDown" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXX" role="3cqZAp">
        <property role="2TTd_B" value="else if" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaXY" role="3cqZAp">
        <property role="2TTd_B" value="total&gt;x" />
      </node>
      <node concept="yd1bK" id="1dYSrZvAaXZ" role="3cqZAp">
        <node concept="pLAjd" id="1dYSrZvAaY1" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaY2" role="3cqZAp">
        <property role="2TTd_B" value="total=x/2-1" />
      </node>
      <node concept="2HxZob" id="1dYSrZvAaY3" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvAaY5" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBO2" resolve="MoveDown" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaY6" role="3cqZAp">
        <property role="2TTd_B" value="else{" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZvAaY7" role="3cqZAp">
        <property role="2TTd_B" value="total=x%2" />
      </node>
      <node concept="3vlDli" id="1dYSrZvBbEs" role="3cqZAp">
        <node concept="Xl_RD" id="1dYSrZvBbEv" role="3tpDZB">
          <property role="Xl_RC" value="module m { const x : number = 1 + 2 * 3 ; let total : number = 0 ; let label : string | null = null ; const ready : boolean = x &gt; 0 ; if ( total &lt; x ) { total = x * 2 ; } else if ( total &gt; x ) { total = x / 2 - 1 ; } else { total = x % 2| ; } }" />
        </node>
        <node concept="2YIFZM" id="1dYSrZvBbEw" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="1dYSrZvBbEx" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvBbEy" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvBbE$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="1dYSrZvBbE_" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="1dYSrZvBbEA" role="19IeeE" />
          <node concept="1rvuUm" id="1dYSrZvBbEB" role="1bGQZ8">
            <node concept="24BhzH" id="1dYSrZvBbEE" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="mk1J3" id="1dYSrZvBbEF" role="GyX5B">
              <node concept="24BhzH" id="1dYSrZvBbEI" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="1dYSrZvBbEJ" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="1dYSrZvBbEK" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="1dYSrZvBbEL" role="19IeeE" />
          <node concept="24BhzH" id="1dYSrZvBbEM" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="2swglJ" id="1dYSrZvBbEN" role="1JIkAo">
          <property role="TrG5h" value="label" />
          <node concept="3pfgAg" id="1dYSrZvBbEO" role="19IeeE">
            <node concept="2Kh4GC" id="1dYSrZvBbEP" role="3KvU$C" />
            <node concept="2UUy$f" id="1dYSrZvBbEQ" role="3KvU$C" />
          </node>
          <node concept="C5IwR" id="1dYSrZvBbER" role="1bGQZ8" />
        </node>
        <node concept="2MuU66" id="1dYSrZvBbES" role="1JIkAo">
          <property role="TrG5h" value="ready" />
          <node concept="3$6BPE" id="1dYSrZvBbET" role="19IeeE" />
          <node concept="27A9uT" id="1dYSrZvBbEU" role="1bGQZ8">
            <node concept="2v$HdM" id="1dYSrZvBbEX" role="33kRt2">
              <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
            </node>
            <node concept="24BhzH" id="1dYSrZvBbEY" role="GyX5B">
              <property role="2Hr5CV" value="0" />
            </node>
          </node>
        </node>
        <node concept="3Oct9B" id="1dYSrZvBbEZ" role="1JIkAo">
          <node concept="3cCKtE" id="1dYSrZvBbF2" role="18F3B4">
            <node concept="2v$HdM" id="1dYSrZvBbF5" role="33kRt2">
              <ref role="2oxrr9" node="1dYSrZvBbEK" resolve="total" />
            </node>
            <node concept="2v$HdM" id="1dYSrZvBbF6" role="GyX5B">
              <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
            </node>
          </node>
          <node concept="qYD23" id="1dYSrZvBbF7" role="12avcn">
            <node concept="3ja7nU" id="1dYSrZvBbF8" role="6EW52">
              <node concept="35aKX4" id="1dYSrZvBbFa" role="$a3P1">
                <node concept="2v$HdM" id="1dYSrZvBbFd" role="33kRt2">
                  <ref role="2oxrr9" node="1dYSrZvBbEK" resolve="total" />
                </node>
                <node concept="mk1J3" id="1dYSrZvBbFe" role="GyX5B">
                  <node concept="2v$HdM" id="1dYSrZvBbFh" role="33kRt2">
                    <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
                  </node>
                  <node concept="24BhzH" id="1dYSrZvBbFi" role="GyX5B">
                    <property role="2Hr5CV" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ILWLb" id="1dYSrZvBbFj" role="1X4dzr">
            <node concept="27A9uT" id="1dYSrZvBbFm" role="1usCvQ">
              <node concept="2v$HdM" id="1dYSrZvBbFp" role="33kRt2">
                <ref role="2oxrr9" node="1dYSrZvBbEK" resolve="total" />
              </node>
              <node concept="2v$HdM" id="1dYSrZvBbFq" role="GyX5B">
                <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
              </node>
            </node>
            <node concept="qYD23" id="1dYSrZvBbFr" role="1TBx7Y">
              <node concept="3ja7nU" id="1dYSrZvBbFs" role="6EW52">
                <node concept="35aKX4" id="1dYSrZvBbFu" role="$a3P1">
                  <node concept="2v$HdM" id="1dYSrZvBbFx" role="33kRt2">
                    <ref role="2oxrr9" node="1dYSrZvBbEK" resolve="total" />
                  </node>
                  <node concept="2IocK" id="1dYSrZvBbFy" role="GyX5B">
                    <node concept="2o8mD1" id="1dYSrZvBbF_" role="33kRt2">
                      <node concept="2v$HdM" id="1dYSrZvBbFC" role="33kRt2">
                        <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
                      </node>
                      <node concept="24BhzH" id="1dYSrZvBbFD" role="GyX5B">
                        <property role="2Hr5CV" value="2" />
                      </node>
                    </node>
                    <node concept="24BhzH" id="1dYSrZvBbFE" role="GyX5B">
                      <property role="2Hr5CV" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="qYD23" id="1dYSrZvBbFF" role="2uaaIR">
            <node concept="3ja7nU" id="1dYSrZvBbFG" role="6EW52">
              <node concept="35aKX4" id="1dYSrZvBbFI" role="$a3P1">
                <node concept="2v$HdM" id="1dYSrZvBbFL" role="33kRt2">
                  <ref role="2oxrr9" node="1dYSrZvBbEK" resolve="total" />
                </node>
                <node concept="cuy1A" id="1dYSrZvBbFM" role="GyX5B">
                  <node concept="2v$HdM" id="1dYSrZvBbFP" role="33kRt2">
                    <ref role="2oxrr9" node="1dYSrZvBbE_" resolve="x" />
                  </node>
                  <node concept="24BhzH" id="1dYSrZvBbFQ" role="GyX5B">
                    <property role="2Hr5CV" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvzORr">
    <property role="TrG5h" value="Typing_an_equals_sign_after_an_identifier_makes_an_assignment" />
    <property role="3GE5qa" value="statements" />
    <node concept="1qefOq" id="1dYSrZvzORs" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvzORu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZvzORv" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="1dYSrZvzORw" role="19IeeE" />
          <node concept="24BhzH" id="1dYSrZvzORx" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="1dYSrZvzORy" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvzORz" role="LjaKd">
      <node concept="2HxZob" id="1dYSrZvzOR$" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvzORA" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvzORB" role="3cqZAp">
        <property role="2TTd_B" value="total=1" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvzORC" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvzORE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZvzORF" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="1dYSrZvzORG" role="19IeeE" />
          <node concept="24BhzH" id="1dYSrZvzORH" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="1dYSrZvzORI" role="1JIkAo">
          <node concept="35aKX4" id="1dYSrZvzORK" role="$a3P1">
            <node concept="2v$HdM" id="1dYSrZvzORN" role="33kRt2">
              <ref role="2oxrr9" node="1dYSrZvzORF" resolve="total" />
            </node>
            <node concept="24BhzH" id="1dYSrZvzORO" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="1dYSrZvzPAE">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_left_hand_side_of_an_assignment_must_be_a_variable" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="1dYSrZvzPAF" role="1SKRRt">
      <node concept="24Z7zp" id="1dYSrZvzPAH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvzPAI" role="1JIkAo">
          <node concept="35aKX4" id="1dYSrZvzPAK" role="$a3P1">
            <node concept="24BhzH" id="1dYSrZvzPAN" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="1dYSrZvzPAO" role="lGtFl">
                <node concept="mDk06" id="1dYSrZvzPAP" role="7EUXB" />
              </node>
            </node>
            <node concept="24BhzH" id="1dYSrZvzPAQ" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZv_yBA">
    <property role="TrG5h" value="An_initializer_can_be_typed_after_a_union_annotation" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="1dYSrZv_yBB" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZv_yBD" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZv_yBE" role="1JIkAo">
          <property role="TrG5h" value="label" />
          <node concept="2Kh4GC" id="1dYSrZv_yBF" role="19IeeE">
            <node concept="LIFWc" id="1dYSrZv_yBG" role="lGtFl">
              <property role="LIFWd" value="typeKeyword" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="6" />
              <property role="p6zMq" value="6" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZv_yBH" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZv_yBI" role="3cqZAp">
        <property role="2TTd_B" value="|null" />
      </node>
      <node concept="2TK7Tu" id="1dYSrZv_yBJ" role="3cqZAp">
        <property role="2TTd_B" value="=null" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZv_yBK" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZv_yBM" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZv_yBN" role="1JIkAo">
          <property role="TrG5h" value="label" />
          <node concept="3pfgAg" id="1dYSrZv_yBO" role="19IeeE">
            <node concept="2Kh4GC" id="1dYSrZv_yBP" role="3KvU$C" />
            <node concept="2UUy$f" id="1dYSrZv_yBQ" role="3KvU$C" />
          </node>
          <node concept="C5IwR" id="1dYSrZv_yBR" role="1bGQZ8" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZv_$8H">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_union_member_that_is_not_the_last_does_nothing" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="1dYSrZv_$8I" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZv_$8K" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZv_$8L" role="1JIkAo">
          <property role="TrG5h" value="label" />
          <node concept="3pfgAg" id="1dYSrZv_$8M" role="19IeeE">
            <node concept="2Kh4GC" id="1dYSrZv_$8N" role="3KvU$C">
              <node concept="LIFWc" id="1dYSrZv_$8O" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
            <node concept="2UUy$f" id="1dYSrZv_$8P" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZv_$8Q" role="LjaKd">
      <node concept="2TK7Tu" id="1dYSrZv_$8R" role="3cqZAp">
        <property role="2TTd_B" value="=" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZv_$8S" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZv_$8U" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="1dYSrZv_$8V" role="1JIkAo">
          <property role="TrG5h" value="label" />
          <node concept="3pfgAg" id="1dYSrZv_$8W" role="19IeeE">
            <node concept="2Kh4GC" id="1dYSrZv_$8X" role="3KvU$C" />
            <node concept="2UUy$f" id="1dYSrZv_$8Y" role="3KvU$C" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvBhfG">
    <property role="TrG5h" value="Typing_a_quote_in_an_empty_hole_makes_a_string_literal" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="1dYSrZvBhfH" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvBhfJ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvBhfK" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvBhfM" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvBhfN" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvBhfO" role="LjaKd">
      <node concept="2HxZob" id="1dYSrZvBhfP" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvBhfR" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvBhfS" role="3cqZAp">
        <property role="2TTd_B" value="&quot;hi" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvBhfT" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvBhfV" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvBhfW" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvBhfY" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="1dYSrZvBhfZ" role="1JIkAo">
          <node concept="33xXhr" id="1dYSrZvBhg1" role="$a3P1">
            <property role="3b_9E9" value="hi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1dYSrZvBjwm">
    <property role="TrG5h" value="Typing_the_closing_quote_of_a_string_types_over_it" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="1dYSrZvBjwn" role="25YQCW">
      <node concept="24Z7zp" id="1dYSrZvBjwp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvBjwq" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvBjws" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="1dYSrZvBjwt" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="1dYSrZvBjwu" role="LjaKd">
      <node concept="2HxZob" id="1dYSrZvBjwv" role="3cqZAp">
        <node concept="1iFQzN" id="1dYSrZvBjwx" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="1dYSrZvBjwy" role="3cqZAp">
        <property role="2TTd_B" value="&quot;hi&quot;" />
      </node>
    </node>
    <node concept="1qefOq" id="1dYSrZvBjwz" role="25YQFr">
      <node concept="24Z7zp" id="1dYSrZvBjw_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="1dYSrZvBjwA" role="1JIkAo">
          <node concept="24BhzH" id="1dYSrZvBjwC" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="1dYSrZvBjwD" role="1JIkAo">
          <node concept="33xXhr" id="1dYSrZvBjwF" role="$a3P1">
            <property role="3b_9E9" value="hi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTeisR">
    <property role="TrG5h" value="A_backslash_in_a_string_is_typed_as_two" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="465JEkTeisS" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTeisU" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="465JEkTeisV" role="1JIkAo">
          <node concept="33xXhr" id="465JEkTeoNp" role="$a3P1">
            <property role="3b_9E9" value="a" />
            <node concept="LIFWc" id="465JEkTeoNq" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTeisZ" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTeit3" role="3cqZAp">
        <property role="2TTd_B" value="\\\\" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTeit4" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTeit6" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="465JEkTeit7" role="1JIkAo">
          <node concept="33xXhr" id="465JEkTeoNr" role="$a3P1">
            <property role="3b_9E9" value="a\\" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTgmZf">
    <property role="TrG5h" value="A_quote_inside_a_string_is_typed_as_an_escape" />
    <property role="3GE5qa" value="expressions" />
    <node concept="1qefOq" id="465JEkTgmZg" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTgmZi" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="465JEkTgmZj" role="1JIkAo">
          <node concept="33xXhr" id="465JEkTgmZl" role="$a3P1">
            <property role="3b_9E9" value="a" />
            <node concept="LIFWc" id="465JEkTgmZm" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTgmZn" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTgmZo" role="3cqZAp">
        <property role="2TTd_B" value="\\\&quot;" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTgmZp" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTgmZr" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="465JEkTgmZs" role="1JIkAo">
          <node concept="33xXhr" id="465JEkTgmZu" role="$a3P1">
            <property role="3b_9E9" value="a\&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTAlf7">
    <property role="TrG5h" value="Typing_an_open_paren_after_an_identifier_makes_a_call" />
    <property role="3GE5qa" value="functions.calls" />
    <node concept="1qefOq" id="465JEkTAlf8" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTAlfa" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAlfb" role="1JIkAo">
          <property role="TrG5h" value="greet" />
          <node concept="qIwln" id="465JEkTAlfd" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAlfe" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTAlff" role="1JIkAo">
          <node concept="24BhzH" id="465JEkTAlfh" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="465JEkTAlfi" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTAlfj" role="LjaKd">
      <node concept="2HxZob" id="465JEkTAlfk" role="3cqZAp">
        <node concept="1iFQzN" id="465JEkTAlfm" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="465JEkTAlfn" role="3cqZAp">
        <property role="2TTd_B" value="greet(" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTAlfo" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTAlfq" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAlfr" role="1JIkAo">
          <property role="TrG5h" value="greet" />
          <node concept="qIwln" id="465JEkTAlft" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAlfu" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTAlfv" role="1JIkAo">
          <node concept="24BhzH" id="465JEkTAlfx" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAlfy" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAlf$" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAlfA" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAlfr" resolve="greet" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTAmLZ">
    <property role="TrG5h" value="Typing_a_value_after_the_return_keyword_fills_the_return_statement" />
    <property role="3GE5qa" value="functions" />
    <node concept="1qefOq" id="465JEkTAmM0" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTAmM2" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAmM3" role="1JIkAo">
          <property role="TrG5h" value="answer" />
          <node concept="1ku6r5" id="465JEkTAmM5" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAmM6" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAmM7" role="6EW52">
              <node concept="LIFWc" id="465JEkTAmM8" role="lGtFl">
                <property role="LIFWd" value="returnKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTAmM9" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTAmMa" role="3cqZAp">
        <property role="2TTd_B" value="42" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTAmMb" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTAmMd" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAmMe" role="1JIkAo">
          <property role="TrG5h" value="answer" />
          <node concept="1ku6r5" id="465JEkTAmMg" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAmMh" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAmMi" role="6EW52">
              <node concept="24BhzH" id="465JEkTAmMj" role="qlm4T">
                <property role="2Hr5CV" value="42" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTAom7">
    <property role="TrG5h" value="Typing_an_open_paren_puts_the_caret_in_the_argument_list_it_opens" />
    <property role="3GE5qa" value="caret.functions" />
    <node concept="1qefOq" id="465JEkTAom8" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTAoma" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAomb" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTAomd" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTAomf" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAomg" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAomh" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAomi" role="6EW52">
              <node concept="mk1J3" id="465JEkTAomj" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTAomm" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAomd" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTAomn" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAomo" role="1JIkAo">
          <node concept="24BhzH" id="465JEkTAomq" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="465JEkTAomr" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTAoms" role="LjaKd">
      <node concept="2HxZob" id="465JEkTAomt" role="3cqZAp">
        <node concept="1iFQzN" id="465JEkTAomv" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="465JEkTAomw" role="3cqZAp">
        <property role="2TTd_B" value="double(" />
      </node>
      <node concept="3vlDli" id="465JEkTAomx" role="3cqZAp">
        <node concept="Xl_RD" id="465JEkTAom$" role="3tpDZB">
          <property role="Xl_RC" value="module m { function double ( value : number ) : number { return value * 2 ; } 1 ; double ( | ) ; }" />
        </node>
        <node concept="2YIFZM" id="465JEkTAom_" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="465JEkTAomA" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAGN4">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Functions_and_the_calls_to_them_are_typed" />
    <property role="3GE5qa" value="functions" />
    <node concept="1qefOq" id="465JEkTAGN5" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAGN7" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAGN8" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTAGNa" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTAGNc" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAGNd" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAGNe" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAGNf" role="6EW52">
              <node concept="mk1J3" id="465JEkTAGNg" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTAGNj" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAGNa" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTAGNk" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Gxli7" id="465JEkTAGNl" role="1JIkAo">
          <property role="TrG5h" value="shout" />
          <node concept="SCM_e" id="465JEkTAGNn" role="3qLSqq">
            <property role="TrG5h" value="text" />
            <node concept="2Kh4GC" id="465JEkTAGNp" role="2xFk6U" />
          </node>
          <node concept="qYD23" id="465JEkTAGNq" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTAGNr" role="1JIkAo">
          <node concept="2v$HdM" id="465JEkTAGNt" role="$a3P1">
            <ref role="2oxrr9" node="465JEkTAGN8" resolve="double" />
            <node concept="7CXmI" id="465JEkTAGNu" role="lGtFl">
              <node concept="30Omv" id="465JEkTAGNv" role="7EUXB">
                <node concept="3MZLnu" id="465JEkTAGNx" role="31d$z">
                  <node concept="2Fu235" id="465JEkTAGNz" role="2thRFd">
                    <property role="TrG5h" value="value" />
                    <node concept="1ku6r5" id="465JEkTAGN_" role="3cr0mA" />
                  </node>
                  <node concept="1ku6r5" id="465JEkTAGNA" role="19PnrX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAGNB" role="1JIkAo">
          <node concept="2v$HdM" id="465JEkTAGND" role="$a3P1">
            <ref role="2oxrr9" node="465JEkTAGNl" resolve="shout" />
            <node concept="7CXmI" id="465JEkTAGNE" role="lGtFl">
              <node concept="30Omv" id="465JEkTAGNF" role="7EUXB">
                <node concept="3MZLnu" id="465JEkTAGNH" role="31d$z">
                  <node concept="2Fu235" id="465JEkTAGNJ" role="2thRFd">
                    <property role="TrG5h" value="text" />
                    <node concept="2Kh4GC" id="465JEkTAGNL" role="3cr0mA" />
                  </node>
                  <node concept="qIwln" id="465JEkTAGNM" role="19PnrX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAGNN" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAGNP" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAGNR" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAGN8" resolve="double" />
            </node>
            <node concept="24BhzH" id="465JEkTAGNS" role="DTHKp">
              <property role="2Hr5CV" value="21" />
            </node>
            <node concept="7CXmI" id="465JEkTAGNT" role="lGtFl">
              <node concept="30Omv" id="465JEkTAGNU" role="7EUXB">
                <node concept="1ku6r5" id="465JEkTAGNW" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAGNX" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAGNZ" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAGO1" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAGNl" resolve="shout" />
            </node>
            <node concept="33xXhr" id="465JEkTAGO2" role="DTHKp">
              <property role="3b_9E9" value="hi" />
            </node>
            <node concept="7CXmI" id="465JEkTAGO3" role="lGtFl">
              <node concept="30Omv" id="465JEkTAGO4" role="7EUXB">
                <node concept="qIwln" id="465JEkTAGO6" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="465JEkTAGO7" role="lGtFl">
          <node concept="7OXhh" id="465JEkTAGO8" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAHFk">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_call_with_the_wrong_number_of_arguments_is_an_error" />
    <property role="3GE5qa" value="functions.calls" />
    <node concept="1qefOq" id="465JEkTAHFl" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAHFn" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAHFo" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTAHFq" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTAHFs" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAHFt" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAHFu" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAHFv" role="6EW52">
              <node concept="mk1J3" id="465JEkTAHFw" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTAHFz" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAHFq" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTAHF$" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAHF_" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAHFB" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAHFD" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAHFo" resolve="double" />
            </node>
            <node concept="7CXmI" id="465JEkTAHFE" role="lGtFl">
              <node concept="mDk06" id="465JEkTAHFF" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAHFG" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAHFI" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAHFK" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAHFo" resolve="double" />
            </node>
            <node concept="24BhzH" id="465JEkTAHFL" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="465JEkTAHFM" role="DTHKp">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="465JEkTAHFN" role="lGtFl">
              <node concept="mDk06" id="465JEkTAHFO" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAIwl">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_argument_must_have_the_type_of_its_parameter" />
    <property role="3GE5qa" value="functions.calls" />
    <node concept="1qefOq" id="465JEkTAIwm" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAIwo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAIwp" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTAIwr" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTAIwt" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAIwu" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAIwv" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAIww" role="6EW52">
              <node concept="mk1J3" id="465JEkTAIwx" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTAIw$" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAIwr" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTAIw_" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAIwA" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAIwC" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAIwE" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAIwp" resolve="double" />
            </node>
            <node concept="33xXhr" id="465JEkTAIwF" role="DTHKp">
              <property role="3b_9E9" value="a" />
              <node concept="7CXmI" id="465JEkTAIwG" role="lGtFl">
                <node concept="mDk06" id="465JEkTAIwH" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAJjz">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Something_that_is_not_a_function_cannot_be_called" />
    <property role="3GE5qa" value="functions.calls" />
    <node concept="1qefOq" id="465JEkTAJj$" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAJjA" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="465JEkTAJjB" role="1JIkAo">
          <property role="TrG5h" value="count" />
          <node concept="24BhzH" id="465JEkTAJjC" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTAJjD" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTAJjF" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTAJjH" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTAJjB" resolve="count" />
              <node concept="7CXmI" id="465JEkTAJjI" role="lGtFl">
                <node concept="mDk06" id="465JEkTAJjJ" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAK7S">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_function_can_call_itself_and_one_declared_after_it" />
    <property role="3GE5qa" value="functions.scopes" />
    <node concept="1qefOq" id="465JEkTAK7T" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAK7V" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAK7W" role="1JIkAo">
          <property role="TrG5h" value="countdown" />
          <node concept="SCM_e" id="465JEkTAK7Y" role="3qLSqq">
            <property role="TrG5h" value="n" />
            <node concept="1ku6r5" id="465JEkTAK80" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAK81" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAK82" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAK83" role="6EW52">
              <node concept="0o88v" id="465JEkTAK84" role="qlm4T">
                <node concept="27A9uT" id="465JEkTAK88" role="3y1SWh">
                  <node concept="2v$HdM" id="465JEkTAK8b" role="33kRt2">
                    <ref role="2oxrr9" node="465JEkTAK7Y" resolve="n" />
                  </node>
                  <node concept="24BhzH" id="465JEkTAK8c" role="GyX5B">
                    <property role="2Hr5CV" value="0" />
                  </node>
                </node>
                <node concept="2R1OvL" id="465JEkTAK8d" role="10ubTB">
                  <node concept="2v$HdM" id="465JEkTAK8f" role="3yUXHQ">
                    <ref role="2oxrr9" node="465JEkTAK7W" resolve="countdown" />
                  </node>
                  <node concept="2IocK" id="465JEkTAK8g" role="DTHKp">
                    <node concept="2v$HdM" id="465JEkTAK8j" role="33kRt2">
                      <ref role="2oxrr9" node="465JEkTAK7Y" resolve="n" />
                    </node>
                    <node concept="24BhzH" id="465JEkTAK8k" role="GyX5B">
                      <property role="2Hr5CV" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="2R1OvL" id="465JEkTAK8l" role="3nuTyc">
                  <node concept="2v$HdM" id="465JEkTAK8n" role="3yUXHQ">
                    <ref role="2oxrr9" node="465JEkTAK8o" resolve="declaredLater" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Gxli7" id="465JEkTAK8o" role="1JIkAo">
          <property role="TrG5h" value="declaredLater" />
          <node concept="1ku6r5" id="465JEkTAK8q" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAK8r" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAK8s" role="6EW52">
              <node concept="24BhzH" id="465JEkTAK8t" role="qlm4T">
                <property role="2Hr5CV" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="465JEkTAK8u" role="lGtFl">
          <node concept="7OXhh" id="465JEkTAK8v" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAKZd">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_function_fits_a_function_type_whose_parameter_is_named_differently" />
    <property role="3GE5qa" value="functions" />
    <node concept="1qefOq" id="465JEkTAKZe" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAKZg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAKZh" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTAKZj" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTAKZl" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTAKZm" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAKZn" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAKZo" role="6EW52">
              <node concept="mk1J3" id="465JEkTAKZp" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTAKZs" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAKZj" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTAKZt" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="465JEkTAKZu" role="1JIkAo">
          <property role="TrG5h" value="sameShape" />
          <node concept="3MZLnu" id="465JEkTAKZv" role="19IeeE">
            <node concept="2Fu235" id="465JEkTAKZx" role="2thRFd">
              <property role="TrG5h" value="somethingElse" />
              <node concept="1ku6r5" id="465JEkTAKZz" role="3cr0mA" />
            </node>
            <node concept="1ku6r5" id="465JEkTAKZ$" role="19PnrX" />
          </node>
          <node concept="2v$HdM" id="465JEkTAKZ_" role="1bGQZ8">
            <ref role="2oxrr9" node="465JEkTAKZh" resolve="double" />
          </node>
        </node>
        <node concept="2MuU66" id="465JEkTAKZA" role="1JIkAo">
          <property role="TrG5h" value="resultDiscarded" />
          <node concept="3MZLnu" id="465JEkTAKZB" role="19IeeE">
            <node concept="2Fu235" id="465JEkTAKZD" role="2thRFd">
              <property role="TrG5h" value="somethingElse" />
              <node concept="1ku6r5" id="465JEkTAKZF" role="3cr0mA" />
            </node>
            <node concept="qIwln" id="465JEkTAKZG" role="19PnrX" />
          </node>
          <node concept="2v$HdM" id="465JEkTAKZH" role="1bGQZ8">
            <ref role="2oxrr9" node="465JEkTAKZh" resolve="double" />
          </node>
        </node>
        <node concept="7CXmI" id="465JEkTAKZI" role="lGtFl">
          <node concept="7OXhh" id="465JEkTAKZJ" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTALQd">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_function_whose_parameter_type_differs_does_not_fit" />
    <property role="3GE5qa" value="functions" />
    <node concept="1qefOq" id="465JEkTALQe" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTALQg" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTALQh" role="1JIkAo">
          <property role="TrG5h" value="double" />
          <node concept="SCM_e" id="465JEkTALQj" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="465JEkTALQl" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="465JEkTALQm" role="jrNXk" />
          <node concept="qYD23" id="465JEkTALQn" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTALQo" role="6EW52">
              <node concept="mk1J3" id="465JEkTALQp" role="qlm4T">
                <node concept="2v$HdM" id="465JEkTALQs" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTALQj" resolve="value" />
                </node>
                <node concept="24BhzH" id="465JEkTALQt" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="465JEkTALQu" role="1JIkAo">
          <property role="TrG5h" value="wrongParameterType" />
          <node concept="3MZLnu" id="465JEkTALQv" role="19IeeE">
            <node concept="2Fu235" id="465JEkTALQx" role="2thRFd">
              <property role="TrG5h" value="text" />
              <node concept="2Kh4GC" id="465JEkTALQz" role="3cr0mA" />
            </node>
            <node concept="1ku6r5" id="465JEkTALQ$" role="19PnrX" />
          </node>
          <node concept="2v$HdM" id="465JEkTALQ_" role="1bGQZ8">
            <ref role="2oxrr9" node="465JEkTALQh" resolve="double" />
            <node concept="7CXmI" id="465JEkTALQA" role="lGtFl">
              <node concept="mDk06" id="465JEkTALQB" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTAMFv">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_function_that_returns_a_value_must_declare_its_return_type" />
    <property role="3GE5qa" value="functions" />
    <node concept="1qefOq" id="465JEkTAMFw" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTAMFy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTAMFz" role="1JIkAo">
          <property role="TrG5h" value="undeclared" />
          <node concept="qYD23" id="465JEkTAMF_" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAMFA" role="6EW52">
              <node concept="24BhzH" id="465JEkTAMFB" role="qlm4T">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="7CXmI" id="465JEkTAMFC" role="lGtFl">
                <node concept="mDk06" id="465JEkTAMFD" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Gxli7" id="465JEkTAMFE" role="1JIkAo">
          <property role="TrG5h" value="promisesButDoesNotReturn" />
          <node concept="1ku6r5" id="465JEkTAMFG" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAMFH" role="1PAOym" />
          <node concept="7CXmI" id="465JEkTAMFI" role="lGtFl">
            <node concept="mDk06" id="465JEkTAMFJ" role="7EUXB" />
          </node>
        </node>
        <node concept="3Gxli7" id="465JEkTAMFK" role="1JIkAo">
          <property role="TrG5h" value="voidCannotReturnAValue" />
          <node concept="qIwln" id="465JEkTAMFM" role="jrNXk" />
          <node concept="qYD23" id="465JEkTAMFN" role="1PAOym">
            <node concept="3wbn4H" id="465JEkTAMFO" role="6EW52">
              <node concept="24BhzH" id="465JEkTAMFP" role="qlm4T">
                <property role="2Hr5CV" value="1" />
                <node concept="7CXmI" id="465JEkTAMFQ" role="lGtFl">
                  <node concept="mDk06" id="465JEkTAMFR" role="7EUXB" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTIkkU">
    <property role="TrG5h" value="Typing_a_question_mark_after_a_parameter_name_makes_it_optional" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIkkV" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTIkkX" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIkkY" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIkl0" role="3qLSqq">
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIkl2" role="2xFk6U" />
            <node concept="LIFWc" id="465JEkTIkl3" role="lGtFl">
              <property role="LIFWd" value="name" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIkl4" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIkl5" role="1PAOym" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTIkl6" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTIkl7" role="3cqZAp">
        <property role="2TTd_B" value="?" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTIkl8" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTIkla" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIklb" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIkld" role="3qLSqq">
            <property role="35kMex" value="true" />
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIklf" role="2xFk6U" />
          </node>
          <node concept="qIwln" id="465JEkTIklg" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIklh" role="1PAOym" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTIlbJ">
    <property role="TrG5h" value="Typing_three_dots_before_a_parameter_name_makes_it_a_rest_parameter" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIlbK" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTIlbM" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIlbN" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIlbP" role="3qLSqq">
            <property role="TrG5h" value="values" />
            <node concept="29s1Bg" id="465JEkTIlbR" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIlbT" role="2XRTOt" />
            </node>
            <node concept="LIFWc" id="465JEkTIlbU" role="lGtFl">
              <property role="LIFWd" value="name" />
              <property role="p6zMs" value="0" />
              <property role="p6zMq" value="0" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIlbV" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIlbW" role="1PAOym" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTIlbX" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTIlbY" role="3cqZAp">
        <property role="2TTd_B" value="..." />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTIlbZ" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTIlc1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIlc2" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIlc4" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="values" />
            <node concept="29s1Bg" id="465JEkTIlc6" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIlc8" role="2XRTOt" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIlc9" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIlca" role="1PAOym" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="465JEkTIm2G">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_parameter_type_adds_a_default_value" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIm2H" role="25YQCW">
      <node concept="24Z7zp" id="465JEkTIm2J" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIm2K" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIm2M" role="3qLSqq">
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIm2O" role="2xFk6U">
              <node concept="LIFWc" id="465JEkTIm2P" role="lGtFl">
                <property role="LIFWd" value="typeKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="6" />
                <property role="p6zMq" value="6" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIm2Q" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIm2R" role="1PAOym" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="465JEkTIm2S" role="LjaKd">
      <node concept="2TK7Tu" id="465JEkTIm2T" role="3cqZAp">
        <property role="2TTd_B" value="=1" />
      </node>
    </node>
    <node concept="1qefOq" id="465JEkTIm2U" role="25YQFr">
      <node concept="24Z7zp" id="465JEkTIm2W" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIm2X" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIm2Z" role="3qLSqq">
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIm31" role="2xFk6U" />
            <node concept="24BhzH" id="465JEkTIm32" role="1ciTpo">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIm33" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIm34" role="1PAOym" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTIn42">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Optional_and_default_parameters_do_not_count_towards_the_required_arity" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIn43" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTIn45" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIn46" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="465JEkTIn48" role="3qLSqq">
            <property role="TrG5h" value="required" />
            <node concept="1ku6r5" id="465JEkTIn4a" role="2xFk6U" />
          </node>
          <node concept="SCM_e" id="465JEkTIn4b" role="3qLSqq">
            <property role="35kMex" value="true" />
            <property role="TrG5h" value="optional" />
            <node concept="2Kh4GC" id="465JEkTIn4d" role="2xFk6U" />
          </node>
          <node concept="SCM_e" id="465JEkTIn4e" role="3qLSqq">
            <property role="TrG5h" value="defaulted" />
            <node concept="1ku6r5" id="465JEkTIn4g" role="2xFk6U" />
            <node concept="24BhzH" id="465JEkTIn4h" role="1ciTpo">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIn4i" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIn4j" role="1PAOym" />
        </node>
        <node concept="3Gxli7" id="465JEkTIn4k" role="1JIkAo">
          <property role="TrG5h" value="rest" />
          <node concept="SCM_e" id="465JEkTIn4m" role="3qLSqq">
            <property role="TrG5h" value="first" />
            <node concept="2Kh4GC" id="465JEkTIn4o" role="2xFk6U" />
          </node>
          <node concept="SCM_e" id="465JEkTIn4p" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="others" />
            <node concept="29s1Bg" id="465JEkTIn4r" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIn4t" role="2XRTOt" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIn4u" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIn4v" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTIn4w" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIn4y" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIn4$" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIn46" resolve="f" />
            </node>
            <node concept="24BhzH" id="465JEkTIn4_" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTIn4A" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIn4C" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIn4E" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIn46" resolve="f" />
            </node>
            <node concept="24BhzH" id="465JEkTIn4F" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="465JEkTIn4G" role="DTHKp">
              <property role="3b_9E9" value="x" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTIn4H" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIn4J" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIn4L" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIn46" resolve="f" />
            </node>
            <node concept="24BhzH" id="465JEkTIn4M" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="2OeDxu" id="465JEkTIn4N" role="DTHKp" />
            <node concept="24BhzH" id="465JEkTIn4O" role="DTHKp">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTIn4P" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIn4R" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIn4T" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIn4k" resolve="rest" />
            </node>
            <node concept="33xXhr" id="465JEkTIn4U" role="DTHKp">
              <property role="3b_9E9" value="x" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="465JEkTIn4V" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIn4X" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIn4Z" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIn4k" resolve="rest" />
            </node>
            <node concept="33xXhr" id="465JEkTIn50" role="DTHKp">
              <property role="3b_9E9" value="x" />
            </node>
            <node concept="24BhzH" id="465JEkTIn51" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="465JEkTIn52" role="DTHKp">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="465JEkTIn53" role="DTHKp">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="465JEkTIn54" role="lGtFl">
          <node concept="7OXhh" id="465JEkTIn55" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTIo87">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_rest_parameter_still_checks_the_type_of_every_argument_it_absorbs" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIo88" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTIo8a" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIo8b" role="1JIkAo">
          <property role="TrG5h" value="rest" />
          <node concept="SCM_e" id="465JEkTIo8d" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="values" />
            <node concept="29s1Bg" id="465JEkTIo8f" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIo8h" role="2XRTOt" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIo8i" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIo8j" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTIo8k" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIo8m" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIo8o" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIo8b" resolve="rest" />
            </node>
            <node concept="24BhzH" id="465JEkTIo8p" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="465JEkTIo8q" role="DTHKp">
              <property role="3b_9E9" value="not a number" />
              <node concept="7CXmI" id="465JEkTIo8r" role="lGtFl">
                <node concept="mDk06" id="465JEkTIo8s" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Gxli7" id="465JEkTIo8t" role="1JIkAo">
          <property role="TrG5h" value="atLeastOne" />
          <node concept="SCM_e" id="465JEkTIo8v" role="3qLSqq">
            <property role="TrG5h" value="first" />
            <node concept="1ku6r5" id="465JEkTIo8x" role="2xFk6U" />
          </node>
          <node concept="SCM_e" id="465JEkTIo8y" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="others" />
            <node concept="29s1Bg" id="465JEkTIo8$" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIo8A" role="2XRTOt" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIo8B" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIo8C" role="1PAOym" />
        </node>
        <node concept="3ja7nU" id="465JEkTIo8D" role="1JIkAo">
          <node concept="2R1OvL" id="465JEkTIo8F" role="$a3P1">
            <node concept="2v$HdM" id="465JEkTIo8H" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTIo8t" resolve="atLeastOne" />
            </node>
            <node concept="7CXmI" id="465JEkTIo8I" role="lGtFl">
              <node concept="mDk06" id="465JEkTIo8J" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="465JEkTIp4H">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_parameter_list_shapes_TypeScript_refuses" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="465JEkTIp4I" role="1SKRRt">
      <node concept="24Z7zp" id="465JEkTIp4K" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="465JEkTIp4L" role="1JIkAo">
          <property role="TrG5h" value="optionalAndDefaulted" />
          <node concept="SCM_e" id="465JEkTIp4N" role="3qLSqq">
            <property role="35kMex" value="true" />
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIp4P" role="2xFk6U" />
            <node concept="24BhzH" id="465JEkTIp4Q" role="1ciTpo">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="465JEkTIp4R" role="lGtFl">
              <node concept="mDk06" id="465JEkTIp4S" role="7EUXB" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIp4T" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIp4U" role="1PAOym" />
        </node>
        <node concept="3Gxli7" id="465JEkTIp4V" role="1JIkAo">
          <property role="TrG5h" value="requiredAfterOptional" />
          <node concept="SCM_e" id="465JEkTIp4X" role="3qLSqq">
            <property role="35kMex" value="true" />
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIp4Z" role="2xFk6U" />
          </node>
          <node concept="SCM_e" id="465JEkTIp50" role="3qLSqq">
            <property role="TrG5h" value="b" />
            <node concept="1ku6r5" id="465JEkTIp52" role="2xFk6U" />
            <node concept="7CXmI" id="465JEkTIp53" role="lGtFl">
              <node concept="mDk06" id="465JEkTIp54" role="7EUXB" />
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIp55" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIp56" role="1PAOym" />
        </node>
        <node concept="3Gxli7" id="465JEkTIp57" role="1JIkAo">
          <property role="TrG5h" value="restIsNotLast" />
          <node concept="SCM_e" id="465JEkTIp59" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="a" />
            <node concept="29s1Bg" id="465JEkTIp5b" role="2xFk6U">
              <node concept="1ku6r5" id="465JEkTIp5d" role="2XRTOt" />
            </node>
            <node concept="7CXmI" id="465JEkTIp5e" role="lGtFl">
              <node concept="mDk06" id="465JEkTIp5f" role="7EUXB" />
            </node>
          </node>
          <node concept="SCM_e" id="465JEkTIp5g" role="3qLSqq">
            <property role="TrG5h" value="b" />
            <node concept="1ku6r5" id="465JEkTIp5i" role="2xFk6U" />
          </node>
          <node concept="qIwln" id="465JEkTIp5j" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIp5k" role="1PAOym" />
        </node>
        <node concept="3Gxli7" id="465JEkTIp5l" role="1JIkAo">
          <property role="TrG5h" value="restIsNotAnArray" />
          <node concept="SCM_e" id="465JEkTIp5n" role="3qLSqq">
            <property role="1d60j6" value="true" />
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="465JEkTIp5p" role="2xFk6U">
              <node concept="7CXmI" id="465JEkTIp5q" role="lGtFl">
                <node concept="mDk06" id="465JEkTIp5r" role="7EUXB" />
              </node>
            </node>
          </node>
          <node concept="qIwln" id="465JEkTIp5s" role="jrNXk" />
          <node concept="qYD23" id="465JEkTIp5t" role="1PAOym" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6frTh8">
    <property role="TrG5h" value="Typing_an_arrow_in_an_empty_hole_makes_an_arrow_function" />
    <property role="3GE5qa" value="functions.arrows" />
    <node concept="1qefOq" id="5OpYk6frTh9" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6frThb" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6frThc" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6frThe" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6frThf" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6frThg" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6frThh" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6frThj" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6frThk" role="3cqZAp">
        <property role="2TTd_B" value="=&gt;" />
      </node>
      <node concept="3vlDli" id="5OpYk6frThl" role="3cqZAp">
        <node concept="Xl_RD" id="5OpYk6frTho" role="3tpDZB">
          <property role="Xl_RC" value="module m { 1 ; ( _ ) =&gt; | ; }" />
        </node>
        <node concept="2YIFZM" id="5OpYk6frThp" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="5OpYk6frThq" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6frUaV">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_arrow_function_with_an_expression_body_infers_its_return_type" />
    <property role="3GE5qa" value="functions.arrows" />
    <node concept="1qefOq" id="5OpYk6frUaW" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6frUaY" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6frUaZ" role="1JIkAo">
          <node concept="1b$XOi" id="5OpYk6frUb1" role="$a3P1">
            <node concept="SCM_e" id="5OpYk6frUb4" role="3qLSqq">
              <property role="TrG5h" value="value" />
              <node concept="1ku6r5" id="5OpYk6frUb6" role="2xFk6U" />
            </node>
            <node concept="bMiiA" id="5OpYk6frUb7" role="34pjIZ">
              <node concept="mk1J3" id="5OpYk6frUb9" role="QAdmJ">
                <node concept="2v$HdM" id="5OpYk6frUbc" role="33kRt2">
                  <ref role="2oxrr9" node="5OpYk6frUb4" resolve="value" />
                </node>
                <node concept="24BhzH" id="5OpYk6frUbd" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="5OpYk6frUbe" role="lGtFl">
              <node concept="30Omv" id="5OpYk6frUbf" role="7EUXB">
                <node concept="3MZLnu" id="5OpYk6frUbh" role="31d$z">
                  <node concept="2Fu235" id="5OpYk6frUbj" role="2thRFd">
                    <property role="TrG5h" value="value" />
                    <node concept="1ku6r5" id="5OpYk6frUbl" role="3cr0mA" />
                  </node>
                  <node concept="1ku6r5" id="5OpYk6frUbm" role="19PnrX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6frUbn" role="1JIkAo">
          <node concept="1b$XOi" id="5OpYk6frUbp" role="$a3P1">
            <node concept="SCM_e" id="5OpYk6frUbs" role="3qLSqq">
              <property role="TrG5h" value="text" />
              <node concept="2Kh4GC" id="5OpYk6frUbu" role="2xFk6U" />
            </node>
            <node concept="bMiiA" id="5OpYk6frUbv" role="34pjIZ">
              <node concept="2v$HdM" id="5OpYk6frUbx" role="QAdmJ">
                <ref role="2oxrr9" node="5OpYk6frUbs" resolve="text" />
              </node>
            </node>
            <node concept="7CXmI" id="5OpYk6frUby" role="lGtFl">
              <node concept="30Omv" id="5OpYk6frUbz" role="7EUXB">
                <node concept="3MZLnu" id="5OpYk6frUb_" role="31d$z">
                  <node concept="2Fu235" id="5OpYk6frUbB" role="2thRFd">
                    <property role="TrG5h" value="text" />
                    <node concept="2Kh4GC" id="5OpYk6frUbD" role="3cr0mA" />
                  </node>
                  <node concept="2Kh4GC" id="5OpYk6frUbE" role="19PnrX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6frUbF" role="1JIkAo">
          <node concept="1b$XOi" id="5OpYk6frUbH" role="$a3P1">
            <node concept="qYD23" id="5OpYk6frUbK" role="34pjIZ" />
            <node concept="7CXmI" id="5OpYk6frUbL" role="lGtFl">
              <node concept="30Omv" id="5OpYk6frUbM" role="7EUXB">
                <node concept="3MZLnu" id="5OpYk6frUbO" role="31d$z">
                  <node concept="qIwln" id="5OpYk6frUbQ" role="19PnrX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="5OpYk6frUbR" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6frUbS" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6frV98">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_arrow_function_can_be_passed_as_an_argument_and_the_parameter_called" />
    <property role="3GE5qa" value="functions.arrows" />
    <node concept="1qefOq" id="5OpYk6frV99" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6frV9b" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="5OpYk6frV9c" role="1JIkAo">
          <property role="TrG5h" value="applyOnce" />
          <node concept="SCM_e" id="5OpYk6frV9e" role="3qLSqq">
            <property role="TrG5h" value="operation" />
            <node concept="3MZLnu" id="5OpYk6frV9g" role="2xFk6U">
              <node concept="2Fu235" id="5OpYk6frV9i" role="2thRFd">
                <property role="TrG5h" value="a" />
                <node concept="1ku6r5" id="5OpYk6frV9k" role="3cr0mA" />
              </node>
              <node concept="1ku6r5" id="5OpYk6frV9l" role="19PnrX" />
            </node>
          </node>
          <node concept="SCM_e" id="5OpYk6frV9m" role="3qLSqq">
            <property role="TrG5h" value="start" />
            <node concept="1ku6r5" id="5OpYk6frV9o" role="2xFk6U" />
          </node>
          <node concept="1ku6r5" id="5OpYk6frV9p" role="jrNXk" />
          <node concept="qYD23" id="5OpYk6frV9q" role="1PAOym">
            <node concept="3wbn4H" id="5OpYk6frV9r" role="6EW52">
              <node concept="2R1OvL" id="5OpYk6frV9s" role="qlm4T">
                <node concept="2v$HdM" id="5OpYk6frV9u" role="3yUXHQ">
                  <ref role="2oxrr9" node="5OpYk6frV9e" resolve="operation" />
                </node>
                <node concept="2v$HdM" id="5OpYk6frV9v" role="DTHKp">
                  <ref role="2oxrr9" node="5OpYk6frV9m" resolve="start" />
                </node>
                <node concept="7CXmI" id="5OpYk6frV9w" role="lGtFl">
                  <node concept="30Omv" id="5OpYk6frV9x" role="7EUXB">
                    <node concept="1ku6r5" id="5OpYk6frV9z" role="31d$z" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6frV9$" role="1JIkAo">
          <node concept="2R1OvL" id="5OpYk6frV9A" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6frV9C" role="3yUXHQ">
              <ref role="2oxrr9" node="5OpYk6frV9c" resolve="applyOnce" />
            </node>
            <node concept="1b$XOi" id="5OpYk6frV9D" role="DTHKp">
              <node concept="SCM_e" id="5OpYk6frV9G" role="3qLSqq">
                <property role="TrG5h" value="n" />
                <node concept="1ku6r5" id="5OpYk6frV9I" role="2xFk6U" />
              </node>
              <node concept="bMiiA" id="5OpYk6frV9J" role="34pjIZ">
                <node concept="1rvuUm" id="5OpYk6frV9L" role="QAdmJ">
                  <node concept="2v$HdM" id="5OpYk6frV9O" role="33kRt2">
                    <ref role="2oxrr9" node="5OpYk6frV9G" resolve="n" />
                  </node>
                  <node concept="24BhzH" id="5OpYk6frV9P" role="GyX5B">
                    <property role="2Hr5CV" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5OpYk6frV9Q" role="DTHKp">
              <property role="2Hr5CV" value="41" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="5OpYk6frV9R" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6frV9S" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fx5Rz">
    <property role="TrG5h" value="A_function_can_be_typed_into_an_empty_module" />
    <property role="3GE5qa" value="programs" />
    <node concept="1qefOq" id="5OpYk6fx5R$" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fx5RA" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="LIFWc" id="5OpYk6fx5RB" role="lGtFl">
          <property role="LIFWd" value="name" />
          <property role="ZRATv" value="true" />
          <property role="p6zMs" value="1" />
          <property role="p6zMq" value="1" />
          <property role="OXtK3" value="true" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fx5RC" role="LjaKd">
      <node concept="yd1bK" id="5OpYk6fx5RD" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6fx5RF" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fx5RG" role="3cqZAp">
        <property role="2TTd_B" value="function" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6fx5RH" role="3cqZAp">
        <property role="2TTd_B" value="greet" />
      </node>
      <node concept="yd1bK" id="5OpYk6fx5RI" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6fx5RK" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8eru" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8ery" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8er$" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8er_" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erA" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erB" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erC" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erD" role="1PaTwD">
            <property role="3oM_SC" value="written" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erE" role="1PaTwD">
            <property role="3oM_SC" value="without," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erF" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erG" role="1PaTwD">
            <property role="3oM_SC" value="asked" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erH" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erI" role="1PaTwD">
            <property role="3oM_SC" value="grow" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erJ" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erK" role="1PaTwD">
            <property role="3oM_SC" value="cover" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erL" role="1PaTwD">
            <property role="3oM_SC" value="once" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erM" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erN" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erO" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8erP" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8erT" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8erV" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erW" role="1PaTwD">
            <property role="3oM_SC" value="in." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erX" role="1PaTwD">
            <property role="3oM_SC" value="`value:number`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erY" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8erZ" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es0" role="1PaTwD">
            <property role="3oM_SC" value="uninterrupted" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es1" role="1PaTwD">
            <property role="3oM_SC" value="run:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es3" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es4" role="1PaTwD">
            <property role="3oM_SC" value="commits" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es5" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es7" role="1PaTwD">
            <property role="3oM_SC" value="colon" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es8" role="1PaTwD">
            <property role="3oM_SC" value="stops" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8es9" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8esa" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8ese" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8esg" role="1PaTwD">
            <property role="3oM_SC" value="substitution" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esh" role="1PaTwD">
            <property role="3oM_SC" value="matching," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esi" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esk" role="1PaTwD">
            <property role="3oM_SC" value="colon" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esl" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esm" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esn" role="1PaTwD">
            <property role="3oM_SC" value="annotation" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8eso" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esp" role="1PaTwD">
            <property role="3oM_SC" value="editor" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esq" role="1PaTwD">
            <property role="3oM_SC" value="hides" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8esr" role="1PaTwD">
            <property role="3oM_SC" value="while" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8ess" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8est" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8esu" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8esy" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8es$" role="1PaTwD">
            <property role="3oM_SC" value="null." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8es_" role="3cqZAp">
        <property role="2TTd_B" value="value" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8esA" role="3cqZAp">
        <property role="2TTd_B" value=":" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8esB" role="3cqZAp">
        <property role="2TTd_B" value="number" />
      </node>
      <node concept="yd1bK" id="5OpYk6fx5RL" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6fx5RN" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fx5RO" role="3cqZAp">
        <property role="2TTd_B" value="return" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fx5RP" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fx5RR" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="5OpYk6fx5RS" role="1JIkAo">
          <property role="TrG5h" value="greet" />
          <node concept="qYD23" id="5OpYk6fx5RU" role="1PAOym">
            <node concept="3wbn4H" id="5OpYk6fx5RV" role="6EW52" />
          </node>
          <node concept="SCM_e" id="5OpYk6g8esC" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="5OpYk6g8esD" role="2xFk6U" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$bN9">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_plus_makes_the_addition_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$bNa" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$bNc" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$bNd" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$bNe" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$bNf" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$bNg" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$bNh" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$bNi" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$bNk" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$bNl" role="3cqZAp">
        <property role="2TTd_B" value="total+=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$bNm" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$bNo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$bNp" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$bNq" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$bNr" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$bNs" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$bNu" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$bNx" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$bNp" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$bNy" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$j4r">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_minus_makes_the_subtraction_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$j4s" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$j4u" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$j4v" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$j4w" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$j4x" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$j4y" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$j4z" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$j4$" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$j4A" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$j4B" role="3cqZAp">
        <property role="2TTd_B" value="total-=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$j4C" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$j4E" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$j4F" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$j4G" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$j4H" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$j4I" role="1JIkAo">
          <node concept="3bMN1T" id="5OpYk6f$j4K" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$j4N" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$j4F" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$j4O" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$k08">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_star_makes_the_multiplication_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$k09" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$k0b" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$k0c" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$k0d" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$k0e" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$k0f" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$k0g" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$k0h" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$k0j" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$k0k" role="3cqZAp">
        <property role="2TTd_B" value="total*=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$k0l" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$k0n" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$k0o" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$k0p" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$k0q" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$k0r" role="1JIkAo">
          <node concept="22FROQ" id="5OpYk6f$k0t" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$k0w" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$k0o" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$k0x" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$kW9">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_slash_makes_the_division_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$kWa" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$kWc" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$kWd" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$kWe" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$kWf" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$kWg" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$kWh" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$kWi" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$kWk" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$kWl" role="3cqZAp">
        <property role="2TTd_B" value="total/=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$kWm" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$kWo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$kWp" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$kWq" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$kWr" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$kWs" role="1JIkAo">
          <node concept="qYJAT" id="5OpYk6f$kWu" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$kWx" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$kWp" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$kWy" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$lSu">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_percent_sign_makes_the_remainder_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$lSv" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$lSx" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$lSy" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$lSz" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$lS$" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$lS_" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$lSA" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$lSB" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$lSD" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$lSE" role="3cqZAp">
        <property role="2TTd_B" value="total%=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$lSF" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$lSH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$lSI" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$lSJ" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$lSK" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$lSL" role="1JIkAo">
          <node concept="1i3mww" id="5OpYk6f$lSN" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$lSQ" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$lSI" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$lSR" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$mP7">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_stars_makes_the_exponentiation_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$mP8" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$mPa" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$mPb" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$mPc" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$mPd" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$mPe" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$mPf" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$mPg" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$mPi" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$mPj" role="3cqZAp">
        <property role="2TTd_B" value="total**=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$mPk" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$mPm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$mPn" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$mPo" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$mPp" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$mPq" role="1JIkAo">
          <node concept="3d9ja" id="5OpYk6f$mPs" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$mPv" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$mPn" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$mPw" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$nM4">
    <property role="TrG5h" value="Typing_an_equals_sign_after_an_ampersand_makes_the_bitwise_and_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$nM5" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$nM7" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$nM8" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$nM9" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$nMa" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$nMb" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$nMc" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$nMd" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$nMf" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$nMg" role="3cqZAp">
        <property role="2TTd_B" value="total&amp;=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$nMh" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$nMj" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$nMk" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$nMl" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$nMm" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$nMn" role="1JIkAo">
          <node concept="2NVYov" id="5OpYk6f$nMp" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$nMs" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$nMk" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$nMt" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$oJl">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_pipe_makes_the_bitwise_or_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$oJm" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$oJo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$oJp" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$oJq" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$oJr" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$oJs" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$oJt" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$oJu" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$oJw" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$oJx" role="3cqZAp">
        <property role="2TTd_B" value="total|=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$oJy" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$oJ$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$oJ_" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$oJA" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$oJB" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$oJC" role="1JIkAo">
          <node concept="1bETeD" id="5OpYk6f$oJE" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$oJH" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$oJ_" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$oJI" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$pGU">
    <property role="TrG5h" value="Typing_an_equals_sign_after_a_caret_makes_the_bitwise_xor_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$pGV" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$pGX" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$pGY" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$pGZ" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$pH0" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$pH1" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$pH2" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$pH3" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$pH5" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$pH6" role="3cqZAp">
        <property role="2TTd_B" value="total^=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$pH7" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$pH9" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$pHa" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$pHb" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$pHc" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$pHd" role="1JIkAo">
          <node concept="1dqbpN" id="5OpYk6f$pHf" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$pHi" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$pHa" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$pHj" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$qEN">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_less_than_signs_makes_the_left_shift_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$qEO" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$qEQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$qER" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$qES" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$qET" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$qEU" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$qEV" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$qEW" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$qEY" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$qEZ" role="3cqZAp">
        <property role="2TTd_B" value="total&lt;&lt;=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$qF0" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$qF2" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$qF3" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$qF4" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$qF5" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$qF6" role="1JIkAo">
          <node concept="l84A7" id="5OpYk6f$qF8" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$qFb" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$qF3" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$qFc" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$rD0">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_greater_than_signs_makes_the_signed_right_shift_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$rD1" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$rD3" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$rD4" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$rD5" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$rD6" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$rD7" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$rD8" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$rD9" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$rDb" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$rDc" role="3cqZAp">
        <property role="2TTd_B" value="total&gt;&gt;=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$rDd" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$rDf" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$rDg" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$rDh" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$rDi" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$rDj" role="1JIkAo">
          <node concept="1pLGL4" id="5OpYk6f$rDl" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$rDo" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$rDg" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$rDp" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$sBx">
    <property role="TrG5h" value="Typing_an_equals_sign_after_three_greater_than_signs_makes_the_unsigned_right_shift_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$sBy" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$sB$" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$sB_" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$sBA" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$sBB" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$sBC" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$sBD" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$sBE" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$sBG" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$sBH" role="3cqZAp">
        <property role="2TTd_B" value="total&gt;&gt;&gt;=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$sBI" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$sBK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$sBL" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$sBM" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$sBN" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$sBO" role="1JIkAo">
          <node concept="yXCfo" id="5OpYk6f$sBQ" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$sBT" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$sBL" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$sBU" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$tAj">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_ampersands_makes_the_logical_and_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$tAk" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$tAm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$tAn" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$tAo" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$tAp" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$tAq" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$tAr" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$tAs" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$tAu" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$tAv" role="3cqZAp">
        <property role="2TTd_B" value="total&amp;&amp;=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$tAw" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$tAy" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$tAz" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$tA$" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$tA_" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$tAA" role="1JIkAo">
          <node concept="$iRRg" id="5OpYk6f$tAC" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$tAF" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$tAz" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$tAG" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$u_m">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_pipes_makes_the_logical_or_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$u_n" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$u_p" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$u_q" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$u_r" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$u_s" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$u_t" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$u_u" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$u_v" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$u_x" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$u_y" role="3cqZAp">
        <property role="2TTd_B" value="total||=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$u_z" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$u__" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$u_A" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$u_B" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$u_C" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$u_D" role="1JIkAo">
          <node concept="36m03P" id="5OpYk6f$u_F" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$u_I" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$u_A" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$u_J" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6f$v$H">
    <property role="TrG5h" value="Typing_an_equals_sign_after_two_question_marks_makes_the_nullish_assignment" />
    <property role="3GE5qa" value="expressions.operator_aliases" />
    <node concept="1qefOq" id="5OpYk6f$v$I" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6f$v$K" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$v$L" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$v$M" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$v$N" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6f$v$O" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6f$v$P" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6f$v$Q" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6f$v$S" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6f$v$T" role="3cqZAp">
        <property role="2TTd_B" value="total??=1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6f$v$U" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6f$v$W" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$v$X" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6f$v$Y" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$v$Z" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$v_0" role="1JIkAo">
          <node concept="IRftP" id="5OpYk6f$v_2" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$v_5" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$v$X" resolve="total" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$v_6" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6f$wAf">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_compound_assignment_is_typed_by_the_same_table_as_the_operator_it_compounds" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5OpYk6f$wAg" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6f$wAi" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6f$wAj" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6f$wAk" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6f$wAl" role="1JIkAo">
          <property role="TrG5h" value="n" />
          <node concept="1ku6r5" id="5OpYk6f$wAm" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$wAn" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6f$wAo" role="1JIkAo">
          <property role="TrG5h" value="s" />
          <node concept="2Kh4GC" id="5OpYk6f$wAp" role="19IeeE" />
          <node concept="33xXhr" id="5OpYk6f$wAq" role="1bGQZ8">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6f$wAr" role="1JIkAo">
          <property role="TrG5h" value="b" />
          <node concept="3$6BPE" id="5OpYk6f$wAs" role="19IeeE" />
          <node concept="1tXIsk" id="5OpYk6f$wAt" role="1bGQZ8" />
        </node>
        <node concept="3ja7nU" id="5OpYk6f$wAu" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$wAw" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$wAz" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$wAl" resolve="n" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$wA$" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$wA_" role="lGtFl">
              <node concept="30Omv" id="5OpYk6f$wAA" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6f$wAC" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$wAD" role="1JIkAo">
          <node concept="yXCfo" id="5OpYk6f$wAF" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$wAI" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$wAl" resolve="n" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$wAJ" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$wAK" role="lGtFl">
              <node concept="30Omv" id="5OpYk6f$wAL" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6f$wAN" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$wAO" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$wAQ" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$wAT" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$wAo" resolve="s" />
            </node>
            <node concept="33xXhr" id="5OpYk6f$wAU" role="GyX5B">
              <property role="3b_9E9" value="b" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$wAV" role="lGtFl">
              <node concept="30Omv" id="5OpYk6f$wAW" role="7EUXB">
                <node concept="2Kh4GC" id="5OpYk6f$wAY" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$wAZ" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$wB1" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$wB4" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$wAo" resolve="s" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$wB5" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$wB6" role="lGtFl">
              <node concept="30Omv" id="5OpYk6f$wB7" role="7EUXB">
                <node concept="2Kh4GC" id="5OpYk6f$wB9" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$wBa" role="1JIkAo">
          <node concept="36m03P" id="5OpYk6f$wBc" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$wBf" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$wAr" resolve="b" />
            </node>
            <node concept="3JGNCe" id="5OpYk6f$wBg" role="GyX5B" />
            <node concept="7CXmI" id="5OpYk6f$wBh" role="lGtFl">
              <node concept="30Omv" id="5OpYk6f$wBi" role="7EUXB">
                <node concept="3$6BPE" id="5OpYk6f$wBk" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6f$yBl">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_compound_assignment_the_table_has_no_row_for_cannot_be_applied" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5OpYk6f$yBm" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6f$yBo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6f$yBp" role="1JIkAo">
          <property role="TrG5h" value="n" />
          <node concept="1ku6r5" id="5OpYk6f$yBq" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6f$yBr" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6f$yBs" role="1JIkAo">
          <property role="TrG5h" value="s" />
          <node concept="2Kh4GC" id="5OpYk6f$yBt" role="19IeeE" />
          <node concept="33xXhr" id="5OpYk6f$yBu" role="1bGQZ8">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$yBv" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$yBx" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$yB$" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$yBp" resolve="n" />
            </node>
            <node concept="33xXhr" id="5OpYk6f$yB_" role="GyX5B">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$yBA" role="lGtFl">
              <node concept="mDk06" id="5OpYk6f$yBB" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$yBC" role="1JIkAo">
          <node concept="3bMN1T" id="5OpYk6f$yBE" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$yBH" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$yBs" resolve="s" />
            </node>
            <node concept="24BhzH" id="5OpYk6f$yBI" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5OpYk6f$yBJ" role="lGtFl">
              <node concept="mDk06" id="5OpYk6f$yBK" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6f$zBN">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_compound_assignment_to_a_const_is_an_error_too" />
    <property role="3GE5qa" value="declarations" />
    <node concept="1qefOq" id="5OpYk6f$zBO" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6f$zBQ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6f$zBR" role="1JIkAo">
          <property role="TrG5h" value="fixed" />
          <node concept="24BhzH" id="5OpYk6f$zBS" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$zBT" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6f$zBV" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6f$zBY" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6f$zBR" resolve="fixed" />
              <node concept="7CXmI" id="5OpYk6f$zBZ" role="lGtFl">
                <node concept="mDk06" id="5OpYk6f$zC0" role="7EUXB" />
              </node>
            </node>
            <node concept="24BhzH" id="5OpYk6f$zC1" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6f$zC2" role="1JIkAo">
          <node concept="IRftP" id="5OpYk6f$zC4" role="$a3P1">
            <node concept="24BhzH" id="5OpYk6f$zC7" role="33kRt2">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="5OpYk6f$zC8" role="lGtFl">
                <node concept="mDk06" id="5OpYk6f$zC9" role="7EUXB" />
              </node>
            </node>
            <node concept="24BhzH" id="5OpYk6f$zCa" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEFEC">
    <property role="TrG5h" value="Typing_two_plus_signs_after_an_identifier_makes_the_postfix_increment" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEFED" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEFEF" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEFEG" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEFEH" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEFEI" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEFEJ" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEFEK" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6fEFEL" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEFEN" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEFEO" role="3cqZAp">
        <property role="2TTd_B" value="i++" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fEFEP" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fEFER" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEFES" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEFET" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEFEU" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEFEV" role="1JIkAo">
          <node concept="10p$M9" id="5OpYk6fEFEX" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fEFEZ" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fEFES" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEGFR">
    <property role="TrG5h" value="Typing_two_minus_signs_after_an_identifier_makes_the_postfix_decrement" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEGFS" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEGFU" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEGFV" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEGFW" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEGFX" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEGFY" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEGFZ" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6fEGG0" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEGG2" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEGG3" role="3cqZAp">
        <property role="2TTd_B" value="i--" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fEGG4" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fEGG6" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEGG7" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEGG8" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEGG9" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEGGa" role="1JIkAo">
          <node concept="34OzTH" id="5OpYk6fEGGc" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fEGGe" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fEGG7" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEHHp">
    <property role="TrG5h" value="Typing_two_plus_signs_in_an_empty_statement_makes_the_prefix_increment" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEHHq" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEHHs" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEHHt" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEHHu" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEHHv" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEHHw" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEHHx" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6fEHHy" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEHH$" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEHH_" role="3cqZAp">
        <property role="2TTd_B" value="++i" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fEHHA" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fEHHC" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEHHD" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEHHE" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEHHF" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEHHG" role="1JIkAo">
          <node concept="2joTMQ" id="5OpYk6fEHHI" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fEHHK" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fEHHD" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEIJe">
    <property role="TrG5h" value="Typing_two_minus_signs_in_an_empty_statement_makes_the_prefix_decrement" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEIJf" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEIJh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEIJi" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEIJj" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEIJk" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEIJl" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEIJm" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6fEIJn" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEIJp" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEIJq" role="3cqZAp">
        <property role="2TTd_B" value="--i" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fEIJr" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fEIJt" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEIJu" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEIJv" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEIJw" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEIJx" role="1JIkAo">
          <node concept="3LUO1K" id="5OpYk6fEIJz" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fEIJ_" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fEIJu" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEKPy">
    <property role="TrG5h" value="Typing_a_postfix_operator_puts_the_caret_past_it_rather_than_in_a_hole" />
    <property role="3GE5qa" value="caret.expressions" />
    <node concept="1qefOq" id="5OpYk6fEKPz" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEKP_" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEKPA" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEKPB" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEKPC" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEKPD" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEKPE" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6fEKPF" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEKPJ" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEKPL" role="1PaTwD">
            <property role="3oM_SC" value="Every" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPM" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPN" role="1PaTwD">
            <property role="3oM_SC" value="side" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPO" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPP" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPQ" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPR" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPS" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPT" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPU" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPV" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPW" role="1PaTwD">
            <property role="3oM_SC" value="puts" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPX" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPY" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKPZ" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQ0" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQ1" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEKQ2" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEKQ6" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEKQ8" role="1PaTwD">
            <property role="3oM_SC" value="postfix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQ9" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQa" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQb" role="1PaTwD">
            <property role="3oM_SC" value="none" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQc" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQd" role="1PaTwD">
            <property role="3oM_SC" value="open" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQe" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQf" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQg" role="1PaTwD">
            <property role="3oM_SC" value="takes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQi" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQj" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQk" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQl" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQm" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQn" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQo" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEKQp" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEKQt" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEKQv" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQw" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQx" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQy" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQ$" role="1PaTwD">
            <property role="3oM_SC" value="rule" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQ_" role="1PaTwD">
            <property role="3oM_SC" value="&quot;the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQA" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQB" role="1PaTwD">
            <property role="3oM_SC" value="ends" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQC" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQD" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQE" role="1PaTwD">
            <property role="3oM_SC" value="text" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQF" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQG" role="1PaTwD">
            <property role="3oM_SC" value="edit" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQH" role="1PaTwD">
            <property role="3oM_SC" value="produced" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQI" role="1PaTwD">
            <property role="3oM_SC" value="ends&quot;" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQJ" role="1PaTwD">
            <property role="3oM_SC" value="lands" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEKQK" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEKQO" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEKQQ" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQR" role="1PaTwD">
            <property role="3oM_SC" value="past" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQS" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQT" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEKQU" role="1PaTwD">
            <property role="3oM_SC" value="instead." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6fEKQV" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEKQX" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEKQY" role="3cqZAp">
        <property role="2TTd_B" value="i++" />
      </node>
      <node concept="3vlDli" id="5OpYk6fEKQZ" role="3cqZAp">
        <node concept="Xl_RD" id="5OpYk6fEKR2" role="3tpDZB">
          <property role="Xl_RC" value="module m { let i : number = 0 ; i ++| ; }" />
        </node>
        <node concept="2YIFZM" id="5OpYk6fEKR3" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="5OpYk6fEKR4" role="37wK5m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fELV1">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_increment_and_a_decrement_are_numbers_in_both_positions" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fELV2" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fELV4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6fELV5" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6fELV6" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6fELV7" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fELV8" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fELV9" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fELVa" role="1JIkAo">
          <node concept="2joTMQ" id="5OpYk6fELVc" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fELVe" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fELV7" resolve="i" />
            </node>
            <node concept="7CXmI" id="5OpYk6fELVf" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fELVg" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6fELVi" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fELVj" role="1JIkAo">
          <node concept="10p$M9" id="5OpYk6fELVl" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fELVn" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fELV7" resolve="i" />
            </node>
            <node concept="7CXmI" id="5OpYk6fELVo" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fELVp" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6fELVr" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fELVs" role="1JIkAo">
          <node concept="3LUO1K" id="5OpYk6fELVu" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fELVw" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fELV7" resolve="i" />
            </node>
            <node concept="7CXmI" id="5OpYk6fELVx" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fELVy" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6fELV$" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fELV_" role="1JIkAo">
          <node concept="34OzTH" id="5OpYk6fELVB" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fELVD" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fELV7" resolve="i" />
            </node>
            <node concept="7CXmI" id="5OpYk6fELVE" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fELVF" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6fELVH" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fELVI" role="1JIkAo">
          <node concept="10p$M9" id="5OpYk6fELVK" role="$a3P1">
            <node concept="pJsIj" id="5OpYk6fELVM" role="2Psk$b">
              <node concept="2v$HdM" id="5OpYk6fELVO" role="3tJ$EF">
                <ref role="2oxrr9" node="5OpYk6fELV7" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fEN0h">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_operand_of_an_increment_must_be_something_that_can_be_written_to" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEN0i" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fEN0k" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6fEN0l" role="1JIkAo">
          <property role="TrG5h" value="fixed" />
          <node concept="1ku6r5" id="5OpYk6fEN0m" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEN0n" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEN0o" role="1JIkAo">
          <node concept="10p$M9" id="5OpYk6fEN0q" role="$a3P1">
            <node concept="24BhzH" id="5OpYk6fEN0s" role="2Psk$b">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="5OpYk6fEN0t" role="lGtFl">
                <node concept="mDk06" id="5OpYk6fEN0u" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEN0v" role="1JIkAo">
          <node concept="3LUO1K" id="5OpYk6fEN0x" role="$a3P1">
            <node concept="24BhzH" id="5OpYk6fEN0z" role="3CQlky">
              <property role="2Hr5CV" value="1" />
              <node concept="7CXmI" id="5OpYk6fEN0$" role="lGtFl">
                <node concept="mDk06" id="5OpYk6fEN0_" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEN0A" role="1JIkAo">
          <node concept="2joTMQ" id="5OpYk6fEN0C" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6fEN0E" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fEN0l" resolve="fixed" />
              <node concept="7CXmI" id="5OpYk6fEN0F" role="lGtFl">
                <node concept="mDk06" id="5OpYk6fEN0G" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fEOyH">
    <property role="TrG5h" value="A_binary_operator_typed_after_a_postfix_one_takes_it_as_the_left_operand" />
    <property role="3GE5qa" value="expressions.increments" />
    <node concept="1qefOq" id="5OpYk6fEOyI" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fEOyK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEOyL" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEOyM" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEOyN" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fEOyO" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fEOyP" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6fEOyQ" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEOyU" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEOyW" role="1PaTwD">
            <property role="3oM_SC" value="i+++1" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOyX" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOyY" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOyZ" role="1PaTwD">
            <property role="3oM_SC" value="run," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz0" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz1" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz2" role="1PaTwD">
            <property role="3oM_SC" value="how" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz3" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz4" role="1PaTwD">
            <property role="3oM_SC" value="own" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz5" role="1PaTwD">
            <property role="3oM_SC" value="lexer" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz6" role="1PaTwD">
            <property role="3oM_SC" value="reads" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz7" role="1PaTwD">
            <property role="3oM_SC" value="those" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz8" role="1PaTwD">
            <property role="3oM_SC" value="five" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz9" role="1PaTwD">
            <property role="3oM_SC" value="characters:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOza" role="1PaTwD">
            <property role="3oM_SC" value="++" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEOzb" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEOzf" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEOzh" role="1PaTwD">
            <property role="3oM_SC" value="takes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzi" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzj" role="1PaTwD">
            <property role="3oM_SC" value="much" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzk" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzl" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzm" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzn" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzo" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzp" role="1PaTwD">
            <property role="3oM_SC" value="third" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzq" role="1PaTwD">
            <property role="3oM_SC" value="+" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzr" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzs" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzt" role="1PaTwD">
            <property role="3oM_SC" value="binary" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzu" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzv" role="1PaTwD">
            <property role="3oM_SC" value="It" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzw" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzx" role="1PaTwD">
            <property role="3oM_SC" value="also" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzy" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzz" role="1PaTwD">
            <property role="3oM_SC" value="first" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz$" role="1PaTwD">
            <property role="3oM_SC" value="thing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOz_" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEOzA" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEOzE" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEOzG" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzH" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzI" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzJ" role="1PaTwD">
            <property role="3oM_SC" value="put" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzK" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzL" role="1PaTwD">
            <property role="3oM_SC" value="left-side-only" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzM" role="1PaTwD">
            <property role="3oM_SC" value="TSIBinaryLike" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzN" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzP" role="1PaTwD">
            <property role="3oM_SC" value="rebalancing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzQ" role="1PaTwD">
            <property role="3oM_SC" value="code," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzR" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEOzS" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEOzW" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEOzY" role="1PaTwD">
            <property role="3oM_SC" value="phase" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEOzZ" role="1PaTwD">
            <property role="3oM_SC" value="0.3" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$0" role="1PaTwD">
            <property role="3oM_SC" value="wrote" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$1" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$2" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$3" role="1PaTwD">
            <property role="3oM_SC" value="sides" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$4" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$5" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$6" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$7" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$8" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$9" role="1PaTwD">
            <property role="3oM_SC" value="instantiate" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$a" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$b" role="1PaTwD">
            <property role="3oM_SC" value="mirror" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$c" role="1PaTwD">
            <property role="3oM_SC" value="case." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEO$d" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEO$h" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEO$j" role="1PaTwD">
            <property role="3oM_SC" value="Nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$k" role="1PaTwD">
            <property role="3oM_SC" value="rotates," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$l" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$m" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$n" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$o" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$p" role="1PaTwD">
            <property role="3oM_SC" value="assertion:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$q" role="1PaTwD">
            <property role="3oM_SC" value="POSTFIX" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$r" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$s" role="1PaTwD">
            <property role="3oM_SC" value="tighter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$t" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$u" role="1PaTwD">
            <property role="3oM_SC" value="ADDITIVE," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$v" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$w" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fEO$x" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fEO$_" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fEO$B" role="1PaTwD">
            <property role="3oM_SC" value="postfix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$C" role="1PaTwD">
            <property role="3oM_SC" value="expression" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$D" role="1PaTwD">
            <property role="3oM_SC" value="becomes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$E" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$F" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$G" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$H" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$I" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fEO$J" role="1PaTwD">
            <property role="3oM_SC" value="stands." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6fEO$K" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fEO$M" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fEO$N" role="3cqZAp">
        <property role="2TTd_B" value="i+++1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fEO$O" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fEO$Q" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fEO$R" role="1JIkAo">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6fEO$S" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6fEO$T" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fEO$U" role="1JIkAo">
          <node concept="1rvuUm" id="5OpYk6fEO$W" role="$a3P1">
            <node concept="10p$M9" id="5OpYk6fEO$Z" role="33kRt2">
              <node concept="2v$HdM" id="5OpYk6fEO_1" role="2Psk$b">
                <ref role="2oxrr9" node="5OpYk6fEO$R" resolve="i" />
              </node>
            </node>
            <node concept="24BhzH" id="5OpYk6fEO_2" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fTXd3">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_object_literal_is_typed_by_the_properties_it_carries" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fTXd4" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fTXd6" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6fTXd7" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6fTXd8" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fTXd9" role="1JIkAo">
          <node concept="pJsIj" id="5OpYk6fTXdb" role="$a3P1">
            <node concept="2R1HYX" id="5OpYk6fTXdd" role="3tJ$EF">
              <node concept="17ea8W" id="5OpYk6fTXde" role="1hgjXh">
                <property role="TrG5h" value="x" />
                <node concept="24BhzH" id="5OpYk6fTXdg" role="hsbV_">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
              <node concept="17ea8W" id="5OpYk6fTXdh" role="1hgjXh">
                <property role="TrG5h" value="label" />
                <node concept="33xXhr" id="5OpYk6fTXdj" role="hsbV_">
                  <property role="3b_9E9" value="a" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="5OpYk6fTXdk" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fTXdl" role="7EUXB">
                <node concept="3n0$7x" id="5OpYk6fTXdn" role="31d$z">
                  <node concept="1D9KjG" id="5OpYk6fTXdo" role="2XfbTT">
                    <property role="TrG5h" value="x" />
                    <node concept="1ku6r5" id="5OpYk6fTXdq" role="ahpXF" />
                  </node>
                  <node concept="1D9KjG" id="5OpYk6fTXdr" role="2XfbTT">
                    <property role="TrG5h" value="label" />
                    <node concept="2Kh4GC" id="5OpYk6fTXdt" role="ahpXF" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fTXdu" role="1JIkAo">
          <node concept="pJsIj" id="5OpYk6fTXdw" role="$a3P1">
            <node concept="2R1HYX" id="5OpYk6fTXdy" role="3tJ$EF" />
            <node concept="7CXmI" id="5OpYk6fTXdz" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fTXd$" role="7EUXB">
                <node concept="3n0$7x" id="5OpYk6fTXdA" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fTYlP">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Reading_a_member_gives_the_type_the_object_type_declares" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fTYlQ" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fTYlS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6fTYlT" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6fTYlU" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2MuU66" id="5OpYk6fTYlV" role="1JIkAo">
          <property role="TrG5h" value="point" />
          <node concept="3n0$7x" id="5OpYk6fTYlW" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fTYlX" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fTYlZ" role="ahpXF" />
            </node>
            <node concept="1D9KjG" id="5OpYk6fTYm0" role="2XfbTT">
              <property role="TrG5h" value="label" />
              <property role="Cc4jk" value="true" />
              <node concept="2Kh4GC" id="5OpYk6fTYm2" role="ahpXF" />
            </node>
          </node>
          <node concept="2R1HYX" id="5OpYk6fTYm3" role="1bGQZ8">
            <node concept="17ea8W" id="5OpYk6fTYm4" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6fTYm6" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fTYm7" role="1JIkAo">
          <node concept="SU78L" id="5OpYk6fTYm9" role="$a3P1">
            <property role="2nSurL" value="x" />
            <node concept="2v$HdM" id="5OpYk6fTYmb" role="2Bgfcn">
              <ref role="2oxrr9" node="5OpYk6fTYlV" resolve="point" />
            </node>
            <node concept="7CXmI" id="5OpYk6fTYmc" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fTYmd" role="7EUXB">
                <node concept="1ku6r5" id="5OpYk6fTYmf" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fTYmg" role="1JIkAo">
          <node concept="SU78L" id="5OpYk6fTYmi" role="$a3P1">
            <property role="2nSurL" value="label" />
            <node concept="2v$HdM" id="5OpYk6fTYmk" role="2Bgfcn">
              <ref role="2oxrr9" node="5OpYk6fTYlV" resolve="point" />
            </node>
            <node concept="7CXmI" id="5OpYk6fTYml" role="lGtFl">
              <node concept="30Omv" id="5OpYk6fTYmm" role="7EUXB">
                <node concept="3pfgAg" id="5OpYk6fTYmo" role="31d$z">
                  <node concept="2Kh4GC" id="5OpYk6fTYmp" role="3KvU$C" />
                  <node concept="3OJVyd" id="5OpYk6fTYmq" role="3KvU$C" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fTZwe">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_object_type_missing_a_member_the_target_wants_is_not_assignable" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fTZwf" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fTZwh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6fTZwi" role="1JIkAo">
          <property role="TrG5h" value="narrow" />
          <node concept="2R1HYX" id="5OpYk6fTZwj" role="1bGQZ8">
            <node concept="17ea8W" id="5OpYk6fTZwk" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6fTZwm" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="5OpYk6fTZwn" role="1JIkAo">
          <property role="TrG5h" value="wanted" />
          <node concept="3n0$7x" id="5OpYk6fTZwo" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fTZwp" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fTZwr" role="ahpXF" />
            </node>
            <node concept="1D9KjG" id="5OpYk6fTZws" role="2XfbTT">
              <property role="TrG5h" value="y" />
              <node concept="1ku6r5" id="5OpYk6fTZwu" role="ahpXF" />
            </node>
          </node>
          <node concept="2v$HdM" id="5OpYk6fTZwv" role="1bGQZ8">
            <ref role="2oxrr9" node="5OpYk6fTZwi" resolve="narrow" />
            <node concept="7CXmI" id="5OpYk6fTZww" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fTZwx" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="5OpYk6fTZwy" role="1JIkAo">
          <property role="TrG5h" value="wrongMemberType" />
          <node concept="3n0$7x" id="5OpYk6fTZwz" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fTZw$" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="2Kh4GC" id="5OpYk6fTZwA" role="ahpXF" />
            </node>
          </node>
          <node concept="2v$HdM" id="5OpYk6fTZwB" role="1bGQZ8">
            <ref role="2oxrr9" node="5OpYk6fTZwi" resolve="narrow" />
            <node concept="7CXmI" id="5OpYk6fTZwC" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fTZwD" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fXQLL">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_wider_type_is_not_assignable_to_a_narrower_one" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fXQLM" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fXQLO" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fXQLP" role="1JIkAo">
          <property role="TrG5h" value="wide" />
          <node concept="3pfgAg" id="5OpYk6fXQLQ" role="19IeeE">
            <node concept="1ku6r5" id="5OpYk6fXQLR" role="3KvU$C" />
            <node concept="2Kh4GC" id="5OpYk6fXQLS" role="3KvU$C" />
          </node>
          <node concept="24BhzH" id="5OpYk6fXQLT" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6fXQLU" role="1JIkAo">
          <property role="TrG5h" value="narrowed" />
          <node concept="1ku6r5" id="5OpYk6fXQLV" role="19IeeE" />
          <node concept="2v$HdM" id="5OpYk6fXQLW" role="1bGQZ8">
            <ref role="2oxrr9" node="5OpYk6fXQLP" resolve="wide" />
            <node concept="7CXmI" id="5OpYk6fXQLX" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fXQLY" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fXRTT">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Reading_a_member_a_type_does_not_have_is_an_error" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fXRTU" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fXRTW" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6fXRTX" role="1JIkAo">
          <property role="TrG5h" value="point" />
          <node concept="3n0$7x" id="5OpYk6fXRTY" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fXRTZ" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fXRU1" role="ahpXF" />
            </node>
          </node>
          <node concept="2R1HYX" id="5OpYk6fXRU2" role="1bGQZ8">
            <node concept="17ea8W" id="5OpYk6fXRU3" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6fXRU5" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fXRU6" role="1JIkAo">
          <node concept="SU78L" id="5OpYk6fXRU8" role="$a3P1">
            <property role="2nSurL" value="y" />
            <node concept="2v$HdM" id="5OpYk6fXRUa" role="2Bgfcn">
              <ref role="2oxrr9" node="5OpYk6fXRTX" resolve="point" />
            </node>
            <node concept="7CXmI" id="5OpYk6fXRUb" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fXRUc" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fXRUd" role="1JIkAo">
          <node concept="SU78L" id="5OpYk6fXRUf" role="$a3P1">
            <property role="2nSurL" value="length" />
            <node concept="24BhzH" id="5OpYk6fXRUh" role="2Bgfcn">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="7CXmI" id="5OpYk6fXRUi" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fXRUj" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6fXT9j">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_two_shapes_an_object_gets_wrong_on_its_own" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fXT9k" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6fXT9m" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6fXT9n" role="1JIkAo">
          <node concept="2R1HYX" id="5OpYk6fXT9p" role="$a3P1">
            <node concept="17ea8W" id="5OpYk6fXT9q" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6fXT9s" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="7CXmI" id="5OpYk6fXT9t" role="lGtFl">
              <node concept="mDk06" id="5OpYk6fXT9u" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="2MuU66" id="5OpYk6fXT9v" role="1JIkAo">
          <property role="TrG5h" value="twice" />
          <node concept="3n0$7x" id="5OpYk6fXT9w" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fXT9x" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fXT9z" role="ahpXF" />
            </node>
            <node concept="1D9KjG" id="5OpYk6fXT9$" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fXT9A" role="ahpXF" />
              <node concept="7CXmI" id="5OpYk6fXT9B" role="lGtFl">
                <node concept="mDk06" id="5OpYk6fXT9C" role="7EUXB" />
              </node>
            </node>
          </node>
          <node concept="pJsIj" id="5OpYk6fXT9D" role="1bGQZ8">
            <node concept="2R1HYX" id="5OpYk6fXT9F" role="3tJ$EF">
              <node concept="17ea8W" id="5OpYk6fXT9G" role="1hgjXh">
                <property role="TrG5h" value="x" />
                <node concept="24BhzH" id="5OpYk6fXT9I" role="hsbV_">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
              <node concept="17ea8W" id="5OpYk6fXT9J" role="1hgjXh">
                <property role="TrG5h" value="x" />
                <node concept="24BhzH" id="5OpYk6fXT9L" role="hsbV_">
                  <property role="2Hr5CV" value="2" />
                </node>
                <node concept="7CXmI" id="5OpYk6fXT9M" role="lGtFl">
                  <node concept="mDk06" id="5OpYk6fXT9N" role="7EUXB" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fXUm2">
    <property role="TrG5h" value="Typing_a_dot_after_an_identifier_reads_a_member_off_it" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fXUm3" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fXUm5" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6fXUm6" role="1JIkAo">
          <property role="TrG5h" value="point" />
          <node concept="3n0$7x" id="5OpYk6fXUm7" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fXUm8" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fXUma" role="ahpXF" />
            </node>
          </node>
          <node concept="pJsIj" id="5OpYk6fXVDa" role="1bGQZ8">
            <node concept="2R1HYX" id="5OpYk6fXVDc" role="3tJ$EF">
              <node concept="17ea8W" id="5OpYk6fXVDd" role="1hgjXh">
                <property role="TrG5h" value="x" />
                <node concept="24BhzH" id="5OpYk6fXVDf" role="hsbV_">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fXVDg" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6fXVDi" role="$a3P1">
            <property role="2Hr5CV" value="0" />
            <node concept="LIFWc" id="5OpYk6fXVDj" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fXUmg" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6fXUmh" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXUml" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXUmn" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmo" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmp" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmq" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmr" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUms" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmt" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmu" role="1PaTwD">
            <property role="3oM_SC" value="cell" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmv" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmw" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmx" role="1PaTwD">
            <property role="3oM_SC" value="*statement*," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmy" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmz" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUm$" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUm_" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmA" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXVDk" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXUmB" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXUmF" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXUmH" role="1PaTwD">
            <property role="3oM_SC" value="initializes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmI" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmJ" role="1PaTwD">
            <property role="3oM_SC" value="declaration:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmK" role="1PaTwD">
            <property role="3oM_SC" value="Insert" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmL" role="1PaTwD">
            <property role="3oM_SC" value="offers" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmM" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmN" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmO" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmP" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmQ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmR" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmS" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmT" role="1PaTwD">
            <property role="3oM_SC" value="caret's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmU" role="1PaTwD">
            <property role="3oM_SC" value="own" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUmV" role="1PaTwD">
            <property role="3oM_SC" value="node" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXUmW" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXUn0" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXUn2" role="1PaTwD">
            <property role="3oM_SC" value="belongs" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn3" role="1PaTwD">
            <property role="3oM_SC" value="to," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn4" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn5" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn7" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn8" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUn9" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUna" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXUnb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXVDl" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXVDm" role="1PaTwD">
            <property role="3oM_SC" value="list." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6fXUnc" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6fXUne" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fXUnf" role="3cqZAp">
        <property role="2TTd_B" value="point.x" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fXUng" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fXUni" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6fXUnj" role="1JIkAo">
          <property role="TrG5h" value="point" />
          <node concept="3n0$7x" id="5OpYk6fXUnk" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6fXUnl" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fXUnn" role="ahpXF" />
            </node>
          </node>
          <node concept="pJsIj" id="5OpYk6fXVDn" role="1bGQZ8">
            <node concept="2R1HYX" id="5OpYk6fXVDp" role="3tJ$EF">
              <node concept="17ea8W" id="5OpYk6fXVDq" role="1hgjXh">
                <property role="TrG5h" value="x" />
                <node concept="24BhzH" id="5OpYk6fXVDs" role="hsbV_">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fXUns" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6fXVDt" role="$a3P1">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6fXVDu" role="1JIkAo">
          <node concept="SU78L" id="5OpYk6fXVDw" role="$a3P1">
            <property role="2nSurL" value="x" />
            <node concept="2v$HdM" id="5OpYk6fXVDy" role="2Bgfcn">
              <ref role="2oxrr9" node="5OpYk6fXUnj" resolve="point" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fXXZc">
    <property role="TrG5h" value="Typing_a_brace_in_a_type_annotation_makes_an_object_type" />
    <property role="3GE5qa" value="types.objects" />
    <node concept="1qefOq" id="5OpYk6fXXZd" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fXXZf" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fXXZg" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="LIFWc" id="5OpYk6fXXZh" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
          <node concept="pJsIj" id="5OpYk6fXXZi" role="1bGQZ8">
            <node concept="2R1HYX" id="5OpYk6fXXZk" role="3tJ$EF" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fXXZl" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6fXXZm" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXXZq" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXXZs" role="1PaTwD">
            <property role="3oM_SC" value="`:`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZt" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZu" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZv" role="1PaTwD">
            <property role="3oM_SC" value="annotation" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZw" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZx" role="1PaTwD">
            <property role="3oM_SC" value="`{`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZy" role="1PaTwD">
            <property role="3oM_SC" value="fills" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZ$" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZ_" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZA" role="1PaTwD">
            <property role="3oM_SC" value="leaves" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZB" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZC" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZD" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZE" role="1PaTwD">
            <property role="3oM_SC" value="type." />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZF" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZG" role="1PaTwD">
            <property role="3oM_SC" value="brace" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXXZH" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXXZL" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXXZN" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZP" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZQ" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZR" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZS" role="1PaTwD">
            <property role="3oM_SC" value="concepts" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZT" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZU" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZV" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZW" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZX" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZY" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXXZZ" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY00" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY01" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY02" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY03" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY04" role="1PaTwD">
            <property role="3oM_SC" value="never" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXY05" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXY09" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXY0b" role="1PaTwD">
            <property role="3oM_SC" value="compete," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0c" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0d" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0e" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0f" role="1PaTwD">
            <property role="3oM_SC" value="takes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0g" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0h" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0i" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0j" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0k" role="1PaTwD">
            <property role="3oM_SC" value="expressions." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXY0l" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXY0p" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXY0r" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0s" role="1PaTwD">
            <property role="3oM_SC" value="initializer" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0t" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0u" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0v" role="1PaTwD">
            <property role="3oM_SC" value="empty" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0w" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0x" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0y" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0z" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0$" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0_" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0A" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0B" role="1PaTwD">
            <property role="3oM_SC" value="*result*" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0C" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0D" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0E" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6fXY0F" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6fXY0J" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6fXY0L" role="1PaTwD">
            <property role="3oM_SC" value="free" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0M" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0N" role="1PaTwD">
            <property role="3oM_SC" value="errors," />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0O" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0P" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0Q" role="1PaTwD">
            <property role="3oM_SC" value="assignability" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0R" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0S" role="1PaTwD">
            <property role="3oM_SC" value="tightened" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0T" role="1PaTwD">
            <property role="3oM_SC" value="`let" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0U" role="1PaTwD">
            <property role="3oM_SC" value="a:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0V" role="1PaTwD">
            <property role="3oM_SC" value="{}" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0W" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0X" role="1PaTwD">
            <property role="3oM_SC" value="1`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0Y" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY0Z" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6fXY10" role="1PaTwD">
            <property role="3oM_SC" value="longer." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fXY11" role="3cqZAp">
        <property role="2TTd_B" value=":{" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6fXY12" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6fXY14" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6fXY15" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="3n0$7x" id="5OpYk6fXY16" role="19IeeE" />
          <node concept="pJsIj" id="5OpYk6fXY17" role="1bGQZ8">
            <node concept="2R1HYX" id="5OpYk6fXY19" role="3tJ$EF" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6fXZwT">
    <property role="TrG5h" value="A_program_with_objects_and_compound_assignment_can_be_typed_into_an_empty_module" />
    <property role="3GE5qa" value="programs" />
    <node concept="1qefOq" id="5OpYk6fXZwU" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6fXZwW" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="LIFWc" id="5OpYk6fXZwX" role="lGtFl">
          <property role="LIFWd" value="name" />
          <property role="ZRATv" value="true" />
          <property role="p6zMs" value="1" />
          <property role="p6zMq" value="1" />
          <property role="OXtK3" value="true" />
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6fXZwY" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6g5qkP" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qkT" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qkV" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qkW" role="1PaTwD">
            <property role="3oM_SC" value="second" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qkX" role="1PaTwD">
            <property role="3oM_SC" value="program" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qkY" role="1PaTwD">
            <property role="3oM_SC" value="test," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qkZ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql1" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql2" role="1PaTwD">
            <property role="3oM_SC" value="question" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql3" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql4" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql5" role="1PaTwD">
            <property role="3oM_SC" value="first:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql6" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql7" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql8" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql9" role="1PaTwD">
            <property role="3oM_SC" value="gesture" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qla" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlb" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qlc" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qlg" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qli" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlj" role="1PaTwD">
            <property role="3oM_SC" value="nearly-finished" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlk" role="1PaTwD">
            <property role="3oM_SC" value="tree," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qll" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlm" role="1PaTwD">
            <property role="3oM_SC" value="whether" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qln" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlo" role="1PaTwD">
            <property role="3oM_SC" value="program" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlp" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlq" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlr" role="1PaTwD">
            <property role="3oM_SC" value="*written*." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qls" role="1PaTwD">
            <property role="3oM_SC" value="It" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlt" role="1PaTwD">
            <property role="3oM_SC" value="types" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qlu" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qly" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5ql$" role="1PaTwD">
            <property role="3oM_SC" value="//" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5ql_" role="1PaTwD">
            <property role="3oM_SC" value="const" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlA" role="1PaTwD">
            <property role="3oM_SC" value="origin:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlB" role="1PaTwD">
            <property role="3oM_SC" value="{" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlC" role="1PaTwD">
            <property role="3oM_SC" value="x:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlD" role="1PaTwD">
            <property role="3oM_SC" value="number;" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlE" role="1PaTwD">
            <property role="3oM_SC" value="y:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlF" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlG" role="1PaTwD">
            <property role="3oM_SC" value="}" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlH" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlI" role="1PaTwD">
            <property role="3oM_SC" value="{" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlJ" role="1PaTwD">
            <property role="3oM_SC" value="x:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlK" role="1PaTwD">
            <property role="3oM_SC" value="1," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlL" role="1PaTwD">
            <property role="3oM_SC" value="y:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlM" role="1PaTwD">
            <property role="3oM_SC" value="2" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlN" role="1PaTwD">
            <property role="3oM_SC" value="};" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qlO" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qlS" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qlU" role="1PaTwD">
            <property role="3oM_SC" value="let" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlV" role="1PaTwD">
            <property role="3oM_SC" value="total:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlW" role="1PaTwD">
            <property role="3oM_SC" value="number" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlX" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qlY" role="1PaTwD">
            <property role="3oM_SC" value="origin.x;" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qlZ" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qm3" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qm5" role="1PaTwD">
            <property role="3oM_SC" value="total" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qm6" role="1PaTwD">
            <property role="3oM_SC" value="+=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qm7" role="1PaTwD">
            <property role="3oM_SC" value="origin.y;" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qm8" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qmc" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qme" role="1PaTwD">
            <property role="3oM_SC" value="total++;" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qmf" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qmj" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qml" role="1PaTwD">
            <property role="3oM_SC" value="let" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmm" role="1PaTwD">
            <property role="3oM_SC" value="moved:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmn" role="1PaTwD">
            <property role="3oM_SC" value="boolean" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmo" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmp" role="1PaTwD">
            <property role="3oM_SC" value="false;" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qmq" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qmu" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qmw" role="1PaTwD">
            <property role="3oM_SC" value="moved" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmx" role="1PaTwD">
            <property role="3oM_SC" value="||=" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmy" role="1PaTwD">
            <property role="3oM_SC" value="total" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmz" role="1PaTwD">
            <property role="3oM_SC" value="&gt;" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qm$" role="1PaTwD">
            <property role="3oM_SC" value="0;" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qm_" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qmD" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qmF" role="1PaTwD">
            <property role="3oM_SC" value="//" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmG" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmH" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmI" role="1PaTwD">
            <property role="3oM_SC" value="mouse:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmJ" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmK" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmL" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmM" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmN" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmO" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmP" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmQ" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmR" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmS" role="1PaTwD">
            <property role="3oM_SC" value="properties" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmT" role="1PaTwD">
            <property role="3oM_SC" value="each," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmU" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qmV" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qmW" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qn0" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qn2" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn3" role="1PaTwD">
            <property role="3oM_SC" value="twice," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn4" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn5" role="1PaTwD">
            <property role="3oM_SC" value="compound" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn6" role="1PaTwD">
            <property role="3oM_SC" value="assignment," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn7" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn8" role="1PaTwD">
            <property role="3oM_SC" value="postfix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn9" role="1PaTwD">
            <property role="3oM_SC" value="increment" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qna" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnb" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnc" role="1PaTwD">
            <property role="3oM_SC" value="logical" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnd" role="1PaTwD">
            <property role="3oM_SC" value="compound" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qne" role="1PaTwD">
            <property role="3oM_SC" value="assignment." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qnf" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qnj" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qnl" role="1PaTwD">
            <property role="3oM_SC" value="Writing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnm" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnn" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qno" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnp" role="1PaTwD">
            <property role="3oM_SC" value="found" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnq" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnr" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qns" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnt" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnu" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnv" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnw" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnx" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qny" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnz" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn$" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qn_" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnA" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnB" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qnC" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qnG" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qnI" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnJ" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnK" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnL" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnM" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnN" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnO" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnP" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnQ" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnR" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnS" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnT" role="1PaTwD">
            <property role="3oM_SC" value="substitute" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnU" role="1PaTwD">
            <property role="3oM_SC" value="menus" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnV" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnW" role="1PaTwD">
            <property role="3oM_SC" value="TSPropertySignature" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qnX" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qnY" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qo2" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qo4" role="1PaTwD">
            <property role="3oM_SC" value="TSPropertyAssignment" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo5" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo7" role="1PaTwD">
            <property role="3oM_SC" value="answer." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo8" role="1PaTwD">
            <property role="3oM_SC" value="See" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo9" role="1PaTwD">
            <property role="3oM_SC" value="*A" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoa" role="1PaTwD">
            <property role="3oM_SC" value="name-first" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qob" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoc" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qod" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoe" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qof" role="1PaTwD">
            <property role="3oM_SC" value="needs" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qog" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoh" role="1PaTwD">
            <property role="3oM_SC" value="menu" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoi" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qoj" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qon" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qop" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoq" role="1PaTwD">
            <property role="3oM_SC" value="own*" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qor" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qos" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qot" role="1PaTwD">
            <property role="3oM_SC" value="roadmap." />
          </node>
        </node>
      </node>
      <node concept="yd1bK" id="5OpYk6fXZwZ" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6fXZx1" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fXZx2" role="3cqZAp">
        <property role="2TTd_B" value="const" />
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qou" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qoy" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qo$" role="1PaTwD">
            <property role="3oM_SC" value="`origin:{`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qo_" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoA" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoB" role="1PaTwD">
            <property role="3oM_SC" value="run:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoC" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoD" role="1PaTwD">
            <property role="3oM_SC" value="`:`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoE" role="1PaTwD">
            <property role="3oM_SC" value="leaves" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoF" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoG" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoH" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoI" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoJ" role="1PaTwD">
            <property role="3oM_SC" value="`{`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoK" role="1PaTwD">
            <property role="3oM_SC" value="fills" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoL" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoM" role="1PaTwD">
            <property role="3oM_SC" value="annotation" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoN" role="1PaTwD">
            <property role="3oM_SC" value="hole." />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qoO" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qoS" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qoU" role="1PaTwD">
            <property role="3oM_SC" value="`x:number;y:number`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoV" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoW" role="1PaTwD">
            <property role="3oM_SC" value="another:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoX" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoY" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qoZ" role="1PaTwD">
            <property role="3oM_SC" value="creates" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp1" role="1PaTwD">
            <property role="3oM_SC" value="property," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp3" role="1PaTwD">
            <property role="3oM_SC" value="`:`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp4" role="1PaTwD">
            <property role="3oM_SC" value="carries" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp5" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qp6" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qp7" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qpb" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qpd" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpe" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpf" role="1PaTwD">
            <property role="3oM_SC" value="type," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpg" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qph" role="1PaTwD">
            <property role="3oM_SC" value="`;`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpi" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpk" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpl" role="1PaTwD">
            <property role="3oM_SC" value="separator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpm" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpn" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpo" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpp" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpq" role="1PaTwD">
            <property role="3oM_SC" value="insert" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpr" role="1PaTwD">
            <property role="3oM_SC" value="key" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qps" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpt" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpu" role="1PaTwD">
            <property role="3oM_SC" value="element." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6fXZx3" role="3cqZAp">
        <property role="2TTd_B" value="origin:{" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6fY0Iq" role="3cqZAp">
        <property role="2TTd_B" value="x:number;y:number" />
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qpv" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qpz" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qp_" role="1PaTwD">
            <property role="3oM_SC" value="Two" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpA" role="1PaTwD">
            <property role="3oM_SC" value="MoveRights" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpB" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpC" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpD" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpE" role="1PaTwD">
            <property role="3oM_SC" value="Tab," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpF" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpG" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpH" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpI" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpJ" role="1PaTwD">
            <property role="3oM_SC" value="object-type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpK" role="1PaTwD">
            <property role="3oM_SC" value="twin" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpL" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpM" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpN" role="1PaTwD">
            <property role="3oM_SC" value="`else`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpO" role="1PaTwD">
            <property role="3oM_SC" value="position:" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qpP" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qpT" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qpV" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpW" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpX" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpY" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qpZ" role="1PaTwD">
            <property role="3oM_SC" value="reach" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq0" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq1" role="1PaTwD">
            <property role="3oM_SC" value="*last*" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq2" role="1PaTwD">
            <property role="3oM_SC" value="position" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq3" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq4" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq5" role="1PaTwD">
            <property role="3oM_SC" value="closing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq6" role="1PaTwD">
            <property role="3oM_SC" value="brace," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq7" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq8" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qq9" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqa" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqb" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qqc" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qqg" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qqi" role="1PaTwD">
            <property role="3oM_SC" value="cell" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqj" role="1PaTwD">
            <property role="3oM_SC" value="belonging" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqk" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qql" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqm" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqn" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqo" role="1PaTwD">
            <property role="3oM_SC" value="itself," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqp" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqr" role="1PaTwD">
            <property role="3oM_SC" value="`=`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqs" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqt" role="1PaTwD">
            <property role="3oM_SC" value="asks" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqu" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqv" role="1PaTwD">
            <property role="3oM_SC" value="declaration" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqw" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qqx" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qq_" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qqB" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqC" role="1PaTwD">
            <property role="3oM_SC" value="behind." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqD" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqE" role="1PaTwD">
            <property role="3oM_SC" value="closing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqF" role="1PaTwD">
            <property role="3oM_SC" value="brace" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqG" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqH" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqI" role="1PaTwD">
            <property role="3oM_SC" value="constant," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqJ" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqK" role="1PaTwD">
            <property role="3oM_SC" value="Tab" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqL" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqM" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqN" role="1PaTwD">
            <property role="3oM_SC" value="walks" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqO" role="1PaTwD">
            <property role="3oM_SC" value="editable" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqP" role="1PaTwD">
            <property role="3oM_SC" value="cells" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqQ" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqR" role="1PaTwD">
            <property role="3oM_SC" value="goes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qqS" role="1PaTwD">
            <property role="3oM_SC" value="past" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qqT" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qqX" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qqZ" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr0" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr2" role="1PaTwD">
            <property role="3oM_SC" value="next" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr3" role="1PaTwD">
            <property role="3oM_SC" value="statement" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr4" role="1PaTwD">
            <property role="3oM_SC" value="instead." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6g4G_f" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g4G_h" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6g4RB7" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g4RB9" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g4G_i" role="3cqZAp">
        <property role="2TTd_B" value="={" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g4G_j" role="3cqZAp">
        <property role="2TTd_B" value="x:1,y:2" />
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qr5" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qr9" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qrb" role="1PaTwD">
            <property role="3oM_SC" value="Out" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrc" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrd" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qre" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrf" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrg" role="1PaTwD">
            <property role="3oM_SC" value="Insert," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrh" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qri" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrj" role="1PaTwD">
            <property role="3oM_SC" value="reason" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrk" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrl" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrm" role="1PaTwD">
            <property role="3oM_SC" value="run" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrn" role="1PaTwD">
            <property role="3oM_SC" value="turns" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qro" role="1PaTwD">
            <property role="3oM_SC" value="on:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrp" role="1PaTwD">
            <property role="3oM_SC" value="Insert" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrq" role="1PaTwD">
            <property role="3oM_SC" value="offers" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrr" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qrs" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qrw" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qry" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrz" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr$" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qr_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrA" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrB" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrC" role="1PaTwD">
            <property role="3oM_SC" value="*caret's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrD" role="1PaTwD">
            <property role="3oM_SC" value="own" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrE" role="1PaTwD">
            <property role="3oM_SC" value="node*" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrF" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrG" role="1PaTwD">
            <property role="3oM_SC" value="in," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrH" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrI" role="1PaTwD">
            <property role="3oM_SC" value="inside" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrJ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrK" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrL" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrM" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrN" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qrO" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qrS" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qrU" role="1PaTwD">
            <property role="3oM_SC" value="property" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrV" role="1PaTwD">
            <property role="3oM_SC" value="list." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrW" role="1PaTwD">
            <property role="3oM_SC" value="Two" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrX" role="1PaTwD">
            <property role="3oM_SC" value="MoveRights" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrY" role="1PaTwD">
            <property role="3oM_SC" value="put" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qrZ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs0" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs1" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs3" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs4" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs5" role="1PaTwD">
            <property role="3oM_SC" value="itself," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs6" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs7" role="1PaTwD">
            <property role="3oM_SC" value="nearest" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qs8" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qsc" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qse" role="1PaTwD">
            <property role="3oM_SC" value="enclosing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsf" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsg" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsi" role="1PaTwD">
            <property role="3oM_SC" value="module's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsj" role="1PaTwD">
            <property role="3oM_SC" value="statements." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6g52Dg" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g52Di" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6g5dGt" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g5dGv" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:R3$tg1aBNW" resolve="MoveRight" />
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6g5dGw" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g5dGy" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Dj" role="3cqZAp">
        <property role="2TTd_B" value="let" />
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qsk" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qso" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qsq" role="1PaTwD">
            <property role="3oM_SC" value="`origin.x`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsr" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qss" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qst" role="1PaTwD">
            <property role="3oM_SC" value="middle" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsu" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsv" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsw" role="1PaTwD">
            <property role="3oM_SC" value="declaration:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsx" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsy" role="1PaTwD">
            <property role="3oM_SC" value="identifier" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsz" role="1PaTwD">
            <property role="3oM_SC" value="commits" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs$" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qs_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsA" role="1PaTwD">
            <property role="3oM_SC" value="dot," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsB" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsC" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsD" role="1PaTwD">
            <property role="3oM_SC" value="dot" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qsE" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qsI" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qsK" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsL" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsM" role="1PaTwD">
            <property role="3oM_SC" value="member" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsN" role="1PaTwD">
            <property role="3oM_SC" value="name." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Dk" role="3cqZAp">
        <property role="2TTd_B" value="total:number=origin.x" />
      </node>
      <node concept="2HxZob" id="5OpYk6g52Dl" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g52Dn" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Do" role="3cqZAp">
        <property role="2TTd_B" value="total+=origin.y" />
      </node>
      <node concept="2HxZob" id="5OpYk6g52Dp" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g52Dr" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Ds" role="3cqZAp">
        <property role="2TTd_B" value="total++" />
      </node>
      <node concept="2HxZob" id="5OpYk6g52Dt" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g52Dv" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Dw" role="3cqZAp">
        <property role="2TTd_B" value="let" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52Dx" role="3cqZAp">
        <property role="2TTd_B" value="moved:boolean=false" />
      </node>
      <node concept="2HxZob" id="5OpYk6g52Dy" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6g52D$" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qsO" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qsS" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qsU" role="1PaTwD">
            <property role="3oM_SC" value="`||=`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsV" role="1PaTwD">
            <property role="3oM_SC" value="over" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsW" role="1PaTwD">
            <property role="3oM_SC" value="`||`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsX" role="1PaTwD">
            <property role="3oM_SC" value="over" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsY" role="1PaTwD">
            <property role="3oM_SC" value="`|`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qsZ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt0" role="1PaTwD">
            <property role="3oM_SC" value="longest-match," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt1" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt2" role="1PaTwD">
            <property role="3oM_SC" value="`&gt;`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt3" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt4" role="1PaTwD">
            <property role="3oM_SC" value="tighter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt5" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt7" role="1PaTwD">
            <property role="3oM_SC" value="assignment," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qt8" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g5qt9" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g5qtd" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g5qtf" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtg" role="1PaTwD">
            <property role="3oM_SC" value="right" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qth" role="1PaTwD">
            <property role="3oM_SC" value="operand" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qti" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtk" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtl" role="1PaTwD">
            <property role="3oM_SC" value="comparison" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtm" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtn" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qto" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g5qtp" role="1PaTwD">
            <property role="3oM_SC" value="`total`." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g52D_" role="3cqZAp">
        <property role="2TTd_B" value="moved||=total&gt;0" />
      </node>
      <node concept="3vlDli" id="5OpYk6fXZx4" role="3cqZAp">
        <node concept="Xl_RD" id="5OpYk6fXZx7" role="3tpDZB">
          <property role="Xl_RC" value="module m { const origin : { x : number ; y : number } = { x : 1 , y : 2 } ; let total : number = origin . x ; total += origin . y ; total ++ ; let moved : boolean = false ; moved ||= total &gt; 0| ; }" />
        </node>
        <node concept="2YIFZM" id="5OpYk6fXZx8" role="3tpDZA">
          <ref role="1Pybhc" node="30$vFIOLomV" resolve="EditorText" />
          <ref role="37wK5l" node="30$vFIOLomY" resolve="withCaret" />
          <node concept="369mXd" id="5OpYk6fXZx9" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6g5qtq" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6g5qts" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6g5qtt" role="1JIkAo">
          <property role="TrG5h" value="origin" />
          <node concept="3n0$7x" id="5OpYk6g5qtu" role="19IeeE">
            <node concept="1D9KjG" id="5OpYk6g5qtv" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6g5qtx" role="ahpXF" />
            </node>
            <node concept="1D9KjG" id="5OpYk6g5qty" role="2XfbTT">
              <property role="TrG5h" value="y" />
              <node concept="1ku6r5" id="5OpYk6g5qt$" role="ahpXF" />
            </node>
          </node>
          <node concept="2R1HYX" id="5OpYk6g5qt_" role="1bGQZ8">
            <node concept="17ea8W" id="5OpYk6g5qtA" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6g5qtC" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="17ea8W" id="5OpYk6g5qtD" role="1hgjXh">
              <property role="TrG5h" value="y" />
              <node concept="24BhzH" id="5OpYk6g5qtF" role="hsbV_">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6g5qtG" role="1JIkAo">
          <property role="TrG5h" value="total" />
          <node concept="1ku6r5" id="5OpYk6g5qtH" role="19IeeE" />
          <node concept="SU78L" id="5OpYk6g5qtI" role="1bGQZ8">
            <property role="2nSurL" value="x" />
            <node concept="2v$HdM" id="5OpYk6g5qtK" role="2Bgfcn">
              <ref role="2oxrr9" node="5OpYk6g5qtt" resolve="origin" />
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6g5qtL" role="1JIkAo">
          <node concept="3iFsGD" id="5OpYk6g5qtN" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6g5qtQ" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6g5qtG" resolve="total" />
            </node>
            <node concept="SU78L" id="5OpYk6g5qtR" role="GyX5B">
              <property role="2nSurL" value="y" />
              <node concept="2v$HdM" id="5OpYk6g5qtT" role="2Bgfcn">
                <ref role="2oxrr9" node="5OpYk6g5qtt" resolve="origin" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6g5qtU" role="1JIkAo">
          <node concept="10p$M9" id="5OpYk6g5qtW" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6g5qtY" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6g5qtG" resolve="total" />
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6g5qtZ" role="1JIkAo">
          <property role="TrG5h" value="moved" />
          <node concept="3$6BPE" id="5OpYk6g5qu0" role="19IeeE" />
          <node concept="3JGNCe" id="5OpYk6g5qu1" role="1bGQZ8" />
        </node>
        <node concept="3ja7nU" id="5OpYk6g5qu2" role="1JIkAo">
          <node concept="36m03P" id="5OpYk6g5qu4" role="$a3P1">
            <node concept="2v$HdM" id="5OpYk6g5qu7" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6g5qtZ" resolve="moved" />
            </node>
            <node concept="27A9uT" id="5OpYk6g5qu8" role="GyX5B">
              <node concept="2v$HdM" id="5OpYk6g5qub" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6g5qtG" resolve="total" />
              </node>
              <node concept="24BhzH" id="5OpYk6g5quc" role="GyX5B">
                <property role="2Hr5CV" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6g8bEr">
    <property role="TrG5h" value="A_parameter_and_its_annotation_can_be_typed_in_one_run" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="5OpYk6g8bEs" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6g8bEu" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="5OpYk6g8bEv" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="qIwln" id="5OpYk6g8bEx" role="jrNXk" />
          <node concept="qYD23" id="5OpYk6g8bEy" role="1PAOym" />
          <node concept="LIFWc" id="5OpYk6g8bEz" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6g8bE$" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6g8bE_" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bED" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bEF" role="1PaTwD">
            <property role="3oM_SC" value="Tab" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEG" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEH" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEI" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEJ" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEL" role="1PaTwD">
            <property role="3oM_SC" value="empty" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEM" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEN" role="1PaTwD">
            <property role="3oM_SC" value="list," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEO" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEP" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEQ" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bER" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bES" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bET" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEU" role="1PaTwD">
            <property role="3oM_SC" value="stop:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEV" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bEW" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bEX" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bF1" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bF3" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF4" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF5" role="1PaTwD">
            <property role="3oM_SC" value="offer" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF7" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF8" role="1PaTwD">
            <property role="3oM_SC" value="under," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bF9" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFa" role="1PaTwD">
            <property role="3oM_SC" value="matched" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFb" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFc" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFd" role="1PaTwD">
            <property role="3oM_SC" value="name" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFe" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFf" role="1PaTwD">
            <property role="3oM_SC" value="neither" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFg" role="1PaTwD">
            <property role="3oM_SC" value="Tab" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFh" role="1PaTwD">
            <property role="3oM_SC" value="nor" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bFi" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bFm" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bFo" role="1PaTwD">
            <property role="3oM_SC" value="MoveRight" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFp" role="1PaTwD">
            <property role="3oM_SC" value="committed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFq" role="1PaTwD">
            <property role="3oM_SC" value="anything," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFr" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFs" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFt" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFu" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFv" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFw" role="1PaTwD">
            <property role="3oM_SC" value="commit." />
          </node>
        </node>
      </node>
      <node concept="yd1bK" id="5OpYk6g8bFx" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6g8bFz" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8bF$" role="3cqZAp">
        <property role="2TTd_B" value="value" />
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bF_" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bFD" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bFF" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFG" role="1PaTwD">
            <property role="3oM_SC" value="colon" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFH" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFI" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFJ" role="1PaTwD">
            <property role="3oM_SC" value="commits" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFL" role="1PaTwD">
            <property role="3oM_SC" value="name:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFM" role="1PaTwD">
            <property role="3oM_SC" value="`value:`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFN" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFO" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFP" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFQ" role="1PaTwD">
            <property role="3oM_SC" value="valid" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFR" role="1PaTwD">
            <property role="3oM_SC" value="identifier," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFS" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bFT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bFU" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bFY" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bG0" role="1PaTwD">
            <property role="3oM_SC" value="substitution" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG1" role="1PaTwD">
            <property role="3oM_SC" value="stops" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG2" role="1PaTwD">
            <property role="3oM_SC" value="matching," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG3" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG4" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG5" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG6" role="1PaTwD">
            <property role="3oM_SC" value="created," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG7" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG9" role="1PaTwD">
            <property role="3oM_SC" value="side" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGa" role="1PaTwD">
            <property role="3oM_SC" value="transform" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGb" role="1PaTwD">
            <property role="3oM_SC" value="gets" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGc" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bGd" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bGh" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bGj" role="1PaTwD">
            <property role="3oM_SC" value="turn." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGk" role="1PaTwD">
            <property role="3oM_SC" value="`number`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGl" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGm" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGn" role="1PaTwD">
            <property role="3oM_SC" value="lands" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGo" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGp" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGr" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGs" role="1PaTwD">
            <property role="3oM_SC" value="came" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGt" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGu" role="1PaTwD">
            <property role="3oM_SC" value="rest" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGv" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGw" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGx" role="1PaTwD">
            <property role="3oM_SC" value="hole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGy" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGz" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bG$" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8bG_" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8bGD" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8bGF" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGH" role="1PaTwD">
            <property role="3oM_SC" value="tree" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGI" role="1PaTwD">
            <property role="3oM_SC" value="below" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGJ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGL" role="1PaTwD">
            <property role="3oM_SC" value="caret" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGM" role="1PaTwD">
            <property role="3oM_SC" value="assertion" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGN" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGO" role="1PaTwD">
            <property role="3oM_SC" value="well" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGP" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGQ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGR" role="1PaTwD">
            <property role="3oM_SC" value="tree" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8bGS" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8bGT" role="3cqZAp">
        <property role="2TTd_B" value=":" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8bGU" role="3cqZAp">
        <property role="2TTd_B" value="number" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6g8bGV" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6g8bGX" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3Gxli7" id="5OpYk6g8bGY" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="SCM_e" id="5OpYk6g8bH0" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="5OpYk6g8bH1" role="2xFk6U" />
          </node>
          <node concept="qIwln" id="5OpYk6g8bH2" role="jrNXk" />
          <node concept="qYD23" id="5OpYk6g8bH3" role="1PAOym" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6g8d2_">
    <property role="TrG5h" value="A_function_types_parameter_can_be_typed_in_one_run_too" />
    <property role="3GE5qa" value="functions.parameters" />
    <node concept="1qefOq" id="5OpYk6g8d2A" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6g8d2C" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6g8d2D" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="3MZLnu" id="5OpYk6g8d2E" role="19IeeE">
            <node concept="1ku6r5" id="5OpYk6g8d2G" role="19PnrX" />
          </node>
          <node concept="LIFWc" id="5OpYk6g8d2H" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6g8d2I" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6g8d2J" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8d2N" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8d2P" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2Q" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2R" role="1PaTwD">
            <property role="3oM_SC" value="gap" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2S" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2T" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2U" role="1PaTwD">
            <property role="3oM_SC" value="fourth" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2V" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2W" role="1PaTwD">
            <property role="3oM_SC" value="last" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2X" role="1PaTwD">
            <property role="3oM_SC" value="name-first" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2Y" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d2Z" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d30" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d31" role="1PaTwD">
            <property role="3oM_SC" value="has." />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d32" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d33" role="1PaTwD">
            <property role="3oM_SC" value="function" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d34" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8d35" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8d39" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8d3b" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3c" role="1PaTwD">
            <property role="3oM_SC" value="reached" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3d" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3e" role="1PaTwD">
            <property role="3oM_SC" value="typing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3f" role="1PaTwD">
            <property role="3oM_SC" value="`(`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3g" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3h" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3i" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3j" role="1PaTwD">
            <property role="3oM_SC" value="hole," />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3k" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3l" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3m" role="1PaTwD">
            <property role="3oM_SC" value="parameter" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3n" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3o" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3p" role="1PaTwD">
            <property role="3oM_SC" value="where" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3q" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3r" role="1PaTwD">
            <property role="3oM_SC" value="gesture" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6g8d3s" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6g8d3w" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6g8d3y" role="1PaTwD">
            <property role="3oM_SC" value="stopped" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3z" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3$" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3_" role="1PaTwD">
            <property role="3oM_SC" value="`(a:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3A" role="1PaTwD">
            <property role="3oM_SC" value="string)" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3B" role="1PaTwD">
            <property role="3oM_SC" value="=&gt;" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3C" role="1PaTwD">
            <property role="3oM_SC" value="number`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3D" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3E" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3F" role="1PaTwD">
            <property role="3oM_SC" value="built" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3G" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3H" role="1PaTwD">
            <property role="3oM_SC" value="completion" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3I" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3J" role="1PaTwD">
            <property role="3oM_SC" value="never" />
          </node>
          <node concept="3oM_SD" id="5OpYk6g8d3K" role="1PaTwD">
            <property role="3oM_SC" value="typed." />
          </node>
        </node>
      </node>
      <node concept="yd1bK" id="5OpYk6g8d3L" role="3cqZAp">
        <node concept="pLAjd" id="5OpYk6g8d3N" role="yd6KS">
          <property role="pLAjf" value="VK_TAB" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8d3O" role="3cqZAp">
        <property role="2TTd_B" value="a" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8d3P" role="3cqZAp">
        <property role="2TTd_B" value=":" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6g8d3Q" role="3cqZAp">
        <property role="2TTd_B" value="string" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6g8d3R" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6g8d3T" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6g8d3U" role="1JIkAo">
          <property role="TrG5h" value="f" />
          <node concept="3MZLnu" id="5OpYk6g8d3V" role="19IeeE">
            <node concept="2Fu235" id="5OpYk6g8d3X" role="2thRFd">
              <property role="TrG5h" value="a" />
              <node concept="2Kh4GC" id="5OpYk6g8d3Z" role="3cr0mA" />
            </node>
            <node concept="1ku6r5" id="5OpYk6g8d40" role="19PnrX" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gaR7u">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Every_type_is_assignable_to_unknown" />
    <property role="3GE5qa" value="types.unknown" />
    <node concept="1qefOq" id="5OpYk6gaR7v" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gaR7x" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gaR7y" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gaR7z" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gaR7$" role="1JIkAo">
          <property role="TrG5h" value="a" />
          <node concept="cSnVn" id="5OpYk6gaR7_" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6gaR7A" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gaR7B" role="1JIkAo">
          <property role="TrG5h" value="b" />
          <node concept="cSnVn" id="5OpYk6gaR7C" role="19IeeE" />
          <node concept="33xXhr" id="5OpYk6gaR7D" role="1bGQZ8">
            <property role="3b_9E9" value="x" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gaR7E" role="1JIkAo">
          <property role="TrG5h" value="c" />
          <node concept="cSnVn" id="5OpYk6gaR7F" role="19IeeE" />
          <node concept="C5IwR" id="5OpYk6gaR7G" role="1bGQZ8" />
        </node>
        <node concept="2swglJ" id="5OpYk6gaR7H" role="1JIkAo">
          <property role="TrG5h" value="d" />
          <node concept="cSnVn" id="5OpYk6gaR7I" role="19IeeE" />
          <node concept="2R1HYX" id="5OpYk6gaR7J" role="1bGQZ8">
            <node concept="17ea8W" id="5OpYk6gaR7K" role="1hgjXh">
              <property role="TrG5h" value="x" />
              <node concept="24BhzH" id="5OpYk6gaR7M" role="hsbV_">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gaR7N" role="1JIkAo">
          <property role="TrG5h" value="e" />
          <node concept="cSnVn" id="5OpYk6gaR7O" role="19IeeE" />
          <node concept="2v$HdM" id="5OpYk6gaR7P" role="1bGQZ8">
            <ref role="2oxrr9" node="5OpYk6gaR7$" resolve="a" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gaTOh">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Unknown_is_assignable_to_nothing_but_itself" />
    <property role="3GE5qa" value="types.unknown" />
    <node concept="1qefOq" id="5OpYk6gaTOi" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gaTOk" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6gaTOl" role="1JIkAo">
          <property role="TrG5h" value="u" />
          <node concept="cSnVn" id="5OpYk6gaTOm" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6gaTOn" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gaTOo" role="1JIkAo">
          <property role="TrG5h" value="narrowed" />
          <node concept="1ku6r5" id="5OpYk6gaTOp" role="19IeeE" />
          <node concept="2v$HdM" id="5OpYk6gaTOq" role="1bGQZ8">
            <ref role="2oxrr9" node="5OpYk6gaTOl" resolve="u" />
            <node concept="7CXmI" id="5OpYk6gaTOr" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gaTOs" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6geTTL">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_ambient_console_resolves_and_can_be_called" />
    <property role="3GE5qa" value="types.unknown" />
    <node concept="1qefOq" id="5OpYk6geTTM" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6geTTO" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6geTTP" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6geTTQ" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6geTTR" role="1JIkAo">
          <node concept="2R1OvL" id="5OpYk6geTTT" role="$a3P1">
            <node concept="SU78L" id="5OpYk6geTTV" role="3yUXHQ">
              <property role="2nSurL" value="log" />
              <node concept="2v$HdM" id="5OpYk6geTTX" role="2Bgfcn">
                <ref role="2oxrr9" to="gawc:5OpYk6gdLqU" resolve="console" />
              </node>
            </node>
            <node concept="33xXhr" id="5OpYk6geTTY" role="DTHKp">
              <property role="3b_9E9" value="hello" />
            </node>
            <node concept="24BhzH" id="5OpYk6geTTZ" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gmKqe">
    <property role="TrG5h" value="Typing_unknown_makes_the_top_type_rather_than_undefined" />
    <property role="3GE5qa" value="types.unknown" />
    <node concept="1qefOq" id="5OpYk6gmKqf" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gmKqh" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6gmKqi" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="5OpYk6gmKqj" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="LIFWc" id="5OpYk6gmKqk" role="lGtFl">
            <property role="LIFWd" value="name" />
            <property role="ZRATv" value="true" />
            <property role="p6zMs" value="1" />
            <property role="p6zMq" value="1" />
            <property role="OXtK3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gmKql" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6gmKqm" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gmKqq" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gmKqs" role="1PaTwD">
            <property role="3oM_SC" value="`unknown`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqt" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqu" role="1PaTwD">
            <property role="3oM_SC" value="`undefined`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqv" role="1PaTwD">
            <property role="3oM_SC" value="share" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqw" role="1PaTwD">
            <property role="3oM_SC" value="their" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqx" role="1PaTwD">
            <property role="3oM_SC" value="first" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqy" role="1PaTwD">
            <property role="3oM_SC" value="two" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqz" role="1PaTwD">
            <property role="3oM_SC" value="characters," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKq$" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKq_" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqA" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqB" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqC" role="1PaTwD">
            <property role="3oM_SC" value="completion" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqD" role="1PaTwD">
            <property role="3oM_SC" value="race" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gmKqE" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gmKqI" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gmKqK" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqL" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqM" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqN" role="1PaTwD">
            <property role="3oM_SC" value="plain" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqO" role="1PaTwD">
            <property role="3oM_SC" value="substitution" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqP" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqQ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqR" role="1PaTwD">
            <property role="3oM_SC" value="third" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqS" role="1PaTwD">
            <property role="3oM_SC" value="character" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqT" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqU" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqV" role="1PaTwD">
            <property role="3oM_SC" value="tells" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqW" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqX" role="1PaTwD">
            <property role="3oM_SC" value="apart," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKqY" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gmKqZ" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gmKr3" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gmKr5" role="1PaTwD">
            <property role="3oM_SC" value="typing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr7" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr8" role="1PaTwD">
            <property role="3oM_SC" value="word" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr9" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKra" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrb" role="1PaTwD">
            <property role="3oM_SC" value="run" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrc" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrd" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKre" role="1PaTwD">
            <property role="3oM_SC" value="pins" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrf" role="1PaTwD">
            <property role="3oM_SC" value="that." />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrg" role="1PaTwD">
            <property role="3oM_SC" value="It" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrh" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKri" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrj" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrk" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrl" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrm" role="1PaTwD">
            <property role="3oM_SC" value="alias-prefix" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gmKrn" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gmKrr" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gmKrt" role="1PaTwD">
            <property role="3oM_SC" value="families" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKru" role="1PaTwD">
            <property role="3oM_SC" value="under" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrv" role="1PaTwD">
            <property role="3oM_SC" value="*An" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrw" role="1PaTwD">
            <property role="3oM_SC" value="operator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrx" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKry" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrz" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr$" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKr_" role="1PaTwD">
            <property role="3oM_SC" value="prefix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrA" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrB" role="1PaTwD">
            <property role="3oM_SC" value="another" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrC" role="1PaTwD">
            <property role="3oM_SC" value="one*:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrD" role="1PaTwD">
            <property role="3oM_SC" value="neither" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrE" role="1PaTwD">
            <property role="3oM_SC" value="alias" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrF" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrG" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gmKrH" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gmKrL" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gmKrN" role="1PaTwD">
            <property role="3oM_SC" value="prefix" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrO" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrP" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrQ" role="1PaTwD">
            <property role="3oM_SC" value="other," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrR" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrS" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrT" role="1PaTwD">
            <property role="3oM_SC" value="stays" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrU" role="1PaTwD">
            <property role="3oM_SC" value="pending" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrV" role="1PaTwD">
            <property role="3oM_SC" value="past" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrW" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gmKrX" role="1PaTwD">
            <property role="3oM_SC" value="`k`." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gmKrY" role="3cqZAp">
        <property role="2TTd_B" value=":unknown" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gmKrZ" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gmKs1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6gmKs2" role="1JIkAo">
          <property role="TrG5h" value="x" />
          <node concept="cSnVn" id="5OpYk6gmKs3" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6gmKs4" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gq0FD">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_array_literal_is_an_array_of_the_union_of_its_elements" />
    <property role="3GE5qa" value="types.arrays" />
    <node concept="1qefOq" id="5OpYk6gq0FE" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gq0FG" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gq0FH" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gq0FI" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gq0FJ" role="1JIkAo">
          <property role="TrG5h" value="numbers" />
          <node concept="29s1Bg" id="5OpYk6gq0FK" role="19IeeE">
            <node concept="1ku6r5" id="5OpYk6gq0FM" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gq0FN" role="1bGQZ8">
            <node concept="24BhzH" id="5OpYk6gq0FO" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5OpYk6gq0FP" role="1VpevP">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5OpYk6gq0FQ" role="1VpevP">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gq0FR" role="1JIkAo">
          <property role="TrG5h" value="mixed" />
          <node concept="29s1Bg" id="5OpYk6gq0FS" role="19IeeE">
            <node concept="3pfgAg" id="5OpYk6gq0FU" role="2XRTOt">
              <node concept="1ku6r5" id="5OpYk6gq0FV" role="3KvU$C" />
              <node concept="2Kh4GC" id="5OpYk6gq0FW" role="3KvU$C" />
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq0FX" role="1bGQZ8">
            <node concept="24BhzH" id="5OpYk6gq0FY" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5OpYk6gq0FZ" role="1VpevP">
              <property role="3b_9E9" value="a" />
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gq0G0" role="1JIkAo">
          <property role="TrG5h" value="writtenTheOtherWayRound" />
          <node concept="29s1Bg" id="5OpYk6gq0G1" role="19IeeE">
            <node concept="3pfgAg" id="5OpYk6gq0G3" role="2XRTOt">
              <node concept="1ku6r5" id="5OpYk6gq0G4" role="3KvU$C" />
              <node concept="2Kh4GC" id="5OpYk6gq0G5" role="3KvU$C" />
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq0G6" role="1bGQZ8">
            <node concept="33xXhr" id="5OpYk6gq0G7" role="1VpevP">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="24BhzH" id="5OpYk6gq0G8" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gq0G9" role="1JIkAo">
          <property role="TrG5h" value="nested" />
          <node concept="29s1Bg" id="5OpYk6gq0Ga" role="19IeeE">
            <node concept="29s1Bg" id="5OpYk6gq0Gc" role="2XRTOt">
              <node concept="1ku6r5" id="5OpYk6gq0Ge" role="2XRTOt" />
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq0Gf" role="1bGQZ8">
            <node concept="3GWXXe" id="5OpYk6gq0Gg" role="1VpevP">
              <node concept="24BhzH" id="5OpYk6gq0Gh" role="1VpevP">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="3GWXXe" id="5OpYk6gq0Gi" role="1VpevP">
              <node concept="24BhzH" id="5OpYk6gq0Gj" role="1VpevP">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gq2aX">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_empty_array_literal_fits_every_array_type" />
    <property role="3GE5qa" value="types.arrays" />
    <node concept="1qefOq" id="5OpYk6gq2aY" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gq2b0" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gq2b1" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gq2b2" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2swglJ" id="5OpYk6gq2b3" role="1JIkAo">
          <property role="TrG5h" value="numbers" />
          <node concept="29s1Bg" id="5OpYk6gq2b4" role="19IeeE">
            <node concept="1ku6r5" id="5OpYk6gq2b6" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gq2b7" role="1bGQZ8" />
        </node>
        <node concept="2swglJ" id="5OpYk6gq2b8" role="1JIkAo">
          <property role="TrG5h" value="strings" />
          <node concept="29s1Bg" id="5OpYk6gq2b9" role="19IeeE">
            <node concept="2Kh4GC" id="5OpYk6gq2bb" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gq2bc" role="1bGQZ8" />
        </node>
        <node concept="2swglJ" id="5OpYk6gq2bd" role="1JIkAo">
          <property role="TrG5h" value="objects" />
          <node concept="29s1Bg" id="5OpYk6gq2be" role="19IeeE">
            <node concept="3n0$7x" id="5OpYk6gq2bg" role="2XRTOt">
              <node concept="1D9KjG" id="5OpYk6gq2bh" role="2XfbTT">
                <property role="TrG5h" value="x" />
                <node concept="1ku6r5" id="5OpYk6gq2bj" role="ahpXF" />
              </node>
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq2bk" role="1bGQZ8" />
        </node>
        <node concept="2swglJ" id="5OpYk6gq2bl" role="1JIkAo">
          <property role="TrG5h" value="nothingAtAll" />
          <node concept="29s1Bg" id="5OpYk6gq2bm" role="19IeeE">
            <node concept="1Z30PW" id="5OpYk6gq2bo" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gq2bp" role="1bGQZ8" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gq3AG">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="An_array_of_the_wrong_element_type_is_an_error" />
    <property role="3GE5qa" value="types.arrays" />
    <node concept="1qefOq" id="5OpYk6gq3AH" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gq3AJ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2swglJ" id="5OpYk6gq3AK" role="1JIkAo">
          <property role="TrG5h" value="numbers" />
          <node concept="29s1Bg" id="5OpYk6gq3AL" role="19IeeE">
            <node concept="1ku6r5" id="5OpYk6gq3AN" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gq3AO" role="1bGQZ8">
            <node concept="24BhzH" id="5OpYk6gq3AP" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="33xXhr" id="5OpYk6gq3AQ" role="1VpevP">
              <property role="3b_9E9" value="a" />
            </node>
            <node concept="7CXmI" id="5OpYk6gq6P1" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gq6P2" role="7EUXB" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gq8gA">
    <property role="TrG5h" value="Typing_a_bracket_in_an_empty_hole_makes_an_array_literal" />
    <property role="3GE5qa" value="types.arrays" />
    <node concept="1qefOq" id="5OpYk6gq8gB" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gq8gD" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gq8gE" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gq8gG" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6gq8gH" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gq8gI" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gq8gJ" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gq8gL" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gq8gM" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gq8gQ" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gq8gS" role="1PaTwD">
            <property role="3oM_SC" value="`[`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gT" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gU" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gV" role="1PaTwD">
            <property role="3oM_SC" value="alias," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gW" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gX" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gY" role="1PaTwD">
            <property role="3oM_SC" value="plain" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8gZ" role="1PaTwD">
            <property role="3oM_SC" value="subconcept" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h0" role="1PaTwD">
            <property role="3oM_SC" value="substitution" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h1" role="1PaTwD">
            <property role="3oM_SC" value="builds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h3" role="1PaTwD">
            <property role="3oM_SC" value="literal" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h4" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h5" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h6" role="1PaTwD">
            <property role="3oM_SC" value="menu" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h7" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8h8" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gq8h9" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gq8hd" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gq8hf" role="1PaTwD">
            <property role="3oM_SC" value="own." />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hg" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hh" role="1PaTwD">
            <property role="3oM_SC" value="comma" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hi" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hj" role="1PaTwD">
            <property role="3oM_SC" value="MPS's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hk" role="1PaTwD">
            <property role="3oM_SC" value="doing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hl" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hm" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hn" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8ho" role="1PaTwD">
            <property role="3oM_SC" value="language's:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hp" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hq" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hr" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hs" role="1PaTwD">
            <property role="3oM_SC" value="whose" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8ht" role="1PaTwD">
            <property role="3oM_SC" value="separator" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hu" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hv" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gq8hw" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gq8h$" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gq8hA" role="1PaTwD">
            <property role="3oM_SC" value="single" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hB" role="1PaTwD">
            <property role="3oM_SC" value="character" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hC" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hD" role="1PaTwD">
            <property role="3oM_SC" value="binds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hE" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hF" role="1PaTwD">
            <property role="3oM_SC" value="character" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hG" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hH" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hI" role="1PaTwD">
            <property role="3oM_SC" value="insert" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hJ" role="1PaTwD">
            <property role="3oM_SC" value="key" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hK" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hL" role="1PaTwD">
            <property role="3oM_SC" value="every" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hM" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hN" role="1PaTwD">
            <property role="3oM_SC" value="cell," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hO" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hP" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gq8hQ" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gq8hU" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gq8hW" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hX" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hY" role="1PaTwD">
            <property role="3oM_SC" value="thing" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8hZ" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i0" role="1PaTwD">
            <property role="3oM_SC" value="lengthens" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i1" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i2" role="1PaTwD">
            <property role="3oM_SC" value="union" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i3" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i4" role="1PaTwD">
            <property role="3oM_SC" value="`|`" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i5" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i6" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i7" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i8" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gq8i9" role="1PaTwD">
            <property role="3oM_SC" value="member." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gq8ia" role="3cqZAp">
        <property role="2TTd_B" value="[1,2,3" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gq8ib" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gq8id" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gq8ie" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gq8ig" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3ja7nU" id="5OpYk6gq8ih" role="1JIkAo">
          <node concept="3GWXXe" id="5OpYk6gq8ij" role="$a3P1">
            <node concept="24BhzH" id="5OpYk6gq8ik" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="5OpYk6gq8il" role="1VpevP">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5OpYk6gq8im" role="1VpevP">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBQjE">
    <property role="TrG5h" value="Typing_while_makes_a_loop_whose_condition_can_be_typed" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gBQjF" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBQjH" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBQjI" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBQjK" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6gBQjL" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBQjM" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gBQjN" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBQjP" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBQjQ" role="3cqZAp">
        <property role="2TTd_B" value="while" />
      </node>
      <node concept="3SKdUt" id="5OpYk6gBQjR" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gBQjV" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gBQjX" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQjY" role="1PaTwD">
            <property role="3oM_SC" value="condition" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQjZ" role="1PaTwD">
            <property role="3oM_SC" value="typed" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk0" role="1PaTwD">
            <property role="3oM_SC" value="straight" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk1" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk3" role="1PaTwD">
            <property role="3oM_SC" value="keyword," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk4" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk5" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk7" role="1PaTwD">
            <property role="3oM_SC" value="whole" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk8" role="1PaTwD">
            <property role="3oM_SC" value="point" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQk9" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQka" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkb" role="1PaTwD">
            <property role="3oM_SC" value="test:" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkc" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gBQkd" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gBQkh" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gBQkj" role="1PaTwD">
            <property role="3oM_SC" value="fresh" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkk" role="1PaTwD">
            <property role="3oM_SC" value="loop's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkl" role="1PaTwD">
            <property role="3oM_SC" value="condition" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkm" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkn" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQko" role="1PaTwD">
            <property role="3oM_SC" value="obligatory" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkp" role="1PaTwD">
            <property role="3oM_SC" value="child" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkq" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkr" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQks" role="1PaTwD">
            <property role="3oM_SC" value="abstract" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkt" role="1PaTwD">
            <property role="3oM_SC" value="concept," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQku" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkv" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkw" role="1PaTwD">
            <property role="3oM_SC" value="difference" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gBQkx" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gBQk_" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gBQkB" role="1PaTwD">
            <property role="3oM_SC" value="between" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkC" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkD" role="1PaTwD">
            <property role="3oM_SC" value="placeholder" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkE" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkF" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkG" role="1PaTwD">
            <property role="3oM_SC" value="null" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkH" role="1PaTwD">
            <property role="3oM_SC" value="child" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkI" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkJ" role="1PaTwD">
            <property role="3oM_SC" value="invisible" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkK" role="1PaTwD">
            <property role="3oM_SC" value="until" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkL" role="1PaTwD">
            <property role="3oM_SC" value="something" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkM" role="1PaTwD">
            <property role="3oM_SC" value="tries" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkN" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkO" role="1PaTwD">
            <property role="3oM_SC" value="type" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkP" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gBQkQ" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBQkR" role="3cqZAp">
        <property role="2TTd_B" value="true" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBQkS" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBQkU" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBQkV" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBQkX" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="fax6N" id="5OpYk6gBQkY" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gBQl1" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gBQl2" role="d_Gmn" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBST6">
    <property role="TrG5h" value="Typing_do_makes_a_loop_whose_condition_comes_after_the_body" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gBST7" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBST9" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBSTa" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBSTc" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6gBSTd" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBSTe" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gBSTf" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBSTh" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBSTi" role="3cqZAp">
        <property role="2TTd_B" value="do" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBSTj" role="3cqZAp">
        <property role="2TTd_B" value="true" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBSTk" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBSTm" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBSTn" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBSTp" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2rJege" id="5OpYk6gBSTq" role="1JIkAo">
          <node concept="qYD23" id="5OpYk6gBSTt" role="d_Gmn" />
          <node concept="1tXIsk" id="5OpYk6gBSTu" role="2SSALT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBUlK">
    <property role="TrG5h" value="Typing_break_and_continue_inside_a_loop" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gBUlL" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBUlN" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="fax6N" id="5OpYk6gBUlO" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gBUlR" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gBUlS" role="d_Gmn">
            <node concept="3ja7nU" id="5OpYk6gBUlT" role="6EW52">
              <node concept="24BhzH" id="5OpYk6gBUlV" role="$a3P1">
                <property role="2Hr5CV" value="1" />
                <node concept="LIFWc" id="5OpYk6gBUlW" role="lGtFl">
                  <property role="LIFWd" value="value" />
                  <property role="ZRATv" value="true" />
                  <property role="p6zMs" value="1" />
                  <property role="p6zMq" value="1" />
                  <property role="OXtK3" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBUlX" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gBUlY" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBUm0" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBUm1" role="3cqZAp">
        <property role="2TTd_B" value="continue" />
      </node>
      <node concept="2HxZob" id="5OpYk6gBUm2" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBUm4" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBUm5" role="3cqZAp">
        <property role="2TTd_B" value="break" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBUm6" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBUm8" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="fax6N" id="5OpYk6gBUm9" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gBUmc" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gBUmd" role="d_Gmn">
            <node concept="3ja7nU" id="5OpYk6gBUme" role="6EW52">
              <node concept="24BhzH" id="5OpYk6gBUmg" role="$a3P1">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="33KgIo" id="5OpYk6gBUmh" role="6EW52" />
            <node concept="2ZnVrx" id="5OpYk6gBUmi" role="6EW52" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBVML">
    <property role="TrG5h" value="Typing_throw_makes_a_throw_statement_with_the_value_after_it" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gBVMM" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBVMO" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBVMP" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBVMR" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6gBVMS" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBVMT" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gBVMU" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBVMW" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBVMX" role="3cqZAp">
        <property role="2TTd_B" value="throw" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBVMY" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBVMZ" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBVN1" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBVN2" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBVN4" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="3hXVNh" id="5OpYk6gBVN5" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBVN7" role="3tDo58">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBXfO">
    <property role="TrG5h" value="Typing_switch_makes_a_switch_over_what_is_typed_after_it" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gBXfP" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBXfR" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBXfS" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBXfU" role="$a3P1">
            <property role="2Hr5CV" value="1" />
            <node concept="LIFWc" id="5OpYk6gBXfV" role="lGtFl">
              <property role="LIFWd" value="value" />
              <property role="ZRATv" value="true" />
              <property role="p6zMs" value="1" />
              <property role="p6zMq" value="1" />
              <property role="OXtK3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBXfW" role="LjaKd">
      <node concept="2HxZob" id="5OpYk6gBXfX" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBXfZ" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBXg0" role="3cqZAp">
        <property role="2TTd_B" value="switch" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBXg1" role="3cqZAp">
        <property role="2TTd_B" value="2" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBXg2" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBXg4" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="3ja7nU" id="5OpYk6gBXg5" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBXg7" role="$a3P1">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="2yrb8r" id="5OpYk6gBXg8" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBXga" role="2WQvgN">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="5OpYk6gBYHk">
    <property role="TrG5h" value="A_statement_can_be_added_inside_a_case_clause" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gBYHl" role="25YQCW">
      <node concept="24Z7zp" id="5OpYk6gBYHn" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2yrb8r" id="5OpYk6gBYHo" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBYHq" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="3aWBG0" id="5OpYk6gBYHr" role="1_mi5l">
            <node concept="24BhzH" id="5OpYk6gBYHt" role="2AmQo$">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="2ZnVrx" id="5OpYk6gBYHu" role="3HO5NI">
              <node concept="LIFWc" id="5OpYk6gBYHv" role="lGtFl">
                <property role="LIFWd" value="breakKeyword" />
                <property role="ZRATv" value="true" />
                <property role="p6zMs" value="5" />
                <property role="p6zMq" value="5" />
                <property role="OXtK3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbS" id="5OpYk6gBYHw" role="LjaKd">
      <node concept="3SKdUt" id="5OpYk6gC9if" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gC9ij" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gC9il" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9im" role="1PaTwD">
            <property role="3oM_SC" value="clause" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9in" role="1PaTwD">
            <property role="3oM_SC" value="holds" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9io" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9ip" role="1PaTwD">
            <property role="3oM_SC" value="statement" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iq" role="1PaTwD">
            <property role="3oM_SC" value="*list*" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9ir" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9is" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9it" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iu" role="1PaTwD">
            <property role="3oM_SC" value="block," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iv" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iw" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9ix" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iy" role="1PaTwD">
            <property role="3oM_SC" value="TypeScript's" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iz" role="1PaTwD">
            <property role="3oM_SC" value="grammar" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gC9i$" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gC9iC" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gC9iE" role="1PaTwD">
            <property role="3oM_SC" value="says" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iF" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iG" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iH" role="1PaTwD">
            <property role="3oM_SC" value="makes" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iI" role="1PaTwD">
            <property role="3oM_SC" value="fall-through" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iJ" role="1PaTwD">
            <property role="3oM_SC" value="expressible" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iK" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iL" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iM" role="1PaTwD">
            <property role="3oM_SC" value="Insert" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iN" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iO" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iP" role="1PaTwD">
            <property role="3oM_SC" value="mean" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iQ" role="1PaTwD">
            <property role="3oM_SC" value="&quot;another" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iR" role="1PaTwD">
            <property role="3oM_SC" value="statement" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9iS" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="5OpYk6gC9iT" role="3cqZAp">
        <node concept="1PaTwC" id="5OpYk6gC9iX" role="1aUNEU">
          <node concept="3oM_SD" id="5OpYk6gC9iZ" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j0" role="1PaTwD">
            <property role="3oM_SC" value="clause&quot;" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j1" role="1PaTwD">
            <property role="3oM_SC" value="rather" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j2" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j3" role="1PaTwD">
            <property role="3oM_SC" value="&quot;another" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j4" role="1PaTwD">
            <property role="3oM_SC" value="clause&quot;," />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j5" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j6" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j7" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9j9" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9ja" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9jb" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="5OpYk6gC9jc" role="1PaTwD">
            <property role="3oM_SC" value="does." />
          </node>
        </node>
      </node>
      <node concept="2HxZob" id="5OpYk6gBYHx" role="3cqZAp">
        <node concept="1iFQzN" id="5OpYk6gBYHz" role="3iKnsn">
          <ref role="1iFR8X" to="ekwn:6KwcZ1G3Pjm" resolve="Insert" />
        </node>
      </node>
      <node concept="2TK7Tu" id="5OpYk6gBYH$" role="3cqZAp">
        <property role="2TTd_B" value="throw" />
      </node>
      <node concept="2TK7Tu" id="5OpYk6gC9jd" role="3cqZAp">
        <property role="2TTd_B" value="1" />
      </node>
    </node>
    <node concept="1qefOq" id="5OpYk6gBYH_" role="25YQFr">
      <node concept="24Z7zp" id="5OpYk6gBYHB" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2yrb8r" id="5OpYk6gBYHC" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gBYHE" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="3aWBG0" id="5OpYk6gBYHF" role="1_mi5l">
            <node concept="24BhzH" id="5OpYk6gBYHH" role="2AmQo$">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="2ZnVrx" id="5OpYk6gBYHI" role="3HO5NI" />
            <node concept="3hXVNh" id="5OpYk6gC9je" role="3HO5NI">
              <node concept="24BhzH" id="5OpYk6gC9jg" role="3tDo58">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCaMm">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_loop_variable_takes_its_type_from_what_is_iterated" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gCaMn" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCaMp" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gCaMq" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gCaMr" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="2MuU66" id="5OpYk6gCaMs" role="1JIkAo">
          <property role="TrG5h" value="words" />
          <node concept="29s1Bg" id="5OpYk6gCaMt" role="19IeeE">
            <node concept="2Kh4GC" id="5OpYk6gCaMv" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gCaMw" role="1bGQZ8">
            <node concept="33xXhr" id="5OpYk6gCaMx" role="1VpevP">
              <property role="3b_9E9" value="a" />
            </node>
          </node>
        </node>
        <node concept="1KPeh1" id="5OpYk6gCaMy" role="1JIkAo">
          <node concept="2MuU66" id="5OpYk6gCaMA" role="2Fm_eX">
            <property role="TrG5h" value="word" />
          </node>
          <node concept="2v$HdM" id="5OpYk6gCaMB" role="2p7lAv">
            <ref role="2oxrr9" node="5OpYk6gCaMs" resolve="words" />
          </node>
          <node concept="qYD23" id="5OpYk6gCaMC" role="d_Gmn">
            <node concept="2MuU66" id="5OpYk6gCaMD" role="6EW52">
              <property role="TrG5h" value="aString" />
              <node concept="2Kh4GC" id="5OpYk6gCaME" role="19IeeE" />
              <node concept="2v$HdM" id="5OpYk6gCaMF" role="1bGQZ8">
                <ref role="2oxrr9" node="5OpYk6gCaMA" resolve="word" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Dwllw" id="5OpYk6gCaMG" role="1JIkAo">
          <node concept="2MuU66" id="5OpYk6gCaMK" role="2Fm_eX">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="2v$HdM" id="5OpYk6gCaML" role="2p7lAv">
            <ref role="2oxrr9" node="5OpYk6gCaMs" resolve="words" />
          </node>
          <node concept="qYD23" id="5OpYk6gCaMM" role="d_Gmn">
            <node concept="2MuU66" id="5OpYk6gCaMN" role="6EW52">
              <property role="TrG5h" value="alsoAString" />
              <node concept="2Kh4GC" id="5OpYk6gCaMO" role="19IeeE" />
              <node concept="2v$HdM" id="5OpYk6gCaMP" role="1bGQZ8">
                <ref role="2oxrr9" node="5OpYk6gCaMK" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCchH">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_for_of_loop_over_something_that_is_not_an_array_is_an_error" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gCchI" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCchK" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6gCchL" role="1JIkAo">
          <property role="TrG5h" value="notAnArray" />
          <node concept="1ku6r5" id="5OpYk6gCchM" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6gCchN" role="1bGQZ8">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="1KPeh1" id="5OpYk6gCchO" role="1JIkAo">
          <node concept="2MuU66" id="5OpYk6gCchS" role="2Fm_eX">
            <property role="TrG5h" value="x" />
          </node>
          <node concept="2v$HdM" id="5OpYk6gCchT" role="2p7lAv">
            <ref role="2oxrr9" node="5OpYk6gCchL" resolve="notAnArray" />
            <node concept="7CXmI" id="5OpYk6gCchU" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gCchV" role="7EUXB" />
            </node>
          </node>
          <node concept="qYD23" id="5OpYk6gCchW" role="d_Gmn" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCdKl">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Break_and_continue_need_something_to_break_out_of" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gCdKm" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCdKo" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2ZnVrx" id="5OpYk6gCdKp" role="1JIkAo">
          <node concept="7CXmI" id="5OpYk6gCdKq" role="lGtFl">
            <node concept="mDk06" id="5OpYk6gCdKr" role="7EUXB" />
          </node>
        </node>
        <node concept="33KgIo" id="5OpYk6gCdKs" role="1JIkAo">
          <node concept="7CXmI" id="5OpYk6gCdKt" role="lGtFl">
            <node concept="mDk06" id="5OpYk6gCdKu" role="7EUXB" />
          </node>
        </node>
        <node concept="2yrb8r" id="5OpYk6gCdKv" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gCdKx" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="2sOzXy" id="5OpYk6gCdKy" role="1_mi5l">
            <node concept="33KgIo" id="5OpYk6gCdKz" role="3HO5NI">
              <node concept="7CXmI" id="5OpYk6gCdK$" role="lGtFl">
                <node concept="mDk06" id="5OpYk6gCdK_" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="fax6N" id="5OpYk6gCdKA" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gCdKD" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gCdKE" role="d_Gmn">
            <node concept="3Gxli7" id="5OpYk6gCdKF" role="6EW52">
              <property role="TrG5h" value="notInTheLoop" />
              <node concept="qYD23" id="5OpYk6gCdKH" role="1PAOym">
                <node concept="2ZnVrx" id="5OpYk6gCdKI" role="6EW52">
                  <node concept="7CXmI" id="5OpYk6gCdKJ" role="lGtFl">
                    <node concept="mDk06" id="5OpYk6gCdKK" role="7EUXB" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCffG">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Break_and_continue_are_fine_where_something_encloses_them" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gCffH" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCffJ" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gCffK" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gCffL" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="fax6N" id="5OpYk6gCffM" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gCffP" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gCffQ" role="d_Gmn">
            <node concept="2ZnVrx" id="5OpYk6gCffR" role="6EW52" />
            <node concept="33KgIo" id="5OpYk6gCffS" role="6EW52" />
          </node>
        </node>
        <node concept="2rJege" id="5OpYk6gCffT" role="1JIkAo">
          <node concept="qYD23" id="5OpYk6gCffW" role="d_Gmn">
            <node concept="33KgIo" id="5OpYk6gCffX" role="6EW52" />
          </node>
          <node concept="3JGNCe" id="5OpYk6gCffY" role="2SSALT" />
        </node>
        <node concept="2b3r35" id="5OpYk6gCffZ" role="1JIkAo">
          <node concept="qYD23" id="5OpYk6gCfg1" role="d_Gmn">
            <node concept="2ZnVrx" id="5OpYk6gCfg2" role="6EW52" />
          </node>
        </node>
        <node concept="2yrb8r" id="5OpYk6gCfg3" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gCfg5" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="2sOzXy" id="5OpYk6gCfg6" role="1_mi5l">
            <node concept="2ZnVrx" id="5OpYk6gCfg7" role="3HO5NI" />
          </node>
        </node>
        <node concept="fax6N" id="5OpYk6gCfg8" role="1JIkAo">
          <node concept="1tXIsk" id="5OpYk6gCfgb" role="20awV3" />
          <node concept="qYD23" id="5OpYk6gCfgc" role="d_Gmn">
            <node concept="2yrb8r" id="5OpYk6gCfgd" role="6EW52">
              <node concept="24BhzH" id="5OpYk6gCfgf" role="2WQvgN">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="2sOzXy" id="5OpYk6gCfgg" role="1_mi5l">
                <node concept="33KgIo" id="5OpYk6gCfgh" role="3HO5NI" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCgJn">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="What_a_catch_clause_binds_is_unknown" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gCgJo" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCgJq" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="7CXmI" id="5OpYk6gCgJr" role="lGtFl">
          <node concept="7OXhh" id="5OpYk6gCgJs" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
        <node concept="1c8nd4" id="5OpYk6gCgJt" role="1JIkAo">
          <node concept="qYD23" id="5OpYk6gCgJv" role="2CuSVR">
            <node concept="3hXVNh" id="5OpYk6gCgJw" role="6EW52">
              <node concept="33xXhr" id="5OpYk6gCgJy" role="3tDo58">
                <property role="3b_9E9" value="boom" />
              </node>
            </node>
          </node>
          <node concept="1WXS5l" id="5OpYk6gCgJz" role="2hyK57">
            <node concept="X8OOC" id="5OpYk6gCgJ_" role="6O2XX">
              <property role="TrG5h" value="problem" />
            </node>
            <node concept="qYD23" id="5OpYk6gCgJA" role="1UMC_z">
              <node concept="2MuU66" id="5OpYk6gCgJB" role="6EW52">
                <property role="TrG5h" value="anything" />
                <node concept="cSnVn" id="5OpYk6gCgJC" role="19IeeE" />
                <node concept="2v$HdM" id="5OpYk6gCgJD" role="1bGQZ8">
                  <ref role="2oxrr9" node="5OpYk6gCgJ_" resolve="problem" />
                </node>
              </node>
            </node>
          </node>
          <node concept="qYD23" id="5OpYk6gCgJE" role="PRUvz" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCieS">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="What_a_catch_binds_cannot_be_narrowed_by_writing_it_down" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gCieT" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCieV" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="1c8nd4" id="5OpYk6gCieW" role="1JIkAo">
          <node concept="qYD23" id="5OpYk6gCieY" role="2CuSVR" />
          <node concept="1WXS5l" id="5OpYk6gCieZ" role="2hyK57">
            <node concept="X8OOC" id="5OpYk6gCif1" role="6O2XX">
              <property role="TrG5h" value="problem" />
            </node>
            <node concept="qYD23" id="5OpYk6gCif2" role="1UMC_z">
              <node concept="2MuU66" id="5OpYk6gCif3" role="6EW52">
                <property role="TrG5h" value="aString" />
                <node concept="2Kh4GC" id="5OpYk6gCif4" role="19IeeE" />
                <node concept="2v$HdM" id="5OpYk6gCif5" role="1bGQZ8">
                  <ref role="2oxrr9" node="5OpYk6gCif1" resolve="problem" />
                  <node concept="7CXmI" id="5OpYk6gCif6" role="lGtFl">
                    <node concept="mDk06" id="5OpYk6gCif7" role="7EUXB" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gCjIB">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="The_shapes_a_try_and_a_switch_get_wrong_on_their_own" />
    <property role="3GE5qa" value="statements.branching" />
    <node concept="1qefOq" id="5OpYk6gCjIC" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gCjIE" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="1c8nd4" id="5OpYk6gCjIF" role="1JIkAo">
          <node concept="7CXmI" id="5OpYk6gCjIH" role="lGtFl">
            <node concept="mDk06" id="5OpYk6gCjII" role="7EUXB" />
          </node>
          <node concept="qYD23" id="5OpYk6gCjIJ" role="2CuSVR" />
        </node>
        <node concept="2yrb8r" id="5OpYk6gCjIK" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gCjIM" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="2sOzXy" id="5OpYk6gCjIN" role="1_mi5l" />
          <node concept="2sOzXy" id="5OpYk6gCjIO" role="1_mi5l">
            <node concept="7CXmI" id="5OpYk6gCjIP" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gCjIQ" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="2yrb8r" id="5OpYk6gCjIR" role="1JIkAo">
          <node concept="24BhzH" id="5OpYk6gCjIT" role="2WQvgN">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="3aWBG0" id="5OpYk6gCjIU" role="1_mi5l">
            <node concept="33xXhr" id="5OpYk6gCjIW" role="2AmQo$">
              <property role="3b_9E9" value="never matches a number" />
              <node concept="7CXmI" id="5OpYk6gCjIX" role="lGtFl">
                <node concept="mDk06" id="5OpYk6gCjIY" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5OpYk6gClfP">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="A_for_each_binding_states_nothing_and_a_for_header_states_everything" />
    <property role="3GE5qa" value="statements.loops" />
    <node concept="1qefOq" id="5OpYk6gClfQ" role="1SKRRt">
      <node concept="24Z7zp" id="5OpYk6gClfS" role="1qenE9">
        <property role="TrG5h" value="m" />
        <node concept="2MuU66" id="5OpYk6gClfT" role="1JIkAo">
          <property role="TrG5h" value="words" />
          <node concept="29s1Bg" id="5OpYk6gClfU" role="19IeeE">
            <node concept="2Kh4GC" id="5OpYk6gClfW" role="2XRTOt" />
          </node>
          <node concept="3GWXXe" id="5OpYk6gClfX" role="1bGQZ8" />
        </node>
        <node concept="1KPeh1" id="5OpYk6gClfY" role="1JIkAo">
          <node concept="2MuU66" id="5OpYk6gClg2" role="2Fm_eX">
            <property role="TrG5h" value="annotated" />
            <node concept="2Kh4GC" id="5OpYk6gClg3" role="19IeeE">
              <node concept="7CXmI" id="5OpYk6gClg4" role="lGtFl">
                <node concept="mDk06" id="5OpYk6gClg5" role="7EUXB" />
              </node>
            </node>
          </node>
          <node concept="2v$HdM" id="5OpYk6gClg6" role="2p7lAv">
            <ref role="2oxrr9" node="5OpYk6gClfT" resolve="words" />
          </node>
          <node concept="qYD23" id="5OpYk6gClg7" role="d_Gmn" />
        </node>
        <node concept="1KPeh1" id="5OpYk6gClg8" role="1JIkAo">
          <node concept="3kcgwP" id="5OpYk6gClgc" role="2Fm_eX">
            <property role="TrG5h" value="hoisted" />
            <node concept="7CXmI" id="5OpYk6gClgd" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gClge" role="7EUXB" />
            </node>
          </node>
          <node concept="2v$HdM" id="5OpYk6gClgf" role="2p7lAv">
            <ref role="2oxrr9" node="5OpYk6gClfT" resolve="words" />
          </node>
          <node concept="qYD23" id="5OpYk6gClgg" role="d_Gmn" />
        </node>
        <node concept="2b3r35" id="5OpYk6gClgh" role="1JIkAo">
          <node concept="2ZnVrx" id="5OpYk6gClgj" role="tspbQ">
            <node concept="7CXmI" id="5OpYk6gClgk" role="lGtFl">
              <node concept="mDk06" id="5OpYk6gClgl" role="7EUXB" />
            </node>
          </node>
          <node concept="qYD23" id="5OpYk6gClgm" role="d_Gmn" />
        </node>
      </node>
    </node>
  </node>
</model>

