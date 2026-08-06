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
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
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
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="ctgy" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.plugins(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="hkuf" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.dialogs.properties.persistence(MPS.Platform/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="7nyy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.refresh(MPS.Core/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" implicit="true" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="6qgz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.model(MPS.Core/)" implicit="true" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
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
    <node concept="Wx3nA" id="6EvoDjCLSGR" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LISTING" />
      <node concept="3Tm1VV" id="6EvoDjCLSGU" role="1B3o_S" />
      <node concept="3uibUv" id="6EvoDjCLSGV" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="6EvoDjCLSGW" role="33vP2m">
        <property role="Xl_RC" value="stubs.txt" />
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
    <node concept="3clFb_" id="6EvoDjCLSGX" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="2AHcQZ" id="6EvoDjCLSH1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="6EvoDjCLSH2" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCLSH3" role="3clF45" />
      <node concept="37vLTG" id="6EvoDjCLSH4" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="6EvoDjCLSH6" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="37vLTG" id="6EvoDjCLSH7" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6EvoDjCLSH9" role="1tU5fm">
          <ref role="3uigEE" to="7nyy:~FileSystemEvent" resolve="FileSystemEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6EvoDjCLSHa" role="3clF47">
        <node concept="3clFbF" id="6EvoDjCLSHb" role="3cqZAp">
          <node concept="3nyPlj" id="6EvoDjCLSHd" role="3clFbG">
            <ref role="37wK5l" to="ends:~FileBasedModelRoot.update(org.jetbrains.mps.openapi.util.ProgressMonitor,jetbrains.mps.vfs.refresh.FileSystemEvent)" resolve="update" />
            <node concept="37vLTw" id="6EvoDjCLSHe" role="37wK5m">
              <ref role="3cqZAo" node="6EvoDjCLSH4" resolve="monitor" />
            </node>
            <node concept="37vLTw" id="6EvoDjCLSHf" role="37wK5m">
              <ref role="3cqZAo" node="6EvoDjCLSH7" resolve="event" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCLSHg" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCLSHk" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCLSHm" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHn" role="1PaTwD">
              <property role="3oM_SC" value="base" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHo" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHp" role="1PaTwD">
              <property role="3oM_SC" value="re-reads" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHr" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHs" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHt" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHu" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHv" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHw" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHx" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHy" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHz" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSH$" role="1PaTwD">
              <property role="3oM_SC" value="removed." />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSH_" role="1PaTwD">
              <property role="3oM_SC" value="stubs.txt" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHA" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCLSHB" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCLSHF" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCLSHH" role="1PaTwD">
              <property role="3oM_SC" value="edited" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHI" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHJ" role="1PaTwD">
              <property role="3oM_SC" value="place," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHK" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHL" role="1PaTwD">
              <property role="3oM_SC" value="editing" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHM" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHN" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHO" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHP" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHQ" role="1PaTwD">
              <property role="3oM_SC" value="exist," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHR" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHS" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHT" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHU" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHV" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSHW" role="1PaTwD">
              <property role="3oM_SC" value="here." />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6EvoDjCLSHX" role="3cqZAp">
          <node concept="2GrKxI" id="6EvoDjCLSI1" role="2Gsz3X">
            <property role="TrG5h" value="changed" />
          </node>
          <node concept="2OqwBi" id="6EvoDjCLSI2" role="2GsD0m">
            <node concept="37vLTw" id="6EvoDjCLSI5" role="2Oq$k0">
              <ref role="3cqZAo" node="6EvoDjCLSH7" resolve="event" />
            </node>
            <node concept="liA8E" id="6EvoDjCLSI6" role="2OqNvi">
              <ref role="37wK5l" to="7nyy:~FileSystemEvent.getChanged()" resolve="getChanged" />
            </node>
          </node>
          <node concept="3clFbS" id="6EvoDjCLSI7" role="2LFqv$">
            <node concept="3clFbJ" id="6EvoDjCLSI8" role="3cqZAp">
              <node concept="2OqwBi" id="6EvoDjCLSIb" role="3clFbw">
                <node concept="10M0yZ" id="6EvoDjCLSIe" role="2Oq$k0">
                  <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                  <ref role="3cqZAo" node="6EvoDjCLSGR" resolve="LISTING" />
                </node>
                <node concept="liA8E" id="6EvoDjCLSIf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="6EvoDjCLSIg" role="37wK5m">
                    <node concept="2GrUjf" id="6EvoDjCLSIj" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6EvoDjCLSI1" resolve="changed" />
                    </node>
                    <node concept="liA8E" id="6EvoDjCLSIk" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6EvoDjCLSIl" role="3clFbx">
                <node concept="3clFbF" id="6EvoDjCLSIm" role="3cqZAp">
                  <node concept="2OqwBi" id="6EvoDjCLSIo" role="3clFbG">
                    <node concept="2OqwBi" id="6EvoDjCLSIr" role="2Oq$k0">
                      <node concept="2OqwBi" id="6EvoDjCLSIu" role="2Oq$k0">
                        <node concept="Xjq3P" id="6EvoDjCLSIx" role="2Oq$k0" />
                        <node concept="liA8E" id="6EvoDjCLSIy" role="2OqNvi">
                          <ref role="37wK5l" to="ends:~ModelRootBase.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6EvoDjCLSIz" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6EvoDjCLSI$" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
                      <node concept="2ShNRf" id="6EvoDjCLSI_" role="37wK5m">
                        <node concept="1pGfFk" id="6EvoDjCLSIB" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" node="NpqpXD9MHn" resolve="TSDtsStubRefresh" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6EvoDjCLSIC" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCLSID" role="jymVt" />
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
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9u" role="1PaTwD">
              <property role="3oM_SC" value="specifier" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIE" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1jfLtDTSd9v" role="3cqZAp">
          <node concept="1PaTwC" id="1jfLtDTSd9z" role="1aUNEU">
            <node concept="3oM_SD" id="1jfLtDTSd9_" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9A" role="1PaTwD">
              <property role="3oM_SC" value="goes" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9B" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9C" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9D" role="1PaTwD">
              <property role="3oM_SC" value="import" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9E" role="1PaTwD">
              <property role="3oM_SC" value="statement," />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9F" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9G" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9H" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9I" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9J" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1jfLtDTSd9K" role="1PaTwD">
              <property role="3oM_SC" value="folder" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIF" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIG" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIH" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSII" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIK" role="1PaTwD">
              <property role="3oM_SC" value="source-root" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCLSIL" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCLSIP" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCLSIR" role="1PaTwD">
              <property role="3oM_SC" value="UI." />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIS" role="1PaTwD">
              <property role="3oM_SC" value="Discovering" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIT" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIU" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIV" role="1PaTwD">
              <property role="3oM_SC" value="node_modules" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIW" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIX" role="1PaTwD">
              <property role="3oM_SC" value="step" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIY" role="1PaTwD">
              <property role="3oM_SC" value="4" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSIZ" role="1PaTwD">
              <property role="3oM_SC" value="work;" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ0" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ1" role="1PaTwD">
              <property role="3oM_SC" value="*Importing" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ2" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ3" role="1PaTwD">
              <property role="3oM_SC" value=".d.ts*" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ4" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCLSJ5" role="1PaTwD">
              <property role="3oM_SC" value="ROADMAP.md." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EvoDjCLSJ6" role="3cqZAp">
          <node concept="3cpWsn" id="6EvoDjCLSJ9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="6EvoDjCLSJb" role="1tU5fm">
              <node concept="3uibUv" id="6EvoDjCLSJd" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="6EvoDjCLSJe" role="33vP2m">
              <node concept="Tc6Ow" id="6EvoDjCLSJg" role="2ShVmc">
                <node concept="3uibUv" id="6EvoDjCLSJh" role="HW$YZ">
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
                    <node concept="10M0yZ" id="6EvoDjCLSJi" role="37wK5m">
                      <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                      <ref role="3cqZAo" node="6EvoDjCLSGR" resolve="LISTING" />
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
                      <ref role="3cqZAo" node="6EvoDjCLSJ9" resolve="result" />
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
            <ref role="3cqZAo" node="6EvoDjCLSJ9" resolve="result" />
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
        <node concept="3SKdUt" id="NpqpXD9O$c" role="3cqZAp">
          <node concept="1PaTwC" id="NpqpXD9O$g" role="1aUNEU">
            <node concept="3oM_SD" id="NpqpXD9O$i" role="1PaTwD">
              <property role="3oM_SC" value="Registering" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$j" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$k" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$l" role="1PaTwD">
              <property role="3oM_SC" value="half" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$m" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$n" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$o" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$p" role="1PaTwD">
              <property role="3oM_SC" value="module's" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$q" role="1PaTwD">
              <property role="3oM_SC" value="roots" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$r" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$s" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$t" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$u" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$v" role="1PaTwD">
              <property role="3oM_SC" value="runs," />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$w" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$x" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$y" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="NpqpXD9O$z" role="3cqZAp">
          <node concept="1PaTwC" id="NpqpXD9O$B" role="1aUNEU">
            <node concept="3oM_SD" id="NpqpXD9O$D" role="1PaTwD">
              <property role="3oM_SC" value="declaring" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$E" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$F" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$G" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$H" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$I" role="1PaTwD">
              <property role="3oM_SC" value="had" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$J" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$K" role="1PaTwD">
              <property role="3oM_SC" value="dropped" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$L" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$M" role="1PaTwD">
              <property role="3oM_SC" value="`Unknown" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$N" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$O" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$P" role="1PaTwD">
              <property role="3oM_SC" value="type`," />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$Q" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$R" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="NpqpXD9O$S" role="3cqZAp">
          <node concept="1PaTwC" id="NpqpXD9O$W" role="1aUNEU">
            <node concept="3oM_SD" id="NpqpXD9O$Y" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O$Z" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_1" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_2" role="1PaTwD">
              <property role="3oM_SC" value="told" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_4" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_5" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_6" role="1PaTwD">
              <property role="3oM_SC" value="roots" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9O_7" role="1PaTwD">
              <property role="3oM_SC" value="again." />
            </node>
          </node>
        </node>
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
        <node concept="3clFbF" id="NpqpXD9O_8" role="3cqZAp">
          <node concept="2OqwBi" id="NpqpXD9O_a" role="3clFbG">
            <node concept="2OqwBi" id="NpqpXD9O_d" role="2Oq$k0">
              <node concept="2YIFZM" id="NpqpXD9O_g" role="2Oq$k0">
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="NpqpXD9O_h" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="NpqpXD9O_i" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="2ShNRf" id="NpqpXD9O_j" role="37wK5m">
                <node concept="1pGfFk" id="NpqpXD9O_l" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="NpqpXD9MHn" resolve="TSDtsStubRefresh" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHfTE" role="3cqZAp">
          <node concept="2YIFZM" id="6EvoDjCHfTG" role="3clFbG">
            <ref role="1Pybhc" node="6EvoDjCHdIQ" resolve="TSDtsStubUi" />
            <ref role="37wK5l" node="6EvoDjCHdJ8" resolve="register" />
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
        <node concept="3clFbF" id="6EvoDjCHfTH" role="3cqZAp">
          <node concept="2YIFZM" id="6EvoDjCHfTJ" role="3clFbG">
            <ref role="1Pybhc" node="6EvoDjCHdIQ" resolve="TSDtsStubUi" />
            <ref role="37wK5l" node="6EvoDjCHdLE" resolve="unregister" />
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
    <node concept="2tJIrI" id="6EvoDjCJSgF" role="jymVt" />
    <node concept="3clFb_" id="6EvoDjCJSgG" role="jymVt">
      <property role="TrG5h" value="attach" />
      <node concept="2AHcQZ" id="6EvoDjCJSgK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="6EvoDjCJSgL" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCJSgM" role="3clF45" />
      <node concept="37vLTG" id="6EvoDjCJSgN" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6EvoDjCJSgP" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="6EvoDjCJSgQ" role="3clF47">
        <node concept="3clFbF" id="6EvoDjCJSgR" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCJSgT" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCJSgW" role="2Oq$k0">
              <node concept="Xjq3P" id="6EvoDjCJSgZ" role="2Oq$k0" />
              <node concept="liA8E" id="6EvoDjCJSh0" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.getSource()" resolve="getSource" />
              </node>
            </node>
            <node concept="liA8E" id="6EvoDjCJSh1" role="2OqNvi">
              <ref role="37wK5l" to="dush:~DataSource.addListener(org.jetbrains.mps.openapi.persistence.DataSourceListener)" resolve="addListener" />
              <node concept="Xjq3P" id="6EvoDjCJSh2" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCJSh3" role="3cqZAp">
          <node concept="3nyPlj" id="6EvoDjCJSh5" role="3clFbG">
            <ref role="37wK5l" to="g3l6:~SModelBase.attach(org.jetbrains.mps.openapi.module.SRepository)" resolve="attach" />
            <node concept="37vLTw" id="6EvoDjCJSh6" role="37wK5m">
              <ref role="3cqZAo" node="6EvoDjCJSgN" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCJSh7" role="jymVt" />
    <node concept="3clFb_" id="6EvoDjCJSh8" role="jymVt">
      <property role="TrG5h" value="detach" />
      <node concept="2AHcQZ" id="6EvoDjCJShc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="6EvoDjCJShd" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCJShe" role="3clF45" />
      <node concept="3clFbS" id="6EvoDjCJShf" role="3clF47">
        <node concept="3clFbF" id="6EvoDjCJShg" role="3cqZAp">
          <node concept="3nyPlj" id="6EvoDjCJShi" role="3clFbG">
            <ref role="37wK5l" to="g3l6:~SModelBase.detach()" resolve="detach" />
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCJShj" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCJShl" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCJSho" role="2Oq$k0">
              <node concept="Xjq3P" id="6EvoDjCJShr" role="2Oq$k0" />
              <node concept="liA8E" id="6EvoDjCJShs" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.getSource()" resolve="getSource" />
              </node>
            </node>
            <node concept="liA8E" id="6EvoDjCJSht" role="2OqNvi">
              <ref role="37wK5l" to="dush:~DataSource.removeListener(org.jetbrains.mps.openapi.persistence.DataSourceListener)" resolve="removeListener" />
              <node concept="Xjq3P" id="6EvoDjCJShu" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCJShv" role="jymVt" />
    <node concept="3clFb_" id="6EvoDjCJShw" role="jymVt">
      <property role="TrG5h" value="changed" />
      <node concept="2AHcQZ" id="6EvoDjCJSh$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="6EvoDjCJSh_" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCJShA" role="3clF45" />
      <node concept="37vLTG" id="6EvoDjCJShB" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="6EvoDjCJShD" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
      </node>
      <node concept="3clFbS" id="6EvoDjCJShE" role="3clF47">
        <node concept="3SKdUt" id="6EvoDjCJShF" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCJShJ" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCJShL" role="1PaTwD">
              <property role="3oM_SC" value="Something" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShM" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShN" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShO" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShP" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShQ" role="1PaTwD">
              <property role="3oM_SC" value="changed," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShR" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShS" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShT" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShU" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShV" role="1PaTwD">
              <property role="3oM_SC" value="re-extracted" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShW" role="1PaTwD">
              <property role="3oM_SC" value="whole." />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShX" role="1PaTwD">
              <property role="3oM_SC" value="Not" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJShY" role="1PaTwD">
              <property role="3oM_SC" value="incremental," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCJShZ" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCJSi3" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCJSi5" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSi6" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSi7" role="1PaTwD">
              <property role="3oM_SC" value="data" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSi8" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSi9" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSia" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSib" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSic" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSid" role="1PaTwD">
              <property role="3oM_SC" value="directory," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSie" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSif" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSig" role="1PaTwD">
              <property role="3oM_SC" value="fires" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSih" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSii" role="1PaTwD">
              <property role="3oM_SC" value="often" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSij" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSik" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSil" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCJSim" role="1PaTwD">
              <property role="3oM_SC" value="to." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EvoDjCJSin" role="3cqZAp">
          <node concept="3cpWsn" id="6EvoDjCJSiq" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6EvoDjCJSis" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6EvoDjCJSit" role="33vP2m">
              <node concept="Xjq3P" id="6EvoDjCJSiw" role="2Oq$k0" />
              <node concept="liA8E" id="6EvoDjCJSix" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6EvoDjCJSiy" role="3cqZAp">
          <node concept="3clFbC" id="6EvoDjCJSi_" role="3clFbw">
            <node concept="37vLTw" id="6EvoDjCJSiC" role="3uHU7B">
              <ref role="3cqZAo" node="6EvoDjCJSiq" resolve="repository" />
            </node>
            <node concept="10Nm6u" id="6EvoDjCJSiD" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="6EvoDjCJSiE" role="3clFbx">
            <node concept="3cpWs6" id="6EvoDjCJSiF" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCJSiG" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCJSiI" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCJSiL" role="2Oq$k0">
              <node concept="37vLTw" id="6EvoDjCJSiO" role="2Oq$k0">
                <ref role="3cqZAo" node="6EvoDjCJSiq" resolve="repository" />
              </node>
              <node concept="liA8E" id="6EvoDjCJSiP" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6EvoDjCJSiQ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="Xjq3P" id="6EvoDjCJSiR" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCJSiS" role="jymVt" />
    <node concept="3clFb_" id="6EvoDjCJSiT" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="2AHcQZ" id="6EvoDjCJSiX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="6EvoDjCJSiY" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCJSiZ" role="3clF45" />
      <node concept="3clFbS" id="6EvoDjCJSj0" role="3clF47">
        <node concept="3clFbF" id="6EvoDjCJSj1" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCJSj3" role="3clFbG">
            <node concept="Xjq3P" id="6EvoDjCJSj6" role="2Oq$k0" />
            <node concept="liA8E" id="6EvoDjCJSj7" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.replace(jetbrains.mps.smodel.ModelLoadResult)" resolve="replace" />
              <node concept="2OqwBi" id="6EvoDjCJSj8" role="37wK5m">
                <node concept="Xjq3P" id="6EvoDjCJSjb" role="2Oq$k0" />
                <node concept="liA8E" id="6EvoDjCJSjc" role="2OqNvi">
                  <ref role="37wK5l" node="1jfLtDTS3Be" resolve="createModel" />
                </node>
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
    <node concept="3uibUv" id="6EvoDjCJSgD" role="EKbjA">
      <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
    </node>
    <node concept="3uibUv" id="6EvoDjCJSgE" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
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
            <node concept="3clFbH" id="6EvoDjCP20f" role="3cqZAp" />
            <node concept="3clFbF" id="6EvoDjCP20g" role="3cqZAp">
              <node concept="2YIFZM" id="6EvoDjCP20i" role="3clFbG">
                <ref role="1Pybhc" node="1jfLtDU6Tyn" resolve="TSDtsStubJson" />
                <ref role="37wK5l" node="6EvoDjCP20k" resolve="dropUnresolved" />
                <node concept="37vLTw" id="6EvoDjCP20j" role="37wK5m">
                  <ref role="3cqZAo" node="1jfLtDU6TzR" resolve="file" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1jfLtDU6TE8" role="jymVt" />
    <node concept="2YIFZL" id="6EvoDjCP20k" role="jymVt">
      <property role="TrG5h" value="dropUnresolved" />
      <node concept="3Tm6S6" id="6EvoDjCP20o" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCP20p" role="3clF45" />
      <node concept="37vLTG" id="6EvoDjCP20q" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3Tqbb2" id="6EvoDjCP20s" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1jfLtDTvUXv" resolve="TSDeclarationFile" />
        </node>
      </node>
      <node concept="3clFbS" id="6EvoDjCP20t" role="3clF47">
        <node concept="3SKdUt" id="6EvoDjCP20u" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCP20y" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCP20$" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20_" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20A" role="1PaTwD">
              <property role="3oM_SC" value="whose" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20B" role="1PaTwD">
              <property role="3oM_SC" value="alias" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20C" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20D" role="1PaTwD">
              <property role="3oM_SC" value="itself" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20E" role="1PaTwD">
              <property role="3oM_SC" value="unrepresentable" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20F" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20G" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20H" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20I" role="1PaTwD">
              <property role="3oM_SC" value="bind" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20J" role="1PaTwD">
              <property role="3oM_SC" value="to," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20K" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20L" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20M" role="1PaTwD">
              <property role="3oM_SC" value="unset" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCP20N" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCP20R" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCP20T" role="1PaTwD">
              <property role="3oM_SC" value="obligatory" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20U" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20V" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20W" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20X" role="1PaTwD">
              <property role="3oM_SC" value="broken" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20Y" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP20Z" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP210" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP211" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP212" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP213" role="1PaTwD">
              <property role="3oM_SC" value="holding" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP214" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP215" role="1PaTwD">
              <property role="3oM_SC" value="goes" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP216" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP217" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP218" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP219" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCP21a" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCP21e" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCP21g" role="1PaTwD">
              <property role="3oM_SC" value="unrepresentable" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21h" role="1PaTwD">
              <property role="3oM_SC" value="declaration" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21i" role="1PaTwD">
              <property role="3oM_SC" value="goes." />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21j" role="1PaTwD">
              <property role="3oM_SC" value="Dropping" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21k" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21l" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21m" role="1PaTwD">
              <property role="3oM_SC" value="strand" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21n" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21o" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21p" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21q" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21r" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21s" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCP21t" role="1PaTwD">
              <property role="3oM_SC" value="loop." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EvoDjCP21u" role="3cqZAp">
          <node concept="3cpWsn" id="6EvoDjCP21x" role="3cpWs9">
            <property role="TrG5h" value="changed" />
            <node concept="10P_77" id="6EvoDjCP21z" role="1tU5fm" />
            <node concept="3clFbT" id="6EvoDjCP21$" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6EvoDjCP21_" role="3cqZAp">
          <node concept="37vLTw" id="6EvoDjCP21C" role="2$JKZa">
            <ref role="3cqZAo" node="6EvoDjCP21x" resolve="changed" />
          </node>
          <node concept="3clFbS" id="6EvoDjCP21D" role="2LFqv$">
            <node concept="3clFbF" id="6EvoDjCP21E" role="3cqZAp">
              <node concept="37vLTI" id="6EvoDjCP21G" role="3clFbG">
                <node concept="37vLTw" id="6EvoDjCP21J" role="37vLTJ">
                  <ref role="3cqZAo" node="6EvoDjCP21x" resolve="changed" />
                </node>
                <node concept="3clFbT" id="6EvoDjCP21K" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6EvoDjCP21L" role="3cqZAp">
              <node concept="3cpWsn" id="6EvoDjCP21O" role="3cpWs9">
                <property role="TrG5h" value="broken" />
                <node concept="_YKpA" id="6EvoDjCP21Q" role="1tU5fm">
                  <node concept="3Tqbb2" id="6EvoDjCP21S" role="_ZDj9">
                    <ref role="ehGHo" to="mo8k:1jfLtDTxEwd" resolve="TSIDeclarationFileMember" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6EvoDjCP21T" role="33vP2m">
                  <node concept="Tc6Ow" id="6EvoDjCP21V" role="2ShVmc">
                    <node concept="3Tqbb2" id="6EvoDjCP21W" role="HW$YZ">
                      <ref role="ehGHo" to="mo8k:1jfLtDTxEwd" resolve="TSIDeclarationFileMember" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6EvoDjCP21X" role="3cqZAp">
              <node concept="2GrKxI" id="6EvoDjCP221" role="2Gsz3X">
                <property role="TrG5h" value="declaration" />
              </node>
              <node concept="2OqwBi" id="6EvoDjCP222" role="2GsD0m">
                <node concept="37vLTw" id="6EvoDjCP225" role="2Oq$k0">
                  <ref role="3cqZAo" node="6EvoDjCP20q" resolve="file" />
                </node>
                <node concept="3Tsc0h" id="6EvoDjCP226" role="2OqNvi">
                  <ref role="3TtcxE" to="mo8k:1jfLtDTvUXx" resolve="declarations" />
                </node>
              </node>
              <node concept="3clFbS" id="6EvoDjCP227" role="2LFqv$">
                <node concept="2Gpval" id="6EvoDjCP228" role="3cqZAp">
                  <node concept="2GrKxI" id="6EvoDjCP22c" role="2Gsz3X">
                    <property role="TrG5h" value="reference" />
                  </node>
                  <node concept="2OqwBi" id="6EvoDjCP22d" role="2GsD0m">
                    <node concept="2GrUjf" id="6EvoDjCP22g" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6EvoDjCP221" resolve="declaration" />
                    </node>
                    <node concept="2Rf3mk" id="6EvoDjCP22h" role="2OqNvi">
                      <node concept="1xMEDy" id="6EvoDjCP22k" role="1xVPHs">
                        <node concept="chp4Y" id="6EvoDjCP22m" role="ri$Ld">
                          <ref role="cht4Q" to="mo8k:1jfLtDTxEF7" resolve="TSTypeReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6EvoDjCP22n" role="2LFqv$">
                    <node concept="3clFbJ" id="6EvoDjCP22o" role="3cqZAp">
                      <node concept="3clFbC" id="6EvoDjCP22r" role="3clFbw">
                        <node concept="2OqwBi" id="6EvoDjCP22u" role="3uHU7B">
                          <node concept="2GrUjf" id="6EvoDjCP22x" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6EvoDjCP22c" resolve="reference" />
                          </node>
                          <node concept="3TrEf2" id="6EvoDjCP22y" role="2OqNvi">
                            <ref role="3Tt5mk" to="mo8k:1jfLtDTxEF9" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="6EvoDjCP22z" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="6EvoDjCP22$" role="3clFbx">
                        <node concept="3clFbF" id="6EvoDjCP22_" role="3cqZAp">
                          <node concept="2OqwBi" id="6EvoDjCP22B" role="3clFbG">
                            <node concept="37vLTw" id="6EvoDjCP22E" role="2Oq$k0">
                              <ref role="3cqZAo" node="6EvoDjCP21O" resolve="broken" />
                            </node>
                            <node concept="TSZUe" id="6EvoDjCP22F" role="2OqNvi">
                              <node concept="2GrUjf" id="6EvoDjCP22H" role="25WWJ7">
                                <ref role="2Gs0qQ" node="6EvoDjCP221" resolve="declaration" />
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
            <node concept="2Gpval" id="6EvoDjCP22I" role="3cqZAp">
              <node concept="2GrKxI" id="6EvoDjCP22M" role="2Gsz3X">
                <property role="TrG5h" value="b" />
              </node>
              <node concept="37vLTw" id="6EvoDjCP22N" role="2GsD0m">
                <ref role="3cqZAo" node="6EvoDjCP21O" resolve="broken" />
              </node>
              <node concept="3clFbS" id="6EvoDjCP22O" role="2LFqv$">
                <node concept="3clFbF" id="6EvoDjCP22P" role="3cqZAp">
                  <node concept="2OqwBi" id="6EvoDjCP22R" role="3clFbG">
                    <node concept="2OqwBi" id="6EvoDjCP22U" role="2Oq$k0">
                      <node concept="37vLTw" id="6EvoDjCP22X" role="2Oq$k0">
                        <ref role="3cqZAo" node="6EvoDjCP20q" resolve="file" />
                      </node>
                      <node concept="3Tsc0h" id="6EvoDjCP22Y" role="2OqNvi">
                        <ref role="3TtcxE" to="mo8k:1jfLtDTvUXx" resolve="declarations" />
                      </node>
                    </node>
                    <node concept="3dhRuq" id="6EvoDjCP22Z" role="2OqNvi">
                      <node concept="2GrUjf" id="6EvoDjCP231" role="25WWJ7">
                        <ref role="2Gs0qQ" node="6EvoDjCP22M" resolve="b" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6EvoDjCP232" role="3cqZAp">
                  <node concept="37vLTI" id="6EvoDjCP234" role="3clFbG">
                    <node concept="37vLTw" id="6EvoDjCP237" role="37vLTJ">
                      <ref role="3cqZAo" node="6EvoDjCP21x" resolve="changed" />
                    </node>
                    <node concept="3clFbT" id="6EvoDjCP238" role="37vLTx">
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
    <node concept="2tJIrI" id="6EvoDjCP239" role="jymVt" />
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
  <node concept="312cEu" id="NpqpXD9MHj">
    <property role="TrG5h" value="TSDtsStubRefresh" />
    <node concept="3Tm1VV" id="NpqpXD9MHl" role="1B3o_S" />
    <node concept="3uibUv" id="NpqpXD9MHm" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
    </node>
    <node concept="3clFbW" id="NpqpXD9MHn" role="jymVt">
      <node concept="3cqZAl" id="NpqpXD9MHo" role="3clF45" />
      <node concept="3Tm1VV" id="NpqpXD9MHr" role="1B3o_S" />
      <node concept="3clFbS" id="NpqpXD9MHs" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="NpqpXD9MHt" role="jymVt" />
    <node concept="3clFb_" id="NpqpXD9MHu" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="2AHcQZ" id="NpqpXD9MHy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tm1VV" id="NpqpXD9MHz" role="1B3o_S" />
      <node concept="3cqZAl" id="NpqpXD9MH$" role="3clF45" />
      <node concept="3clFbS" id="NpqpXD9MH_" role="3clF47">
        <node concept="3SKdUt" id="NpqpXD9MHA" role="3cqZAp">
          <node concept="1PaTwC" id="NpqpXD9MHE" role="1aUNEU">
            <node concept="3oM_SD" id="NpqpXD9MHG" role="1PaTwD">
              <property role="3oM_SC" value="Only" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHI" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHJ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHK" role="1PaTwD">
              <property role="3oM_SC" value="ask" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHL" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHM" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHN" role="1PaTwD">
              <property role="3oM_SC" value="type," />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHO" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHP" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHQ" role="1PaTwD">
              <property role="3oM_SC" value="costs" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHR" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHS" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHT" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHU" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHV" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="NpqpXD9MHW" role="1PaTwD">
              <property role="3oM_SC" value="stubs." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NpqpXD9MHX" role="3cqZAp">
          <node concept="3cpWsn" id="NpqpXD9MI0" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="NpqpXD9MI2" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="2YIFZM" id="NpqpXD9MI3" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="NpqpXD9MI4" role="3cqZAp">
          <node concept="2GrKxI" id="NpqpXD9MI8" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="2OqwBi" id="NpqpXD9MI9" role="2GsD0m">
            <node concept="37vLTw" id="NpqpXD9MIc" role="2Oq$k0">
              <ref role="3cqZAo" node="NpqpXD9MI0" resolve="repository" />
            </node>
            <node concept="liA8E" id="NpqpXD9MId" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModules()" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="NpqpXD9MIe" role="2LFqv$">
            <node concept="3clFbJ" id="NpqpXD9MIf" role="3cqZAp">
              <node concept="3fqX7Q" id="NpqpXD9MIi" role="3clFbw">
                <node concept="1eOMI4" id="NpqpXD9MIk" role="3fr31v">
                  <node concept="2ZW3vV" id="NpqpXD9MIm" role="1eOMHV">
                    <node concept="2GrUjf" id="NpqpXD9MIp" role="2ZW6bz">
                      <ref role="2Gs0qQ" node="NpqpXD9MI8" resolve="module" />
                    </node>
                    <node concept="3uibUv" id="NpqpXD9MIq" role="2ZW6by">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="NpqpXD9MIr" role="3clFbx">
                <node concept="3N13vt" id="NpqpXD9MIs" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="NpqpXD9MIt" role="3cqZAp">
              <node concept="3cpWsn" id="NpqpXD9MIw" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="NpqpXD9MIy" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                </node>
                <node concept="10QFUN" id="NpqpXD9MIz" role="33vP2m">
                  <node concept="3uibUv" id="NpqpXD9MIA" role="10QFUM">
                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                  </node>
                  <node concept="2GrUjf" id="NpqpXD9MIB" role="10QFUP">
                    <ref role="2Gs0qQ" node="NpqpXD9MI8" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="NpqpXD9MIC" role="3cqZAp">
              <node concept="2YIFZM" id="NpqpXD9MIF" role="3clFbw">
                <ref role="1Pybhc" node="NpqpXD9MHj" resolve="TSDtsStubRefresh" />
                <ref role="37wK5l" node="NpqpXD9MIQ" resolve="declaresStubRoot" />
                <node concept="37vLTw" id="NpqpXD9MIG" role="37wK5m">
                  <ref role="3cqZAo" node="NpqpXD9MIw" resolve="m" />
                </node>
              </node>
              <node concept="3clFbS" id="NpqpXD9MIH" role="3clFbx">
                <node concept="3clFbF" id="NpqpXD9MII" role="3cqZAp">
                  <node concept="2OqwBi" id="NpqpXD9MIK" role="3clFbG">
                    <node concept="37vLTw" id="NpqpXD9MIN" role="2Oq$k0">
                      <ref role="3cqZAo" node="NpqpXD9MIw" resolve="m" />
                    </node>
                    <node concept="liA8E" id="NpqpXD9MIO" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.updateModelsSet()" resolve="updateModelsSet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NpqpXD9MIP" role="jymVt" />
    <node concept="2YIFZL" id="NpqpXD9MIQ" role="jymVt">
      <property role="TrG5h" value="declaresStubRoot" />
      <node concept="3Tm6S6" id="NpqpXD9MIU" role="1B3o_S" />
      <node concept="10P_77" id="NpqpXD9MIV" role="3clF45" />
      <node concept="37vLTG" id="NpqpXD9MIW" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="NpqpXD9MIY" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
        </node>
      </node>
      <node concept="3clFbS" id="NpqpXD9MIZ" role="3clF47">
        <node concept="3cpWs8" id="NpqpXD9MJ0" role="3cqZAp">
          <node concept="3cpWsn" id="NpqpXD9MJ3" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <node concept="3uibUv" id="NpqpXD9MJ5" role="1tU5fm">
              <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
            </node>
            <node concept="2OqwBi" id="NpqpXD9MJ6" role="33vP2m">
              <node concept="37vLTw" id="NpqpXD9MJ9" role="2Oq$k0">
                <ref role="3cqZAo" node="NpqpXD9MIW" resolve="module" />
              </node>
              <node concept="liA8E" id="NpqpXD9MJa" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="NpqpXD9MJb" role="3cqZAp">
          <node concept="3clFbC" id="NpqpXD9MJe" role="3clFbw">
            <node concept="37vLTw" id="NpqpXD9MJh" role="3uHU7B">
              <ref role="3cqZAo" node="NpqpXD9MJ3" resolve="descriptor" />
            </node>
            <node concept="10Nm6u" id="NpqpXD9MJi" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="NpqpXD9MJj" role="3clFbx">
            <node concept="3cpWs6" id="NpqpXD9MJk" role="3cqZAp">
              <node concept="3clFbT" id="NpqpXD9MJl" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="NpqpXD9MJm" role="3cqZAp">
          <node concept="2GrKxI" id="NpqpXD9MJq" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="NpqpXD9MJr" role="2GsD0m">
            <node concept="37vLTw" id="NpqpXD9MJu" role="2Oq$k0">
              <ref role="3cqZAo" node="NpqpXD9MJ3" resolve="descriptor" />
            </node>
            <node concept="liA8E" id="NpqpXD9MJv" role="2OqNvi">
              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getModelRootDescriptors()" resolve="getModelRootDescriptors" />
            </node>
          </node>
          <node concept="3clFbS" id="NpqpXD9MJw" role="2LFqv$">
            <node concept="3clFbJ" id="NpqpXD9MJx" role="3cqZAp">
              <node concept="2OqwBi" id="NpqpXD9MJ$" role="3clFbw">
                <node concept="10M0yZ" id="NpqpXD9MJB" role="2Oq$k0">
                  <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
                  <ref role="3cqZAo" node="1jfLtDTDIfO" resolve="TYPE" />
                </node>
                <node concept="liA8E" id="NpqpXD9MJC" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="NpqpXD9MJD" role="37wK5m">
                    <node concept="2GrUjf" id="NpqpXD9MJG" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="NpqpXD9MJq" resolve="root" />
                    </node>
                    <node concept="liA8E" id="NpqpXD9MJH" role="2OqNvi">
                      <ref role="37wK5l" to="6qgz:~ModelRootDescriptor.getType()" resolve="getType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="NpqpXD9MJI" role="3clFbx">
                <node concept="3cpWs6" id="NpqpXD9MJJ" role="3cqZAp">
                  <node concept="3clFbT" id="NpqpXD9MJK" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="NpqpXD9MJL" role="3cqZAp">
          <node concept="3clFbT" id="NpqpXD9MJM" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6EvoDjCHdIQ">
    <property role="TrG5h" value="TSDtsStubUi" />
    <node concept="3Tm1VV" id="6EvoDjCHdIS" role="1B3o_S" />
    <node concept="Wx3nA" id="6EvoDjCHdIT" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DISPOSABLE" />
      <node concept="3Tm6S6" id="6EvoDjCHdIW" role="1B3o_S" />
      <node concept="3uibUv" id="6EvoDjCHdIX" role="1tU5fm">
        <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
      </node>
      <node concept="2YIFZM" id="6EvoDjCHdIY" role="33vP2m">
        <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
        <ref role="37wK5l" to="zn9m:~Disposer.newDisposable(java.lang.String)" resolve="newDisposable" />
        <node concept="Xl_RD" id="6EvoDjCHdIZ" role="37wK5m">
          <property role="Xl_RC" value="TSDtsStubs" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCHdJ0" role="jymVt" />
    <node concept="3clFbW" id="6EvoDjCHdJ1" role="jymVt">
      <node concept="3cqZAl" id="6EvoDjCHdJ2" role="3clF45" />
      <node concept="3Tm1VV" id="6EvoDjCHdJ5" role="1B3o_S" />
      <node concept="3clFbS" id="6EvoDjCHdJ6" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6EvoDjCHdJ7" role="jymVt" />
    <node concept="2YIFZL" id="6EvoDjCHdJ8" role="jymVt">
      <property role="TrG5h" value="register" />
      <node concept="3Tm1VV" id="6EvoDjCHdJc" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCHdJd" role="3clF45" />
      <node concept="3clFbS" id="6EvoDjCHdJe" role="3clF47">
        <node concept="3SKdUt" id="6EvoDjCHdJf" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCHdJj" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCHdJl" role="1PaTwD">
              <property role="3oM_SC" value="What" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJm" role="1PaTwD">
              <property role="3oM_SC" value="puts" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJo" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJp" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJr" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJs" role="1PaTwD">
              <property role="3oM_SC" value="properties" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJt" role="1PaTwD">
              <property role="3oM_SC" value="dialog." />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJu" role="1PaTwD">
              <property role="3oM_SC" value="ModelRootEntryPersistence" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJv" role="1PaTwD">
              <property role="3oM_SC" value="reads" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJw" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCHdJx" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCHdJ_" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCHdJB" role="1PaTwD">
              <property role="3oM_SC" value="extension" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJC" role="1PaTwD">
              <property role="3oM_SC" value="point" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJD" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJE" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJF" role="1PaTwD">
              <property role="3oM_SC" value="open," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJG" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJH" role="1PaTwD">
              <property role="3oM_SC" value="registering" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJI" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJJ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJK" role="1PaTwD">
              <property role="3oM_SC" value="soon" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJL" role="1PaTwD">
              <property role="3oM_SC" value="enough" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJM" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJN" role="1PaTwD">
              <property role="3oM_SC" value="unlike" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJP" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJQ" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCHdJR" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCHdJV" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCHdJX" role="1PaTwD">
              <property role="3oM_SC" value="factory," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJY" role="1PaTwD">
              <property role="3oM_SC" value="whose" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdJZ" role="1PaTwD">
              <property role="3oM_SC" value="absence" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK0" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK1" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK2" role="1PaTwD">
              <property role="3oM_SC" value="permanent" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK3" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK5" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK6" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK7" role="1PaTwD">
              <property role="3oM_SC" value="application" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK8" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdK9" role="1PaTwD">
              <property role="3oM_SC" value="runs." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6EvoDjCHdKa" role="3cqZAp">
          <node concept="1PaTwC" id="6EvoDjCHdKe" role="1aUNEU">
            <node concept="3oM_SD" id="6EvoDjCHdKg" role="1PaTwD">
              <property role="3oM_SC" value="Our" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKh" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKi" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKj" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKk" role="1PaTwD">
              <property role="3oM_SC" value="FileBasedModelRoot," />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKl" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKm" role="1PaTwD">
              <property role="3oM_SC" value="MPS's" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKn" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKo" role="1PaTwD">
              <property role="3oM_SC" value="editor" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKp" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKq" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKr" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKs" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKt" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="6EvoDjCHdKu" role="1PaTwD">
              <property role="3oM_SC" value="UI." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EvoDjCHdKv" role="3cqZAp">
          <node concept="3cpWsn" id="6EvoDjCHdKy" role="3cpWs9">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="6EvoDjCHdK$" role="1tU5fm">
              <ref role="3uigEE" to="hkuf:~ModelRootEntryEP" resolve="ModelRootEntryEP" />
            </node>
            <node concept="2ShNRf" id="6EvoDjCHdK_" role="33vP2m">
              <node concept="1pGfFk" id="6EvoDjCHdKB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="hkuf:~ModelRootEntryEP.&lt;init&gt;()" resolve="ModelRootEntryEP" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHdKC" role="3cqZAp">
          <node concept="37vLTI" id="6EvoDjCHdKE" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCHdKH" role="37vLTJ">
              <node concept="37vLTw" id="6EvoDjCHdKK" role="2Oq$k0">
                <ref role="3cqZAo" node="6EvoDjCHdKy" resolve="entry" />
              </node>
              <node concept="2OwXpG" id="6EvoDjCHdKL" role="2OqNvi">
                <ref role="2Oxat5" to="hkuf:~ModelRootEntryEP.rootType" resolve="rootType" />
              </node>
            </node>
            <node concept="10M0yZ" id="6EvoDjCHdKM" role="37vLTx">
              <ref role="1PxDUh" node="1jfLtDTDIfK" resolve="TSDtsStubsModelRoot" />
              <ref role="3cqZAo" node="1jfLtDTDIfO" resolve="TYPE" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHdKN" role="3cqZAp">
          <node concept="37vLTI" id="6EvoDjCHdKP" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCHdKS" role="37vLTJ">
              <node concept="37vLTw" id="6EvoDjCHdKV" role="2Oq$k0">
                <ref role="3cqZAo" node="6EvoDjCHdKy" resolve="entry" />
              </node>
              <node concept="2OwXpG" id="6EvoDjCHdKW" role="2OqNvi">
                <ref role="2Oxat5" to="hkuf:~ModelRootEntryEP.title" resolve="title" />
              </node>
            </node>
            <node concept="Xl_RD" id="6EvoDjCHdKX" role="37vLTx">
              <property role="Xl_RC" value="TypeScript &amp;Stubs" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHdKY" role="3cqZAp">
          <node concept="37vLTI" id="6EvoDjCHdL0" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCHdL3" role="37vLTJ">
              <node concept="37vLTw" id="6EvoDjCHdL6" role="2Oq$k0">
                <ref role="3cqZAo" node="6EvoDjCHdKy" resolve="entry" />
              </node>
              <node concept="2OwXpG" id="6EvoDjCHdL7" role="2OqNvi">
                <ref role="2Oxat5" to="hkuf:~ModelRootEntryEP.className" resolve="className" />
              </node>
            </node>
            <node concept="Xl_RD" id="6EvoDjCHdL8" role="37vLTx">
              <property role="Xl_RC" value="jetbrains.mps.ide.ui.dialogs.properties.roots.editors.FileBasedModelRootEntryFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHdL9" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCHdLb" role="3clFbG">
            <node concept="37vLTw" id="6EvoDjCHdLe" role="2Oq$k0">
              <ref role="3cqZAo" node="6EvoDjCHdKy" resolve="entry" />
            </node>
            <node concept="liA8E" id="6EvoDjCHdLf" role="2OqNvi">
              <ref role="37wK5l" to="hkuf:~ModelRootEntryEP.setPluginDescriptor(com.intellij.openapi.extensions.PluginDescriptor)" resolve="setPluginDescriptor" />
              <node concept="2YIFZM" id="6EvoDjCHdLg" role="37wK5m">
                <ref role="1Pybhc" to="ctgy:~PluginManagerCore" resolve="PluginManagerCore" />
                <ref role="37wK5l" to="ctgy:~PluginManagerCore.getPlugin(com.intellij.openapi.extensions.PluginId)" resolve="getPlugin" />
                <node concept="2YIFZM" id="6EvoDjCHdLh" role="37wK5m">
                  <ref role="1Pybhc" to="9ti4:~PluginId" resolve="PluginId" />
                  <ref role="37wK5l" to="9ti4:~PluginId.getId(java.lang.String)" resolve="getId" />
                  <node concept="Xl_RD" id="6EvoDjCHdLi" role="37wK5m">
                    <property role="Xl_RC" value="jetbrains.mps.core" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EvoDjCHdLj" role="3cqZAp">
          <node concept="2OqwBi" id="6EvoDjCHdLl" role="3clFbG">
            <node concept="2OqwBi" id="6EvoDjCHdLo" role="2Oq$k0">
              <node concept="2OqwBi" id="6EvoDjCHdLr" role="2Oq$k0">
                <node concept="2YIFZM" id="6EvoDjCHdLu" role="2Oq$k0">
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                </node>
                <node concept="liA8E" id="6EvoDjCHdLv" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getExtensionArea()" resolve="getExtensionArea" />
                </node>
              </node>
              <node concept="liA8E" id="6EvoDjCHdLw" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(java.lang.String)" resolve="getExtensionPoint" />
                <node concept="2OqwBi" id="6EvoDjCHdLx" role="37wK5m">
                  <node concept="10M0yZ" id="6EvoDjCHdL$" role="2Oq$k0">
                    <ref role="1PxDUh" to="hkuf:~ModelRootEntryEP" resolve="ModelRootEntryEP" />
                    <ref role="3cqZAo" to="hkuf:~ModelRootEntryEP.EP_NAME" resolve="EP_NAME" />
                  </node>
                  <node concept="liA8E" id="6EvoDjCHdL_" role="2OqNvi">
                    <ref role="37wK5l" to="9ti4:~BaseExtensionPointName.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6EvoDjCHdLA" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object,com.intellij.openapi.Disposable)" resolve="registerExtension" />
              <node concept="37vLTw" id="6EvoDjCHdLB" role="37wK5m">
                <ref role="3cqZAo" node="6EvoDjCHdKy" resolve="entry" />
              </node>
              <node concept="10M0yZ" id="6EvoDjCHdLC" role="37wK5m">
                <ref role="1PxDUh" node="6EvoDjCHdIQ" resolve="TSDtsStubUi" />
                <ref role="3cqZAo" node="6EvoDjCHdIT" resolve="DISPOSABLE" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6EvoDjCHdLD" role="jymVt" />
    <node concept="2YIFZL" id="6EvoDjCHdLE" role="jymVt">
      <property role="TrG5h" value="unregister" />
      <node concept="3Tm1VV" id="6EvoDjCHdLI" role="1B3o_S" />
      <node concept="3cqZAl" id="6EvoDjCHdLJ" role="3clF45" />
      <node concept="3clFbS" id="6EvoDjCHdLK" role="3clF47">
        <node concept="3clFbF" id="6EvoDjCHdLL" role="3cqZAp">
          <node concept="2YIFZM" id="6EvoDjCHdLN" role="3clFbG">
            <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
            <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
            <node concept="10M0yZ" id="6EvoDjCHdLO" role="37wK5m">
              <ref role="1PxDUh" node="6EvoDjCHdIQ" resolve="TSDtsStubUi" />
              <ref role="3cqZAo" node="6EvoDjCHdIT" resolve="DISPOSABLE" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

