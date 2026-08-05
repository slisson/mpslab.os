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
    <import index="wy2b" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.google.gson(MPS.IDEA.Modules/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" implicit="true" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
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
            <property role="TrG5h" value="json" />
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
        <node concept="3clFbJ" id="1jfLtDU83Tn" role="3cqZAp">
          <node concept="3y3z36" id="1jfLtDU83Tq" role="3clFbw">
            <node concept="37vLTw" id="1jfLtDU83Tt" role="3uHU7B">
              <ref role="3cqZAo" node="1jfLtDTS3C3" resolve="json" />
            </node>
            <node concept="10Nm6u" id="1jfLtDU83Tu" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1jfLtDU83Tv" role="3clFbx">
            <node concept="3clFbF" id="1jfLtDU83Tw" role="3cqZAp">
              <node concept="2YIFZM" id="1jfLtDU83Ty" role="3clFbG">
                <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                <ref role="37wK5l" node="1jfLtDU6Tyx" resolve="read" />
                <node concept="37vLTw" id="1jfLtDU83Tz" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDTS3C3" resolve="json" />
                </node>
                <node concept="37vLTw" id="1jfLtDU83T$" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDTS3BC" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDU83T_" role="3cqZAp">
          <node concept="2ShNRf" id="1jfLtDU83TA" role="3cqZAk">
            <node concept="1pGfFk" id="1jfLtDU83TC" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="w1kc:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.extapi.model.SModelData,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
              <node concept="3uibUv" id="1jfLtDU83TD" role="1pMfVU">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="37vLTw" id="1jfLtDU83TE" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDTS3BC" resolve="model" />
              </node>
              <node concept="Rm8GO" id="1jfLtDU83TF" role="37wK5m">
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
  <node concept="312cEu" id="1jfLtDU6Tyn">
    <property role="TrG5h" value="TSDtsStubJson" />
    <node concept="3Tm1VV" id="1jfLtDU6Typ" role="1B3o_S" />
    <node concept="3clFbW" id="1jfLtDU6Tyq" role="jymVt">
      <node concept="3cqZAl" id="1jfLtDU6Tyr" role="3clF45" />
      <node concept="3Tm1VV" id="1jfLtDU6Tyu" role="1B3o_S" />
      <node concept="3clFbS" id="1jfLtDU6Tyv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1jfLtDU6Tyw" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDU6Tyx" role="jymVt">
      <property role="TrG5h" value="read" />
      <node concept="3Tm1VV" id="1jfLtDU6Ty_" role="1B3o_S" />
      <node concept="3cqZAl" id="1jfLtDU6TyA" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDU6TyB" role="3clF46">
        <property role="TrG5h" value="json" />
        <node concept="3uibUv" id="1jfLtDU6TyD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDU6TyE" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="1jfLtDU6TyG" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDU6TyH" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDU6TyI" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDU6TyM" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDU6TyO" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyP" role="1PaTwD">
              <property role="3oM_SC" value="extractor's" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyQ" role="1PaTwD">
              <property role="3oM_SC" value="stub" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyR" role="1PaTwD">
              <property role="3oM_SC" value="schema," />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyS" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyT" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyV" role="1PaTwD">
              <property role="3oM_SC" value="contract" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyW" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyY" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TyZ" role="1PaTwD">
              <property role="3oM_SC" value="sides." />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tz0" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tz1" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tz2" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDU6Tz3" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDU6Tz7" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDU6Tz9" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tza" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzb" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzc" role="1PaTwD">
              <property role="3oM_SC" value="comes" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzd" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tze" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzf" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzg" role="1PaTwD">
              <property role="3oM_SC" value="takes" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzh" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzi" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzj" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzk" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6Tzl" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDU6Tzm" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDU6Tzp" role="3cpWs9">
            <property role="TrG5h" value="parsed" />
            <node concept="3uibUv" id="1jfLtDU6Tzr" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
            </node>
            <node concept="2YIFZM" id="1jfLtDU6Tzs" role="33vP2m">
              <ref role="1Pybhc" to="wy2b:~JsonParser" resolve="JsonParser" />
              <ref role="37wK5l" to="wy2b:~JsonParser.parseString(java.lang.String)" resolve="parseString" />
              <node concept="37vLTw" id="1jfLtDU6Tzt" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TyB" resolve="json" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1jfLtDU6Tzu" role="3cqZAp">
          <node concept="2GrKxI" id="1jfLtDU6Tzy" role="2Gsz3X">
            <property role="TrG5h" value="element" />
          </node>
          <node concept="2OqwBi" id="1jfLtDU6Tzz" role="2GsD0m">
            <node concept="37vLTw" id="1jfLtDU6TzA" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDU6Tzp" resolve="parsed" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TzB" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TzC" role="2LFqv$">
            <node concept="3cpWs8" id="1jfLtDU6TzD" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TzG" role="3cpWs9">
                <property role="TrG5h" value="mo" />
                <node concept="3uibUv" id="1jfLtDU6TzI" role="1tU5fm">
                  <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                </node>
                <node concept="2OqwBi" id="1jfLtDU6TzJ" role="33vP2m">
                  <node concept="2GrUjf" id="1jfLtDU6TzM" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1jfLtDU6Tzy" resolve="element" />
                  </node>
                  <node concept="liA8E" id="1jfLtDU6TzN" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6TzO" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TzR" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3Tqbb2" id="1jfLtDU6TzT" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1jfLtDTvUXv" resolve="TSDeclarationFile" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6TzU" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6TzW" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TzY" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:1jfLtDTvUXv" resolve="TSDeclarationFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6TzZ" role="3cqZAp">
              <node concept="37vLTI" id="1jfLtDU6T$1" role="3clFbG">
                <node concept="2OqwBi" id="1jfLtDU6T$4" role="37vLTJ">
                  <node concept="37vLTw" id="1jfLtDU6T$7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDU6TzR" resolve="file" />
                  </node>
                  <node concept="3TrcHB" id="1jfLtDU6T$8" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2YIFZM" id="1jfLtDU6T$9" role="37vLTx">
                  <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                  <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                  <node concept="37vLTw" id="1jfLtDU6T$a" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TzG" resolve="mo" />
                  </node>
                  <node concept="Xl_RD" id="1jfLtDU6T$b" role="37wK5m">
                    <property role="Xl_RC" value="specifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6T$c" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDU6T$e" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDU6T$h" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TyE" resolve="model" />
                </node>
                <node concept="liA8E" id="1jfLtDU6T$i" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="2JrnkZ" id="1jfLtDU6T$j" role="37wK5m">
                    <node concept="37vLTw" id="1jfLtDU6T$l" role="2JrQYb">
                      <ref role="3cqZAo" node="1jfLtDU6TzR" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1jfLtDU6T$m" role="3cqZAp" />
            <node concept="3cpWs8" id="1jfLtDU6T$n" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6T$q" role="3cpWs9">
                <property role="TrG5h" value="namedNames" />
                <node concept="_YKpA" id="1jfLtDU6T$s" role="1tU5fm">
                  <node concept="3uibUv" id="1jfLtDU6T$u" role="_ZDj9">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1jfLtDU6T$v" role="33vP2m">
                  <node concept="Tc6Ow" id="1jfLtDU6T$x" role="2ShVmc">
                    <node concept="3uibUv" id="1jfLtDU6T$y" role="HW$YZ">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6T$z" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6T$A" role="3cpWs9">
                <property role="TrG5h" value="namedNodes" />
                <node concept="_YKpA" id="1jfLtDU6T$C" role="1tU5fm">
                  <node concept="3Tqbb2" id="1jfLtDU6T$E" role="_ZDj9" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6T$F" role="33vP2m">
                  <node concept="Tc6Ow" id="1jfLtDU6T$H" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6T$I" role="HW$YZ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6T$J" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6T$M" role="3cpWs9">
                <property role="TrG5h" value="pending" />
                <node concept="_YKpA" id="1jfLtDU6T$O" role="1tU5fm">
                  <node concept="3Tqbb2" id="1jfLtDU6T$Q" role="_ZDj9">
                    <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1jfLtDU6T$R" role="33vP2m">
                  <node concept="Tc6Ow" id="1jfLtDU6T$T" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6T$U" role="HW$YZ">
                      <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6T$V" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6T$Y" role="3cpWs9">
                <property role="TrG5h" value="pendingNames" />
                <node concept="_YKpA" id="1jfLtDU6T_0" role="1tU5fm">
                  <node concept="3uibUv" id="1jfLtDU6T_2" role="_ZDj9">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1jfLtDU6T_3" role="33vP2m">
                  <node concept="Tc6Ow" id="1jfLtDU6T_5" role="2ShVmc">
                    <node concept="3uibUv" id="1jfLtDU6T_6" role="HW$YZ">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1jfLtDU6T_7" role="3cqZAp" />
            <node concept="2Gpval" id="1jfLtDU6T_8" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDU6T_c" role="2Gsz3X">
                <property role="TrG5h" value="de" />
              </node>
              <node concept="2OqwBi" id="1jfLtDU6T_d" role="2GsD0m">
                <node concept="37vLTw" id="1jfLtDU6T_g" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TzG" resolve="mo" />
                </node>
                <node concept="liA8E" id="1jfLtDU6T_h" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonArray(java.lang.String)" resolve="getAsJsonArray" />
                  <node concept="Xl_RD" id="1jfLtDU6T_i" role="37wK5m">
                    <property role="Xl_RC" value="declarations" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDU6T_j" role="2LFqv$">
                <node concept="3cpWs8" id="1jfLtDU6T_k" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6T_n" role="3cpWs9">
                    <property role="TrG5h" value="d" />
                    <node concept="3uibUv" id="1jfLtDU6T_p" role="1tU5fm">
                      <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDU6T_q" role="33vP2m">
                      <node concept="2GrUjf" id="1jfLtDU6T_t" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDU6T_c" resolve="de" />
                      </node>
                      <node concept="liA8E" id="1jfLtDU6T_u" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6T_v" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6T_y" role="3cpWs9">
                    <property role="TrG5h" value="t" />
                    <node concept="3Tqbb2" id="1jfLtDU6T_$" role="1tU5fm" />
                    <node concept="2YIFZM" id="1jfLtDU6T__" role="33vP2m">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                      <node concept="2OqwBi" id="1jfLtDU6T_A" role="37wK5m">
                        <node concept="37vLTw" id="1jfLtDU6T_D" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6T_n" resolve="d" />
                        </node>
                        <node concept="liA8E" id="1jfLtDU6T_E" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonObject(java.lang.String)" resolve="getAsJsonObject" />
                          <node concept="Xl_RD" id="1jfLtDU6T_F" role="37wK5m">
                            <property role="Xl_RC" value="type" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6T_G" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6T$M" resolve="pending" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6T_H" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6T$Y" resolve="pendingNames" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jfLtDU6T_I" role="3cqZAp">
                  <node concept="3clFbC" id="1jfLtDU6T_L" role="3clFbw">
                    <node concept="37vLTw" id="1jfLtDU6T_O" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDU6T_y" resolve="t" />
                    </node>
                    <node concept="10Nm6u" id="1jfLtDU6T_P" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6T_Q" role="3clFbx">
                    <node concept="3N13vt" id="1jfLtDU6T_R" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6T_S" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6T_V" role="3cpWs9">
                    <property role="TrG5h" value="name" />
                    <node concept="3uibUv" id="1jfLtDU6T_X" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6T_Y" role="33vP2m">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                      <node concept="37vLTw" id="1jfLtDU6T_Z" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6T_n" resolve="d" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TA0" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jfLtDU6TA1" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDU6TA4" role="3clFbw">
                    <node concept="Xl_RD" id="1jfLtDU6TA7" role="2Oq$k0">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="liA8E" id="1jfLtDU6TA8" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2YIFZM" id="1jfLtDU6TA9" role="37wK5m">
                        <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                        <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                        <node concept="37vLTw" id="1jfLtDU6TAa" role="37wK5m">
                          <ref role="3cqZAo" node="1jfLtDU6T_n" resolve="d" />
                        </node>
                        <node concept="Xl_RD" id="1jfLtDU6TAb" role="37wK5m">
                          <property role="Xl_RC" value="kind" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6TAc" role="3clFbx">
                    <node concept="3cpWs8" id="1jfLtDU6TAd" role="3cqZAp">
                      <node concept="3cpWsn" id="1jfLtDU6TAg" role="3cpWs9">
                        <property role="TrG5h" value="alias" />
                        <node concept="3Tqbb2" id="1jfLtDU6TAi" role="1tU5fm">
                          <ref role="ehGHo" to="mo8k:1jfLtDTxE_B" resolve="TSTypeAlias" />
                        </node>
                        <node concept="2ShNRf" id="1jfLtDU6TAj" role="33vP2m">
                          <node concept="3zrR0B" id="1jfLtDU6TAl" role="2ShVmc">
                            <node concept="3Tqbb2" id="1jfLtDU6TAn" role="3zrR0E">
                              <ref role="ehGHo" to="mo8k:1jfLtDTxE_B" resolve="TSTypeAlias" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1jfLtDU6TAo" role="3cqZAp">
                      <node concept="37vLTI" id="1jfLtDU6TAq" role="3clFbG">
                        <node concept="2OqwBi" id="1jfLtDU6TAt" role="37vLTJ">
                          <node concept="37vLTw" id="1jfLtDU6TAw" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDU6TAg" resolve="alias" />
                          </node>
                          <node concept="3TrcHB" id="1jfLtDU6TAx" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1jfLtDU6TAy" role="37vLTx">
                          <ref role="3cqZAo" node="1jfLtDU6T_V" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1jfLtDU6TAz" role="3cqZAp">
                      <node concept="37vLTI" id="1jfLtDU6TA_" role="3clFbG">
                        <node concept="2OqwBi" id="1jfLtDU6TAC" role="37vLTJ">
                          <node concept="37vLTw" id="1jfLtDU6TAF" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDU6TAg" resolve="alias" />
                          </node>
                          <node concept="3TrEf2" id="1jfLtDU6TAG" role="2OqNvi">
                            <ref role="3Tt5mk" to="mo8k:1jfLtDTxE_E" resolve="aliasedType" />
                          </node>
                        </node>
                        <node concept="1PxgMI" id="1jfLtDU6TAH" role="37vLTx">
                          <node concept="37vLTw" id="1jfLtDU6TAK" role="1m5AlR">
                            <ref role="3cqZAo" node="1jfLtDU6T_y" resolve="t" />
                          </node>
                          <node concept="chp4Y" id="1jfLtDU6TAL" role="3oSUPX">
                            <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1jfLtDU6TAM" role="3cqZAp">
                      <node concept="2OqwBi" id="1jfLtDU6TAO" role="3clFbG">
                        <node concept="2OqwBi" id="1jfLtDU6TAR" role="2Oq$k0">
                          <node concept="37vLTw" id="1jfLtDU6TAU" role="2Oq$k0">
                            <ref role="3cqZAo" node="1jfLtDU6TzR" resolve="file" />
                          </node>
                          <node concept="3Tsc0h" id="1jfLtDU6TAV" role="2OqNvi">
                            <ref role="3TtcxE" to="mo8k:1jfLtDTvUXx" resolve="declarations" />
                          </node>
                        </node>
                        <node concept="TSZUe" id="1jfLtDU6TAW" role="2OqNvi">
                          <node concept="37vLTw" id="1jfLtDU6TAY" role="25WWJ7">
                            <ref role="3cqZAo" node="1jfLtDU6TAg" resolve="alias" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1jfLtDU6TAZ" role="3cqZAp">
                      <node concept="2OqwBi" id="1jfLtDU6TB1" role="3clFbG">
                        <node concept="37vLTw" id="1jfLtDU6TB4" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6T$q" resolve="namedNames" />
                        </node>
                        <node concept="TSZUe" id="1jfLtDU6TB5" role="2OqNvi">
                          <node concept="37vLTw" id="1jfLtDU6TB7" role="25WWJ7">
                            <ref role="3cqZAo" node="1jfLtDU6T_V" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1jfLtDU6TB8" role="3cqZAp">
                      <node concept="2OqwBi" id="1jfLtDU6TBa" role="3clFbG">
                        <node concept="37vLTw" id="1jfLtDU6TBd" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6T$A" resolve="namedNodes" />
                        </node>
                        <node concept="TSZUe" id="1jfLtDU6TBe" role="2OqNvi">
                          <node concept="37vLTw" id="1jfLtDU6TBg" role="25WWJ7">
                            <ref role="3cqZAo" node="1jfLtDU6TAg" resolve="alias" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="1jfLtDU6TBh" role="9aQIa">
                    <node concept="3clFbS" id="1jfLtDU6TBj" role="9aQI4">
                      <node concept="3cpWs8" id="1jfLtDU6TBk" role="3cqZAp">
                        <node concept="3cpWsn" id="1jfLtDU6TBn" role="3cpWs9">
                          <property role="TrG5h" value="value" />
                          <node concept="3Tqbb2" id="1jfLtDU6TBp" role="1tU5fm">
                            <ref role="ehGHo" to="mo8k:5OpYk6gb2_Z" resolve="TSAmbientDeclaration" />
                          </node>
                          <node concept="2ShNRf" id="1jfLtDU6TBq" role="33vP2m">
                            <node concept="3zrR0B" id="1jfLtDU6TBs" role="2ShVmc">
                              <node concept="3Tqbb2" id="1jfLtDU6TBu" role="3zrR0E">
                                <ref role="ehGHo" to="mo8k:5OpYk6gb2_Z" resolve="TSAmbientDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1jfLtDU6TBv" role="3cqZAp">
                        <node concept="37vLTI" id="1jfLtDU6TBx" role="3clFbG">
                          <node concept="2OqwBi" id="1jfLtDU6TB$" role="37vLTJ">
                            <node concept="37vLTw" id="1jfLtDU6TBB" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jfLtDU6TBn" resolve="value" />
                            </node>
                            <node concept="3TrcHB" id="1jfLtDU6TBC" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1jfLtDU6TBD" role="37vLTx">
                            <ref role="3cqZAo" node="1jfLtDU6T_V" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1jfLtDU6TBE" role="3cqZAp">
                        <node concept="37vLTI" id="1jfLtDU6TBG" role="3clFbG">
                          <node concept="2OqwBi" id="1jfLtDU6TBJ" role="37vLTJ">
                            <node concept="37vLTw" id="1jfLtDU6TBM" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jfLtDU6TBn" resolve="value" />
                            </node>
                            <node concept="3TrEf2" id="1jfLtDU6TBN" role="2OqNvi">
                              <ref role="3Tt5mk" to="mo8k:5OpYk6gb2A1" resolve="declaredType" />
                            </node>
                          </node>
                          <node concept="1PxgMI" id="1jfLtDU6TBO" role="37vLTx">
                            <node concept="37vLTw" id="1jfLtDU6TBR" role="1m5AlR">
                              <ref role="3cqZAo" node="1jfLtDU6T_y" resolve="t" />
                            </node>
                            <node concept="chp4Y" id="1jfLtDU6TBS" role="3oSUPX">
                              <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1jfLtDU6TBT" role="3cqZAp">
                        <node concept="2OqwBi" id="1jfLtDU6TBV" role="3clFbG">
                          <node concept="2OqwBi" id="1jfLtDU6TBY" role="2Oq$k0">
                            <node concept="37vLTw" id="1jfLtDU6TC1" role="2Oq$k0">
                              <ref role="3cqZAo" node="1jfLtDU6TzR" resolve="file" />
                            </node>
                            <node concept="3Tsc0h" id="1jfLtDU6TC2" role="2OqNvi">
                              <ref role="3TtcxE" to="mo8k:1jfLtDTvUXx" resolve="declarations" />
                            </node>
                          </node>
                          <node concept="TSZUe" id="1jfLtDU6TC3" role="2OqNvi">
                            <node concept="37vLTw" id="1jfLtDU6TC5" role="25WWJ7">
                              <ref role="3cqZAo" node="1jfLtDU6TBn" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1jfLtDU6TC6" role="3cqZAp" />
            <node concept="1Dw8fO" id="1jfLtDU6TC7" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TCa" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="1jfLtDU6TCc" role="1tU5fm" />
                <node concept="3cmrfG" id="1jfLtDU6TCd" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="1jfLtDU6TCe" role="1Dwp0S">
                <node concept="37vLTw" id="1jfLtDU6TCh" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDU6TCa" resolve="i" />
                </node>
                <node concept="2OqwBi" id="1jfLtDU6TCi" role="3uHU7w">
                  <node concept="37vLTw" id="1jfLtDU6TCl" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDU6T$M" resolve="pending" />
                  </node>
                  <node concept="34oBXx" id="1jfLtDU6TCm" role="2OqNvi" />
                </node>
              </node>
              <node concept="3uNrnE" id="1jfLtDU6TCn" role="1Dwrff">
                <node concept="37vLTw" id="1jfLtDU6TCp" role="2$L3a6">
                  <ref role="3cqZAo" node="1jfLtDU6TCa" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDU6TCq" role="2LFqv$">
                <node concept="3SKdUt" id="1jfLtDU6TCr" role="3cqZAp">
                  <node concept="1PaTwC" id="1jfLtDU6TCv" role="1aUNEU">
                    <node concept="3oM_SD" id="1jfLtDU6TCx" role="1PaTwD">
                      <property role="3oM_SC" value="Resolved" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCy" role="1PaTwD">
                      <property role="3oM_SC" value="last," />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCz" role="1PaTwD">
                      <property role="3oM_SC" value="because" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TC$" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TC_" role="1PaTwD">
                      <property role="3oM_SC" value="reference" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCA" role="1PaTwD">
                      <property role="3oM_SC" value="may" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCB" role="1PaTwD">
                      <property role="3oM_SC" value="name" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCC" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCD" role="1PaTwD">
                      <property role="3oM_SC" value="type" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCE" role="1PaTwD">
                      <property role="3oM_SC" value="declared" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCF" role="1PaTwD">
                      <property role="3oM_SC" value="later" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCG" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCH" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1jfLtDU6TCI" role="1PaTwD">
                      <property role="3oM_SC" value="file." />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TCJ" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TCM" role="3cpWs9">
                    <property role="TrG5h" value="wanted" />
                    <node concept="3uibUv" id="1jfLtDU6TCO" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1y4W85" id="1jfLtDU6TCP" role="33vP2m">
                      <node concept="37vLTw" id="1jfLtDU6TCS" role="1y566C">
                        <ref role="3cqZAo" node="1jfLtDU6T$Y" resolve="pendingNames" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TCT" role="1y58nS">
                        <ref role="3cqZAo" node="1jfLtDU6TCa" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TCU" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TCX" role="3cpWs9">
                    <property role="TrG5h" value="reference" />
                    <node concept="3Tqbb2" id="1jfLtDU6TCZ" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                    </node>
                    <node concept="1y4W85" id="1jfLtDU6TD0" role="33vP2m">
                      <node concept="37vLTw" id="1jfLtDU6TD3" role="1y566C">
                        <ref role="3cqZAo" node="1jfLtDU6T$M" resolve="pending" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TD4" role="1y58nS">
                        <ref role="3cqZAo" node="1jfLtDU6TCa" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="1jfLtDU6TD5" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TD8" role="1Duv9x">
                    <property role="TrG5h" value="j" />
                    <node concept="10Oyi0" id="1jfLtDU6TDa" role="1tU5fm" />
                    <node concept="3cmrfG" id="1jfLtDU6TDb" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="1jfLtDU6TDc" role="1Dwp0S">
                    <node concept="37vLTw" id="1jfLtDU6TDf" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDU6TD8" resolve="j" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDU6TDg" role="3uHU7w">
                      <node concept="37vLTw" id="1jfLtDU6TDj" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6T$q" resolve="namedNames" />
                      </node>
                      <node concept="34oBXx" id="1jfLtDU6TDk" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="1jfLtDU6TDl" role="1Dwrff">
                    <node concept="37vLTw" id="1jfLtDU6TDn" role="2$L3a6">
                      <ref role="3cqZAo" node="1jfLtDU6TD8" resolve="j" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6TDo" role="2LFqv$">
                    <node concept="3cpWs8" id="1jfLtDU6TDp" role="3cqZAp">
                      <node concept="3cpWsn" id="1jfLtDU6TDs" role="3cpWs9">
                        <property role="TrG5h" value="candidate" />
                        <node concept="3uibUv" id="1jfLtDU6TDu" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="1y4W85" id="1jfLtDU6TDv" role="33vP2m">
                          <node concept="37vLTw" id="1jfLtDU6TDy" role="1y566C">
                            <ref role="3cqZAo" node="1jfLtDU6T$q" resolve="namedNames" />
                          </node>
                          <node concept="37vLTw" id="1jfLtDU6TDz" role="1y58nS">
                            <ref role="3cqZAo" node="1jfLtDU6TD8" resolve="j" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1jfLtDU6TD$" role="3cqZAp">
                      <node concept="2OqwBi" id="1jfLtDU6TDB" role="3clFbw">
                        <node concept="37vLTw" id="1jfLtDU6TDE" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6TDs" resolve="candidate" />
                        </node>
                        <node concept="liA8E" id="1jfLtDU6TDF" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="37vLTw" id="1jfLtDU6TDG" role="37wK5m">
                            <ref role="3cqZAo" node="1jfLtDU6TCM" resolve="wanted" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1jfLtDU6TDH" role="3clFbx">
                        <node concept="3cpWs8" id="1jfLtDU6TDI" role="3cqZAp">
                          <node concept="3cpWsn" id="1jfLtDU6TDL" role="3cpWs9">
                            <property role="TrG5h" value="target" />
                            <node concept="3Tqbb2" id="1jfLtDU6TDN" role="1tU5fm" />
                            <node concept="1y4W85" id="1jfLtDU6TDO" role="33vP2m">
                              <node concept="37vLTw" id="1jfLtDU6TDR" role="1y566C">
                                <ref role="3cqZAo" node="1jfLtDU6T$A" resolve="namedNodes" />
                              </node>
                              <node concept="37vLTw" id="1jfLtDU6TDS" role="1y58nS">
                                <ref role="3cqZAo" node="1jfLtDU6TD8" resolve="j" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1jfLtDU6TDT" role="3cqZAp">
                          <node concept="37vLTI" id="1jfLtDU6TDV" role="3clFbG">
                            <node concept="2OqwBi" id="1jfLtDU6TDY" role="37vLTJ">
                              <node concept="37vLTw" id="1jfLtDU6TE1" role="2Oq$k0">
                                <ref role="3cqZAo" node="1jfLtDU6TCX" resolve="reference" />
                              </node>
                              <node concept="3TrEf2" id="1jfLtDU6TE2" role="2OqNvi">
                                <ref role="3Tt5mk" to="mo8k:1jfLtDTxEF9" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="1PxgMI" id="1jfLtDU6TE3" role="37vLTx">
                              <node concept="37vLTw" id="1jfLtDU6TE6" role="1m5AlR">
                                <ref role="3cqZAo" node="1jfLtDU6TDL" resolve="target" />
                              </node>
                              <node concept="chp4Y" id="1jfLtDU6TE7" role="3oSUPX">
                                <ref role="cht4Q" to="mo8k:1jfLtDTxEqQ" resolve="TSITypeDeclaration" />
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
    </node>
    <node concept="2tJIrI" id="1jfLtDU6TE8" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDU6TE9" role="jymVt">
      <property role="TrG5h" value="type" />
      <node concept="3Tm6S6" id="1jfLtDU6TEd" role="1B3o_S" />
      <node concept="3Tqbb2" id="1jfLtDU6TEe" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDU6TEf" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="1jfLtDU6TEh" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDU6TEi" role="3clF46">
        <property role="TrG5h" value="pending" />
        <node concept="_YKpA" id="1jfLtDU6TEk" role="1tU5fm">
          <node concept="3Tqbb2" id="1jfLtDU6TEm" role="_ZDj9">
            <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDU6TEn" role="3clF46">
        <property role="TrG5h" value="pendingNames" />
        <node concept="_YKpA" id="1jfLtDU6TEp" role="1tU5fm">
          <node concept="3uibUv" id="1jfLtDU6TEr" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDU6TEs" role="3clF47">
        <node concept="3cpWs8" id="1jfLtDU6TEt" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDU6TEw" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1jfLtDU6TEy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="1jfLtDU6TEz" role="33vP2m">
              <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
              <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
              <node concept="37vLTw" id="1jfLtDU6TE$" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
              </node>
              <node concept="Xl_RD" id="1jfLtDU6TE_" role="37wK5m">
                <property role="Xl_RC" value="kind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TEA" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TED" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TEG" role="2Oq$k0">
              <property role="Xl_RC" value="primitive" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TEH" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TEI" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TEJ" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TEK" role="3cqZAp">
              <node concept="2YIFZM" id="1jfLtDU6TEL" role="3cqZAk">
                <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                <ref role="37wK5l" node="1jfLtDU6TOk" resolve="primitive" />
                <node concept="2YIFZM" id="1jfLtDU6TEM" role="37wK5m">
                  <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                  <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                  <node concept="37vLTw" id="1jfLtDU6TEN" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                  </node>
                  <node concept="Xl_RD" id="1jfLtDU6TEO" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TEP" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TES" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TEV" role="2Oq$k0">
              <property role="Xl_RC" value="reference" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TEW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TEX" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TEY" role="3clFbx">
            <node concept="3cpWs8" id="1jfLtDU6TEZ" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TF2" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="3Tqbb2" id="1jfLtDU6TF4" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6TF5" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6TF7" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TF9" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6TFa" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDU6TFc" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDU6TFf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                </node>
                <node concept="TSZUe" id="1jfLtDU6TFg" role="2OqNvi">
                  <node concept="37vLTw" id="1jfLtDU6TFi" role="25WWJ7">
                    <ref role="3cqZAo" node="1jfLtDU6TF2" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6TFj" role="3cqZAp">
              <node concept="2OqwBi" id="1jfLtDU6TFl" role="3clFbG">
                <node concept="37vLTw" id="1jfLtDU6TFo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                </node>
                <node concept="TSZUe" id="1jfLtDU6TFp" role="2OqNvi">
                  <node concept="2YIFZM" id="1jfLtDU6TFr" role="25WWJ7">
                    <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                    <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                    <node concept="37vLTw" id="1jfLtDU6TFs" role="37wK5m">
                      <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                    </node>
                    <node concept="Xl_RD" id="1jfLtDU6TFt" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDU6TFu" role="3cqZAp">
              <node concept="37vLTw" id="1jfLtDU6TFv" role="3cqZAk">
                <ref role="3cqZAo" node="1jfLtDU6TF2" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TFw" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TFz" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TFA" role="2Oq$k0">
              <property role="Xl_RC" value="array" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TFB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TFC" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TFD" role="3clFbx">
            <node concept="3cpWs8" id="1jfLtDU6TFE" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TFH" role="3cpWs9">
                <property role="TrG5h" value="element" />
                <node concept="3Tqbb2" id="1jfLtDU6TFJ" role="1tU5fm" />
                <node concept="2YIFZM" id="1jfLtDU6TFK" role="33vP2m">
                  <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                  <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                  <node concept="2OqwBi" id="1jfLtDU6TFL" role="37wK5m">
                    <node concept="37vLTw" id="1jfLtDU6TFO" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                    </node>
                    <node concept="liA8E" id="1jfLtDU6TFP" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonObject(java.lang.String)" resolve="getAsJsonObject" />
                      <node concept="Xl_RD" id="1jfLtDU6TFQ" role="37wK5m">
                        <property role="Xl_RC" value="element" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1jfLtDU6TFR" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                  </node>
                  <node concept="37vLTw" id="1jfLtDU6TFS" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1jfLtDU6TFT" role="3cqZAp">
              <node concept="3clFbC" id="1jfLtDU6TFW" role="3clFbw">
                <node concept="37vLTw" id="1jfLtDU6TFZ" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDU6TFH" resolve="element" />
                </node>
                <node concept="10Nm6u" id="1jfLtDU6TG0" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1jfLtDU6TG1" role="3clFbx">
                <node concept="3cpWs6" id="1jfLtDU6TG2" role="3cqZAp">
                  <node concept="10Nm6u" id="1jfLtDU6TG3" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6TG4" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TG7" role="3cpWs9">
                <property role="TrG5h" value="array" />
                <node concept="3Tqbb2" id="1jfLtDU6TG9" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:6WKYICH1afZ" resolve="TSArrayType" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6TGa" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6TGc" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TGe" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:6WKYICH1afZ" resolve="TSArrayType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6TGf" role="3cqZAp">
              <node concept="37vLTI" id="1jfLtDU6TGh" role="3clFbG">
                <node concept="2OqwBi" id="1jfLtDU6TGk" role="37vLTJ">
                  <node concept="37vLTw" id="1jfLtDU6TGn" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDU6TG7" resolve="array" />
                  </node>
                  <node concept="3TrEf2" id="1jfLtDU6TGo" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:6WKYICH1ag1" resolve="elementType" />
                  </node>
                </node>
                <node concept="1PxgMI" id="1jfLtDU6TGp" role="37vLTx">
                  <node concept="37vLTw" id="1jfLtDU6TGs" role="1m5AlR">
                    <ref role="3cqZAo" node="1jfLtDU6TFH" resolve="element" />
                  </node>
                  <node concept="chp4Y" id="1jfLtDU6TGt" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDU6TGu" role="3cqZAp">
              <node concept="37vLTw" id="1jfLtDU6TGv" role="3cqZAk">
                <ref role="3cqZAo" node="1jfLtDU6TG7" resolve="array" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TGw" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TGz" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TGA" role="2Oq$k0">
              <property role="Xl_RC" value="union" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TGB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TGC" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TGD" role="3clFbx">
            <node concept="3cpWs8" id="1jfLtDU6TGE" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TGH" role="3cpWs9">
                <property role="TrG5h" value="union" />
                <node concept="3Tqbb2" id="1jfLtDU6TGJ" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6TGK" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6TGM" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TGO" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:6WKYICH1adn" resolve="TSUnionType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1jfLtDU6TGP" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDU6TGT" role="2Gsz3X">
                <property role="TrG5h" value="me" />
              </node>
              <node concept="2OqwBi" id="1jfLtDU6TGU" role="2GsD0m">
                <node concept="37vLTw" id="1jfLtDU6TGX" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                </node>
                <node concept="liA8E" id="1jfLtDU6TGY" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonArray(java.lang.String)" resolve="getAsJsonArray" />
                  <node concept="Xl_RD" id="1jfLtDU6TGZ" role="37wK5m">
                    <property role="Xl_RC" value="members" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDU6TH0" role="2LFqv$">
                <node concept="3cpWs8" id="1jfLtDU6TH1" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TH4" role="3cpWs9">
                    <property role="TrG5h" value="member" />
                    <node concept="3Tqbb2" id="1jfLtDU6TH6" role="1tU5fm" />
                    <node concept="2YIFZM" id="1jfLtDU6TH7" role="33vP2m">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                      <node concept="2OqwBi" id="1jfLtDU6TH8" role="37wK5m">
                        <node concept="2GrUjf" id="1jfLtDU6THb" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1jfLtDU6TGT" resolve="me" />
                        </node>
                        <node concept="liA8E" id="1jfLtDU6THc" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6THd" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6THe" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jfLtDU6THf" role="3cqZAp">
                  <node concept="3clFbC" id="1jfLtDU6THi" role="3clFbw">
                    <node concept="37vLTw" id="1jfLtDU6THl" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDU6TH4" resolve="member" />
                    </node>
                    <node concept="10Nm6u" id="1jfLtDU6THm" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6THn" role="3clFbx">
                    <node concept="3cpWs6" id="1jfLtDU6THo" role="3cqZAp">
                      <node concept="10Nm6u" id="1jfLtDU6THp" role="3cqZAk" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6THq" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDU6THs" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6THv" role="2Oq$k0">
                      <node concept="37vLTw" id="1jfLtDU6THy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TGH" resolve="union" />
                      </node>
                      <node concept="3Tsc0h" id="1jfLtDU6THz" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:6WKYICH1adp" resolve="types" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="1jfLtDU6TH$" role="2OqNvi">
                      <node concept="1PxgMI" id="1jfLtDU6THA" role="25WWJ7">
                        <node concept="37vLTw" id="1jfLtDU6THD" role="1m5AlR">
                          <ref role="3cqZAo" node="1jfLtDU6TH4" resolve="member" />
                        </node>
                        <node concept="chp4Y" id="1jfLtDU6THE" role="3oSUPX">
                          <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDU6THF" role="3cqZAp">
              <node concept="37vLTw" id="1jfLtDU6THG" role="3cqZAk">
                <ref role="3cqZAo" node="1jfLtDU6TGH" resolve="union" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6THH" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6THK" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6THN" role="2Oq$k0">
              <property role="Xl_RC" value="object" />
            </node>
            <node concept="liA8E" id="1jfLtDU6THO" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6THP" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6THQ" role="3clFbx">
            <node concept="3cpWs8" id="1jfLtDU6THR" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6THU" role="3cpWs9">
                <property role="TrG5h" value="object" />
                <node concept="3Tqbb2" id="1jfLtDU6THW" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5OpYk6fF6du" resolve="TSObjectType" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6THX" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6THZ" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TI1" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:5OpYk6fF6du" resolve="TSObjectType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1jfLtDU6TI2" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDU6TI6" role="2Gsz3X">
                <property role="TrG5h" value="me" />
              </node>
              <node concept="2OqwBi" id="1jfLtDU6TI7" role="2GsD0m">
                <node concept="37vLTw" id="1jfLtDU6TIa" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                </node>
                <node concept="liA8E" id="1jfLtDU6TIb" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonArray(java.lang.String)" resolve="getAsJsonArray" />
                  <node concept="Xl_RD" id="1jfLtDU6TIc" role="37wK5m">
                    <property role="Xl_RC" value="members" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDU6TId" role="2LFqv$">
                <node concept="3cpWs8" id="1jfLtDU6TIe" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TIh" role="3cpWs9">
                    <property role="TrG5h" value="m" />
                    <node concept="3uibUv" id="1jfLtDU6TIj" role="1tU5fm">
                      <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDU6TIk" role="33vP2m">
                      <node concept="2GrUjf" id="1jfLtDU6TIn" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDU6TI6" resolve="me" />
                      </node>
                      <node concept="liA8E" id="1jfLtDU6TIo" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TIp" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TIs" role="3cpWs9">
                    <property role="TrG5h" value="memberType" />
                    <node concept="3Tqbb2" id="1jfLtDU6TIu" role="1tU5fm" />
                    <node concept="2YIFZM" id="1jfLtDU6TIv" role="33vP2m">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                      <node concept="2OqwBi" id="1jfLtDU6TIw" role="37wK5m">
                        <node concept="37vLTw" id="1jfLtDU6TIz" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6TIh" resolve="m" />
                        </node>
                        <node concept="liA8E" id="1jfLtDU6TI$" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonObject(java.lang.String)" resolve="getAsJsonObject" />
                          <node concept="Xl_RD" id="1jfLtDU6TI_" role="37wK5m">
                            <property role="Xl_RC" value="type" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TIA" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TIB" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jfLtDU6TIC" role="3cqZAp">
                  <node concept="3clFbC" id="1jfLtDU6TIF" role="3clFbw">
                    <node concept="37vLTw" id="1jfLtDU6TII" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDU6TIs" resolve="memberType" />
                    </node>
                    <node concept="10Nm6u" id="1jfLtDU6TIJ" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6TIK" role="3clFbx">
                    <node concept="3cpWs6" id="1jfLtDU6TIL" role="3cqZAp">
                      <node concept="10Nm6u" id="1jfLtDU6TIM" role="3cqZAk" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TIN" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TIQ" role="3cpWs9">
                    <property role="TrG5h" value="property" />
                    <node concept="3Tqbb2" id="1jfLtDU6TIS" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
                    </node>
                    <node concept="2ShNRf" id="1jfLtDU6TIT" role="33vP2m">
                      <node concept="3zrR0B" id="1jfLtDU6TIV" role="2ShVmc">
                        <node concept="3Tqbb2" id="1jfLtDU6TIX" role="3zrR0E">
                          <ref role="ehGHo" to="mo8k:5OpYk6fF69k" resolve="TSPropertySignature" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TIY" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TJ0" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TJ3" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TJ6" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TIQ" resolve="property" />
                      </node>
                      <node concept="3TrcHB" id="1jfLtDU6TJ7" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6TJ8" role="37vLTx">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                      <node concept="37vLTw" id="1jfLtDU6TJ9" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TIh" resolve="m" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TJa" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TJb" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TJd" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TJg" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TJj" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TIQ" resolve="property" />
                      </node>
                      <node concept="3TrcHB" id="1jfLtDU6TJk" role="2OqNvi">
                        <ref role="3TsBF5" to="mo8k:5OpYk6fF69n" resolve="isOptional" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6TJl" role="37vLTx">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TNO" resolve="bool" />
                      <node concept="37vLTw" id="1jfLtDU6TJm" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TIh" resolve="m" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TJn" role="37wK5m">
                        <property role="Xl_RC" value="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TJo" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TJq" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TJt" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TJw" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TIQ" resolve="property" />
                      </node>
                      <node concept="3TrEf2" id="1jfLtDU6TJx" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5OpYk6fF69o" resolve="declaredType" />
                      </node>
                    </node>
                    <node concept="1PxgMI" id="1jfLtDU6TJy" role="37vLTx">
                      <node concept="37vLTw" id="1jfLtDU6TJ_" role="1m5AlR">
                        <ref role="3cqZAo" node="1jfLtDU6TIs" resolve="memberType" />
                      </node>
                      <node concept="chp4Y" id="1jfLtDU6TJA" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TJB" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDU6TJD" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TJG" role="2Oq$k0">
                      <node concept="37vLTw" id="1jfLtDU6TJJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6THU" resolve="object" />
                      </node>
                      <node concept="3Tsc0h" id="1jfLtDU6TJK" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:5OpYk6fF6dw" resolve="members" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="1jfLtDU6TJL" role="2OqNvi">
                      <node concept="37vLTw" id="1jfLtDU6TJN" role="25WWJ7">
                        <ref role="3cqZAo" node="1jfLtDU6TIQ" resolve="property" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDU6TJO" role="3cqZAp">
              <node concept="37vLTw" id="1jfLtDU6TJP" role="3cqZAk">
                <ref role="3cqZAo" node="1jfLtDU6THU" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TJQ" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TJT" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TJW" role="2Oq$k0">
              <property role="Xl_RC" value="function" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TJX" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TJY" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TEw" resolve="kind" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TJZ" role="3clFbx">
            <node concept="3cpWs8" id="1jfLtDU6TK0" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TK3" role="3cpWs9">
                <property role="TrG5h" value="function" />
                <node concept="3Tqbb2" id="1jfLtDU6TK5" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                </node>
                <node concept="2ShNRf" id="1jfLtDU6TK6" role="33vP2m">
                  <node concept="3zrR0B" id="1jfLtDU6TK8" role="2ShVmc">
                    <node concept="3Tqbb2" id="1jfLtDU6TKa" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:465JEkTkUds" resolve="TSFunctionType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1jfLtDU6TKb" role="3cqZAp">
              <node concept="2GrKxI" id="1jfLtDU6TKf" role="2Gsz3X">
                <property role="TrG5h" value="pe" />
              </node>
              <node concept="2OqwBi" id="1jfLtDU6TKg" role="2GsD0m">
                <node concept="37vLTw" id="1jfLtDU6TKj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                </node>
                <node concept="liA8E" id="1jfLtDU6TKk" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonArray(java.lang.String)" resolve="getAsJsonArray" />
                  <node concept="Xl_RD" id="1jfLtDU6TKl" role="37wK5m">
                    <property role="Xl_RC" value="parameters" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1jfLtDU6TKm" role="2LFqv$">
                <node concept="3cpWs8" id="1jfLtDU6TKn" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TKq" role="3cpWs9">
                    <property role="TrG5h" value="p" />
                    <node concept="3uibUv" id="1jfLtDU6TKs" role="1tU5fm">
                      <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                    </node>
                    <node concept="2OqwBi" id="1jfLtDU6TKt" role="33vP2m">
                      <node concept="2GrUjf" id="1jfLtDU6TKw" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1jfLtDU6TKf" resolve="pe" />
                      </node>
                      <node concept="liA8E" id="1jfLtDU6TKx" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TKy" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TK_" role="3cpWs9">
                    <property role="TrG5h" value="parameterType" />
                    <node concept="3Tqbb2" id="1jfLtDU6TKB" role="1tU5fm" />
                    <node concept="2YIFZM" id="1jfLtDU6TKC" role="33vP2m">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                      <node concept="2OqwBi" id="1jfLtDU6TKD" role="37wK5m">
                        <node concept="37vLTw" id="1jfLtDU6TKG" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jfLtDU6TKq" resolve="p" />
                        </node>
                        <node concept="liA8E" id="1jfLtDU6TKH" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonObject(java.lang.String)" resolve="getAsJsonObject" />
                          <node concept="Xl_RD" id="1jfLtDU6TKI" role="37wK5m">
                            <property role="Xl_RC" value="type" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TKJ" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                      </node>
                      <node concept="37vLTw" id="1jfLtDU6TKK" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jfLtDU6TKL" role="3cqZAp">
                  <node concept="3clFbC" id="1jfLtDU6TKO" role="3clFbw">
                    <node concept="37vLTw" id="1jfLtDU6TKR" role="3uHU7B">
                      <ref role="3cqZAo" node="1jfLtDU6TK_" resolve="parameterType" />
                    </node>
                    <node concept="10Nm6u" id="1jfLtDU6TKS" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="1jfLtDU6TKT" role="3clFbx">
                    <node concept="3cpWs6" id="1jfLtDU6TKU" role="3cqZAp">
                      <node concept="10Nm6u" id="1jfLtDU6TKV" role="3cqZAk" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1jfLtDU6TKW" role="3cqZAp">
                  <node concept="3cpWsn" id="1jfLtDU6TKZ" role="3cpWs9">
                    <property role="TrG5h" value="parameter" />
                    <node concept="3Tqbb2" id="1jfLtDU6TL1" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
                    </node>
                    <node concept="2ShNRf" id="1jfLtDU6TL2" role="33vP2m">
                      <node concept="3zrR0B" id="1jfLtDU6TL4" role="2ShVmc">
                        <node concept="3Tqbb2" id="1jfLtDU6TL6" role="3zrR0E">
                          <ref role="ehGHo" to="mo8k:465JEkTkUab" resolve="TSFunctionTypeParameter" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TL7" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TL9" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TLc" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TLf" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TKZ" resolve="parameter" />
                      </node>
                      <node concept="3TrcHB" id="1jfLtDU6TLg" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6TLh" role="37vLTx">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TMS" resolve="str" />
                      <node concept="37vLTw" id="1jfLtDU6TLi" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TKq" resolve="p" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TLj" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TLk" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TLm" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TLp" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TLs" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TKZ" resolve="parameter" />
                      </node>
                      <node concept="3TrcHB" id="1jfLtDU6TLt" role="2OqNvi">
                        <ref role="3TsBF5" to="mo8k:465JEkTAOT3" resolve="isOptional" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6TLu" role="37vLTx">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TNO" resolve="bool" />
                      <node concept="37vLTw" id="1jfLtDU6TLv" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TKq" resolve="p" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TLw" role="37wK5m">
                        <property role="Xl_RC" value="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TLx" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TLz" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TLA" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TLD" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TKZ" resolve="parameter" />
                      </node>
                      <node concept="3TrcHB" id="1jfLtDU6TLE" role="2OqNvi">
                        <ref role="3TsBF5" to="mo8k:465JEkTAOT4" resolve="isRest" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1jfLtDU6TLF" role="37vLTx">
                      <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                      <ref role="37wK5l" node="1jfLtDU6TNO" resolve="bool" />
                      <node concept="37vLTw" id="1jfLtDU6TLG" role="37wK5m">
                        <ref role="3cqZAo" node="1jfLtDU6TKq" resolve="p" />
                      </node>
                      <node concept="Xl_RD" id="1jfLtDU6TLH" role="37wK5m">
                        <property role="Xl_RC" value="rest" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TLI" role="3cqZAp">
                  <node concept="37vLTI" id="1jfLtDU6TLK" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TLN" role="37vLTJ">
                      <node concept="37vLTw" id="1jfLtDU6TLQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TKZ" resolve="parameter" />
                      </node>
                      <node concept="3TrEf2" id="1jfLtDU6TLR" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:465JEkTkUad" resolve="declaredType" />
                      </node>
                    </node>
                    <node concept="1PxgMI" id="1jfLtDU6TLS" role="37vLTx">
                      <node concept="37vLTw" id="1jfLtDU6TLV" role="1m5AlR">
                        <ref role="3cqZAo" node="1jfLtDU6TK_" resolve="parameterType" />
                      </node>
                      <node concept="chp4Y" id="1jfLtDU6TLW" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1jfLtDU6TLX" role="3cqZAp">
                  <node concept="2OqwBi" id="1jfLtDU6TLZ" role="3clFbG">
                    <node concept="2OqwBi" id="1jfLtDU6TM2" role="2Oq$k0">
                      <node concept="37vLTw" id="1jfLtDU6TM5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1jfLtDU6TK3" resolve="function" />
                      </node>
                      <node concept="3Tsc0h" id="1jfLtDU6TM6" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:465JEkTkUdu" resolve="parameters" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="1jfLtDU6TM7" role="2OqNvi">
                      <node concept="37vLTw" id="1jfLtDU6TM9" role="25WWJ7">
                        <ref role="3cqZAo" node="1jfLtDU6TKZ" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1jfLtDU6TMa" role="3cqZAp">
              <node concept="3cpWsn" id="1jfLtDU6TMd" role="3cpWs9">
                <property role="TrG5h" value="returnType" />
                <node concept="3Tqbb2" id="1jfLtDU6TMf" role="1tU5fm" />
                <node concept="2YIFZM" id="1jfLtDU6TMg" role="33vP2m">
                  <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                  <ref role="37wK5l" node="1jfLtDU6TE9" resolve="type" />
                  <node concept="2OqwBi" id="1jfLtDU6TMh" role="37wK5m">
                    <node concept="37vLTw" id="1jfLtDU6TMk" role="2Oq$k0">
                      <ref role="3cqZAo" node="1jfLtDU6TEf" resolve="t" />
                    </node>
                    <node concept="liA8E" id="1jfLtDU6TMl" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonObject(java.lang.String)" resolve="getAsJsonObject" />
                      <node concept="Xl_RD" id="1jfLtDU6TMm" role="37wK5m">
                        <property role="Xl_RC" value="returnType" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1jfLtDU6TMn" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TEi" resolve="pending" />
                  </node>
                  <node concept="37vLTw" id="1jfLtDU6TMo" role="37wK5m">
                    <ref role="3cqZAo" node="1jfLtDU6TEn" resolve="pendingNames" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1jfLtDU6TMp" role="3cqZAp">
              <node concept="3clFbC" id="1jfLtDU6TMs" role="3clFbw">
                <node concept="37vLTw" id="1jfLtDU6TMv" role="3uHU7B">
                  <ref role="3cqZAo" node="1jfLtDU6TMd" resolve="returnType" />
                </node>
                <node concept="10Nm6u" id="1jfLtDU6TMw" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1jfLtDU6TMx" role="3clFbx">
                <node concept="3cpWs6" id="1jfLtDU6TMy" role="3cqZAp">
                  <node concept="10Nm6u" id="1jfLtDU6TMz" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1jfLtDU6TM$" role="3cqZAp">
              <node concept="37vLTI" id="1jfLtDU6TMA" role="3clFbG">
                <node concept="2OqwBi" id="1jfLtDU6TMD" role="37vLTJ">
                  <node concept="37vLTw" id="1jfLtDU6TMG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jfLtDU6TK3" resolve="function" />
                  </node>
                  <node concept="3TrEf2" id="1jfLtDU6TMH" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:465JEkTkUdv" resolve="returnType" />
                  </node>
                </node>
                <node concept="1PxgMI" id="1jfLtDU6TMI" role="37vLTx">
                  <node concept="37vLTw" id="1jfLtDU6TML" role="1m5AlR">
                    <ref role="3cqZAo" node="1jfLtDU6TMd" resolve="returnType" />
                  </node>
                  <node concept="chp4Y" id="1jfLtDU6TMM" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:4Ul7eGthLpQ" resolve="TSIType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1jfLtDU6TMN" role="3cqZAp">
              <node concept="37vLTw" id="1jfLtDU6TMO" role="3cqZAk">
                <ref role="3cqZAo" node="1jfLtDU6TK3" resolve="function" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDU6TMP" role="3cqZAp">
          <node concept="10Nm6u" id="1jfLtDU6TMQ" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDU6TMR" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDU6TMS" role="jymVt">
      <property role="TrG5h" value="str" />
      <node concept="3Tm6S6" id="1jfLtDU6TMW" role="1B3o_S" />
      <node concept="3uibUv" id="1jfLtDU6TMX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1jfLtDU6TMY" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1jfLtDU6TN0" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDU6TN1" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="1jfLtDU6TN3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDU6TN4" role="3clF47">
        <node concept="3SKdUt" id="1jfLtDU6TN5" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDU6TN9" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDU6TNb" role="1PaTwD">
              <property role="3oM_SC" value="getAsJsonPrimitive" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNc" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNd" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNe" role="1PaTwD">
              <property role="3oM_SC" value="get:" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNf" role="1PaTwD">
              <property role="3oM_SC" value="JsonObject.get(String)" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNh" role="1PaTwD">
              <property role="3oM_SC" value="re-read" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNi" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNk" role="1PaTwD">
              <property role="3oM_SC" value="collections" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDU6TNl" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDU6TNp" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDU6TNr" role="1PaTwD">
              <property role="3oM_SC" value="GetElementOperation," />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNs" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNt" role="1PaTwD">
              <property role="3oM_SC" value="wants" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNu" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNv" role="1PaTwD">
              <property role="3oM_SC" value="int" />
            </node>
            <node concept="3oM_SD" id="1jfLtDU6TNw" role="1PaTwD">
              <property role="3oM_SC" value="index." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1jfLtDU6TNx" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDU6TN$" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="1jfLtDU6TNA" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonPrimitive" resolve="JsonPrimitive" />
            </node>
            <node concept="2OqwBi" id="1jfLtDU6TNB" role="33vP2m">
              <node concept="37vLTw" id="1jfLtDU6TNE" role="2Oq$k0">
                <ref role="3cqZAo" node="1jfLtDU6TMY" resolve="o" />
              </node>
              <node concept="liA8E" id="1jfLtDU6TNF" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonPrimitive(java.lang.String)" resolve="getAsJsonPrimitive" />
                <node concept="37vLTw" id="1jfLtDU6TNG" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDU6TN1" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDU6TNH" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TNI" role="3cqZAk">
            <node concept="37vLTw" id="1jfLtDU6TNL" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDU6TN$" resolve="p" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TNM" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~JsonPrimitive.getAsString()" resolve="getAsString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDU6TNN" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDU6TNO" role="jymVt">
      <property role="TrG5h" value="bool" />
      <node concept="3Tm6S6" id="1jfLtDU6TNS" role="1B3o_S" />
      <node concept="10P_77" id="1jfLtDU6TNT" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDU6TNU" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1jfLtDU6TNW" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
      <node concept="37vLTG" id="1jfLtDU6TNX" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="1jfLtDU6TNZ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDU6TO0" role="3clF47">
        <node concept="3cpWs8" id="1jfLtDU6TO1" role="3cqZAp">
          <node concept="3cpWsn" id="1jfLtDU6TO4" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="1jfLtDU6TO6" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonPrimitive" resolve="JsonPrimitive" />
            </node>
            <node concept="2OqwBi" id="1jfLtDU6TO7" role="33vP2m">
              <node concept="37vLTw" id="1jfLtDU6TOa" role="2Oq$k0">
                <ref role="3cqZAo" node="1jfLtDU6TNU" resolve="o" />
              </node>
              <node concept="liA8E" id="1jfLtDU6TOb" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonObject.getAsJsonPrimitive(java.lang.String)" resolve="getAsJsonPrimitive" />
                <node concept="37vLTw" id="1jfLtDU6TOc" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDU6TNX" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDU6TOd" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TOe" role="3cqZAk">
            <node concept="37vLTw" id="1jfLtDU6TOh" role="2Oq$k0">
              <ref role="3cqZAo" node="1jfLtDU6TO4" resolve="p" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TOi" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~JsonPrimitive.getAsBoolean()" resolve="getAsBoolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDU6TOj" role="jymVt" />
    <node concept="2YIFZL" id="1jfLtDU6TOk" role="jymVt">
      <property role="TrG5h" value="primitive" />
      <node concept="3Tm6S6" id="1jfLtDU6TOo" role="1B3o_S" />
      <node concept="3Tqbb2" id="1jfLtDU6TOp" role="3clF45" />
      <node concept="37vLTG" id="1jfLtDU6TOq" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1jfLtDU6TOs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1jfLtDU6TOt" role="3clF47">
        <node concept="3clFbJ" id="1jfLtDU6TOu" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TOx" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TO$" role="2Oq$k0">
              <property role="Xl_RC" value="string" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TO_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TOA" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TOB" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TOC" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TOD" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TOF" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TOH" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5v$" resolve="TSStringType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TOI" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TOL" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TOO" role="2Oq$k0">
              <property role="Xl_RC" value="number" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TOP" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TOQ" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TOR" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TOS" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TOT" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TOV" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TOX" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5um" resolve="TSNumberType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TOY" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TP1" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TP4" role="2Oq$k0">
              <property role="Xl_RC" value="boolean" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TP5" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TP6" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TP7" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TP8" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TP9" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TPb" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TPd" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:4R4WbZLH5ta" resolve="TSBooleanType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TPe" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TPh" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TPk" role="2Oq$k0">
              <property role="Xl_RC" value="void" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TPl" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TPm" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TPn" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TPo" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TPp" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TPr" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TPt" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:465JEkTod8U" resolve="TSVoidType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TPu" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TPx" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TP$" role="2Oq$k0">
              <property role="Xl_RC" value="null" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TP_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TPA" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TPB" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TPC" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TPD" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TPF" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TPH" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1a85" resolve="TSNullType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TPI" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TPL" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TPO" role="2Oq$k0">
              <property role="Xl_RC" value="undefined" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TPP" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TPQ" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TPR" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TPS" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TPT" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TPV" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TPX" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:6WKYICH1aaA" resolve="TSUndefinedType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TPY" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TQ1" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TQ4" role="2Oq$k0">
              <property role="Xl_RC" value="unknown" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TQ5" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TQ6" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TQ7" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TQ8" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TQ9" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TQb" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TQd" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6g8Ln6" resolve="TSUnknownType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1jfLtDU6TQe" role="3cqZAp">
          <node concept="2OqwBi" id="1jfLtDU6TQh" role="3clFbw">
            <node concept="Xl_RD" id="1jfLtDU6TQk" role="2Oq$k0">
              <property role="Xl_RC" value="never" />
            </node>
            <node concept="liA8E" id="1jfLtDU6TQl" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="1jfLtDU6TQm" role="37wK5m">
                <ref role="3cqZAo" node="1jfLtDU6TOq" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1jfLtDU6TQn" role="3clFbx">
            <node concept="3cpWs6" id="1jfLtDU6TQo" role="3cqZAp">
              <node concept="2ShNRf" id="1jfLtDU6TQp" role="3cqZAk">
                <node concept="3zrR0B" id="1jfLtDU6TQr" role="2ShVmc">
                  <node concept="3Tqbb2" id="1jfLtDU6TQt" role="3zrR0E">
                    <ref role="ehGHo" to="mo8k:5OpYk6gni9v" resolve="TSNeverType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jfLtDU6TQu" role="3cqZAp">
          <node concept="10Nm6u" id="1jfLtDU6TQv" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
</model>

