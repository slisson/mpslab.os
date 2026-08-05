<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:46183131-d77a-437b-ac8e-fdc52a6ee598(de.q60.mps.lang.typescript.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1jfLtDTDIfK">
    <property role="TrG5h" value="TSDtsStubsModelRoot" />
    <node concept="3Tm1VV" id="1jfLtDTDIfM" role="1B3o_S" />
    <node concept="3uibUv" id="1jfLtDTDIfN" role="1zkMxy">
      <ref role="3uigEE" to="ends:~FileBasedModelRoot" resolve="FileBasedModelRoot" />
    </node>
    <node concept="Wx3nA" id="1jfLtDTDIfO" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TYPE" />
      <node concept="3Tm1VV" id="1jfLtDTDIfR" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTDIfS" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1jfLtDTDIfT" role="33vP2m">
        <property role="Xl_RC" value="typescript_dts_stubs" />
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTDIfU" role="jymVt" />
    <node concept="3clFbW" id="1jfLtDTDIfV" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDTDIfW" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDTDIfZ" role="1B3o_S" />
      <node concept="3clFbS" id="1jfLtDTDIg0" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1jfLtDTDIg1" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTU$Dk" role="jymVt">
      <property role="TrG5h" value="getSupportedFileKinds1" />
      <node concept="2AHcQZ" id="1jfLtDTU$Do" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTU$Dp" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTU$Dq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1jfLtDTU$Dr" role="11_B2D">
          <ref role="3uigEE" to="ends:~SourceRootKind" resolve="SourceRootKind" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTU$Ds" role="3clF47">
        <node concept="3cpWs8" id="1jfLtDTU$Dt" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTU$Dw" role="3cpWs9">
            <property role="TrG5h" value="kinds" />
            <node concept="_YKpA" id="1jfLtDTU$Dy" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTU$D$" role="_ZDj9">
                <ref role="3uigEE" to="ends:~SourceRootKind" resolve="SourceRootKind" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTU$D_" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTU$DB" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTU$DC" role="HW$YZ">
                  <ref role="3uigEE" to="ends:~SourceRootKind" resolve="SourceRootKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTU$DD" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTU$DF" role="3clFbG">
            <node concept="37vLTw" id="1jfLtDTU$DI" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDTU$Dw" resolve="kinds" />
            </node>
            <node concept="TSZUe" id="1jfLtDTU$DJ" role="2OqNvi">
              <node concept="Rm8GO" id="1jfLtDTU$DL" role="25WWJ7">
                <ref role="1Px2BO" to="ends:~SourceRootKinds" resolve="SourceRootKinds" />
                <ref role="Rm8GQ" to="ends:~SourceRootKinds.SOURCES" resolve="SOURCES" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTU$DM" role="3cqZAp">
          <node concept="37vLTw" id="1jfLtDTU$DN" role="3cqZAk">
            <ref role="3cqZAo" node="1jfLtDTU$Dw" resolve="kinds" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTU$DO" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTDIg2" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="2AHcQZ" id="1jfLtDTDIg6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTDIg7" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTDIg8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1jfLtDTDIg9" role="3clF47">
        <node concept="3cpWs6" id="1jfLtDTDIga" role="3cqZAp">
          <node concept="10M0yZ" id="1jfLtDTDIgb" role="3cqZAk">
            <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
            <ref role="3cqZAo" node="1jfLtDTDIfO" resolve="TYPE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTDIgc" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTDIgd" role="jymVt">
      <property role="TrG5h" value="canCreateModels" />
      <node concept="2AHcQZ" id="1jfLtDTDIgh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTDIgi" role="1B3o_S" />
      <node concept="10P_77" id="1jfLtDTDIgj" role="3clF45" />
      <node concept="3clFbS" id="1jfLtDTDIgk" role="3clF47">
        <node concept="3cpWs6" id="1jfLtDTDIgl" role="3cqZAp">
          <node concept="3clFbT" id="1jfLtDTDIgm" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTDIgn" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTDIgo" role="jymVt">
      <property role="TrG5h" value="loadModels" />
      <node concept="2AHcQZ" id="1jfLtDTDIgs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTDIgt" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTDIgu" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="1jfLtDTDIgv" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTDIgw" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTSd9b" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTSd9f" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTSd9h" role="1PaTwD">
              <property role="3oM_SC" value="One" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9i" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9j" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9k" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9l" role="1PaTwD">
              <property role="3oM_SC" value="specifier," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9m" role="1PaTwD">
              <property role="3oM_SC" value="listed" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9n" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9o" role="1PaTwD">
              <property role="3oM_SC" value="stubs.txt" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9p" role="1PaTwD">
              <property role="3oM_SC" value="beside" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9q" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9r" role="1PaTwD">
              <property role="3oM_SC" value="npm" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9s" role="1PaTwD">
              <property role="3oM_SC" value="project." />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9t" role="1PaTwD">
              <property role="3oM_SC" value="Discovering" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9u" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTSd9v" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTSd9z" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTSd9_" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9A" role="1PaTwD">
              <property role="3oM_SC" value="node_modules" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9B" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9C" role="1PaTwD">
              <property role="3oM_SC" value="step" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9D" role="1PaTwD">
              <property role="3oM_SC" value="4" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9E" role="1PaTwD">
              <property role="3oM_SC" value="work;" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9F" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9G" role="1PaTwD">
              <property role="3oM_SC" value="*Importing" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9H" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9I" role="1PaTwD">
              <property role="3oM_SC" value=".d.ts*" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9J" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9K" role="1PaTwD">
              <property role="3oM_SC" value="ROADMAP.md." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTSd9L" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTSd9O" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="1jfLtDTSd9Q" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTSd9S" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTSd9T" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTSd9V" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTSd9W" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1jfLtDTSd9X" role="3cqZAp">
          <node concept="2GrKxI" id="1jfLtDTSda1" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="1jfLtDTSda2" role="2GsD0m">
            <node concept="Xjq3P" id="1jfLtDTSda5" role="2Oq$k0" />
            <node concept="liA8E" id="1jfLtDTSda6" role="2OqNvi">
              <ref role="37wK5l" to="ends:~FileBasedModelRoot.getSourceRoots(jetbrains.mps.extapi.persistence.SourceRootKind)" resolve="getSourceRoots" />
              <node concept="Rm8GO" id="1jfLtDTSda7" role="37wK5m">
                <ref role="1Px2BO" to="ends:~SourceRootKinds" resolve="SourceRootKinds" />
                <ref role="Rm8GQ" to="ends:~SourceRootKinds.SOURCES" resolve="SOURCES" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTSda8" role="2LFqv$">
            <node concept="3cpWs8" id="1jfLtDTSda9" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTSdac" role="3cpWs9">
                <property role="TrG5h" value="dir" />
                <node concept="3uibUv" id="1jfLtDTSdae" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="1jfLtDTSdaf" role="33vP2m">
                  <node concept="2GrUjf" id="1jfLtDTSdai" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1jfLtDTSda1" resolve="root" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTSdaj" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~SourceRoot.getAbsolutePath()" resolve="getAbsolutePath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTSdak" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTSdan" role="3cpWs9">
                <property role="TrG5h" value="listing" />
                <node concept="3uibUv" id="1jfLtDTSdap" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="1jfLtDTSdaq" role="33vP2m">
                  <node concept="37vLTw" id="1jfLtDTSdat" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDTSdac" resolve="dir" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTSdau" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String)" resolve="getDescendant" />
                    <node concept="Xl_RD" id="1jfLtDTSdav" role="37wK5m">
                      <property role="Xl_RC" value="stubs.txt" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1jfLtDTSdaw" role="3cqZAp">
              <node concept="3fqX7Q" id="1jfLtDTSdaz" role="3clFbw">
                <node concept="1eOMI4" id="1jfLtDTSda_" role="3fr31v">
                  <node concept="2OqwBi" id="1jfLtDTSdaB" role="1eOMHV">
                    <node concept="37vLTw" id="1jfLtDTSdaE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTSdan" resolve="listing" />
                    </node>
                    <node concept="liA8E" id="1jfLtDTSdaF" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTSdaG" role="3clFbx">
                <node concept="3N13vt" id="1jfLtDTSdaH" role="3cqZAp" />
              </node>
            </node>
            <node concept="2Gpval" id="1jfLtDTSdaI" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDTSdaM" role="2Gsz3X">
                <property role="TrG5h" value="specifier" />
              </node>
              <node concept="2YIFZM" id="1jfLtDTSdaN" role="2GsD0m">
                <ref role="1Pybhc" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                <ref role="37wK5l" node="1jfLtDTSdck" resolve="readLines" />
                <node concept="37vLTw" id="1jfLtDTSdaO" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDTSdan" resolve="listing" />
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTSdaP" role="2LFqv$">
                <node concept="3clFbJ" id="1jfLtDTSdaQ" role="3cqZAp">
                  <node concept="22lmx$" id="1jfLtDTSdaT" role="3clFbw">
                    <node concept="2OqwBi" id="1jfLtDTSdaW" role="3uHU7B">
                      <node concept="2GrUjf" id="1jfLtDTSdaZ" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDTSdaM" resolve="specifier" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTSdb0" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1jfLtDTSdb1" role="3uHU7w">
                      <node concept="2GrUjf" id="1jfLtDTSdb4" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDTSdaM" resolve="specifier" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTSdb5" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                        <node concept="Xl_RD" id="1jfLtDTSdb6" role="37wK5m">
                          <property role="Xl_RC" value="#" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1jfLtDTSdb7" role="3clFbx">
                    <node concept="3N13vt" id="1jfLtDTSdb8" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDTY8wQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTY8wS" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTY8wV" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTSd9O" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="1jfLtDTY8wW" role="2OqNvi">
                      <node concept="2ShNRf" id="1jfLtDTY8wY" role="25WWJ7">
                        <node concept="1pGfFk" id="1jfLtDTY8x0" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" node="1jfLtDTS3Ay" resolve="TSDtsStubModelDescriptor" />
                          <node concept="2OqwBi" id="1jfLtDTY8x1" role="37wK5m">
                            <node concept="Xjq3P" id="1jfLtDTY8x4" role="2Oq$k0" />
                            <node concept="liA8E" id="1jfLtDTY8x5" role="2OqNvi">
                              <ref role="37wK5l" node="1jfLtDTY8xi" resolve="referenceFor" />
                              <node concept="2GrUjf" id="1jfLtDTY8x6" role="37wK5m">
                                <ref role="2Gs0qQ" node="1jfLtDTSdaM" resolve="specifier" />
                              </node>
                            </node>
                          </node>
                          <node concept="2ShNRf" id="1jfLtDTY8x7" role="37wK5m">
                            <node concept="1pGfFk" id="1jfLtDTY8x9" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="ends:~FolderDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FolderDataSource" />
                              <node concept="37vLTw" id="1jfLtDTY8xa" role="37wK5m">
                                <ref role="3cqZAo" node="1jfLtDTSdac" resolve="dir" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1jfLtDTY8xb" role="37wK5m">
                            <node concept="37vLTw" id="1jfLtDTY8xe" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jfLtDTSdac" resolve="dir" />
                            </node>
                            <node concept="liA8E" id="1jfLtDTY8xf" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                            </node>
                          </node>
                          <node concept="2GrUjf" id="1jfLtDTY8xg" role="37wK5m">
                            <ref role="2Gs0qQ" node="1jfLtDTSdaM" resolve="specifier" />
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
        <node concept="3cpWs6" id="1jfLtDTSdch" role="3cqZAp">
          <node concept="37vLTw" id="1jfLtDTSdci" role="3cqZAk">
            <ref role="3cqZAo" node="1jfLtDTSd9O" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTY8xh" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTY8xi" role="jymVt">
      <property role="TrG5h" value="referenceFor" />
      <node concept="3Tm6S6" id="1jfLtDTY8xm" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTY8xn" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="37vLTG" id="1jfLtDTY8xo" role="3clF46">
        <property role="TrG5h" value="specifier" />
        <node concept="3uibUv" id="1jfLtDTY8xq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTY8xr" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTY8xs" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTY8xw" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTY8xy" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xz" role="1PaTwD">
              <property role="3oM_SC" value="id" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8x$" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8x_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xA" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xB" role="1PaTwD">
              <property role="3oM_SC" value="stable" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xC" role="1PaTwD">
              <property role="3oM_SC" value="across" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xD" role="1PaTwD">
              <property role="3oM_SC" value="reloads" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xE" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xF" role="1PaTwD">
              <property role="3oM_SC" value="derived" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xG" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xH" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xI" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xK" role="1PaTwD">
              <property role="3oM_SC" value="specifier," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xL" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xM" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xN" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTY8xO" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTY8xS" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTY8xU" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xV" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xW" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xX" role="1PaTwD">
              <property role="3oM_SC" value="stub" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xY" role="1PaTwD">
              <property role="3oM_SC" value="survives" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8xZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8y0" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8y1" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTY8y2" role="1PaTwD">
              <property role="3oM_SC" value="rebuilt." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTY8y3" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTY8y6" role="3cpWs9">
            <property role="TrG5h" value="modelName" />
            <node concept="3uibUv" id="1jfLtDTY8y8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="1jfLtDTY8y9" role="33vP2m">
              <node concept="Xl_RD" id="1jfLtDTY8yc" role="3uHU7B">
                <property role="Xl_RC" value="stubs." />
              </node>
              <node concept="2OqwBi" id="1jfLtDTY8yd" role="3uHU7w">
                <node concept="2OqwBi" id="1jfLtDTY8yg" role="2Oq$k0">
                  <node concept="37vLTw" id="1jfLtDTY8yj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDTY8xo" resolve="specifier" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTY8yk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="1jfLtDTY8yl" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                    <node concept="Xl_RD" id="1jfLtDTY8ym" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1jfLtDTY8yn" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="1jfLtDTY8yo" role="37wK5m">
                    <property role="Xl_RC" value="@" />
                  </node>
                  <node concept="Xl_RD" id="1jfLtDTY8yp" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTY8yq" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTY8yt" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="1jfLtDTY8yv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="1jfLtDTY8yw" role="33vP2m">
              <node concept="Xl_RD" id="1jfLtDTY8yz" role="3uHU7B">
                <property role="Xl_RC" value="r:" />
              </node>
              <node concept="2OqwBi" id="1jfLtDTY8y$" role="3uHU7w">
                <node concept="2YIFZM" id="1jfLtDTY8yB" role="2Oq$k0">
                  <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                  <ref role="37wK5l" to="33ny:~UUID.nameUUIDFromBytes(byte[])" resolve="nameUUIDFromBytes" />
                  <node concept="2OqwBi" id="1jfLtDTY8yC" role="37wK5m">
                    <node concept="1eOMI4" id="1jfLtDTY8yF" role="2Oq$k0">
                      <node concept="3cpWs3" id="1jfLtDTY8yH" role="1eOMHV">
                        <node concept="Xl_RD" id="1jfLtDTY8yK" role="3uHU7B">
                          <property role="Xl_RC" value="de.q60.mps.lang.typescript.stub." />
                        </node>
                        <node concept="37vLTw" id="1jfLtDTY8yL" role="3uHU7w">
                          <ref role="3cqZAo" node="1jfLtDTY8xo" resolve="specifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1jfLtDTY8yM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.getBytes()" resolve="getBytes" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1jfLtDTY8yN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~UUID.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTY8yO" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTY8yP" role="3cqZAk">
            <node concept="2YIFZM" id="1jfLtDTY8yS" role="2Oq$k0">
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="1jfLtDTY8yT" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="createModelReference" />
              <node concept="2OqwBi" id="1jfLtDTY8yU" role="37wK5m">
                <node concept="2OqwBi" id="1jfLtDTY8yX" role="2Oq$k0">
                  <node concept="Xjq3P" id="1jfLtDTY8z0" role="2Oq$k0" />
                  <node concept="liA8E" id="1jfLtDTY8z1" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~ModelRootBase.getModule()" resolve="getModule" />
                  </node>
                </node>
                <node concept="liA8E" id="1jfLtDTY8z2" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                </node>
              </node>
              <node concept="2OqwBi" id="1jfLtDTY8z3" role="37wK5m">
                <node concept="2YIFZM" id="1jfLtDTY8z6" role="2Oq$k0">
                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="1jfLtDTY8z7" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModelId(java.lang.String)" resolve="createModelId" />
                  <node concept="37vLTw" id="1jfLtDTY8z8" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDTY8yt" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1jfLtDTY8z9" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTY8y6" resolve="modelName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTSdcj" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTSdck" role="jymVt">
      <property role="TrG5h" value="readLines" />
      <node concept="3Tm6S6" id="1jfLtDTSdco" role="1B3o_S" />
      <node concept="_YKpA" id="1jfLtDTSdcp" role="3clF45">
        <node concept="3uibUv" id="1jfLtDTSdcr" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTSdcs" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="1jfLtDTSdcu" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTSdcv" role="3clF47">
        <node concept="3cpWs8" id="1jfLtDTSdcw" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTSdcz" role="3cpWs9">
            <property role="TrG5h" value="lines" />
            <node concept="_YKpA" id="1jfLtDTSdc_" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTSdcB" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTSdcC" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTSdcE" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTSdcF" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1jfLtDTSdcG" role="3cqZAp">
          <node concept="3clFbS" id="1jfLtDTSdcI" role="1zxBo7">
            <node concept="3cpWs8" id="1jfLtDTSdcJ" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTSdcM" role="3cpWs9">
                <property role="TrG5h" value="reader" />
                <node concept="3uibUv" id="1jfLtDTSdcO" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="1jfLtDTSdcP" role="33vP2m">
                  <node concept="1pGfFk" id="1jfLtDTSdcR" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="1jfLtDTSdcS" role="37wK5m">
                      <node concept="1pGfFk" id="1jfLtDTSdcU" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="1jfLtDTSdcV" role="37wK5m">
                          <node concept="37vLTw" id="1jfLtDTSdcY" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTSdcs" resolve="file" />
                          </node>
                          <node concept="liA8E" id="1jfLtDTSdcZ" role="2OqNvi">
                            <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTSdd0" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTSdd3" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="3uibUv" id="1jfLtDTSdd5" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="1jfLtDTSdd6" role="33vP2m">
                  <node concept="37vLTw" id="1jfLtDTSdd9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDTSdcM" resolve="reader" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTSdda" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="1jfLtDTSddb" role="3cqZAp">
              <node concept="3y3z36" id="1jfLtDTSdde" role="2$JKZa">
                <node concept="37vLTw" id="1jfLtDTSddh" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDTSdd3" resolve="line" />
                </node>
                <node concept="10Nm6u" id="1jfLtDTSddi" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1jfLtDTSddj" role="2LFqv$">
                <node concept="3clFbF" id="1jfLtDTSddk" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTSddm" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTSddp" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTSdcz" resolve="lines" />
                    </node>
                    <node concept="TSZUe" id="1jfLtDTSddq" role="2OqNvi">
                      <node concept="2OqwBi" id="1jfLtDTSdds" role="25WWJ7">
                        <node concept="37vLTw" id="1jfLtDTSddv" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDTSdd3" resolve="line" />
                        </node>
                        <node concept="liA8E" id="1jfLtDTSddw" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.trim()" resolve="trim" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDTSddx" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDTSddz" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTSddA" role="37vLTJ">
                      <ref role="3cqZAo" node="1jfLtDTSdd3" resolve="line" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDTSddB" role="37vLTx">
                      <node concept="37vLTw" id="1jfLtDTSddE" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTSdcM" resolve="reader" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTSddF" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTSddG" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTSddI" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTSddL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTSdcM" resolve="reader" />
                </node>
                <node concept="liA8E" id="1jfLtDTSddM" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1jfLtDTSddN" role="1zxBo5">
            <node concept="XOnhg" id="1jfLtDTSddR" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="1jfLtDTSddT" role="1tU5fm">
                <node concept="3uibUv" id="1jfLtDTSddV" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1jfLtDTSddW" role="1zc67A" />
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTSddX" role="3cqZAp">
          <node concept="37vLTw" id="1jfLtDTSddY" role="3cqZAk">
            <ref role="3cqZAo" node="1jfLtDTSdcz" resolve="lines" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1jfLtDTDILR">
    <property role="TrG5h" value="TSDtsStubModelRootFactory" />
    <node concept="3Tm1VV" id="1jfLtDTDILT" role="1B3o_S" />
    <node concept="3uibUv" id="1jfLtDTDILU" role="EKbjA">
      <ref role="3uigEE" to="dush:~ModelRootFactory" resolve="ModelRootFactory" />
    </node>
    <node concept="3clFbW" id="1jfLtDTDILV" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDTDILW" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDTDILZ" role="1B3o_S" />
      <node concept="3clFbS" id="1jfLtDTDIM0" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1jfLtDTDIM1" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTDIM2" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="2AHcQZ" id="1jfLtDTDIM6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTDIM7" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTDIM8" role="3clF45">
        <ref role="3uigEE" to="dush:~ModelRoot" resolve="ModelRoot" />
      </node>
      <node concept="3clFbS" id="1jfLtDTDIM9" role="3clF47">
        <node concept="3cpWs6" id="1jfLtDTDIMa" role="3cqZAp">
          <node concept="2ShNRf" id="1jfLtDTDIMb" role="3cqZAk">
            <node concept="1pGfFk" id="1jfLtDTDIMd" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="1jfLtDTDIfV" resolve="TSDtsStubsModelRoot" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="1jfLtDTDMnY">
    <property role="TrG5h" value="TSDtsStubs" />
    <node concept="2uRRBj" id="1jfLtDTDMnZ" role="2uRRBE">
      <node concept="3clFbS" id="1jfLtDTDMo1" role="2VODD2">
        <node concept="3clFbF" id="1jfLtDTDMo2" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTDMo4" role="3clFbG">
            <node concept="2YIFZM" id="1jfLtDTDMo7" role="2Oq$k0">
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="1jfLtDTDMo8" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.setModelRootFactory(java.lang.String,org.jetbrains.mps.openapi.persistence.ModelRootFactory)" resolve="setModelRootFactory" />
              <node concept="10M0yZ" id="1jfLtDTDMo9" role="37wK5m">
                <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                <ref role="3cqZAo" node="1jfLtDTDIfO" resolve="TYPE" />
              </node>
              <node concept="2ShNRf" id="1jfLtDTDMoa" role="37wK5m">
                <node concept="1pGfFk" id="1jfLtDTDMoc" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="1jfLtDTDILV" resolve="TSDtsStubModelRootFactory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1jfLtDTDMod" role="2uRRBF">
      <node concept="3clFbS" id="1jfLtDTDMof" role="2VODD2">
        <node concept="3clFbF" id="1jfLtDTDMog" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTDMoi" role="3clFbG">
            <node concept="2YIFZM" id="1jfLtDTDMol" role="2Oq$k0">
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="1jfLtDTDMom" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.setModelRootFactory(java.lang.String,org.jetbrains.mps.openapi.persistence.ModelRootFactory)" resolve="setModelRootFactory" />
              <node concept="10M0yZ" id="1jfLtDTDMon" role="37wK5m">
                <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                <ref role="3cqZAo" node="1jfLtDTDIfO" resolve="TYPE" />
              </node>
              <node concept="10Nm6u" id="1jfLtDTDMoo" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="1jfLtDTGr4l" />
  <node concept="312cEu" id="1jfLtDTPIa_">
    <property role="TrG5h" value="TSDtsStubNodeStream" />
    <node concept="3Tm1VV" id="1jfLtDTPIaB" role="1B3o_S" />
    <node concept="Wx3nA" id="1jfLtDTPIaC" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NL" />
      <node concept="3Tm6S6" id="1jfLtDTPIaF" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTPIaG" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2YIFZM" id="1jfLtDTPIaH" role="33vP2m">
        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
        <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
        <node concept="10QFUN" id="1jfLtDTPIaI" role="37wK5m">
          <node concept="10Pfzv" id="1jfLtDTPIaL" role="10QFUM" />
          <node concept="3cmrfG" id="1jfLtDTPIaM" role="10QFUP">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1jfLtDTPIaN" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TAB" />
      <node concept="3Tm6S6" id="1jfLtDTPIaQ" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTPIaR" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2YIFZM" id="1jfLtDTPIaS" role="33vP2m">
        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
        <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
        <node concept="10QFUN" id="1jfLtDTPIaT" role="37wK5m">
          <node concept="10Pfzv" id="1jfLtDTPIaW" role="10QFUM" />
          <node concept="3cmrfG" id="1jfLtDTPIaX" role="10QFUP">
            <property role="3cmrfH" value="9" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1jfLtDTPIaY" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="BS" />
      <node concept="3Tm6S6" id="1jfLtDTPIb1" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTPIb2" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2YIFZM" id="1jfLtDTPIb3" role="33vP2m">
        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
        <ref role="37wK5l" to="wyt6:~String.valueOf(char)" resolve="valueOf" />
        <node concept="10QFUN" id="1jfLtDTPIb4" role="37wK5m">
          <node concept="10Pfzv" id="1jfLtDTPIb7" role="10QFUM" />
          <node concept="3cmrfG" id="1jfLtDTPIb8" role="10QFUP">
            <property role="3cmrfH" value="92" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTPIb9" role="jymVt" />
    <node concept="3clFbW" id="1jfLtDTPIba" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDTPIbb" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDTPIbe" role="1B3o_S" />
      <node concept="3clFbS" id="1jfLtDTPIbf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1jfLtDTPIbg" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTPIbh" role="jymVt">
      <property role="TrG5h" value="read" />
      <node concept="3Tm1VV" id="1jfLtDTPIbl" role="1B3o_S" />
      <node concept="3cqZAl" id="1jfLtDTPIbm" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDTPIbn" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="1jfLtDTPIbp" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTPIbq" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="1jfLtDTPIbs" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTPIbt" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTPIbu" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTPIby" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTPIb$" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIb_" role="1PaTwD">
              <property role="3oM_SC" value="extractor's" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbA" role="1PaTwD">
              <property role="3oM_SC" value="node-construction" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbB" role="1PaTwD">
              <property role="3oM_SC" value="stream." />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbC" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbD" role="1PaTwD">
              <property role="3oM_SC" value="*Importing" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbF" role="1PaTwD">
              <property role="3oM_SC" value=".d.ts*" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbG" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbH" role="1PaTwD">
              <property role="3oM_SC" value="ROADMAP.md" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbI" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbJ" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTPIbL" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTPIbP" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTPIbR" role="1PaTwD">
              <property role="3oM_SC" value="format" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbS" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbU" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbV" role="1PaTwD">
              <property role="3oM_SC" value="stream" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbW" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbX" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbY" role="1PaTwD">
              <property role="3oM_SC" value="JSON," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIbZ" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc0" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc2" role="1PaTwD">
              <property role="3oM_SC" value="separators" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc3" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc4" role="1PaTwD">
              <property role="3oM_SC" value="built" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc5" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc6" role="1PaTwD">
              <property role="3oM_SC" value="char" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTPIc7" role="1PaTwD">
              <property role="3oM_SC" value="codes." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTPIc8" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIcb" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="_YKpA" id="1jfLtDTPIcd" role="1tU5fm">
              <node concept="3Tqbb2" id="1jfLtDTPIcf" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="1jfLtDTPIcg" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTPIci" role="2ShVmc">
                <node concept="3Tqbb2" id="1jfLtDTPIcj" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTPIck" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIcn" role="3cpWs9">
            <property role="TrG5h" value="namedTypes" />
            <node concept="3rvAFt" id="1jfLtDTPIcp" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTPIcs" role="3rvQeY">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3Tqbb2" id="1jfLtDTPIct" role="3rvSg0" />
            </node>
            <node concept="2ShNRf" id="1jfLtDTPIcu" role="33vP2m">
              <node concept="3rGOSV" id="1jfLtDTPIcw" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTPIcx" role="3rHrn6">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3Tqbb2" id="1jfLtDTPIcy" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTPIcz" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIcA" role="3cpWs9">
            <property role="TrG5h" value="refSources" />
            <node concept="_YKpA" id="1jfLtDTPIcC" role="1tU5fm">
              <node concept="3Tqbb2" id="1jfLtDTPIcE" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="1jfLtDTPIcF" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTPIcH" role="2ShVmc">
                <node concept="3Tqbb2" id="1jfLtDTPIcI" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTPIcJ" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIcM" role="3cpWs9">
            <property role="TrG5h" value="refLinks" />
            <node concept="_YKpA" id="1jfLtDTPIcO" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTPIcQ" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTPIcR" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTPIcT" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTPIcU" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTPIcV" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIcY" role="3cpWs9">
            <property role="TrG5h" value="refTargets" />
            <node concept="_YKpA" id="1jfLtDTPId0" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTPId2" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTPId3" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTPId5" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTPId6" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1jfLtDTPId7" role="3cqZAp" />
        <node concept="2Gpval" id="1jfLtDTPId8" role="3cqZAp">
          <node concept="2GrKxI" id="1jfLtDTPIdc" role="2Gsz3X">
            <property role="TrG5h" value="line" />
          </node>
          <node concept="2YIFZM" id="1jfLtDTPIdd" role="2GsD0m">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="2OqwBi" id="1jfLtDTPIde" role="37wK5m">
              <node concept="37vLTw" id="1jfLtDTPIdh" role="2Oq$k0">
                <ref role="3cqZAo" node="1jfLtDTPIbn" resolve="text" />
              </node>
              <node concept="liA8E" id="1jfLtDTPIdi" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="10M0yZ" id="1jfLtDTPIdj" role="37wK5m">
                  <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                  <ref role="3cqZAo" node="1jfLtDTPIaC" resolve="NL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIdk" role="2LFqv$">
            <node concept="3clFbJ" id="1jfLtDTPIdl" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTPIdo" role="3clFbw">
                <node concept="2GrUjf" id="1jfLtDTPIdr" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1jfLtDTPIdc" resolve="line" />
                </node>
                <node concept="liA8E" id="1jfLtDTPIds" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTPIdt" role="3clFbx">
                <node concept="3N13vt" id="1jfLtDTPIdu" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTPIdv" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTPIdy" role="3cpWs9">
                <property role="TrG5h" value="f" />
                <node concept="10Q1$e" id="1jfLtDTPId$" role="1tU5fm">
                  <node concept="3uibUv" id="1jfLtDTPIdA" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1jfLtDTPIdB" role="33vP2m">
                  <node concept="2GrUjf" id="1jfLtDTPIdE" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1jfLtDTPIdc" resolve="line" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTPIdF" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String,int)" resolve="split" />
                    <node concept="10M0yZ" id="1jfLtDTPIdG" role="37wK5m">
                      <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                      <ref role="3cqZAo" node="1jfLtDTPIaN" resolve="TAB" />
                    </node>
                    <node concept="3cmrfG" id="1jfLtDTPIdH" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1jfLtDTPIdI" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTPIdL" role="3clFbw">
                <node concept="Xl_RD" id="1jfLtDTPIdO" role="2Oq$k0">
                  <property role="Xl_RC" value="E" />
                </node>
                <node concept="liA8E" id="1jfLtDTPIdP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="AH0OO" id="1jfLtDTPIdQ" role="37wK5m">
                    <node concept="37vLTw" id="1jfLtDTPIdT" role="AHHXb">
                      <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                    </node>
                    <node concept="3cmrfG" id="1jfLtDTPIdU" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTPIdV" role="3clFbx">
                <node concept="3clFbF" id="1jfLtDTPIdW" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTPIdY" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTPIe1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                    </node>
                    <node concept="liA8E" id="1jfLtDTPIe2" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                      <node concept="3cpWsd" id="1jfLtDTPIe3" role="37wK5m">
                        <node concept="2OqwBi" id="1jfLtDTPIe6" role="3uHU7B">
                          <node concept="37vLTw" id="1jfLtDTPIe9" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                          </node>
                          <node concept="34oBXx" id="1jfLtDTPIea" role="2OqNvi" />
                        </node>
                        <node concept="3cmrfG" id="1jfLtDTPIeb" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="1jfLtDTPIec" role="3eNLev">
                <node concept="2OqwBi" id="1jfLtDTPIef" role="3eO9$A">
                  <node concept="Xl_RD" id="1jfLtDTPIei" role="2Oq$k0">
                    <property role="Xl_RC" value="N" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTPIej" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="AH0OO" id="1jfLtDTPIek" role="37wK5m">
                      <node concept="37vLTw" id="1jfLtDTPIen" role="AHHXb">
                        <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                      </node>
                      <node concept="3cmrfG" id="1jfLtDTPIeo" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1jfLtDTPIep" role="3eOfB_">
                  <node concept="3cpWs8" id="1jfLtDTPIeq" role="3cqZAp">
                    <node concept="3cpWsn" id="1jfLtDTPIet" role="3cpWs9">
                      <property role="TrG5h" value="created" />
                      <node concept="3Tqbb2" id="1jfLtDTPIev" role="1tU5fm" />
                      <node concept="2YIFZM" id="1jfLtDTPIew" role="33vP2m">
                        <ref role="1Pybhc" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                        <ref role="37wK5l" node="1jfLtDTPIlZ" resolve="create" />
                        <node concept="AH0OO" id="1jfLtDTPIex" role="37wK5m">
                          <node concept="37vLTw" id="1jfLtDTPIe$" role="AHHXb">
                            <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                          </node>
                          <node concept="3cmrfG" id="1jfLtDTPIe_" role="AHEQo">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1jfLtDTPIeA" role="3cqZAp">
                    <node concept="3clFbC" id="1jfLtDTPIeD" role="3clFbw">
                      <node concept="37vLTw" id="1jfLtDTPIeG" role="3uHU7B">
                        <ref role="3cqZAo" node="1jfLtDTPIet" resolve="created" />
                      </node>
                      <node concept="10Nm6u" id="1jfLtDTPIeH" role="3uHU7w" />
                    </node>
                    <node concept="3clFbS" id="1jfLtDTPIeI" role="3clFbx">
                      <node concept="3N13vt" id="1jfLtDTPIeJ" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1jfLtDTPIeK" role="3cqZAp">
                    <node concept="2OqwBi" id="1jfLtDTPIeN" role="3clFbw">
                      <node concept="37vLTw" id="1jfLtDTPIeQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                      </node>
                      <node concept="1v1jN8" id="1jfLtDTPIeR" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="1jfLtDTPIeS" role="3clFbx">
                      <node concept="3clFbF" id="1jfLtDTPIeT" role="3cqZAp">
                        <node concept="2OqwBi" id="1jfLtDTPIeV" role="3clFbG">
                          <node concept="37vLTw" id="1jfLtDTPIeY" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTPIbq" resolve="model" />
                          </node>
                          <node concept="liA8E" id="1jfLtDTPIeZ" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                            <node concept="2JrnkZ" id="1jfLtDTPIf0" role="37wK5m">
                              <node concept="37vLTw" id="1jfLtDTPIf2" role="2JrQYb">
                                <ref role="3cqZAo" node="1jfLtDTPIet" resolve="created" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1jfLtDTPIf3" role="9aQIa">
                      <node concept="3clFbS" id="1jfLtDTPIf5" role="9aQI4">
                        <node concept="3cpWs8" id="1jfLtDTPIf6" role="3cqZAp">
                          <node concept="3cpWsn" id="1jfLtDTPIf9" role="3cpWs9">
                            <property role="TrG5h" value="parent" />
                            <node concept="3Tqbb2" id="1jfLtDTPIfb" role="1tU5fm" />
                            <node concept="2OqwBi" id="1jfLtDTPIfc" role="33vP2m">
                              <node concept="37vLTw" id="1jfLtDTPIff" role="2Oq$k0">
                                <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                              </node>
                              <node concept="34jXtK" id="1jfLtDTPIfg" role="2OqNvi">
                                <node concept="3cpWsd" id="1jfLtDTPIfi" role="25WWJ7">
                                  <node concept="2OqwBi" id="1jfLtDTPIfl" role="3uHU7B">
                                    <node concept="37vLTw" id="1jfLtDTPIfo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                                    </node>
                                    <node concept="34oBXx" id="1jfLtDTPIfp" role="2OqNvi" />
                                  </node>
                                  <node concept="3cmrfG" id="1jfLtDTPIfq" role="3uHU7w">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="1jfLtDTPIfr" role="3cqZAp">
                          <node concept="2GrKxI" id="1jfLtDTPIfv" role="2Gsz3X">
                            <property role="TrG5h" value="l" />
                          </node>
                          <node concept="2OqwBi" id="1jfLtDTPIfw" role="2GsD0m">
                            <node concept="2OqwBi" id="1jfLtDTPIfz" role="2Oq$k0">
                              <node concept="37vLTw" id="1jfLtDTPIfA" role="2Oq$k0">
                                <ref role="3cqZAo" node="1jfLtDTPIf9" resolve="parent" />
                              </node>
                              <node concept="2yIwOk" id="1jfLtDTPIfB" role="2OqNvi" />
                            </node>
                            <node concept="liA8E" id="1jfLtDTPIfC" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="1jfLtDTPIfD" role="2LFqv$">
                            <node concept="3clFbJ" id="1jfLtDTPIfE" role="3cqZAp">
                              <node concept="2OqwBi" id="1jfLtDTPIfH" role="3clFbw">
                                <node concept="2OqwBi" id="1jfLtDTPIfK" role="2Oq$k0">
                                  <node concept="2GrUjf" id="1jfLtDTPIfN" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="1jfLtDTPIfv" resolve="l" />
                                  </node>
                                  <node concept="liA8E" id="1jfLtDTPIfO" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1jfLtDTPIfP" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="AH0OO" id="1jfLtDTPIfQ" role="37wK5m">
                                    <node concept="37vLTw" id="1jfLtDTPIfT" role="AHHXb">
                                      <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                                    </node>
                                    <node concept="3cmrfG" id="1jfLtDTPIfU" role="AHEQo">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="1jfLtDTPIfV" role="3clFbx">
                                <node concept="3clFbF" id="1jfLtDTPIfW" role="3cqZAp">
                                  <node concept="2OqwBi" id="1jfLtDTPIfY" role="3clFbG">
                                    <node concept="2JrnkZ" id="1jfLtDTPIg1" role="2Oq$k0">
                                      <node concept="37vLTw" id="1jfLtDTPIg3" role="2JrQYb">
                                        <ref role="3cqZAo" node="1jfLtDTPIf9" resolve="parent" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1jfLtDTPIg4" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                                      <node concept="2GrUjf" id="1jfLtDTPIg5" role="37wK5m">
                                        <ref role="2Gs0qQ" node="1jfLtDTPIfv" resolve="l" />
                                      </node>
                                      <node concept="2JrnkZ" id="1jfLtDTPIg6" role="37wK5m">
                                        <node concept="37vLTw" id="1jfLtDTPIg8" role="2JrQYb">
                                          <ref role="3cqZAo" node="1jfLtDTPIet" resolve="created" />
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
                  </node>
                  <node concept="3clFbF" id="1jfLtDTPIg9" role="3cqZAp">
                    <node concept="2OqwBi" id="1jfLtDTPIgb" role="3clFbG">
                      <node concept="37vLTw" id="1jfLtDTPIge" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                      </node>
                      <node concept="TSZUe" id="1jfLtDTPIgf" role="2OqNvi">
                        <node concept="37vLTw" id="1jfLtDTPIgh" role="25WWJ7">
                          <ref role="3cqZAo" node="1jfLtDTPIet" resolve="created" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="1jfLtDTPIgi" role="3eNLev">
                <node concept="2OqwBi" id="1jfLtDTPIgl" role="3eO9$A">
                  <node concept="Xl_RD" id="1jfLtDTPIgo" role="2Oq$k0">
                    <property role="Xl_RC" value="P" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTPIgp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="AH0OO" id="1jfLtDTPIgq" role="37wK5m">
                      <node concept="37vLTw" id="1jfLtDTPIgt" role="AHHXb">
                        <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                      </node>
                      <node concept="3cmrfG" id="1jfLtDTPIgu" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1jfLtDTPIgv" role="3eOfB_">
                  <node concept="3cpWs8" id="1jfLtDTPIgw" role="3cqZAp">
                    <node concept="3cpWsn" id="1jfLtDTPIgz" role="3cpWs9">
                      <property role="TrG5h" value="current" />
                      <node concept="3Tqbb2" id="1jfLtDTPIg_" role="1tU5fm" />
                      <node concept="2OqwBi" id="1jfLtDTPIgA" role="33vP2m">
                        <node concept="37vLTw" id="1jfLtDTPIgD" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                        </node>
                        <node concept="34jXtK" id="1jfLtDTPIgE" role="2OqNvi">
                          <node concept="3cpWsd" id="1jfLtDTPIgG" role="25WWJ7">
                            <node concept="2OqwBi" id="1jfLtDTPIgJ" role="3uHU7B">
                              <node concept="37vLTw" id="1jfLtDTPIgM" role="2Oq$k0">
                                <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                              </node>
                              <node concept="34oBXx" id="1jfLtDTPIgN" role="2OqNvi" />
                            </node>
                            <node concept="3cmrfG" id="1jfLtDTPIgO" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="1jfLtDTPIgP" role="3cqZAp">
                    <node concept="2GrKxI" id="1jfLtDTPIgT" role="2Gsz3X">
                      <property role="TrG5h" value="p" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDTPIgU" role="2GsD0m">
                      <node concept="2OqwBi" id="1jfLtDTPIgX" role="2Oq$k0">
                        <node concept="37vLTw" id="1jfLtDTPIh0" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDTPIgz" resolve="current" />
                        </node>
                        <node concept="2yIwOk" id="1jfLtDTPIh1" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTPIh2" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1jfLtDTPIh3" role="2LFqv$">
                      <node concept="3clFbJ" id="1jfLtDTPIh4" role="3cqZAp">
                        <node concept="2OqwBi" id="1jfLtDTPIh7" role="3clFbw">
                          <node concept="2OqwBi" id="1jfLtDTPIha" role="2Oq$k0">
                            <node concept="2GrUjf" id="1jfLtDTPIhd" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1jfLtDTPIgT" resolve="p" />
                            </node>
                            <node concept="liA8E" id="1jfLtDTPIhe" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1jfLtDTPIhf" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="AH0OO" id="1jfLtDTPIhg" role="37wK5m">
                              <node concept="37vLTw" id="1jfLtDTPIhj" role="AHHXb">
                                <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                              </node>
                              <node concept="3cmrfG" id="1jfLtDTPIhk" role="AHEQo">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1jfLtDTPIhl" role="3clFbx">
                          <node concept="3clFbF" id="1jfLtDTPIhm" role="3cqZAp">
                            <node concept="2OqwBi" id="1jfLtDTPIho" role="3clFbG">
                              <node concept="2JrnkZ" id="1jfLtDTPIhr" role="2Oq$k0">
                                <node concept="37vLTw" id="1jfLtDTPIht" role="2JrQYb">
                                  <ref role="3cqZAo" node="1jfLtDTPIgz" resolve="current" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1jfLtDTPIhu" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                                <node concept="2GrUjf" id="1jfLtDTPIhv" role="37wK5m">
                                  <ref role="2Gs0qQ" node="1jfLtDTPIgT" resolve="p" />
                                </node>
                                <node concept="2YIFZM" id="1jfLtDTPIhw" role="37wK5m">
                                  <ref role="1Pybhc" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                                  <ref role="37wK5l" node="1jfLtDTPIlk" resolve="unescape" />
                                  <node concept="AH0OO" id="1jfLtDTPIhx" role="37wK5m">
                                    <node concept="37vLTw" id="1jfLtDTPIh$" role="AHHXb">
                                      <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                                    </node>
                                    <node concept="3cmrfG" id="1jfLtDTPIh_" role="AHEQo">
                                      <property role="3cmrfH" value="2" />
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
                  <node concept="3clFbJ" id="1jfLtDTPIhA" role="3cqZAp">
                    <node concept="1Wc70l" id="1jfLtDTPIhD" role="3clFbw">
                      <node concept="2OqwBi" id="1jfLtDTPIhG" role="3uHU7B">
                        <node concept="Xl_RD" id="1jfLtDTPIhJ" role="2Oq$k0">
                          <property role="Xl_RC" value="name" />
                        </node>
                        <node concept="liA8E" id="1jfLtDTPIhK" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="AH0OO" id="1jfLtDTPIhL" role="37wK5m">
                            <node concept="37vLTw" id="1jfLtDTPIhO" role="AHHXb">
                              <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                            </node>
                            <node concept="3cmrfG" id="1jfLtDTPIhP" role="AHEQo">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1jfLtDTPIhQ" role="3uHU7w">
                        <node concept="2OqwBi" id="1jfLtDTPIhT" role="2Oq$k0">
                          <node concept="37vLTw" id="1jfLtDTPIhW" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTPIgz" resolve="current" />
                          </node>
                          <node concept="2yIwOk" id="1jfLtDTPIhX" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="1jfLtDTPIhY" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                          <node concept="35c_gC" id="1jfLtDTPIhZ" role="37wK5m">
                            <ref role="35c_gD" to="mo8k:1jfLtDTxEqQ" resolve="TSITypeDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1jfLtDTPIi0" role="3clFbx">
                      <node concept="3clFbF" id="1jfLtDTPIi1" role="3cqZAp">
                        <node concept="37vLTI" id="1jfLtDTPIi3" role="3clFbG">
                          <node concept="3EllGN" id="1jfLtDTPIi6" role="37vLTJ">
                            <node concept="37vLTw" id="1jfLtDTPIi9" role="3ElQJh">
                              <ref role="3cqZAo" node="1jfLtDTPIcn" resolve="namedTypes" />
                            </node>
                            <node concept="2YIFZM" id="1jfLtDTPIia" role="3ElVtu">
                              <ref role="1Pybhc" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                              <ref role="37wK5l" node="1jfLtDTPIlk" resolve="unescape" />
                              <node concept="AH0OO" id="1jfLtDTPIib" role="37wK5m">
                                <node concept="37vLTw" id="1jfLtDTPIie" role="AHHXb">
                                  <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                                </node>
                                <node concept="3cmrfG" id="1jfLtDTPIif" role="AHEQo">
                                  <property role="3cmrfH" value="2" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1jfLtDTPIig" role="37vLTx">
                            <ref role="3cqZAo" node="1jfLtDTPIgz" resolve="current" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1jfLtDTPIih" role="9aQIa">
                <node concept="2OqwBi" id="1jfLtDTPIik" role="3clFbw">
                  <node concept="Xl_RD" id="1jfLtDTPIin" role="2Oq$k0">
                    <property role="Xl_RC" value="R" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTPIio" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="AH0OO" id="1jfLtDTPIip" role="37wK5m">
                      <node concept="37vLTw" id="1jfLtDTPIis" role="AHHXb">
                        <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                      </node>
                      <node concept="3cmrfG" id="1jfLtDTPIit" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1jfLtDTPIiu" role="3clFbx">
                  <node concept="3clFbF" id="1jfLtDTPIiv" role="3cqZAp">
                    <node concept="2OqwBi" id="1jfLtDTPIix" role="3clFbG">
                      <node concept="37vLTw" id="1jfLtDTPIi$" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTPIcA" resolve="refSources" />
                      </node>
                      <node concept="TSZUe" id="1jfLtDTPIi_" role="2OqNvi">
                        <node concept="2OqwBi" id="1jfLtDTPIiB" role="25WWJ7">
                          <node concept="37vLTw" id="1jfLtDTPIiE" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                          </node>
                          <node concept="34jXtK" id="1jfLtDTPIiF" role="2OqNvi">
                            <node concept="3cpWsd" id="1jfLtDTPIiH" role="25WWJ7">
                              <node concept="2OqwBi" id="1jfLtDTPIiK" role="3uHU7B">
                                <node concept="37vLTw" id="1jfLtDTPIiN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1jfLtDTPIcb" resolve="stack" />
                                </node>
                                <node concept="34oBXx" id="1jfLtDTPIiO" role="2OqNvi" />
                              </node>
                              <node concept="3cmrfG" id="1jfLtDTPIiP" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1jfLtDTPIiQ" role="3cqZAp">
                    <node concept="2OqwBi" id="1jfLtDTPIiS" role="3clFbG">
                      <node concept="37vLTw" id="1jfLtDTPIiV" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTPIcM" resolve="refLinks" />
                      </node>
                      <node concept="TSZUe" id="1jfLtDTPIiW" role="2OqNvi">
                        <node concept="AH0OO" id="1jfLtDTPIiY" role="25WWJ7">
                          <node concept="37vLTw" id="1jfLtDTPIj1" role="AHHXb">
                            <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                          </node>
                          <node concept="3cmrfG" id="1jfLtDTPIj2" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1jfLtDTPIj3" role="3cqZAp">
                    <node concept="2OqwBi" id="1jfLtDTPIj5" role="3clFbG">
                      <node concept="37vLTw" id="1jfLtDTPIj8" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTPIcY" resolve="refTargets" />
                      </node>
                      <node concept="TSZUe" id="1jfLtDTPIj9" role="2OqNvi">
                        <node concept="2YIFZM" id="1jfLtDTPIjb" role="25WWJ7">
                          <ref role="1Pybhc" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                          <ref role="37wK5l" node="1jfLtDTPIlk" resolve="unescape" />
                          <node concept="AH0OO" id="1jfLtDTPIjc" role="37wK5m">
                            <node concept="37vLTw" id="1jfLtDTPIjf" role="AHHXb">
                              <ref role="3cqZAo" node="1jfLtDTPIdy" resolve="f" />
                            </node>
                            <node concept="3cmrfG" id="1jfLtDTPIjg" role="AHEQo">
                              <property role="3cmrfH" value="2" />
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
        <node concept="3clFbH" id="1jfLtDTPIjh" role="3cqZAp" />
        <node concept="1Dw8fO" id="1jfLtDTPIji" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTPIjl" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1jfLtDTPIjn" role="1tU5fm" />
            <node concept="3cmrfG" id="1jfLtDTPIjo" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="1jfLtDTPIjp" role="1Dwp0S">
            <node concept="37vLTw" id="1jfLtDTPIjs" role="3uHU7B">
              <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
            </node>
            <node concept="2OqwBi" id="1jfLtDTPIjt" role="3uHU7w">
              <node concept="37vLTw" id="1jfLtDTPIjw" role="2Oq$k0">
                <ref role="3cqZAo" node="1jfLtDTPIcA" resolve="refSources" />
              </node>
              <node concept="34oBXx" id="1jfLtDTPIjx" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="1jfLtDTPIjy" role="1Dwrff">
            <node concept="37vLTw" id="1jfLtDTPIj$" role="2$L3a6">
              <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIj_" role="2LFqv$">
            <node concept="3SKdUt" id="1jfLtDTPIjA" role="3cqZAp">
              <node concept="1PaTwC" id="1jfLtDTPIjE" role="1aUNEU">
                <node concept="3oM_SD" id="1jfLtDTPIjG" role="1PaTwD">
                  <property role="3oM_SC" value="Resolved" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjH" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjI" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjJ" role="1PaTwD">
                  <property role="3oM_SC" value="walk," />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjK" role="1PaTwD">
                  <property role="3oM_SC" value="because" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjL" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjM" role="1PaTwD">
                  <property role="3oM_SC" value="reference" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjN" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjO" role="1PaTwD">
                  <property role="3oM_SC" value="name" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjP" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjQ" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjR" role="1PaTwD">
                  <property role="3oM_SC" value="declared" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjS" role="1PaTwD">
                  <property role="3oM_SC" value="later" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjT" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjU" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1jfLtDTPIjV" role="1PaTwD">
                  <property role="3oM_SC" value="file." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTPIjW" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTPIjZ" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="1jfLtDTPIk1" role="1tU5fm" />
                <node concept="3EllGN" id="1jfLtDTPIk2" role="33vP2m">
                  <node concept="37vLTw" id="1jfLtDTPIk5" role="3ElQJh">
                    <ref role="3cqZAo" node="1jfLtDTPIcn" resolve="namedTypes" />
                  </node>
                  <node concept="2OqwBi" id="1jfLtDTPIk6" role="3ElVtu">
                    <node concept="37vLTw" id="1jfLtDTPIk9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTPIcY" resolve="refTargets" />
                    </node>
                    <node concept="34jXtK" id="1jfLtDTPIka" role="2OqNvi">
                      <node concept="37vLTw" id="1jfLtDTPIkc" role="25WWJ7">
                        <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1jfLtDTPIkd" role="3cqZAp">
              <node concept="3clFbC" id="1jfLtDTPIkg" role="3clFbw">
                <node concept="37vLTw" id="1jfLtDTPIkj" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDTPIjZ" resolve="target" />
                </node>
                <node concept="10Nm6u" id="1jfLtDTPIkk" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1jfLtDTPIkl" role="3clFbx">
                <node concept="3N13vt" id="1jfLtDTPIkm" role="3cqZAp" />
              </node>
            </node>
            <node concept="2Gpval" id="1jfLtDTPIkn" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDTPIkr" role="2Gsz3X">
                <property role="TrG5h" value="l" />
              </node>
              <node concept="2OqwBi" id="1jfLtDTPIks" role="2GsD0m">
                <node concept="2OqwBi" id="1jfLtDTPIkv" role="2Oq$k0">
                  <node concept="2OqwBi" id="1jfLtDTPIky" role="2Oq$k0">
                    <node concept="37vLTw" id="1jfLtDTPIk_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTPIcA" resolve="refSources" />
                    </node>
                    <node concept="34jXtK" id="1jfLtDTPIkA" role="2OqNvi">
                      <node concept="37vLTw" id="1jfLtDTPIkC" role="25WWJ7">
                        <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="2yIwOk" id="1jfLtDTPIkD" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="1jfLtDTPIkE" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTPIkF" role="2LFqv$">
                <node concept="3clFbJ" id="1jfLtDTPIkG" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTPIkJ" role="3clFbw">
                    <node concept="2OqwBi" id="1jfLtDTPIkM" role="2Oq$k0">
                      <node concept="2GrUjf" id="1jfLtDTPIkP" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDTPIkr" resolve="l" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTPIkQ" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1jfLtDTPIkR" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="1jfLtDTPIkS" role="37wK5m">
                        <node concept="37vLTw" id="1jfLtDTPIkV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDTPIcM" resolve="refLinks" />
                        </node>
                        <node concept="34jXtK" id="1jfLtDTPIkW" role="2OqNvi">
                          <node concept="37vLTw" id="1jfLtDTPIkY" role="25WWJ7">
                            <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1jfLtDTPIkZ" role="3clFbx">
                    <node concept="3clFbF" id="1jfLtDTPIl0" role="3cqZAp">
                      <node concept="2OqwBi" id="1jfLtDTPIl2" role="3clFbG">
                        <node concept="2JrnkZ" id="1jfLtDTPIl5" role="2Oq$k0">
                          <node concept="2OqwBi" id="1jfLtDTPIl7" role="2JrQYb">
                            <node concept="37vLTw" id="1jfLtDTPIla" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jfLtDTPIcA" resolve="refSources" />
                            </node>
                            <node concept="34jXtK" id="1jfLtDTPIlb" role="2OqNvi">
                              <node concept="37vLTw" id="1jfLtDTPIld" role="25WWJ7">
                                <ref role="3cqZAo" node="1jfLtDTPIjl" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1jfLtDTPIle" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                          <node concept="2GrUjf" id="1jfLtDTPIlf" role="37wK5m">
                            <ref role="2Gs0qQ" node="1jfLtDTPIkr" resolve="l" />
                          </node>
                          <node concept="2JrnkZ" id="1jfLtDTPIlg" role="37wK5m">
                            <node concept="37vLTw" id="1jfLtDTPIli" role="2JrQYb">
                              <ref role="3cqZAo" node="1jfLtDTPIjZ" resolve="target" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTPIlj" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTPIlk" role="jymVt">
      <property role="TrG5h" value="unescape" />
      <node concept="3Tm6S6" id="1jfLtDTPIlo" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTPIlp" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1jfLtDTPIlq" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="1jfLtDTPIls" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTPIlt" role="3clF47">
        <node concept="3cpWs6" id="1jfLtDTPIlu" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIlv" role="3cqZAk">
            <node concept="2OqwBi" id="1jfLtDTPIly" role="2Oq$k0">
              <node concept="2OqwBi" id="1jfLtDTPIl_" role="2Oq$k0">
                <node concept="37vLTw" id="1jfLtDTPIlC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTPIlq" resolve="value" />
                </node>
                <node concept="liA8E" id="1jfLtDTPIlD" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="3cpWs3" id="1jfLtDTPIlE" role="37wK5m">
                    <node concept="10M0yZ" id="1jfLtDTPIlH" role="3uHU7B">
                      <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                      <ref role="3cqZAo" node="1jfLtDTPIaY" resolve="BS" />
                    </node>
                    <node concept="Xl_RD" id="1jfLtDTPIlI" role="3uHU7w">
                      <property role="Xl_RC" value="t" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="1jfLtDTPIlJ" role="37wK5m">
                    <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                    <ref role="3cqZAo" node="1jfLtDTPIaN" resolve="TAB" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1jfLtDTPIlK" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="3cpWs3" id="1jfLtDTPIlL" role="37wK5m">
                  <node concept="10M0yZ" id="1jfLtDTPIlO" role="3uHU7B">
                    <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                    <ref role="3cqZAo" node="1jfLtDTPIaY" resolve="BS" />
                  </node>
                  <node concept="Xl_RD" id="1jfLtDTPIlP" role="3uHU7w">
                    <property role="Xl_RC" value="n" />
                  </node>
                </node>
                <node concept="10M0yZ" id="1jfLtDTPIlQ" role="37wK5m">
                  <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                  <ref role="3cqZAo" node="1jfLtDTPIaC" resolve="NL" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1jfLtDTPIlR" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
              <node concept="3cpWs3" id="1jfLtDTPIlS" role="37wK5m">
                <node concept="10M0yZ" id="1jfLtDTPIlV" role="3uHU7B">
                  <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                  <ref role="3cqZAo" node="1jfLtDTPIaY" resolve="BS" />
                </node>
                <node concept="10M0yZ" id="1jfLtDTPIlW" role="3uHU7w">
                  <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                  <ref role="3cqZAo" node="1jfLtDTPIaY" resolve="BS" />
                </node>
              </node>
              <node concept="10M0yZ" id="1jfLtDTPIlX" role="37wK5m">
                <ref role="1PxDUh" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                <ref role="3cqZAo" node="1jfLtDTPIaY" resolve="BS" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTPIlY" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTPIlZ" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3Tm6S6" id="1jfLtDTPIm3" role="1B3o_S" />
      <node concept="3Tqbb2" id="1jfLtDTPIm4" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDTPIm5" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="1jfLtDTPIm7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTPIm8" role="3clF47">
        <node concept="3clFbJ" id="1jfLtDTPIm9" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPImc" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPImf" role="2Oq$k0">
              <property role="Xl_RC" value="TSDeclarationFile" />
            </node>
            <node concept="liA8E" id="1jfLtDTPImg" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPImh" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPImi" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPImj" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPImk" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPImm" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPImo" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:1jfLtDTvUXv" resolve="TSDeclarationFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPImp" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIms" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPImv" role="2Oq$k0">
              <property role="Xl_RC" value="TSAmbientDeclaration" />
            </node>
            <node concept="liA8E" id="1jfLtDTPImw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPImx" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPImy" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPImz" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIm$" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPImA" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPImC" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6gb2_Z" resolve="TSAmbientDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPImD" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPImG" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPImJ" role="2Oq$k0">
              <property role="Xl_RC" value="TSTypeAlias" />
            </node>
            <node concept="liA8E" id="1jfLtDTPImK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPImL" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPImM" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPImN" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPImO" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPImQ" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPImS" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:1jfLtDTxE_B" resolve="TSTypeAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPImT" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPImW" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPImZ" role="2Oq$k0">
              <property role="Xl_RC" value="TSTypeReference" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIn0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIn1" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIn2" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIn3" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIn4" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIn6" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIn8" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIn9" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPInc" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPInf" role="2Oq$k0">
              <property role="Xl_RC" value="TSObjectType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIng" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPInh" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIni" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPInj" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPInk" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPInm" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIno" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6fF6du" resolve="TSObjectType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPInp" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIns" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPInv" role="2Oq$k0">
              <property role="Xl_RC" value="TSPropertySignature" />
            </node>
            <node concept="liA8E" id="1jfLtDTPInw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPInx" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIny" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPInz" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIn$" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPInA" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPInC" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPInD" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPInG" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPInJ" role="2Oq$k0">
              <property role="Xl_RC" value="TSFunctionType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPInK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPInL" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPInM" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPInN" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPInO" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPInQ" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPInS" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPInT" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPInW" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPInZ" role="2Oq$k0">
              <property role="Xl_RC" value="TSFunctionTypeParameter" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIo0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIo1" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIo2" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIo3" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIo4" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIo6" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIo8" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIo9" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIoc" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIof" role="2Oq$k0">
              <property role="Xl_RC" value="TSArrayType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIog" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIoh" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIoi" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIoj" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIok" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIom" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIoo" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1afZ" resolve="TSArrayType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIop" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIos" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIov" role="2Oq$k0">
              <property role="Xl_RC" value="TSUnionType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIow" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIox" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIoy" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIoz" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIo$" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIoA" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIoC" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIoD" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIoG" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIoJ" role="2Oq$k0">
              <property role="Xl_RC" value="TSStringType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIoK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIoL" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIoM" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIoN" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIoO" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIoQ" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIoS" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5v$" resolve="TSStringType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIoT" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIoW" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIoZ" role="2Oq$k0">
              <property role="Xl_RC" value="TSNumberType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIp0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIp1" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIp2" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIp3" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIp4" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIp6" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIp8" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5um" resolve="TSNumberType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIp9" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIpc" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIpf" role="2Oq$k0">
              <property role="Xl_RC" value="TSBooleanType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIpg" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIph" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIpi" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIpj" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIpk" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIpm" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIpo" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5ta" resolve="TSBooleanType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIpp" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIps" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIpv" role="2Oq$k0">
              <property role="Xl_RC" value="TSVoidType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIpw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIpx" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIpy" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIpz" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIp$" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIpA" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIpC" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIpD" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIpG" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIpJ" role="2Oq$k0">
              <property role="Xl_RC" value="TSNullType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIpK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIpL" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIpM" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIpN" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIpO" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIpQ" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIpS" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1a85" resolve="TSNullType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIpT" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIpW" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIpZ" role="2Oq$k0">
              <property role="Xl_RC" value="TSUndefinedType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIq0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIq1" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIq2" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIq3" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIq4" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIq6" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIq8" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1aaA" resolve="TSUndefinedType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIq9" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIqc" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIqf" role="2Oq$k0">
              <property role="Xl_RC" value="TSUnknownType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIqg" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIqh" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIqi" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIqj" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIqk" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIqm" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIqo" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6g8Ln6" resolve="TSUnknownType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTPIqp" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTPIqs" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDTPIqv" role="2Oq$k0">
              <property role="Xl_RC" value="TSNeverType" />
            </node>
            <node concept="liA8E" id="1jfLtDTPIqw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDTPIqx" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTPIm5" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDTPIqy" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDTPIqz" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDTPIq$" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDTPIqA" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDTPIqC" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6gni9v" resolve="TSNeverType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTPIqD" role="3cqZAp">
          <node concept="10Nm6u" id="1jfLtDTPIqE" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1jfLtDTQ19W">
    <property role="TrG5h" value="TSDtsStubExtractor" />
    <node concept="3Tm1VV" id="1jfLtDTQ19Y" role="1B3o_S" />
    <node concept="3clFbW" id="1jfLtDTQ19Z" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDTQ1a0" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDTQ1a3" role="1B3o_S" />
      <node concept="3clFbS" id="1jfLtDTQ1a4" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1jfLtDTQ1a5" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTQ1a6" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3Tm1VV" id="1jfLtDTQ1aa" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTQ1ab" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1jfLtDTQ1ac" role="3clF46">
        <property role="TrG5h" value="projectDir" />
        <node concept="3uibUv" id="1jfLtDTQ1ae" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTQ1af" role="3clF46">
        <property role="TrG5h" value="specifier" />
        <node concept="3uibUv" id="1jfLtDTQ1ah" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTQ1ai" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTQ1aj" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTQ1an" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTQ1ap" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aq" role="1PaTwD">
              <property role="3oM_SC" value="sidecar" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ar" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1as" role="1PaTwD">
              <property role="3oM_SC" value="spawned" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1at" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1au" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1av" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aw" role="1PaTwD">
              <property role="3oM_SC" value="now;" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ax" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ay" role="1PaTwD">
              <property role="3oM_SC" value="long-lived" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1az" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1a$" role="1PaTwD">
              <property role="3oM_SC" value="over" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1a_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aA" role="1PaTwD">
              <property role="3oM_SC" value="CLI's" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aB" role="1PaTwD">
              <property role="3oM_SC" value="--stdio" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aC" role="1PaTwD">
              <property role="3oM_SC" value="mode" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aD" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTQ1aE" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTQ1aI" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTQ1aK" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aL" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aM" role="1PaTwD">
              <property role="3oM_SC" value="interactive" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aN" role="1PaTwD">
              <property role="3oM_SC" value="re-import" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aO" role="1PaTwD">
              <property role="3oM_SC" value="wants." />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aP" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aQ" role="1PaTwD">
              <property role="3oM_SC" value="*Importing" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aR" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aS" role="1PaTwD">
              <property role="3oM_SC" value=".d.ts*" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aT" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1aU" role="1PaTwD">
              <property role="3oM_SC" value="ROADMAP.md." />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1jfLtDTQ1aV" role="3cqZAp">
          <node concept="3clFbS" id="1jfLtDTQ1aX" role="1zxBo7">
            <node concept="3cpWs8" id="1jfLtDTQ1aY" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1b1" role="3cpWs9">
                <property role="TrG5h" value="command" />
                <node concept="_YKpA" id="1jfLtDTQ1b3" role="1tU5fm">
                  <node concept="3uibUv" id="1jfLtDTQ1b5" role="_ZDj9">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1jfLtDTQ1b6" role="33vP2m">
                  <node concept="Tc6Ow" id="1jfLtDTQ1b8" role="2ShVmc">
                    <node concept="3uibUv" id="1jfLtDTQ1b9" role="HW$YZ">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1ba" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1bc" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1bf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1bg" role="2OqNvi">
                  <node concept="2YIFZM" id="1jfLtDTQ1bi" role="25WWJ7">
                    <ref role="1Pybhc" node="1jfLtDTQ19W" resolve="TSDtsStubExtractor" />
                    <ref role="37wK5l" node="1jfLtDTQ1ef" resolve="nodeExecutable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1bj" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1bl" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1bo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1bp" role="2OqNvi">
                  <node concept="3cpWs3" id="1jfLtDTQ1br" role="25WWJ7">
                    <node concept="37vLTw" id="1jfLtDTQ1bu" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDTQ1ac" resolve="projectDir" />
                    </node>
                    <node concept="Xl_RD" id="1jfLtDTQ1bv" role="3uHU7w">
                      <property role="Xl_RC" value="/build/dts-extract/src/cli.js" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1bw" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1by" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1b_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1bA" role="2OqNvi">
                  <node concept="Xl_RD" id="1jfLtDTQ1bC" role="25WWJ7">
                    <property role="Xl_RC" value="--stream" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1bD" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1bF" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1bI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1bJ" role="2OqNvi">
                  <node concept="Xl_RD" id="1jfLtDTQ1bL" role="25WWJ7">
                    <property role="Xl_RC" value="--cwd" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1bM" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1bO" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1bR" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1bS" role="2OqNvi">
                  <node concept="37vLTw" id="1jfLtDTQ1bU" role="25WWJ7">
                    <ref role="3cqZAo" node="1jfLtDTQ1ac" resolve="projectDir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1bV" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1bX" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1c0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                </node>
                <node concept="TSZUe" id="1jfLtDTQ1c1" role="2OqNvi">
                  <node concept="37vLTw" id="1jfLtDTQ1c3" role="25WWJ7">
                    <ref role="3cqZAo" node="1jfLtDTQ1af" resolve="specifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTQ1c4" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1c7" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1jfLtDTQ1c9" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ProcessBuilder" resolve="ProcessBuilder" />
                </node>
                <node concept="2ShNRf" id="1jfLtDTQ1ca" role="33vP2m">
                  <node concept="1pGfFk" id="1jfLtDTQ1cc" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~ProcessBuilder.&lt;init&gt;(java.util.List)" resolve="ProcessBuilder" />
                    <node concept="37vLTw" id="1jfLtDTQ1cd" role="37wK5m">
                      <ref role="3cqZAo" node="1jfLtDTQ1b1" resolve="command" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1ce" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1cg" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1cj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1c7" resolve="builder" />
                </node>
                <node concept="liA8E" id="1jfLtDTQ1ck" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ProcessBuilder.redirectErrorStream(boolean)" resolve="redirectErrorStream" />
                  <node concept="3clFbT" id="1jfLtDTQ1cl" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTQ1cm" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1cp" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <node concept="3uibUv" id="1jfLtDTQ1cr" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
                </node>
                <node concept="2OqwBi" id="1jfLtDTQ1cs" role="33vP2m">
                  <node concept="37vLTw" id="1jfLtDTQ1cv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDTQ1c7" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTQ1cw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ProcessBuilder.start()" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTQ1cx" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1c$" role="3cpWs9">
                <property role="TrG5h" value="out" />
                <node concept="3uibUv" id="1jfLtDTQ1cA" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="1jfLtDTQ1cB" role="33vP2m">
                  <node concept="1pGfFk" id="1jfLtDTQ1cD" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTQ1cE" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1cH" role="3cpWs9">
                <property role="TrG5h" value="reader" />
                <node concept="3uibUv" id="1jfLtDTQ1cJ" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="1jfLtDTQ1cK" role="33vP2m">
                  <node concept="1pGfFk" id="1jfLtDTQ1cM" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="1jfLtDTQ1cN" role="37wK5m">
                      <node concept="1pGfFk" id="1jfLtDTQ1cP" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="1jfLtDTQ1cQ" role="37wK5m">
                          <node concept="37vLTw" id="1jfLtDTQ1cT" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDTQ1cp" resolve="process" />
                          </node>
                          <node concept="liA8E" id="1jfLtDTQ1cU" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Process.getInputStream()" resolve="getInputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDTQ1cV" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDTQ1cY" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="3uibUv" id="1jfLtDTQ1d0" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="1jfLtDTQ1d1" role="33vP2m">
                  <node concept="37vLTw" id="1jfLtDTQ1d4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDTQ1cH" resolve="reader" />
                  </node>
                  <node concept="liA8E" id="1jfLtDTQ1d5" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="1jfLtDTQ1d6" role="3cqZAp">
              <node concept="3y3z36" id="1jfLtDTQ1d9" role="2$JKZa">
                <node concept="37vLTw" id="1jfLtDTQ1dc" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDTQ1cY" resolve="line" />
                </node>
                <node concept="10Nm6u" id="1jfLtDTQ1dd" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1jfLtDTQ1de" role="2LFqv$">
                <node concept="3clFbF" id="1jfLtDTQ1df" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTQ1dh" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTQ1dk" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTQ1c$" resolve="out" />
                    </node>
                    <node concept="liA8E" id="1jfLtDTQ1dl" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="37vLTw" id="1jfLtDTQ1dm" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDTQ1cY" resolve="line" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDTQ1dn" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDTQ1dp" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTQ1ds" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDTQ1c$" resolve="out" />
                    </node>
                    <node concept="liA8E" id="1jfLtDTQ1dt" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(char)" resolve="append" />
                      <node concept="10QFUN" id="1jfLtDTQ1du" role="37wK5m">
                        <node concept="10Pfzv" id="1jfLtDTQ1dx" role="10QFUM" />
                        <node concept="3cmrfG" id="1jfLtDTQ1dy" role="10QFUP">
                          <property role="3cmrfH" value="10" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDTQ1dz" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDTQ1d_" role="3clFbG">
                    <node concept="37vLTw" id="1jfLtDTQ1dC" role="37vLTJ">
                      <ref role="3cqZAo" node="1jfLtDTQ1cY" resolve="line" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDTQ1dD" role="37vLTx">
                      <node concept="37vLTw" id="1jfLtDTQ1dG" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDTQ1cH" resolve="reader" />
                      </node>
                      <node concept="liA8E" id="1jfLtDTQ1dH" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1dI" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1dK" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1dN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1cH" resolve="reader" />
                </node>
                <node concept="liA8E" id="1jfLtDTQ1dO" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDTQ1dP" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1dR" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDTQ1dU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1cp" resolve="process" />
                </node>
                <node concept="liA8E" id="1jfLtDTQ1dV" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Process.waitFor()" resolve="waitFor" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDTQ1dW" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1dX" role="3cqZAk">
                <node concept="37vLTw" id="1jfLtDTQ1e0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDTQ1c$" resolve="out" />
                </node>
                <node concept="liA8E" id="1jfLtDTQ1e1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1jfLtDTQ1e2" role="1zxBo5">
            <node concept="XOnhg" id="1jfLtDTQ1e6" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="1jfLtDTQ1e8" role="1tU5fm">
                <node concept="3uibUv" id="1jfLtDTQ1ea" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1jfLtDTQ1eb" role="1zc67A">
              <node concept="3cpWs6" id="1jfLtDTQ1ec" role="3cqZAp">
                <node concept="10Nm6u" id="1jfLtDTQ1ed" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTQ1ee" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDTQ1ef" role="jymVt">
      <property role="TrG5h" value="nodeExecutable" />
      <node concept="3Tm1VV" id="1jfLtDTQ1ej" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTQ1ek" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1jfLtDTQ1el" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTQ1em" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTQ1eq" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTQ1es" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1et" role="1PaTwD">
              <property role="3oM_SC" value="GUI-launched" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eu" role="1PaTwD">
              <property role="3oM_SC" value="IDE" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ev" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ew" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ex" role="1PaTwD">
              <property role="3oM_SC" value="inherit" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ey" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1ez" role="1PaTwD">
              <property role="3oM_SC" value="login" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1e$" role="1PaTwD">
              <property role="3oM_SC" value="shell's" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1e_" role="1PaTwD">
              <property role="3oM_SC" value="PATH," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eA" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eC" role="1PaTwD">
              <property role="3oM_SC" value="usual" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eD" role="1PaTwD">
              <property role="3oM_SC" value="install" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eE" role="1PaTwD">
              <property role="3oM_SC" value="locations" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eF" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTQ1eG" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTQ1eK" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTQ1eM" role="1PaTwD">
              <property role="3oM_SC" value="tried" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eN" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eO" role="1PaTwD">
              <property role="3oM_SC" value="falling" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eP" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eQ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eS" role="1PaTwD">
              <property role="3oM_SC" value="bare" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTQ1eT" role="1PaTwD">
              <property role="3oM_SC" value="name." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTQ1eU" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTQ1eX" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="_YKpA" id="1jfLtDTQ1eZ" role="1tU5fm">
              <node concept="3uibUv" id="1jfLtDTQ1f1" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="1jfLtDTQ1f2" role="33vP2m">
              <node concept="Tc6Ow" id="1jfLtDTQ1f4" role="2ShVmc">
                <node concept="3uibUv" id="1jfLtDTQ1f5" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTQ1f6" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTQ1f8" role="3clFbG">
            <node concept="37vLTw" id="1jfLtDTQ1fb" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDTQ1eX" resolve="candidates" />
            </node>
            <node concept="TSZUe" id="1jfLtDTQ1fc" role="2OqNvi">
              <node concept="Xl_RD" id="1jfLtDTQ1fe" role="25WWJ7">
                <property role="Xl_RC" value="/opt/homebrew/bin/node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTQ1ff" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTQ1fh" role="3clFbG">
            <node concept="37vLTw" id="1jfLtDTQ1fk" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDTQ1eX" resolve="candidates" />
            </node>
            <node concept="TSZUe" id="1jfLtDTQ1fl" role="2OqNvi">
              <node concept="Xl_RD" id="1jfLtDTQ1fn" role="25WWJ7">
                <property role="Xl_RC" value="/usr/local/bin/node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTQ1fo" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTQ1fq" role="3clFbG">
            <node concept="37vLTw" id="1jfLtDTQ1ft" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDTQ1eX" resolve="candidates" />
            </node>
            <node concept="TSZUe" id="1jfLtDTQ1fu" role="2OqNvi">
              <node concept="Xl_RD" id="1jfLtDTQ1fw" role="25WWJ7">
                <property role="Xl_RC" value="/usr/bin/node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1jfLtDTQ1fx" role="3cqZAp">
          <node concept="2GrKxI" id="1jfLtDTQ1f_" role="2Gsz3X">
            <property role="TrG5h" value="c" />
          </node>
          <node concept="37vLTw" id="1jfLtDTQ1fA" role="2GsD0m">
            <ref role="3cqZAo" node="1jfLtDTQ1eX" resolve="candidates" />
          </node>
          <node concept="3clFbS" id="1jfLtDTQ1fB" role="2LFqv$">
            <node concept="3clFbJ" id="1jfLtDTQ1fC" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDTQ1fF" role="3clFbw">
                <node concept="2ShNRf" id="1jfLtDTQ1fI" role="2Oq$k0">
                  <node concept="1pGfFk" id="1jfLtDTQ1fK" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="2GrUjf" id="1jfLtDTQ1fL" role="37wK5m">
                      <ref role="2Gs0qQ" node="1jfLtDTQ1f_" resolve="c" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1jfLtDTQ1fM" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.canExecute()" resolve="canExecute" />
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDTQ1fN" role="3clFbx">
                <node concept="3cpWs6" id="1jfLtDTQ1fO" role="3cqZAp">
                  <node concept="2GrUjf" id="1jfLtDTQ1fP" role="3cqZAk">
                    <ref role="2Gs0qQ" node="1jfLtDTQ1f_" resolve="c" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTQ1fQ" role="3cqZAp">
          <node concept="Xl_RD" id="1jfLtDTQ1fR" role="3cqZAk">
            <property role="Xl_RC" value="node" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1jfLtDTS3Aj">
    <property role="TrG5h" value="TSDtsStubModelDescriptor" />
    <node concept="3Tm1VV" id="1jfLtDTS3Al" role="1B3o_S" />
    <node concept="3uibUv" id="1jfLtDTS3Am" role="1zkMxy">
      <ref role="3uigEE" to="w1kc:~RegularModelDescriptor" resolve="RegularModelDescriptor" />
    </node>
    <node concept="312cEg" id="1jfLtDTS3An" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myProjectDir" />
      <node concept="3Tm6S6" id="1jfLtDTS3Aq" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTS3Ar" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="312cEg" id="1jfLtDTS3As" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="mySpecifier" />
      <node concept="3Tm6S6" id="1jfLtDTS3Av" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTS3Aw" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTS3Ax" role="jymVt" />
    <node concept="3clFbW" id="1jfLtDTS3Ay" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDTS3Az" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDTS3AA" role="1B3o_S" />
      <node concept="37vLTG" id="1jfLtDTS3AB" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="1jfLtDTS3AD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTS3AE" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="1jfLtDTS3AG" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTS3AH" role="3clF46">
        <property role="TrG5h" value="projectDir" />
        <node concept="3uibUv" id="1jfLtDTS3AJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDTS3AK" role="3clF46">
        <property role="TrG5h" value="specifier" />
        <node concept="3uibUv" id="1jfLtDTS3AM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTS3AN" role="3clF47">
        <node concept="XkiVB" id="1jfLtDTS3AO" role="3cqZAp">
          <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="RegularModelDescriptor" />
          <node concept="37vLTw" id="1jfLtDTS3AP" role="37wK5m">
            <ref role="3cqZAo" node="1jfLtDTS3AB" resolve="reference" />
          </node>
          <node concept="37vLTw" id="1jfLtDTS3AQ" role="37wK5m">
            <ref role="3cqZAo" node="1jfLtDTS3AE" resolve="source" />
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTS3AR" role="3cqZAp">
          <node concept="37vLTI" id="1jfLtDTS3AT" role="3clFbG">
            <node concept="2OqwBi" id="1jfLtDTS3AW" role="37vLTJ">
              <node concept="Xjq3P" id="1jfLtDTS3AZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="1jfLtDTS3B0" role="2OqNvi">
                <ref role="2Oxat5" node="1jfLtDTS3An" resolve="myProjectDir" />
              </node>
            </node>
            <node concept="37vLTw" id="1jfLtDTS3B1" role="37vLTx">
              <ref role="3cqZAo" node="1jfLtDTS3AH" resolve="projectDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTS3B2" role="3cqZAp">
          <node concept="37vLTI" id="1jfLtDTS3B4" role="3clFbG">
            <node concept="2OqwBi" id="1jfLtDTS3B7" role="37vLTJ">
              <node concept="Xjq3P" id="1jfLtDTS3Ba" role="2Oq$k0" />
              <node concept="2OwXpG" id="1jfLtDTS3Bb" role="2OqNvi">
                <ref role="2Oxat5" node="1jfLtDTS3As" resolve="mySpecifier" />
              </node>
            </node>
            <node concept="37vLTw" id="1jfLtDTS3Bc" role="37vLTx">
              <ref role="3cqZAo" node="1jfLtDTS3AK" resolve="specifier" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTS3Bd" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTS3Be" role="jymVt">
      <property role="TrG5h" value="createModel" />
      <node concept="2AHcQZ" id="1jfLtDTS3Bi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tmbuc" id="1jfLtDTS3Bj" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDTS3Bk" role="3clF45">
        <ref role="3uigEE" to="w1kc:~ModelLoadResult" resolve="ModelLoadResult" />
        <node concept="3uibUv" id="1jfLtDTS3Bl" role="11_B2D">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDTS3Bm" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDTS3Bn" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTS3Br" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTS3Bt" role="1PaTwD">
              <property role="3oM_SC" value="Signatures" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3Bu" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3Bv" role="1PaTwD">
              <property role="3oM_SC" value="bodies," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3Bw" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3Bx" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3By" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3Bz" role="1PaTwD">
              <property role="3oM_SC" value="NO_IMPLEMENTATION" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTS3B$" role="1PaTwD">
              <property role="3oM_SC" value="says." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTS3B_" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTS3BC" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="1jfLtDTS3BE" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
            </node>
            <node concept="2ShNRf" id="1jfLtDTS3BF" role="33vP2m">
              <node concept="1pGfFk" id="1jfLtDTS3BH" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                <node concept="2OqwBi" id="1jfLtDTS3BI" role="37wK5m">
                  <node concept="Xjq3P" id="1jfLtDTS3BL" role="2Oq$k0" />
                  <node concept="liA8E" id="1jfLtDTS3BM" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jfLtDTS3BN" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDTS3BP" role="3clFbG">
            <node concept="37vLTw" id="1jfLtDTS3BS" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDTS3BC" resolve="model" />
            </node>
            <node concept="liA8E" id="1jfLtDTS3BT" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage,int)" resolve="addLanguage" />
              <node concept="2OqwBi" id="1jfLtDTS3BU" role="37wK5m">
                <node concept="35c_gC" id="1jfLtDTS3BX" role="2Oq$k0">
                  <ref role="35c_gD" to="mo8k:1jfLtDTvUXv" resolve="TSDeclarationFile" />
                </node>
                <node concept="liA8E" id="1jfLtDTS3BY" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                </node>
              </node>
              <node concept="3cmrfG" id="1jfLtDTS3BZ" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDTS3C0" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDTS3C3" role="3cpWs9">
            <property role="TrG5h" value="stream" />
            <node concept="3uibUv" id="1jfLtDTS3C5" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="1jfLtDTS3C6" role="33vP2m">
              <ref role="1Pybhc" node="1jfLtDTQ19W" resolve="TSDtsStubExtractor" />
              <ref role="37wK5l" node="1jfLtDTQ1a6" resolve="run" />
              <node concept="2OqwBi" id="1jfLtDTS3C7" role="37wK5m">
                <node concept="Xjq3P" id="1jfLtDTS3Ca" role="2Oq$k0" />
                <node concept="2OwXpG" id="1jfLtDTS3Cb" role="2OqNvi">
                  <ref role="2Oxat5" node="1jfLtDTS3An" resolve="myProjectDir" />
                </node>
              </node>
              <node concept="2OqwBi" id="1jfLtDTS3Cc" role="37wK5m">
                <node concept="Xjq3P" id="1jfLtDTS3Cf" role="2Oq$k0" />
                <node concept="2OwXpG" id="1jfLtDTS3Cg" role="2OqNvi">
                  <ref role="2Oxat5" node="1jfLtDTS3As" resolve="mySpecifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDTS3Ch" role="3cqZAp">
          <node concept="3y3z36" id="1jfLtDTS3Ck" role="3clFbw">
            <node concept="37vLTw" id="1jfLtDTS3Cn" role="3uHU7B">
              <ref role="3cqZAo" node="1jfLtDTS3C3" resolve="stream" />
            </node>
            <node concept="10Nm6u" id="1jfLtDTS3Co" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1jfLtDTS3Cp" role="3clFbx">
            <node concept="3clFbF" id="1jfLtDTS3Cq" role="3cqZAp">
              <node concept="2YIFZM" id="1jfLtDTS3Cs" role="3clFbG">
                <ref role="1Pybhc" node="1jfLtDTPIa_" resolve="TSDtsStubNodeStream" />
                <ref role="37wK5l" node="1jfLtDTPIbh" resolve="read" />
                <node concept="37vLTw" id="1jfLtDTS3Ct" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDTS3C3" resolve="stream" />
                </node>
                <node concept="37vLTw" id="1jfLtDTS3Cu" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDTS3BC" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDTS3Cv" role="3cqZAp">
          <node concept="2ShNRf" id="1jfLtDTS3Cw" role="3cqZAk">
            <node concept="1pGfFk" id="1jfLtDTS3Cy" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="w1kc:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.extapi.model.SModelData,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
              <node concept="3uibUv" id="1jfLtDTS3Cz" role="1pMfVU">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="37vLTw" id="1jfLtDTS3C$" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTS3BC" resolve="model" />
              </node>
              <node concept="Rm8GO" id="1jfLtDTS3C_" role="37wK5m">
                <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                <ref role="Rm8GQ" to="4it6:~ModelLoadingState.NO_IMPLEMENTATION" resolve="NO_IMPLEMENTATION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDTS3CA" role="jymVt" />
    <node concept="3clFb_" id="1jfLtDTS3CB" role="jymVt">
      <property role="TrG5h" value="isReadOnly" />
      <node concept="2AHcQZ" id="1jfLtDTS3CF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="1jfLtDTS3CG" role="1B3o_S" />
      <node concept="10P_77" id="1jfLtDTS3CH" role="3clF45" />
      <node concept="3clFbS" id="1jfLtDTS3CI" role="3clF47">
        <node concept="3cpWs6" id="1jfLtDTS3CJ" role="3cqZAp">
          <node concept="3clFbT" id="1jfLtDTS3CK" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

