<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:be5843eb-913c-45bb-b8ba-0d0c040265ce(de.q60.mps.lang.typescript.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1225730411176" name="jetbrains.mps.baseLanguage.collections.structure.FindLastOperation" flags="nn" index="1zesIP" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="13h7C7" id="5YMdeQZx_U">
    <ref role="13h7C2" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    <node concept="13hLZK" id="5YMdeQZx_X" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZx_Z" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZxA0" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZxA4" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZxA5" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZxA6" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZxA7" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZxA9" role="3clFbG">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZGOJ">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
    <node concept="13hLZK" id="5YMdeQZGOM" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZGOO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZGOP" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZGOT" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZGOU" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5YMdeQZGOV" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZGOW" role="3cqZAp">
          <node concept="10Nm6u" id="5YMdeQZGOY" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZGOZ" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZGP3" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZGP4" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5YMdeQZGP5" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZGP6" role="3cqZAp">
          <node concept="10Nm6u" id="5YMdeQZGP8" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZGP9" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="setSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZGPd" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZGPe" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZGPf" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZGPh" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZGPi" role="3clF47">
        <node concept="YS8fn" id="5YMdeQZGPj" role="3cqZAp">
          <node concept="2ShNRf" id="5YMdeQZGPl" role="YScLw">
            <node concept="1pGfFk" id="5YMdeQZGPn" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="3cpWs3" id="5YMdeQZGPo" role="37wK5m">
                <node concept="Xl_RD" id="5YMdeQZGPr" role="3uHU7B">
                  <property role="Xl_RC" value="This expression cannot have its left child set: " />
                </node>
                <node concept="2OqwBi" id="5YMdeQZGPs" role="3uHU7w">
                  <node concept="13iPFW" id="5YMdeQZGPv" role="2Oq$k0" />
                  <node concept="2yIwOk" id="5YMdeQZGPw" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZGPx" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="setSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZGP_" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZGPA" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZGPB" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZGPD" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZGPE" role="3clF47">
        <node concept="YS8fn" id="5YMdeQZGPF" role="3cqZAp">
          <node concept="2ShNRf" id="5YMdeQZGPH" role="YScLw">
            <node concept="1pGfFk" id="5YMdeQZGPJ" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="3cpWs3" id="5YMdeQZGPK" role="37wK5m">
                <node concept="Xl_RD" id="5YMdeQZGPN" role="3uHU7B">
                  <property role="Xl_RC" value="This expression cannot have its right child set: " />
                </node>
                <node concept="2OqwBi" id="5YMdeQZGPO" role="3uHU7w">
                  <node concept="13iPFW" id="5YMdeQZGPR" role="2Oq$k0" />
                  <node concept="2yIwOk" id="5YMdeQZGPS" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZNdC" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="canPropagateUnmatchedParenUp" />
      <node concept="3Tm1VV" id="5YMdeQZNdG" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeQZNdH" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZNdI" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="5YMdeQZNdK" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZNdL" role="3clF46">
        <property role="TrG5h" value="rightParen" />
        <node concept="10P_77" id="5YMdeQZNdN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZNdO" role="3clF47">
        <node concept="3SKdUt" id="5YMdeQZNdP" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeQZNdT" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeQZNdV" role="1PaTwD">
              <property role="3oM_SC" value="Do" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNdW" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNdX" role="1PaTwD">
              <property role="3oM_SC" value="climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNdY" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNdZ" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNe0" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNe1" role="1PaTwD">
              <property role="3oM_SC" value="disconnected" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNe2" role="1PaTwD">
              <property role="3oM_SC" value="parent." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeQZNe3" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeQZNe7" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeQZNe9" role="1PaTwD">
              <property role="3oM_SC" value="Only" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNea" role="1PaTwD">
              <property role="3oM_SC" value="syntactically" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNeb" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNec" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNed" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNee" role="1PaTwD">
              <property role="3oM_SC" value="children" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNef" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNeg" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNeh" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNei" role="1PaTwD">
              <property role="3oM_SC" value="parents" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNej" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNek" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNel" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="5YMdeQZNem" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeQZNen" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeQZNeq" role="3cpWs9">
            <property role="TrG5h" value="leafAncestors" />
            <node concept="2I9FWS" id="5YMdeQZNes" role="1tU5fm">
              <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="5YMdeQZNet" role="33vP2m">
              <node concept="37vLTw" id="5YMdeQZNew" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZNdI" resolve="leaf" />
              </node>
              <node concept="z$bX8" id="5YMdeQZNex" role="2OqNvi">
                <node concept="1xIGOp" id="5YMdeQZNey" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeQZNez" role="3cqZAp">
          <node concept="22lmx$" id="5YMdeQZNe$" role="3cqZAk">
            <node concept="2OqwBi" id="5YMdeQZNeB" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeQZNeE" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZNeq" resolve="leafAncestors" />
              </node>
              <node concept="3JPx81" id="5YMdeQZNeF" role="2OqNvi">
                <node concept="2OqwBi" id="5YMdeQZNeH" role="25WWJ7">
                  <node concept="13iPFW" id="5YMdeQZNeK" role="2Oq$k0" />
                  <node concept="3zqWPK" id="5YMdeQZNeL" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5YMdeQZNeM" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeQZNeP" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZNeq" resolve="leafAncestors" />
              </node>
              <node concept="3JPx81" id="5YMdeQZNeQ" role="2OqNvi">
                <node concept="2OqwBi" id="5YMdeQZNeS" role="25WWJ7">
                  <node concept="13iPFW" id="5YMdeQZNeV" role="2Oq$k0" />
                  <node concept="3zqWPK" id="5YMdeQZNeW" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZSbA">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSI" resolve="TSIIncompleteParen" />
    <node concept="13hLZK" id="5YMdeQZSbD" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZSbF" role="2VODD2">
        <node concept="3clFbF" id="5YMdeQZSbG" role="3cqZAp">
          <node concept="37vLTI" id="5YMdeQZSbI" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZSbL" role="37vLTJ">
              <node concept="13iPFW" id="5YMdeQZSbO" role="2Oq$k0" />
              <node concept="3TrcHB" id="5YMdeQZSbP" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
              </node>
            </node>
            <node concept="3cmrfG" id="5YMdeQZSbQ" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZSbR" role="13h7CS">
      <property role="TrG5h" value="increaseCount" />
      <node concept="3Tm1VV" id="5YMdeQZSbV" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZSbW" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZSbX" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZSbY" role="3cqZAp">
          <node concept="d57v9" id="5YMdeQZSc0" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZSc3" role="37vLTJ">
              <node concept="13iPFW" id="5YMdeQZSc6" role="2Oq$k0" />
              <node concept="3TrcHB" id="5YMdeQZSc7" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
              </node>
            </node>
            <node concept="3cmrfG" id="5YMdeQZSc8" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZSc9" role="13h7CS">
      <property role="TrG5h" value="decreaseCount" />
      <node concept="3Tm1VV" id="5YMdeQZScd" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZSce" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZScf" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZScg" role="3cqZAp">
          <node concept="d5anL" id="5YMdeQZSci" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZScl" role="37vLTJ">
              <node concept="13iPFW" id="5YMdeQZSco" role="2Oq$k0" />
              <node concept="3TrcHB" id="5YMdeQZScp" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
              </node>
            </node>
            <node concept="3cmrfG" id="5YMdeQZScq" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZScr" role="13h7CS">
      <property role="TrG5h" value="isSingleParen" />
      <node concept="3Tm1VV" id="5YMdeQZScv" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeQZScw" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZScx" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZScy" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeQZSc$" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZScB" role="3uHU7B">
              <node concept="13iPFW" id="5YMdeQZScE" role="2Oq$k0" />
              <node concept="3TrcHB" id="5YMdeQZScF" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
              </node>
            </node>
            <node concept="3cmrfG" id="5YMdeQZScG" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZT$K">
    <ref role="13h7C2" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
    <node concept="13hLZK" id="5YMdeQZT$N" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZT$P" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZT$Q" role="13h7CS">
      <property role="TrG5h" value="getSyntacticallyLeftSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZT$U" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZT$V" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5YMdeQZT$W" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZT$X" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeQZT$Z" role="3clFbG">
            <node concept="13iPFW" id="5YMdeQZT_2" role="2Oq$k0" />
            <node concept="3TrEf2" id="5YMdeQZT_3" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZT_4" role="13h7CS">
      <property role="TrG5h" value="getSyntacticallyRightSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZT_8" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZT_9" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5YMdeQZT_a" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZT_b" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeQZT_d" role="3clFbG">
            <node concept="13iPFW" id="5YMdeQZT_g" role="2Oq$k0" />
            <node concept="3TrEf2" id="5YMdeQZT_h" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZT_i" role="13h7CS">
      <property role="TrG5h" value="setSyntacticallyLeftSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGP9" resolve="setSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZT_m" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZT_n" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZT_o" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZT_q" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZT_r" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZT_s" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeQZT_u" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZT_x" role="2Oq$k0">
              <node concept="13iPFW" id="5YMdeQZT_$" role="2Oq$k0" />
              <node concept="3TrEf2" id="5YMdeQZT__" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeQZT_A" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeQZT_C" role="2oxUTC">
                <ref role="3cqZAo" node="5YMdeQZT_o" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5YMdeQZT_D" role="13h7CS">
      <property role="TrG5h" value="setSyntacticallyRightSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGPx" resolve="setSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5YMdeQZT_H" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZT_I" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZT_J" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZT_L" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZT_M" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZT_N" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeQZT_P" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeQZT_S" role="2Oq$k0">
              <node concept="13iPFW" id="5YMdeQZT_V" role="2Oq$k0" />
              <node concept="3TrEf2" id="5YMdeQZT_W" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeQZT_X" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeQZT_Z" role="2oxUTC">
                <ref role="3cqZAo" node="5YMdeQZT_J" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZUb8">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSE" resolve="TSPlusExpression" />
    <node concept="13hLZK" id="5YMdeQZUbb" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZUbd" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZUbe" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZUbi" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZUbj" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZUbk" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZUbl" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZUbn" role="3clFbG">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZUg3">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSF" resolve="TSMinusExpression" />
    <node concept="13hLZK" id="5YMdeQZUg6" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZUg8" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZUg9" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZUgd" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZUge" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZUgf" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZUgg" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZUgi" role="3clFbG">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZUmy">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSG" resolve="TSMulExpression" />
    <node concept="13hLZK" id="5YMdeQZUm_" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZUmB" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZUmC" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZUmG" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZUmH" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZUmI" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZUmJ" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZUmL" role="3clFbG">
            <property role="3cmrfH" value="11" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZVnd">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSH" resolve="TSDivExpression" />
    <node concept="13hLZK" id="5YMdeQZVng" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZVni" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZVnj" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZVnn" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZVno" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZVnp" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZVnq" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZVns" role="3clFbG">
            <property role="3cmrfH" value="11" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZVtN">
    <ref role="13h7C2" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
    <node concept="13hLZK" id="5YMdeQZVtQ" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZVtS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZVtT" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZVtX" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZVtY" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZVtZ" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZVu0" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZVu2" role="3clFbG">
            <property role="3cmrfH" value="90" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5YMdeQZVzU">
    <ref role="13h7C2" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
    <node concept="13hLZK" id="5YMdeQZVzX" role="13h7CW">
      <node concept="3clFbS" id="5YMdeQZVzZ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5YMdeQZV$0" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5YMdeQZV$4" role="1B3o_S" />
      <node concept="10Oyi0" id="5YMdeQZV$5" role="3clF45" />
      <node concept="3clFbS" id="5YMdeQZV$6" role="3clF47">
        <node concept="3clFbF" id="5YMdeQZV$7" role="3cqZAp">
          <node concept="3cmrfG" id="5YMdeQZV$9" role="3clFbG">
            <property role="3cmrfH" value="100" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5YMdeQZZE8">
    <property role="TrG5h" value="TSParenthesisUtil" />
    <node concept="3Tm1VV" id="5YMdeQZZEa" role="1B3o_S" />
    <node concept="3clFbW" id="5YMdeQZZEb" role="jymVt">
      <node concept="3cqZAl" id="5YMdeQZZEc" role="3clF45" />
      <node concept="3Tm1VV" id="5YMdeQZZEf" role="1B3o_S" />
      <node concept="3clFbS" id="5YMdeQZZEg" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5YMdeQZZEh" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZEi" role="jymVt">
      <property role="TrG5h" value="createUnmatchedLeftParenthesis" />
      <node concept="3Tm1VV" id="5YMdeQZZEm" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZEn" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZEo" role="3clF46">
        <property role="TrG5h" value="leftExpression" />
        <node concept="3Tqbb2" id="5YMdeQZZEq" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZEr" role="3clF47">
        <node concept="3cpWs6" id="5YMdeR5WvY" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5WvZ" role="3cqZAk">
            <ref role="37wK5l" node="5YMdeQZZEI" resolve="createUnmatchedParenthesisAndCheckParentParens" />
            <node concept="37vLTw" id="5YMdeR5Ww0" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZEo" resolve="leftExpression" />
            </node>
            <node concept="3clFbT" id="5YMdeR5Ww1" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZEv" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZEw" role="jymVt">
      <property role="TrG5h" value="createUnmatchedRightParenthesis" />
      <node concept="3Tm1VV" id="5YMdeQZZE$" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZE_" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZEA" role="3clF46">
        <property role="TrG5h" value="rightExpression" />
        <node concept="3Tqbb2" id="5YMdeQZZEC" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZED" role="3clF47">
        <node concept="3cpWs6" id="5YMdeR5Ww2" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5Ww3" role="3cqZAk">
            <ref role="37wK5l" node="5YMdeQZZEI" resolve="createUnmatchedParenthesisAndCheckParentParens" />
            <node concept="37vLTw" id="5YMdeR5Ww4" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZEA" resolve="rightExpression" />
            </node>
            <node concept="3clFbT" id="5YMdeR5Ww5" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZEH" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZEI" role="jymVt">
      <property role="TrG5h" value="createUnmatchedParenthesisAndCheckParentParens" />
      <node concept="3Tm6S6" id="5YMdeQZZEM" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZEN" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZEO" role="3clF46">
        <property role="TrG5h" value="myExpression" />
        <node concept="3Tqbb2" id="5YMdeQZZEQ" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZER" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="5YMdeQZZET" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZEU" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5Ww6" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Wwa" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Wwc" role="1PaTwD">
              <property role="3oM_SC" value="First" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwd" role="1PaTwD">
              <property role="3oM_SC" value="search" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwe" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwf" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwg" role="1PaTwD">
              <property role="3oM_SC" value="ancestors" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwh" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwi" role="1PaTwD">
              <property role="3oM_SC" value="TSParenthesizedExpressions." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5Wwj" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Wwn" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Wwp" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwq" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwr" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wws" role="1PaTwD">
              <property role="3oM_SC" value="found," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwt" role="1PaTwD">
              <property role="3oM_SC" value="break" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwu" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwv" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Www" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwx" role="1PaTwD">
              <property role="3oM_SC" value="incomplete" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwy" role="1PaTwD">
              <property role="3oM_SC" value="parentheses" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wwz" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Ww$" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Ww_" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwA" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwB" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwC" role="1PaTwD">
              <property role="3oM_SC" value="them," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WwD" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WwH" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WwJ" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwK" role="1PaTwD">
              <property role="3oM_SC" value="continue" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwL" role="1PaTwD">
              <property role="3oM_SC" value="trying" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwM" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwN" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwP" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwQ" role="1PaTwD">
              <property role="3oM_SC" value="incomplete" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwR" role="1PaTwD">
              <property role="3oM_SC" value="parenthesis." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WwS" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WwW" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WwY" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WwZ" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx0" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx1" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx2" role="1PaTwD">
              <property role="3oM_SC" value="TSParenthesizedExpression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx3" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx4" role="1PaTwD">
              <property role="3oM_SC" value="found," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx5" role="1PaTwD">
              <property role="3oM_SC" value="continue" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx6" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx8" role="1PaTwD">
              <property role="3oM_SC" value="standard" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Wx9" role="1PaTwD">
              <property role="3oM_SC" value="matching." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5Wxa" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Wxd" role="3cpWs9">
            <property role="TrG5h" value="expressionToProcess" />
            <node concept="3Tqbb2" id="5YMdeR5Wxf" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Wxg" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeQZZEO" resolve="myExpression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5Wxh" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Wxk" role="3cpWs9">
            <property role="TrG5h" value="expressionToSetFocusOn" />
            <node concept="3Tqbb2" id="5YMdeR5Wxm" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5Wxn" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5Wxo" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5Wxp" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Wxs" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5YMdeR5Wxu" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5Wxv" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZEZ" resolve="findWrappingParens" />
              <node concept="37vLTw" id="5YMdeR5Wxw" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5Wxx" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5Wx$" role="2$JKZa">
            <node concept="37vLTw" id="5YMdeR5WxB" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WxC" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WxD" role="2LFqv$">
            <node concept="3cpWs8" id="5YMdeR5WxE" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5WxH" role="3cpWs9">
                <property role="TrG5h" value="leftParenOnParens" />
                <node concept="3Tqbb2" id="5YMdeR5WxJ" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WxK" role="33vP2m">
                  <node concept="37vLTw" id="5YMdeR5WxN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WxO" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WxQ" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5WxR" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5WxU" role="3cpWs9">
                <property role="TrG5h" value="rightParenOnParens" />
                <node concept="3Tqbb2" id="5YMdeR5WxW" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WxX" role="33vP2m">
                  <node concept="37vLTw" id="5YMdeR5Wy0" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5Wy1" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5Wy3" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5Wy4" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Wy7" role="3cpWs9">
                <property role="TrG5h" value="propagateNewParensInsteadOfExpr" />
                <node concept="10P_77" id="5YMdeR5Wy9" role="1tU5fm" />
                <node concept="3clFbT" id="5YMdeR5Wya" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5Wyb" role="3cqZAp" />
            <node concept="3cpWs8" id="5YMdeR5Wyc" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Wyf" role="3cpWs9">
                <property role="TrG5h" value="replacing" />
                <node concept="3Tqbb2" id="5YMdeR5Wyh" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5Wyi" role="33vP2m">
                  <node concept="1eOMI4" id="5YMdeR5Wyl" role="2Oq$k0">
                    <node concept="1PxgMI" id="5YMdeR5Wyn" role="1eOMHV">
                      <node concept="37vLTw" id="5YMdeR5Wyq" role="1m5AlR">
                        <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
                      </node>
                      <node concept="chp4Y" id="5YMdeR5Wyr" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5Wys" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5Wyt" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Wyw" role="3cpWs9">
                <property role="TrG5h" value="rightMostNode" />
                <node concept="3Tqbb2" id="5YMdeR5Wyy" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5Wyz" role="33vP2m">
                  <ref role="37wK5l" node="5YMdeQZZIV" resolve="findRightmostOrLeftmostLeafExpression" />
                  <node concept="37vLTw" id="5YMdeR5Wy$" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5Wyf" resolve="replacing" />
                  </node>
                  <node concept="3clFbT" id="5YMdeR5Wy_" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5WyA" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5WyD" role="3cpWs9">
                <property role="TrG5h" value="leftMostNode" />
                <node concept="3Tqbb2" id="5YMdeR5WyF" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5WyG" role="33vP2m">
                  <ref role="37wK5l" node="5YMdeQZZIV" resolve="findRightmostOrLeftmostLeafExpression" />
                  <node concept="37vLTw" id="5YMdeR5WyH" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5Wyf" resolve="replacing" />
                  </node>
                  <node concept="3clFbT" id="5YMdeR5WyI" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5WyJ" role="3cqZAp" />
            <node concept="3clFbJ" id="5YMdeR5WyK" role="3cqZAp">
              <node concept="22lmx$" id="5YMdeR5WyN" role="3clFbw">
                <node concept="1eOMI4" id="5YMdeR5WyQ" role="3uHU7B">
                  <node concept="1Wc70l" id="5YMdeR5WyS" role="1eOMHV">
                    <node concept="37vLTw" id="5YMdeR5WyV" role="3uHU7B">
                      <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                    </node>
                    <node concept="17R0WA" id="5YMdeR5WyW" role="3uHU7w">
                      <node concept="37vLTw" id="5YMdeR5WyZ" role="3uHU7B">
                        <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                      </node>
                      <node concept="37vLTw" id="5YMdeR5Wz0" role="3uHU7w">
                        <ref role="3cqZAo" node="5YMdeR5Wyw" resolve="rightMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="5YMdeR5Wz1" role="3uHU7w">
                  <node concept="1Wc70l" id="5YMdeR5Wz3" role="1eOMHV">
                    <node concept="3fqX7Q" id="5YMdeR5Wz6" role="3uHU7B">
                      <node concept="37vLTw" id="5YMdeR5Wz8" role="3fr31v">
                        <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="5YMdeR5Wz9" role="3uHU7w">
                      <node concept="37vLTw" id="5YMdeR5Wzc" role="3uHU7B">
                        <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                      </node>
                      <node concept="37vLTw" id="5YMdeR5Wzd" role="3uHU7w">
                        <ref role="3cqZAo" node="5YMdeR5WyD" resolve="leftMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Wze" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Wzf" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5Wzh" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5Wzk" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5Wy7" resolve="propagateNewParensInsteadOfExpr" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5Wzl" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5Wzm" role="3cqZAp" />
            <node concept="3clFbF" id="5YMdeR5Wzn" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5Wzp" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5Wzs" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
                </node>
                <node concept="1P9Npp" id="5YMdeR5Wzt" role="2OqNvi">
                  <node concept="37vLTw" id="5YMdeR5Wzv" role="1P9ThW">
                    <ref role="3cqZAo" node="5YMdeR5Wyf" resolve="replacing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5Wzw" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Wzz" role="3cpWs9">
                <property role="TrG5h" value="localExpToSetFocusOn" />
                <node concept="3Tqbb2" id="5YMdeR5Wz_" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WzA" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WzD" role="3clFbw">
                <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
              </node>
              <node concept="3clFbS" id="5YMdeR5WzE" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5WzF" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5WzH" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZFu" resolve="setOrIncreaseParen" />
                    <node concept="37vLTw" id="5YMdeR5WzI" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WyD" resolve="leftMostNode" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5WzJ" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5WzK" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5WzM" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5WzP" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="1rXfSq" id="5YMdeR5WzQ" role="37vLTx">
                      <ref role="37wK5l" node="5YMdeQZZFX" resolve="createUnmatchedParenthesis" />
                      <node concept="37vLTw" id="5YMdeR5WzR" role="37wK5m">
                        <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                      </node>
                      <node concept="3clFbT" id="5YMdeR5WzS" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5WzT" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5WzV" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5WzY" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                    </node>
                    <node concept="1eOMI4" id="5YMdeR5WzZ" role="37vLTx">
                      <node concept="3K4zz7" id="5YMdeR5W$1" role="1eOMHV">
                        <node concept="37vLTw" id="5YMdeR5W$5" role="3K4Cdx">
                          <ref role="3cqZAo" node="5YMdeR5Wy7" resolve="propagateNewParensInsteadOfExpr" />
                        </node>
                        <node concept="37vLTw" id="5YMdeR5W$6" role="3K4E3e">
                          <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                        </node>
                        <node concept="37vLTw" id="5YMdeR5W$7" role="3K4GZi">
                          <ref role="3cqZAo" node="5YMdeR5Wyw" resolve="rightMostNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5YMdeR5W$8" role="9aQIa">
                <node concept="3clFbS" id="5YMdeR5W$a" role="9aQI4">
                  <node concept="3clFbF" id="5YMdeR5W$b" role="3cqZAp">
                    <node concept="1rXfSq" id="5YMdeR5W$d" role="3clFbG">
                      <ref role="37wK5l" node="5YMdeQZZFu" resolve="setOrIncreaseParen" />
                      <node concept="37vLTw" id="5YMdeR5W$e" role="37wK5m">
                        <ref role="3cqZAo" node="5YMdeR5Wyw" resolve="rightMostNode" />
                      </node>
                      <node concept="3clFbT" id="5YMdeR5W$f" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5W$g" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR5W$i" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5W$l" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                      </node>
                      <node concept="1rXfSq" id="5YMdeR5W$m" role="37vLTx">
                        <ref role="37wK5l" node="5YMdeQZZFX" resolve="createUnmatchedParenthesis" />
                        <node concept="37vLTw" id="5YMdeR5W$n" role="37wK5m">
                          <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                        </node>
                        <node concept="3clFbT" id="5YMdeR5W$o" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5W$p" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR5W$r" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5W$u" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                      </node>
                      <node concept="1eOMI4" id="5YMdeR5W$v" role="37vLTx">
                        <node concept="3K4zz7" id="5YMdeR5W$x" role="1eOMHV">
                          <node concept="37vLTw" id="5YMdeR5W$_" role="3K4Cdx">
                            <ref role="3cqZAo" node="5YMdeR5Wy7" resolve="propagateNewParensInsteadOfExpr" />
                          </node>
                          <node concept="37vLTw" id="5YMdeR5W$A" role="3K4E3e">
                            <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                          </node>
                          <node concept="37vLTw" id="5YMdeR5W$B" role="3K4GZi">
                            <ref role="3cqZAo" node="5YMdeR5WyD" resolve="leftMostNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5W$C" role="3cqZAp" />
            <node concept="3SKdUt" id="5YMdeR5W$D" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5W$H" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5W$J" role="1PaTwD">
                  <property role="3oM_SC" value="Remember" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$K" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$L" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$M" role="1PaTwD">
                  <property role="3oM_SC" value="parenthing" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$N" role="1PaTwD">
                  <property role="3oM_SC" value="result" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$O" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$P" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$Q" role="1PaTwD">
                  <property role="3oM_SC" value="editor" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$R" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$S" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$T" role="1PaTwD">
                  <property role="3oM_SC" value="focus" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W$U" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5W$V" role="3cqZAp">
              <node concept="3clFbC" id="5YMdeR5W$Y" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5W_1" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeR5Wxk" resolve="expressionToSetFocusOn" />
                </node>
                <node concept="10Nm6u" id="5YMdeR5W_2" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="5YMdeR5W_3" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5W_4" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5W_6" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5W_9" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5Wxk" resolve="expressionToSetFocusOn" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5W_a" role="37vLTx">
                      <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5W_b" role="3cqZAp" />
            <node concept="3SKdUt" id="5YMdeR5W_c" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5W_g" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5W_i" role="1PaTwD">
                  <property role="3oM_SC" value="Put" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_j" role="1PaTwD">
                  <property role="3oM_SC" value="back" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_k" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_l" role="1PaTwD">
                  <property role="3oM_SC" value="parens" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_m" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_n" role="1PaTwD">
                  <property role="3oM_SC" value="were" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_o" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_p" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_q" role="1PaTwD">
                  <property role="3oM_SC" value="wrapping" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_r" role="1PaTwD">
                  <property role="3oM_SC" value="parentheses" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_s" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_t" role="1PaTwD">
                  <property role="3oM_SC" value="belong" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_u" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_v" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_w" role="1PaTwD">
                  <property role="3oM_SC" value="mating" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5W_x" role="1PaTwD">
                  <property role="3oM_SC" value="expr" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5W_y" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5W__" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5W_C" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                </node>
                <node concept="3y3z36" id="5YMdeR5W_D" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5W_G" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5WxH" resolve="leftParenOnParens" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5W_H" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5W_I" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5W_J" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5W_L" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZFG" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="5YMdeR5W_M" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5W_N" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5W_O" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WxH" resolve="leftParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5W_P" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5W_S" role="3clFbw">
                <node concept="3fqX7Q" id="5YMdeR5W_V" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5W_X" role="3fr31v">
                    <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                  </node>
                </node>
                <node concept="3y3z36" id="5YMdeR5W_Y" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5WA1" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5WxU" resolve="rightParenOnParens" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5WA2" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WA3" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5WA4" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5WA6" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZFG" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="5YMdeR5WA7" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Wzz" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5WA8" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WA9" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WxU" resolve="rightParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5WAa" role="3cqZAp" />
            <node concept="3SKdUt" id="5YMdeR5WAb" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5WAf" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5WAh" role="1PaTwD">
                  <property role="3oM_SC" value="Put" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAi" role="1PaTwD">
                  <property role="3oM_SC" value="back" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAj" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAk" role="1PaTwD">
                  <property role="3oM_SC" value="parens" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAl" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAm" role="1PaTwD">
                  <property role="3oM_SC" value="were" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAn" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAo" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAp" role="1PaTwD">
                  <property role="3oM_SC" value="wrapping" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAq" role="1PaTwD">
                  <property role="3oM_SC" value="parentheses" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAr" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAs" role="1PaTwD">
                  <property role="3oM_SC" value="belong" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAt" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAu" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAv" role="1PaTwD">
                  <property role="3oM_SC" value="new" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WAw" role="1PaTwD">
                  <property role="3oM_SC" value="expressionToProcess" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WAx" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5WA$" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5WAB" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                </node>
                <node concept="3y3z36" id="5YMdeR5WAC" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5WAF" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5WxU" resolve="rightParenOnParens" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5WAG" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WAH" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5WAI" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5WAK" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZFG" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="5YMdeR5WAL" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5WAM" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WAN" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WxU" resolve="rightParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WAO" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5WAR" role="3clFbw">
                <node concept="3fqX7Q" id="5YMdeR5WAU" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5WAW" role="3fr31v">
                    <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
                  </node>
                </node>
                <node concept="3y3z36" id="5YMdeR5WAX" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5WB0" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5WxH" resolve="leftParenOnParens" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5WB1" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WB2" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5WB3" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5WB5" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZFG" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="5YMdeR5WB6" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5WB7" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WB8" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WxH" resolve="leftParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5WB9" role="3cqZAp" />
            <node concept="3clFbF" id="5YMdeR5WBa" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WBc" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WBf" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5Wxs" resolve="current" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5WBg" role="37vLTx">
                  <ref role="37wK5l" node="5YMdeQZZEZ" resolve="findWrappingParens" />
                  <node concept="37vLTw" id="5YMdeR5WBh" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WBi" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5WBj" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WBm" role="3cpWs9">
            <property role="TrG5h" value="created" />
            <node concept="3Tqbb2" id="5YMdeR5WBo" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5WBp" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZFX" resolve="createUnmatchedParenthesis" />
              <node concept="37vLTw" id="5YMdeR5WBq" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5Wxd" resolve="expressionToProcess" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WBr" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZER" resolve="completingByRightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5WBs" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5WBu" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZJc" resolve="checkWholeExpressionPriorities" />
            <node concept="37vLTw" id="5YMdeR5WBv" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZEO" resolve="myExpression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5WBw" role="3cqZAp">
          <node concept="1eOMI4" id="5YMdeR5WBx" role="3cqZAk">
            <node concept="3K4zz7" id="5YMdeR5WBz" role="1eOMHV">
              <node concept="3y3z36" id="5YMdeR5WBB" role="3K4Cdx">
                <node concept="37vLTw" id="5YMdeR5WBE" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeR5Wxk" resolve="expressionToSetFocusOn" />
                </node>
                <node concept="10Nm6u" id="5YMdeR5WBF" role="3uHU7w" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WBG" role="3K4E3e">
                <ref role="3cqZAo" node="5YMdeR5Wxk" resolve="expressionToSetFocusOn" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WBH" role="3K4GZi">
                <ref role="3cqZAo" node="5YMdeR5WBm" resolve="created" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZEY" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZEZ" role="jymVt">
      <property role="TrG5h" value="findWrappingParens" />
      <node concept="3Tm6S6" id="5YMdeQZZF3" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZF4" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZF5" role="3clF46">
        <property role="TrG5h" value="original" />
        <node concept="3Tqbb2" id="5YMdeQZZF7" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZF8" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5WBI" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WBL" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5YMdeR5WBN" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR5WBO" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeQZZF5" resolve="original" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5WBP" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5WBS" role="2$JKZa">
            <node concept="2OqwBi" id="5YMdeR5WBV" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5WBY" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5WBL" resolve="current" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5WBZ" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR5WC0" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR5WC2" role="cj9EA">
                <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WC3" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5WC4" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WC6" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WC9" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WBL" resolve="current" />
                </node>
                <node concept="1PxgMI" id="5YMdeR5WCa" role="37vLTx">
                  <node concept="2OqwBi" id="5YMdeR5WCd" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR5WCg" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR5WBL" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR5WCh" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5WCi" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WCj" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WCm" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5WCp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WBL" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="5YMdeR5WCq" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeR5WCs" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WCt" role="3clFbx">
                <node concept="3cpWs6" id="5YMdeR5WCu" role="3cqZAp">
                  <node concept="37vLTw" id="5YMdeR5WCv" role="3cqZAk">
                    <ref role="3cqZAo" node="5YMdeR5WBL" resolve="current" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5WCw" role="3cqZAp">
          <node concept="10Nm6u" id="5YMdeR5WCx" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZFc" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZFd" role="jymVt">
      <property role="TrG5h" value="createParen" />
      <node concept="3Tm6S6" id="5YMdeQZZFh" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZFi" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNSI" resolve="TSIIncompleteParen" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZFj" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZZFl" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZFm" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="10P_77" id="5YMdeQZZFo" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZFp" role="3clF47">
        <node concept="3clFbJ" id="5YMdeR5WCy" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5WC_" role="3clFbw">
            <ref role="3cqZAo" node="5YMdeQZZFm" resolve="right" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WCA" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR5WCB" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5WCE" role="3cpWs9">
                <property role="TrG5h" value="rightParen" />
                <node concept="3Tqbb2" id="5YMdeR5WCG" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                </node>
                <node concept="2ShNRf" id="5YMdeR5WCH" role="33vP2m">
                  <node concept="3zrR0B" id="5YMdeR5WCJ" role="2ShVmc">
                    <node concept="3Tqbb2" id="5YMdeR5WCL" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WCM" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WCO" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5WCR" role="37vLTJ">
                  <node concept="37vLTw" id="5YMdeR5WCU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WCE" resolve="rightParen" />
                  </node>
                  <node concept="3TrcHB" id="5YMdeR5WCV" role="2OqNvi">
                    <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
                  </node>
                </node>
                <node concept="3cmrfG" id="5YMdeR5WCW" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WCX" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WCZ" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5WD2" role="2Oq$k0">
                  <node concept="37vLTw" id="5YMdeR5WD5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZFj" resolve="expr" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WD6" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WD8" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="2oxUTD" id="5YMdeR5WD9" role="2OqNvi">
                  <node concept="37vLTw" id="5YMdeR5WDb" role="2oxUTC">
                    <ref role="3cqZAo" node="5YMdeR5WCE" resolve="rightParen" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5WDc" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WDd" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeR5WCE" resolve="rightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WDe" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WDh" role="3cpWs9">
            <property role="TrG5h" value="leftParen" />
            <node concept="3Tqbb2" id="5YMdeR5WDj" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
            </node>
            <node concept="2ShNRf" id="5YMdeR5WDk" role="33vP2m">
              <node concept="3zrR0B" id="5YMdeR5WDm" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5WDo" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5WDp" role="3cqZAp">
          <node concept="37vLTI" id="5YMdeR5WDr" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR5WDu" role="37vLTJ">
              <node concept="37vLTw" id="5YMdeR5WDx" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5WDh" resolve="leftParen" />
              </node>
              <node concept="3TrcHB" id="5YMdeR5WDy" role="2OqNvi">
                <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
              </node>
            </node>
            <node concept="3cmrfG" id="5YMdeR5WDz" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5WD$" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5WDA" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR5WDD" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5WDG" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZFj" resolve="expr" />
              </node>
              <node concept="3CFZ6_" id="5YMdeR5WDH" role="2OqNvi">
                <node concept="3CFYIy" id="5YMdeR5WDJ" role="3CFYIz">
                  <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                </node>
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeR5WDK" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5WDM" role="2oxUTC">
                <ref role="3cqZAo" node="5YMdeR5WDh" resolve="leftParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5WDN" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5WDO" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR5WDh" resolve="leftParen" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZFt" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZFu" role="jymVt">
      <property role="TrG5h" value="setOrIncreaseParen" />
      <node concept="3Tm6S6" id="5YMdeQZZFy" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZFz" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZF$" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZZFA" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZFB" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="10P_77" id="5YMdeQZZFD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZFE" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5WDP" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WDS" role="3cpWs9">
            <property role="TrG5h" value="paren" />
            <node concept="3Tqbb2" id="5YMdeR5WDU" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSI" resolve="TSIIncompleteParen" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5WDV" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5WDX" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5WE1" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZFB" resolve="right" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WE2" role="3K4E3e">
                  <node concept="37vLTw" id="5YMdeR5WE5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZF$" resolve="expr" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WE6" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WE8" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5YMdeR5WE9" role="3K4GZi">
                  <node concept="37vLTw" id="5YMdeR5WEc" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZF$" resolve="expr" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WEd" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WEf" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WEg" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5WEj" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WEm" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5WDS" resolve="paren" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WEn" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WEo" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5WEp" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WEr" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WEu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WDS" resolve="paren" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5WEv" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZSbR" resolve="increaseCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5WEw" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5WEy" role="9aQI4">
              <node concept="3clFbF" id="5YMdeR5WEz" role="3cqZAp">
                <node concept="1rXfSq" id="5YMdeR5WE_" role="3clFbG">
                  <ref role="37wK5l" node="5YMdeQZZFd" resolve="createParen" />
                  <node concept="37vLTw" id="5YMdeR5WEA" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZF$" resolve="expr" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5WEB" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZFB" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZFF" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZFG" role="jymVt">
      <property role="TrG5h" value="setOrMergeParen" />
      <node concept="3Tm6S6" id="5YMdeQZZFK" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZFL" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZFM" role="3clF46">
        <property role="TrG5h" value="myNode" />
        <node concept="3Tqbb2" id="5YMdeQZZFO" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZFP" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="10P_77" id="5YMdeQZZFR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZFS" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="5YMdeQZZFU" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSI" resolve="TSIIncompleteParen" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZFV" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5WEC" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WEF" role="3cpWs9">
            <property role="TrG5h" value="nodesParens" />
            <node concept="3Tqbb2" id="5YMdeR5WEH" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSI" resolve="TSIIncompleteParen" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5WEI" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5WEK" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5WEO" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZFP" resolve="right" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WEP" role="3K4E3e">
                  <node concept="37vLTw" id="5YMdeR5WES" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZFM" resolve="myNode" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WET" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WEV" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5YMdeR5WEW" role="3K4GZi">
                  <node concept="37vLTw" id="5YMdeR5WEZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZFM" resolve="myNode" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WF0" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WF2" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WF3" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR5WF6" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WF9" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5WEF" resolve="nodesParens" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WFa" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WFb" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5WFc" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WFe" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WFh" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WEF" resolve="nodesParens" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5WFi" role="37vLTx">
                  <ref role="37wK5l" node="5YMdeQZZFd" resolve="createParen" />
                  <node concept="37vLTw" id="5YMdeR5WFj" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZFM" resolve="myNode" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5WFk" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZFP" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5WFl" role="3cqZAp">
          <node concept="3fqX7Q" id="5YMdeR5WFo" role="2$JKZa">
            <node concept="2OqwBi" id="5YMdeR5WFq" role="3fr31v">
              <node concept="37vLTw" id="5YMdeR5WFt" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZFS" resolve="parens" />
              </node>
              <node concept="3zqWPK" id="5YMdeR5WFu" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZScr" resolve="isSingleParen" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WFv" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5WFw" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WFy" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WF_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZFS" resolve="parens" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5WFA" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZSc9" resolve="decreaseCount" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WFB" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WFD" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WFG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WEF" resolve="nodesParens" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5WFH" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZSbR" resolve="increaseCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZFW" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZFX" role="jymVt">
      <property role="TrG5h" value="createUnmatchedParenthesis" />
      <node concept="3Tm6S6" id="5YMdeQZZG1" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZG2" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZG3" role="3clF46">
        <property role="TrG5h" value="myExpression" />
        <node concept="3Tqbb2" id="5YMdeQZZG5" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZG6" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="5YMdeQZZG8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZG9" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5WFI" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WFM" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WFO" role="1PaTwD">
              <property role="3oM_SC" value="First" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFP" role="1PaTwD">
              <property role="3oM_SC" value="search" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFQ" role="1PaTwD">
              <property role="3oM_SC" value="existing" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFR" role="1PaTwD">
              <property role="3oM_SC" value="unmatched" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFS" role="1PaTwD">
              <property role="3oM_SC" value="parens," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFT" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFU" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFV" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFW" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFX" role="1PaTwD">
              <property role="3oM_SC" value="paired" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFY" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WFZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WG0" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WG1" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WG2" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WG6" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WG8" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WG9" role="1PaTwD">
              <property role="3oM_SC" value="found," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGa" role="1PaTwD">
              <property role="3oM_SC" value="pair" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGb" role="1PaTwD">
              <property role="3oM_SC" value="them," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGc" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGd" role="1PaTwD">
              <property role="3oM_SC" value="not," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGe" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGf" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGg" role="1PaTwD">
              <property role="3oM_SC" value="unmatched" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGh" role="1PaTwD">
              <property role="3oM_SC" value="paren" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WGi" role="1PaTwD">
              <property role="3oM_SC" value="annotation." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WGj" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5WGm" role="3clFbw">
            <node concept="3fqX7Q" id="5YMdeR5WGp" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5WGr" role="3fr31v">
                <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
              </node>
            </node>
            <node concept="3y3z36" id="5YMdeR5WGs" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR5WGv" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5WGy" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
                <node concept="3CFZ6_" id="5YMdeR5WGz" role="2OqNvi">
                  <node concept="3CFYIy" id="5YMdeR5WG_" role="3CFYIz">
                    <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="5YMdeR5WGA" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WGB" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5WGC" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WGE" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5WGH" role="2Oq$k0">
                  <node concept="37vLTw" id="5YMdeR5WGK" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WGL" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WGN" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="5YMdeR5WGO" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZSbR" resolve="increaseCount" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5WGP" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WGQ" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WGR" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5WGU" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WGX" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
            </node>
            <node concept="3y3z36" id="5YMdeR5WGY" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR5WH1" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5WH4" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
                <node concept="3CFZ6_" id="5YMdeR5WH5" role="2OqNvi">
                  <node concept="3CFYIy" id="5YMdeR5WH7" role="3CFYIz">
                    <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="5YMdeR5WH8" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WH9" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5WHa" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WHc" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5WHf" role="2Oq$k0">
                  <node concept="37vLTw" id="5YMdeR5WHi" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5WHj" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5WHl" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="5YMdeR5WHm" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZSbR" resolve="increaseCount" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5WHn" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WHo" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WHp" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5WHq" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WHt" role="3cpWs9">
            <property role="TrG5h" value="myParentPath" />
            <node concept="2I9FWS" id="5YMdeR5WHv" role="1tU5fm">
              <ref role="2I9WkF" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5WHw" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZIE" resolve="parentPath" />
              <node concept="37vLTw" id="5YMdeR5WHx" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WHy" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WHz" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WHA" role="3cpWs9">
            <property role="TrG5h" value="topExp" />
            <node concept="3Tqbb2" id="5YMdeR5WHC" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="2OqwBi" id="5YMdeR5WHD" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5WHG" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5WHt" resolve="myParentPath" />
              </node>
              <node concept="1zesIP" id="5YMdeR5WHH" role="2OqNvi">
                <node concept="1bVj0M" id="5YMdeR5WHM" role="23t8la">
                  <node concept="gl6BB" id="5YMdeR5WHO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5YMdeR5WHP" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="5YMdeR5WHQ" role="1bW5cS">
                    <node concept="3clFbF" id="5YMdeR5WHR" role="3cqZAp">
                      <node concept="2OqwBi" id="5YMdeR5WHT" role="3clFbG">
                        <node concept="37vLTw" id="5YMdeR5WHW" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5WHO" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="5YMdeR5WHX" role="2OqNvi">
                          <node concept="chp4Y" id="5YMdeR5WHZ" role="cj9EA">
                            <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
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
        <node concept="3clFbJ" id="5YMdeR5WI0" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR5WI3" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WI6" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5WHA" resolve="topExp" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WI7" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WI8" role="3clFbx">
            <node concept="3SKdUt" id="5YMdeR5WI9" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5WId" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5WIf" role="1PaTwD">
                  <property role="3oM_SC" value="No" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WIg" role="1PaTwD">
                  <property role="3oM_SC" value="TSIBinaryLike" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WIh" role="1PaTwD">
                  <property role="3oM_SC" value="ancestor" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WIi" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WIj" role="1PaTwD">
                  <property role="3oM_SC" value="myExpression" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WIk" role="1PaTwD">
                  <property role="3oM_SC" value="exists" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WIl" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WIn" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WIq" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WHA" resolve="topExp" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WIr" role="37vLTx">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WIs" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5WIt" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WIw" role="3cpWs9">
            <property role="TrG5h" value="candidateParenthedNodes" />
            <node concept="_YKpA" id="5YMdeR5WIy" role="1tU5fm">
              <node concept="3Tqbb2" id="5YMdeR5WI$" role="_ZDj9">
                <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
            </node>
            <node concept="1rXfSq" id="5YMdeR5WI_" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZGe" resolve="descendInto" />
              <node concept="37vLTw" id="5YMdeR5WIA" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5WHA" resolve="topExp" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WIB" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WIC" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5WID" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WIG" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="5YMdeR5WII" role="1tU5fm" />
            <node concept="3cpWsd" id="5YMdeR5WIJ" role="33vP2m">
              <node concept="2OqwBi" id="5YMdeR5WIM" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5WIP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WIw" resolve="candidateParenthedNodes" />
                </node>
                <node concept="34oBXx" id="5YMdeR5WIQ" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="5YMdeR5WIR" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WIS" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WIV" role="3cpWs9">
            <property role="TrG5h" value="candidateExpression" />
            <node concept="3Tqbb2" id="5YMdeR5WIX" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WIY" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WIZ" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WJ2" role="3cpWs9">
            <property role="TrG5h" value="candidateParentPath" />
            <node concept="2I9FWS" id="5YMdeR5WJ4" role="1tU5fm">
              <ref role="2I9WkF" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WJ5" role="33vP2m" />
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WJ6" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WJa" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WJc" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJd" role="1PaTwD">
              <property role="3oM_SC" value="bottom-most" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJe" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJf" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WJg" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WJj" role="3cpWs9">
            <property role="TrG5h" value="firstCommonAncestor" />
            <node concept="3Tqbb2" id="5YMdeR5WJl" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5WJm" role="33vP2m" />
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WJn" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WJr" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WJt" role="1PaTwD">
              <property role="3oM_SC" value="Find" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJu" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJv" role="1PaTwD">
              <property role="3oM_SC" value="matching" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJw" role="1PaTwD">
              <property role="3oM_SC" value="parenthesis" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJx" role="1PaTwD">
              <property role="3oM_SC" value="among" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJy" role="1PaTwD">
              <property role="3oM_SC" value="candidates," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJz" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJ$" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJ_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJA" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJB" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJC" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WJD" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5WJE" role="3cqZAp">
          <node concept="2d3UOw" id="5YMdeR5WJH" role="2$JKZa">
            <node concept="37vLTw" id="5YMdeR5WJK" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5WIG" resolve="index" />
            </node>
            <node concept="3cmrfG" id="5YMdeR5WJL" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WJM" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5WJN" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WJP" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WJS" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WJT" role="37vLTx">
                  <node concept="37vLTw" id="5YMdeR5WJW" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WIw" resolve="candidateParenthedNodes" />
                  </node>
                  <node concept="34jXtK" id="5YMdeR5WJX" role="2OqNvi">
                    <node concept="37vLTw" id="5YMdeR5WJZ" role="25WWJ7">
                      <ref role="3cqZAo" node="5YMdeR5WIG" resolve="index" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WK0" role="3cqZAp">
              <node concept="17R0WA" id="5YMdeR5WK3" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5WK6" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WK7" role="3uHU7w">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WK8" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeR5WK9" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR5WKd" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR5WKf" role="1PaTwD">
                      <property role="3oM_SC" value="they" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR5WKg" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR5WKh" role="1PaTwD">
                      <property role="3oM_SC" value="both" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR5WKi" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR5WKj" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR5WKk" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5YMdeR5WKl" role="3cqZAp">
                  <node concept="3cpWsn" id="5YMdeR5WKo" role="3cpWs9">
                    <property role="TrG5h" value="parens" />
                    <node concept="3Tqbb2" id="5YMdeR5WKq" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                    </node>
                    <node concept="2ShNRf" id="5YMdeR5WKr" role="33vP2m">
                      <node concept="3zrR0B" id="5YMdeR5WKt" role="2ShVmc">
                        <node concept="3Tqbb2" id="5YMdeR5WKv" role="3zrR0E">
                          <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5WKw" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5WKy" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5WK_" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                    </node>
                    <node concept="1P9Npp" id="5YMdeR5WKA" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR5WKC" role="1P9ThW">
                        <ref role="3cqZAo" node="5YMdeR5WKo" resolve="parens" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5WKD" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5WKF" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeR5WKI" role="2Oq$k0">
                      <node concept="37vLTw" id="5YMdeR5WKL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WKo" resolve="parens" />
                      </node>
                      <node concept="3TrEf2" id="5YMdeR5WKM" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="5YMdeR5WKN" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR5WKP" role="2oxUTC">
                        <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5WKQ" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5WKS" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZHz" resolve="clearIncompleteParens" />
                    <node concept="37vLTw" id="5YMdeR5WKT" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WKU" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WKV" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5WKo" resolve="parens" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeR5WKW" role="3cqZAp">
                  <node concept="37vLTw" id="5YMdeR5WKX" role="3cqZAk">
                    <ref role="3cqZAo" node="5YMdeR5WKo" resolve="parens" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5WKY" role="3cqZAp" />
            <node concept="3SKdUt" id="5YMdeR5WKZ" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5WL3" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5WL5" role="1PaTwD">
                  <property role="3oM_SC" value="Find" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WL6" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WL7" role="1PaTwD">
                  <property role="3oM_SC" value="bottom-most" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WL8" role="1PaTwD">
                  <property role="3oM_SC" value="common" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WL9" role="1PaTwD">
                  <property role="3oM_SC" value="ancestor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WLa" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WLc" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WLf" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WJ2" resolve="candidateParentPath" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5WLg" role="37vLTx">
                  <ref role="37wK5l" node="5YMdeQZZIE" resolve="parentPath" />
                  <node concept="37vLTw" id="5YMdeR5WLh" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                  </node>
                  <node concept="3fqX7Q" id="5YMdeR5WLi" role="37wK5m">
                    <node concept="37vLTw" id="5YMdeR5WLk" role="3fr31v">
                      <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5WLl" role="3cqZAp">
              <node concept="22lmx$" id="5YMdeR5WLo" role="3clFbw">
                <node concept="2OqwBi" id="5YMdeR5WLr" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5WLu" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WHt" resolve="myParentPath" />
                  </node>
                  <node concept="3JPx81" id="5YMdeR5WLv" role="2OqNvi">
                    <node concept="2OqwBi" id="5YMdeR5WLx" role="25WWJ7">
                      <node concept="37vLTw" id="5YMdeR5WL$" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WJ2" resolve="candidateParentPath" />
                      </node>
                      <node concept="1yVyf7" id="5YMdeR5WL_" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5YMdeR5WLA" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5WLD" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WJ2" resolve="candidateParentPath" />
                  </node>
                  <node concept="3JPx81" id="5YMdeR5WLE" role="2OqNvi">
                    <node concept="2OqwBi" id="5YMdeR5WLG" role="25WWJ7">
                      <node concept="37vLTw" id="5YMdeR5WLJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WHt" resolve="myParentPath" />
                      </node>
                      <node concept="1yVyf7" id="5YMdeR5WLK" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WLL" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5WLM" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5WLO" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5WLR" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                    </node>
                    <node concept="2OqwBi" id="5YMdeR5WLS" role="37vLTx">
                      <node concept="37vLTw" id="5YMdeR5WLV" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WHt" resolve="myParentPath" />
                      </node>
                      <node concept="1z4cxt" id="5YMdeR5WLW" role="2OqNvi">
                        <node concept="1bVj0M" id="5YMdeR5WM1" role="23t8la">
                          <node concept="gl6BB" id="5YMdeR5WM3" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5YMdeR5WM4" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="5YMdeR5WM5" role="1bW5cS">
                            <node concept="3clFbF" id="5YMdeR5WM6" role="3cqZAp">
                              <node concept="2OqwBi" id="5YMdeR5WM8" role="3clFbG">
                                <node concept="37vLTw" id="5YMdeR5WMb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WJ2" resolve="candidateParentPath" />
                                </node>
                                <node concept="3JPx81" id="5YMdeR5WMc" role="2OqNvi">
                                  <node concept="37vLTw" id="5YMdeR5WMe" role="25WWJ7">
                                    <ref role="3cqZAo" node="5YMdeR5WM3" resolve="it" />
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
                <node concept="3clFbJ" id="5YMdeR5WMf" role="3cqZAp">
                  <node concept="1Wc70l" id="5YMdeR5WMi" role="3clFbw">
                    <node concept="3y3z36" id="5YMdeR5WMl" role="3uHU7B">
                      <node concept="37vLTw" id="5YMdeR5WMo" role="3uHU7B">
                        <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                      </node>
                      <node concept="10Nm6u" id="5YMdeR5WMp" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="5YMdeR5WMq" role="3uHU7w">
                      <node concept="37vLTw" id="5YMdeR5WMt" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                      </node>
                      <node concept="1mIQ4w" id="5YMdeR5WMu" role="2OqNvi">
                        <node concept="chp4Y" id="5YMdeR5WMw" role="cj9EA">
                          <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5YMdeR5WMx" role="3clFbx">
                    <node concept="3cpWs8" id="5YMdeR5WMy" role="3cqZAp">
                      <node concept="3cpWsn" id="5YMdeR5WM_" role="3cpWs9">
                        <property role="TrG5h" value="leftSideExpression" />
                        <node concept="3Tqbb2" id="5YMdeR5WMB" role="1tU5fm">
                          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5WMC" role="33vP2m">
                          <node concept="1eOMI4" id="5YMdeR5WMF" role="2Oq$k0">
                            <node concept="1PxgMI" id="5YMdeR5WMH" role="1eOMHV">
                              <node concept="37vLTw" id="5YMdeR5WMK" role="1m5AlR">
                                <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                              </node>
                              <node concept="chp4Y" id="5YMdeR5WML" role="3oSUPX">
                                <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zqWPK" id="5YMdeR5WMM" role="2OqNvi">
                            <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5YMdeR5WMN" role="3cqZAp">
                      <node concept="3cpWsn" id="5YMdeR5WMQ" role="3cpWs9">
                        <property role="TrG5h" value="rightSideExpression" />
                        <node concept="3Tqbb2" id="5YMdeR5WMS" role="1tU5fm">
                          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5WMT" role="33vP2m">
                          <node concept="1eOMI4" id="5YMdeR5WMW" role="2Oq$k0">
                            <node concept="1PxgMI" id="5YMdeR5WMY" role="1eOMHV">
                              <node concept="37vLTw" id="5YMdeR5WN1" role="1m5AlR">
                                <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                              </node>
                              <node concept="chp4Y" id="5YMdeR5WN2" role="3oSUPX">
                                <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zqWPK" id="5YMdeR5WN3" role="2OqNvi">
                            <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5YMdeR5WN4" role="3cqZAp">
                      <node concept="3cpWsn" id="5YMdeR5WN7" role="3cpWs9">
                        <property role="TrG5h" value="candidateAncestors" />
                        <node concept="2I9FWS" id="5YMdeR5WN9" role="1tU5fm">
                          <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5WNa" role="33vP2m">
                          <node concept="37vLTw" id="5YMdeR5WNd" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                          </node>
                          <node concept="z$bX8" id="5YMdeR5WNe" role="2OqNvi">
                            <node concept="1xIGOp" id="5YMdeR5WNf" role="1xVPHs" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5YMdeR5WNg" role="3cqZAp">
                      <node concept="3cpWsn" id="5YMdeR5WNj" role="3cpWs9">
                        <property role="TrG5h" value="myAncestors" />
                        <node concept="2I9FWS" id="5YMdeR5WNl" role="1tU5fm">
                          <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5WNm" role="33vP2m">
                          <node concept="37vLTw" id="5YMdeR5WNp" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                          </node>
                          <node concept="z$bX8" id="5YMdeR5WNq" role="2OqNvi">
                            <node concept="1xIGOp" id="5YMdeR5WNr" role="1xVPHs" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="5YMdeR5WNs" role="3cqZAp" />
                    <node concept="3SKdUt" id="5YMdeR5WNt" role="3cqZAp">
                      <node concept="1PaTwC" id="5YMdeR5WNx" role="1aUNEU">
                        <node concept="3oM_SD" id="5YMdeR5WNz" role="1PaTwD">
                          <property role="3oM_SC" value="Validate" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WN$" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WN_" role="1PaTwD">
                          <property role="3oM_SC" value="bottom-most" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNA" role="1PaTwD">
                          <property role="3oM_SC" value="ancestor," />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNB" role="1PaTwD">
                          <property role="3oM_SC" value="whether" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNC" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WND" role="1PaTwD">
                          <property role="3oM_SC" value="two" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNE" role="1PaTwD">
                          <property role="3oM_SC" value="parentheses" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNF" role="1PaTwD">
                          <property role="3oM_SC" value="can" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNG" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNH" role="1PaTwD">
                          <property role="3oM_SC" value="paired" />
                        </node>
                        <node concept="3oM_SD" id="5YMdeR5WNI" role="1PaTwD">
                          <property role="3oM_SC" value="legally" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5YMdeR5WNJ" role="3cqZAp">
                      <node concept="1Wc70l" id="5YMdeR5WNM" role="3clFbw">
                        <node concept="1Wc70l" id="5YMdeR5WNP" role="3uHU7B">
                          <node concept="37vLTw" id="5YMdeR5WNS" role="3uHU7B">
                            <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                          </node>
                          <node concept="1eOMI4" id="5YMdeR5WNT" role="3uHU7w">
                            <node concept="22lmx$" id="5YMdeR5WNV" role="1eOMHV">
                              <node concept="2OqwBi" id="5YMdeR5WNY" role="3uHU7B">
                                <node concept="37vLTw" id="5YMdeR5WO1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WN7" resolve="candidateAncestors" />
                                </node>
                                <node concept="3JPx81" id="5YMdeR5WO2" role="2OqNvi">
                                  <node concept="37vLTw" id="5YMdeR5WO4" role="25WWJ7">
                                    <ref role="3cqZAo" node="5YMdeR5WM_" resolve="leftSideExpression" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="5YMdeR5WO5" role="3uHU7w">
                                <node concept="37vLTw" id="5YMdeR5WO8" role="3uHU7B">
                                  <ref role="3cqZAo" node="5YMdeR5WM_" resolve="leftSideExpression" />
                                </node>
                                <node concept="10Nm6u" id="5YMdeR5WO9" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="5YMdeR5WOa" role="3uHU7w">
                          <node concept="22lmx$" id="5YMdeR5WOc" role="1eOMHV">
                            <node concept="2OqwBi" id="5YMdeR5WOf" role="3uHU7B">
                              <node concept="37vLTw" id="5YMdeR5WOi" role="2Oq$k0">
                                <ref role="3cqZAo" node="5YMdeR5WNj" resolve="myAncestors" />
                              </node>
                              <node concept="3JPx81" id="5YMdeR5WOj" role="2OqNvi">
                                <node concept="37vLTw" id="5YMdeR5WOl" role="25WWJ7">
                                  <ref role="3cqZAo" node="5YMdeR5WMQ" resolve="rightSideExpression" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="5YMdeR5WOm" role="3uHU7w">
                              <node concept="37vLTw" id="5YMdeR5WOp" role="3uHU7B">
                                <ref role="3cqZAo" node="5YMdeR5WMQ" resolve="rightSideExpression" />
                              </node>
                              <node concept="10Nm6u" id="5YMdeR5WOq" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5YMdeR5WOr" role="3clFbx">
                        <node concept="3zACq4" id="5YMdeR5WOs" role="3cqZAp" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5YMdeR5WOt" role="3cqZAp">
                      <node concept="1Wc70l" id="5YMdeR5WOw" role="3clFbw">
                        <node concept="1Wc70l" id="5YMdeR5WOz" role="3uHU7B">
                          <node concept="3fqX7Q" id="5YMdeR5WOA" role="3uHU7B">
                            <node concept="37vLTw" id="5YMdeR5WOC" role="3fr31v">
                              <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                            </node>
                          </node>
                          <node concept="1eOMI4" id="5YMdeR5WOD" role="3uHU7w">
                            <node concept="22lmx$" id="5YMdeR5WOF" role="1eOMHV">
                              <node concept="2OqwBi" id="5YMdeR5WOI" role="3uHU7B">
                                <node concept="37vLTw" id="5YMdeR5WOL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WNj" resolve="myAncestors" />
                                </node>
                                <node concept="3JPx81" id="5YMdeR5WOM" role="2OqNvi">
                                  <node concept="37vLTw" id="5YMdeR5WOO" role="25WWJ7">
                                    <ref role="3cqZAo" node="5YMdeR5WM_" resolve="leftSideExpression" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="5YMdeR5WOP" role="3uHU7w">
                                <node concept="37vLTw" id="5YMdeR5WOS" role="3uHU7B">
                                  <ref role="3cqZAo" node="5YMdeR5WM_" resolve="leftSideExpression" />
                                </node>
                                <node concept="10Nm6u" id="5YMdeR5WOT" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="5YMdeR5WOU" role="3uHU7w">
                          <node concept="22lmx$" id="5YMdeR5WOW" role="1eOMHV">
                            <node concept="2OqwBi" id="5YMdeR5WOZ" role="3uHU7B">
                              <node concept="37vLTw" id="5YMdeR5WP2" role="2Oq$k0">
                                <ref role="3cqZAo" node="5YMdeR5WN7" resolve="candidateAncestors" />
                              </node>
                              <node concept="3JPx81" id="5YMdeR5WP3" role="2OqNvi">
                                <node concept="37vLTw" id="5YMdeR5WP5" role="25WWJ7">
                                  <ref role="3cqZAo" node="5YMdeR5WMQ" resolve="rightSideExpression" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="5YMdeR5WP6" role="3uHU7w">
                              <node concept="37vLTw" id="5YMdeR5WP9" role="3uHU7B">
                                <ref role="3cqZAo" node="5YMdeR5WMQ" resolve="rightSideExpression" />
                              </node>
                              <node concept="10Nm6u" id="5YMdeR5WPa" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5YMdeR5WPb" role="3clFbx">
                        <node concept="3zACq4" id="5YMdeR5WPc" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5YMdeR5WPd" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5WPh" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5WPj" role="1PaTwD">
                  <property role="3oM_SC" value="Continue" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPk" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPl" role="1PaTwD">
                  <property role="3oM_SC" value="try" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPm" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPn" role="1PaTwD">
                  <property role="3oM_SC" value="candidate" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPo" role="1PaTwD">
                  <property role="3oM_SC" value="parenthesis" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WPp" role="3cqZAp">
              <node concept="3uO5VW" id="5YMdeR5WPr" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WPt" role="2$L3a6">
                  <ref role="3cqZAo" node="5YMdeR5WIG" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WPu" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR5WPx" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WP$" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5WIG" resolve="index" />
            </node>
            <node concept="3cmrfG" id="5YMdeR5WP_" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WPA" role="3clFbx">
            <node concept="3SKdUt" id="5YMdeR5WPB" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5WPF" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5WPH" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPI" role="1PaTwD">
                  <property role="3oM_SC" value="common" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPJ" role="1PaTwD">
                  <property role="3oM_SC" value="ancestor" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPK" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPL" role="1PaTwD">
                  <property role="3oM_SC" value="any" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPM" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPN" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPO" role="1PaTwD">
                  <property role="3oM_SC" value="candidate" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPP" role="1PaTwD">
                  <property role="3oM_SC" value="parens" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPQ" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPR" role="1PaTwD">
                  <property role="3oM_SC" value="swapped" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPS" role="1PaTwD">
                  <property role="3oM_SC" value="left-right" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPT" role="1PaTwD">
                  <property role="3oM_SC" value="-&gt;" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPU" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5WPV" role="1PaTwD">
                  <property role="3oM_SC" value="parenthesise" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WPW" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5WPY" role="3clFbG">
                <ref role="37wK5l" node="5YMdeQZZFu" resolve="setOrIncreaseParen" />
                <node concept="37vLTw" id="5YMdeR5WPZ" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WQ0" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5WQ1" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WQ2" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WQ3" role="3cqZAp" />
        <node concept="3SKdUt" id="5YMdeR5WQ4" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WQ8" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WQa" role="1PaTwD">
              <property role="3oM_SC" value="Let's" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQb" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQc" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQd" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQe" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQf" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQg" role="1PaTwD">
              <property role="3oM_SC" value="parens" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQh" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQi" role="1PaTwD">
              <property role="3oM_SC" value="now," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQj" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQk" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQl" role="1PaTwD">
              <property role="3oM_SC" value="'my'" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQm" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQn" role="1PaTwD">
              <property role="3oM_SC" value="'candidate'" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WQo" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WQr" role="3cpWs9">
            <property role="TrG5h" value="leftExpression" />
            <node concept="3Tqbb2" id="5YMdeR5WQt" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5WQu" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5WQw" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5WQ$" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WQ_" role="3K4E3e">
                  <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WQA" role="3K4GZi">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WQB" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WQE" role="3cpWs9">
            <property role="TrG5h" value="rightExpression" />
            <node concept="3Tqbb2" id="5YMdeR5WQG" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5WQH" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5WQJ" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5WQN" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WQO" role="3K4E3e">
                  <ref role="3cqZAo" node="5YMdeQZZG3" resolve="myExpression" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WQP" role="3K4GZi">
                  <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WQQ" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WQU" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WQW" role="1PaTwD">
              <property role="3oM_SC" value="Find" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQY" role="1PaTwD">
              <property role="3oM_SC" value="turning" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WQZ" role="1PaTwD">
              <property role="3oM_SC" value="points," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR0" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR1" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR2" role="1PaTwD">
              <property role="3oM_SC" value="exist," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR3" role="1PaTwD">
              <property role="3oM_SC" value="otherwise" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR4" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR5" role="1PaTwD">
              <property role="3oM_SC" value="wrap" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR6" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WR7" role="1PaTwD">
              <property role="3oM_SC" value="parens" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WR8" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WRb" role="3cpWs9">
            <property role="TrG5h" value="leftTurn" />
            <node concept="3Tqbb2" id="5YMdeR5WRd" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5WRe" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZHO" resolve="findLeftTurn" />
              <node concept="37vLTw" id="5YMdeR5WRf" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5WQr" resolve="leftExpression" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WRg" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WRh" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WRk" role="3cpWs9">
            <property role="TrG5h" value="rightTurn" />
            <node concept="3Tqbb2" id="5YMdeR5WRm" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5WRn" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZI5" resolve="findRightTurn" />
              <node concept="37vLTw" id="5YMdeR5WRo" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5WQE" resolve="rightExpression" />
              </node>
              <node concept="37vLTw" id="5YMdeR5WRp" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WRq" role="3cqZAp" />
        <node concept="3clFbJ" id="5YMdeR5WRr" role="3cqZAp">
          <node concept="22lmx$" id="5YMdeR5WRu" role="3clFbw">
            <node concept="3y3z36" id="5YMdeR5WRx" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5WR$" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR5WRb" resolve="leftTurn" />
              </node>
              <node concept="10Nm6u" id="5YMdeR5WR_" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5YMdeR5WRA" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR5WRD" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR5WRk" resolve="rightTurn" />
              </node>
              <node concept="10Nm6u" id="5YMdeR5WRE" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WRF" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR5WRG" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5WRJ" role="3cpWs9">
                <property role="TrG5h" value="parens" />
                <node concept="3Tqbb2" id="5YMdeR5WRL" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                </node>
                <node concept="1rXfSq" id="5YMdeR5WRM" role="33vP2m">
                  <ref role="37wK5l" node="5YMdeQZZGx" resolve="rebalance" />
                  <node concept="37vLTw" id="5YMdeR5WRN" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5WRb" resolve="leftTurn" />
                  </node>
                  <node concept="1PxgMI" id="5YMdeR5WRO" role="37wK5m">
                    <node concept="37vLTw" id="5YMdeR5WRR" role="1m5AlR">
                      <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                    </node>
                    <node concept="chp4Y" id="5YMdeR5WRS" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5YMdeR5WRT" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5WRk" resolve="rightTurn" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5WRU" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5WRW" role="3clFbG">
                <ref role="37wK5l" node="5YMdeQZZHz" resolve="clearIncompleteParens" />
                <node concept="37vLTw" id="5YMdeR5WRX" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WRY" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                </node>
                <node concept="37vLTw" id="5YMdeR5WRZ" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR5WRJ" resolve="parens" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5WS0" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5WS1" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeR5WRJ" resolve="parens" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5WS2" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5WS4" role="9aQI4">
              <node concept="3cpWs8" id="5YMdeR5WS5" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR5WS8" role="3cpWs9">
                  <property role="TrG5h" value="parens" />
                  <node concept="3Tqbb2" id="5YMdeR5WSa" role="1tU5fm">
                    <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                  </node>
                  <node concept="2ShNRf" id="5YMdeR5WSb" role="33vP2m">
                    <node concept="3zrR0B" id="5YMdeR5WSd" role="2ShVmc">
                      <node concept="3Tqbb2" id="5YMdeR5WSf" role="3zrR0E">
                        <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR5WSg" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR5WSi" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR5WSl" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                  </node>
                  <node concept="1P9Npp" id="5YMdeR5WSm" role="2OqNvi">
                    <node concept="37vLTw" id="5YMdeR5WSo" role="1P9ThW">
                      <ref role="3cqZAo" node="5YMdeR5WS8" resolve="parens" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR5WSp" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR5WSr" role="3clFbG">
                  <node concept="2OqwBi" id="5YMdeR5WSu" role="2Oq$k0">
                    <node concept="37vLTw" id="5YMdeR5WSx" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR5WS8" resolve="parens" />
                    </node>
                    <node concept="3TrEf2" id="5YMdeR5WSy" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="5YMdeR5WSz" role="2OqNvi">
                    <node concept="37vLTw" id="5YMdeR5WS_" role="2oxUTC">
                      <ref role="3cqZAo" node="5YMdeR5WJj" resolve="firstCommonAncestor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR5WSA" role="3cqZAp">
                <node concept="1rXfSq" id="5YMdeR5WSC" role="3clFbG">
                  <ref role="37wK5l" node="5YMdeQZZHz" resolve="clearIncompleteParens" />
                  <node concept="37vLTw" id="5YMdeR5WSD" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5WIV" resolve="candidateExpression" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5WSE" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZG6" resolve="completingByRightParen" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5WSF" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5WS8" resolve="parens" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR5WSG" role="3cqZAp">
                <node concept="37vLTw" id="5YMdeR5WSH" role="3cqZAk">
                  <ref role="3cqZAo" node="5YMdeR5WS8" resolve="parens" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZGd" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZGe" role="jymVt">
      <property role="TrG5h" value="descendInto" />
      <node concept="3Tm6S6" id="5YMdeQZZGi" role="1B3o_S" />
      <node concept="_YKpA" id="5YMdeQZZGj" role="3clF45">
        <node concept="3Tqbb2" id="5YMdeQZZGl" role="_ZDj9">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZGm" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZZGo" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZGp" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="5YMdeQZZGr" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZGs" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5WSI" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WSM" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WSO" role="1PaTwD">
              <property role="3oM_SC" value="Returns" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSP" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSQ" role="1PaTwD">
              <property role="3oM_SC" value="ordered" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSR" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSS" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WST" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSU" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSV" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSW" role="1PaTwD">
              <property role="3oM_SC" value="incomplete" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSX" role="1PaTwD">
              <property role="3oM_SC" value="left/right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WSY" role="1PaTwD">
              <property role="3oM_SC" value="paren." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WSZ" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WT3" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WT5" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WT6" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WT7" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WT8" role="1PaTwD">
              <property role="3oM_SC" value="ordered" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WT9" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTa" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTb" role="1PaTwD">
              <property role="3oM_SC" value="occurrence" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTc" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTe" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTf" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTg" role="1PaTwD">
              <property role="3oM_SC" value="left-to-right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTh" role="1PaTwD">
              <property role="3oM_SC" value="order." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WTi" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WTm" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WTo" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTp" role="1PaTwD">
              <property role="3oM_SC" value="current" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTq" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTr" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTs" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTt" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTv" role="1PaTwD">
              <property role="3oM_SC" value="front" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTw" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTx" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTy" role="1PaTwD">
              <property role="3oM_SC" value="list," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WTz" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WTB" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WTD" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTE" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTF" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTH" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTJ" role="1PaTwD">
              <property role="3oM_SC" value="most" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTK" role="1PaTwD">
              <property role="3oM_SC" value="distant" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTL" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTM" role="1PaTwD">
              <property role="3oM_SC" value="among" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTN" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTO" role="1PaTwD">
              <property role="3oM_SC" value="returned" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WTP" role="1PaTwD">
              <property role="3oM_SC" value="candidates." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WTQ" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WTT" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="_YKpA" id="5YMdeR5WTV" role="1tU5fm">
              <node concept="3Tqbb2" id="5YMdeR5WTX" role="_ZDj9">
                <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
            </node>
            <node concept="2ShNRf" id="5YMdeR5WTY" role="33vP2m">
              <node concept="Tc6Ow" id="5YMdeR5WU0" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5WU1" role="HW$YZ">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5WU2" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5WU4" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5WU7" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
            </node>
            <node concept="TSZUe" id="5YMdeR5WU8" role="2OqNvi">
              <node concept="10Nm6u" id="5YMdeR5WUa" role="25WWJ7" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5WUb" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5WUd" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5WUg" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
            </node>
            <node concept="TSZUe" id="5YMdeR5WUh" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5WUj" role="25WWJ7">
                <ref role="3cqZAo" node="5YMdeQZZGm" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5WUk" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WUn" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5YMdeR5WUp" role="1tU5fm">
              <node concept="3Tqbb2" id="5YMdeR5WUr" role="_ZDj9">
                <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
            </node>
            <node concept="2ShNRf" id="5YMdeR5WUs" role="33vP2m">
              <node concept="Tc6Ow" id="5YMdeR5WUu" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5WUv" role="HW$YZ">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WUw" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5WUx" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5WU$" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5YMdeR5WUA" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR5WUB" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeQZZGm" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5WUC" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5WUF" role="2$JKZa">
            <node concept="37vLTw" id="5YMdeR5WUI" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
            </node>
            <node concept="3GX2aA" id="5YMdeR5WUJ" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="5YMdeR5WUK" role="2LFqv$">
            <node concept="3clFbJ" id="5YMdeR5WUL" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5WUO" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5WUR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="5YMdeR5WUS" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeR5WUU" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5WUV" role="3clFbx">
                <node concept="3clFbJ" id="5YMdeR5WUW" role="3cqZAp">
                  <node concept="17R0WA" id="5YMdeR5WUZ" role="3clFbw">
                    <node concept="2OqwBi" id="5YMdeR5WV2" role="3uHU7B">
                      <node concept="37vLTw" id="5YMdeR5WV5" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                      </node>
                      <node concept="1yVyf7" id="5YMdeR5WV6" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5WV7" role="3uHU7w">
                      <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5YMdeR5WV8" role="3clFbx">
                    <node concept="3cpWs8" id="5YMdeR5WV9" role="3cqZAp">
                      <node concept="3cpWsn" id="5YMdeR5WVc" role="3cpWs9">
                        <property role="TrG5h" value="left" />
                        <node concept="3Tqbb2" id="5YMdeR5WVe" role="1tU5fm">
                          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5WVf" role="33vP2m">
                          <node concept="1eOMI4" id="5YMdeR5WVi" role="2Oq$k0">
                            <node concept="1PxgMI" id="5YMdeR5WVk" role="1eOMHV">
                              <node concept="37vLTw" id="5YMdeR5WVn" role="1m5AlR">
                                <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                              </node>
                              <node concept="chp4Y" id="5YMdeR5WVo" role="3oSUPX">
                                <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zqWPK" id="5YMdeR5WVp" role="2OqNvi">
                            <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5YMdeR5WVq" role="3cqZAp">
                      <node concept="3y3z36" id="5YMdeR5WVt" role="3clFbw">
                        <node concept="37vLTw" id="5YMdeR5WVw" role="3uHU7B">
                          <ref role="3cqZAo" node="5YMdeR5WVc" resolve="left" />
                        </node>
                        <node concept="10Nm6u" id="5YMdeR5WVx" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="5YMdeR5WVy" role="3clFbx">
                        <node concept="3clFbF" id="5YMdeR5WVz" role="3cqZAp">
                          <node concept="2OqwBi" id="5YMdeR5WV_" role="3clFbG">
                            <node concept="37vLTw" id="5YMdeR5WVC" role="2Oq$k0">
                              <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                            </node>
                            <node concept="TSZUe" id="5YMdeR5WVD" role="2OqNvi">
                              <node concept="37vLTw" id="5YMdeR5WVF" role="25WWJ7">
                                <ref role="3cqZAo" node="5YMdeR5WVc" resolve="left" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5YMdeR5WVG" role="3cqZAp">
                          <node concept="37vLTI" id="5YMdeR5WVI" role="3clFbG">
                            <node concept="37vLTw" id="5YMdeR5WVL" role="37vLTJ">
                              <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                            </node>
                            <node concept="37vLTw" id="5YMdeR5WVM" role="37vLTx">
                              <ref role="3cqZAo" node="5YMdeR5WVc" resolve="left" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="5YMdeR5WVN" role="9aQIa">
                        <node concept="3clFbS" id="5YMdeR5WVP" role="9aQI4">
                          <node concept="3clFbF" id="5YMdeR5WVQ" role="3cqZAp">
                            <node concept="37vLTI" id="5YMdeR5WVS" role="3clFbG">
                              <node concept="37vLTw" id="5YMdeR5WVV" role="37vLTJ">
                                <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                              </node>
                              <node concept="2OqwBi" id="5YMdeR5WVW" role="37vLTx">
                                <node concept="37vLTw" id="5YMdeR5WVZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                                </node>
                                <node concept="2Kt5_m" id="5YMdeR5WW0" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5YMdeR5WW1" role="9aQIa">
                    <node concept="3clFbS" id="5YMdeR5WW3" role="9aQI4">
                      <node concept="3clFbF" id="5YMdeR5WW4" role="3cqZAp">
                        <node concept="2OqwBi" id="5YMdeR5WW6" role="3clFbG">
                          <node concept="37vLTw" id="5YMdeR5WW9" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="5YMdeR5WWa" role="2OqNvi">
                            <node concept="37vLTw" id="5YMdeR5WWc" role="25WWJ7">
                              <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5YMdeR5WWd" role="3cqZAp">
                        <node concept="3cpWsn" id="5YMdeR5WWg" role="3cpWs9">
                          <property role="TrG5h" value="right" />
                          <node concept="3Tqbb2" id="5YMdeR5WWi" role="1tU5fm">
                            <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                          </node>
                          <node concept="2OqwBi" id="5YMdeR5WWj" role="33vP2m">
                            <node concept="1eOMI4" id="5YMdeR5WWm" role="2Oq$k0">
                              <node concept="1PxgMI" id="5YMdeR5WWo" role="1eOMHV">
                                <node concept="37vLTw" id="5YMdeR5WWr" role="1m5AlR">
                                  <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                                </node>
                                <node concept="chp4Y" id="5YMdeR5WWs" role="3oSUPX">
                                  <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                                </node>
                              </node>
                            </node>
                            <node concept="3zqWPK" id="5YMdeR5WWt" role="2OqNvi">
                              <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5YMdeR5WWu" role="3cqZAp">
                        <node concept="3y3z36" id="5YMdeR5WWx" role="3clFbw">
                          <node concept="37vLTw" id="5YMdeR5WW$" role="3uHU7B">
                            <ref role="3cqZAo" node="5YMdeR5WWg" resolve="right" />
                          </node>
                          <node concept="10Nm6u" id="5YMdeR5WW_" role="3uHU7w" />
                        </node>
                        <node concept="3clFbS" id="5YMdeR5WWA" role="3clFbx">
                          <node concept="3clFbF" id="5YMdeR5WWB" role="3cqZAp">
                            <node concept="2OqwBi" id="5YMdeR5WWD" role="3clFbG">
                              <node concept="37vLTw" id="5YMdeR5WWG" role="2Oq$k0">
                                <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                              </node>
                              <node concept="TSZUe" id="5YMdeR5WWH" role="2OqNvi">
                                <node concept="37vLTw" id="5YMdeR5WWJ" role="25WWJ7">
                                  <ref role="3cqZAo" node="5YMdeR5WWg" resolve="right" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5YMdeR5WWK" role="3cqZAp">
                            <node concept="37vLTI" id="5YMdeR5WWM" role="3clFbG">
                              <node concept="37vLTw" id="5YMdeR5WWP" role="37vLTJ">
                                <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                              </node>
                              <node concept="37vLTw" id="5YMdeR5WWQ" role="37vLTx">
                                <ref role="3cqZAo" node="5YMdeR5WWg" resolve="right" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="5YMdeR5WWR" role="9aQIa">
                          <node concept="3clFbS" id="5YMdeR5WWT" role="9aQI4">
                            <node concept="3clFbF" id="5YMdeR5WWU" role="3cqZAp">
                              <node concept="37vLTI" id="5YMdeR5WWW" role="3clFbG">
                                <node concept="37vLTw" id="5YMdeR5WWZ" role="37vLTJ">
                                  <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                                </node>
                                <node concept="2OqwBi" id="5YMdeR5WX0" role="37vLTx">
                                  <node concept="37vLTw" id="5YMdeR5WX3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                                  </node>
                                  <node concept="2Kt5_m" id="5YMdeR5WX4" role="2OqNvi" />
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
              <node concept="9aQIb" id="5YMdeR5WX5" role="9aQIa">
                <node concept="3clFbS" id="5YMdeR5WX7" role="9aQI4">
                  <node concept="3clFbF" id="5YMdeR5WX8" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5WXa" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5WXd" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="5YMdeR5WXe" role="2OqNvi">
                        <node concept="37vLTw" id="5YMdeR5WXg" role="25WWJ7">
                          <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5YMdeR5WXh" role="3cqZAp">
                    <node concept="17R0WA" id="5YMdeR5WXk" role="3clFbw">
                      <node concept="2OqwBi" id="5YMdeR5WXn" role="3uHU7B">
                        <node concept="37vLTw" id="5YMdeR5WXq" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                        </node>
                        <node concept="1yVyf7" id="5YMdeR5WXr" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="5YMdeR5WXs" role="3uHU7w">
                        <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5YMdeR5WXt" role="3clFbx">
                      <node concept="3clFbF" id="5YMdeR5WXu" role="3cqZAp">
                        <node concept="2OqwBi" id="5YMdeR5WXw" role="3clFbG">
                          <node concept="37vLTw" id="5YMdeR5WXz" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                          </node>
                          <node concept="2Kt5_m" id="5YMdeR5WX$" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5WX_" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR5WXB" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5WXE" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR5WU$" resolve="current" />
                      </node>
                      <node concept="2OqwBi" id="5YMdeR5WXF" role="37vLTx">
                        <node concept="37vLTw" id="5YMdeR5WXI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5WTT" resolve="path" />
                        </node>
                        <node concept="2Kt5_m" id="5YMdeR5WXJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5WXK" role="3cqZAp">
          <node concept="3fqX7Q" id="5YMdeR5WXN" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5WXP" role="3fr31v">
              <ref role="3cqZAo" node="5YMdeQZZGp" resolve="completingByRightParen" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5WXQ" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5WXR" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5WXT" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5WXW" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5WXX" role="37vLTx">
                  <node concept="37vLTw" id="5YMdeR5WY0" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
                  </node>
                  <node concept="35Qw8J" id="5YMdeR5WY1" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WY2" role="3cqZAp" />
        <node concept="3clFbF" id="5YMdeR5WY3" role="3cqZAp">
          <node concept="37vLTI" id="5YMdeR5WY5" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5WY8" role="37vLTJ">
              <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
            </node>
            <node concept="2OqwBi" id="5YMdeR5WY9" role="37vLTx">
              <node concept="2OqwBi" id="5YMdeR5WYc" role="2Oq$k0">
                <node concept="37vLTw" id="5YMdeR5WYf" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
                </node>
                <node concept="3zZkjj" id="5YMdeR5WYg" role="2OqNvi">
                  <node concept="1bVj0M" id="5YMdeR5WYl" role="23t8la">
                    <node concept="gl6BB" id="5YMdeR5WYn" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5YMdeR5WYo" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="5YMdeR5WYp" role="1bW5cS">
                      <node concept="3clFbF" id="5YMdeR5WYq" role="3cqZAp">
                        <node concept="22lmx$" id="5YMdeR5WYs" role="3clFbG">
                          <node concept="1Wc70l" id="5YMdeR5WYv" role="3uHU7B">
                            <node concept="37vLTw" id="5YMdeR5WYy" role="3uHU7B">
                              <ref role="3cqZAo" node="5YMdeQZZGp" resolve="completingByRightParen" />
                            </node>
                            <node concept="2OqwBi" id="5YMdeR5WYz" role="3uHU7w">
                              <node concept="2OqwBi" id="5YMdeR5WYA" role="2Oq$k0">
                                <node concept="37vLTw" id="5YMdeR5WYD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WYn" resolve="it" />
                                </node>
                                <node concept="3CFZ6_" id="5YMdeR5WYE" role="2OqNvi">
                                  <node concept="3CFYIy" id="5YMdeR5WYG" role="3CFYIz">
                                    <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3x8VRR" id="5YMdeR5WYH" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="1Wc70l" id="5YMdeR5WYI" role="3uHU7w">
                            <node concept="3fqX7Q" id="5YMdeR5WYL" role="3uHU7B">
                              <node concept="37vLTw" id="5YMdeR5WYN" role="3fr31v">
                                <ref role="3cqZAo" node="5YMdeQZZGp" resolve="completingByRightParen" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5YMdeR5WYO" role="3uHU7w">
                              <node concept="2OqwBi" id="5YMdeR5WYR" role="2Oq$k0">
                                <node concept="37vLTw" id="5YMdeR5WYU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5YMdeR5WYn" resolve="it" />
                                </node>
                                <node concept="3CFZ6_" id="5YMdeR5WYV" role="2OqNvi">
                                  <node concept="3CFYIy" id="5YMdeR5WYX" role="3CFYIz">
                                    <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3x8VRR" id="5YMdeR5WYY" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5YMdeR5WYZ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5WZ0" role="3cqZAp" />
        <node concept="3clFbF" id="5YMdeR5WZ1" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5WZ3" role="3clFbG">
            <ref role="3cqZAo" node="5YMdeR5WUn" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZGw" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZGx" role="jymVt">
      <property role="TrG5h" value="rebalance" />
      <node concept="3Tm6S6" id="5YMdeQZZG_" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZGA" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZGB" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="3Tqbb2" id="5YMdeQZZGD" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZGE" role="3clF46">
        <property role="TrG5h" value="firstCommonAncestor" />
        <node concept="3Tqbb2" id="5YMdeQZZGG" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZGH" role="3clF46">
        <property role="TrG5h" value="rightTurn" />
        <node concept="3Tqbb2" id="5YMdeQZZGJ" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZGK" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5WZ4" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WZ8" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WZa" role="1PaTwD">
              <property role="3oM_SC" value="Create" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZc" role="1PaTwD">
              <property role="3oM_SC" value="TSParenthesizedExpression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZd" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZe" role="1PaTwD">
              <property role="3oM_SC" value="hook" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZf" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZg" role="1PaTwD">
              <property role="3oM_SC" value="properly" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZh" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZj" role="1PaTwD">
              <property role="3oM_SC" value="model." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WZk" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WZo" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WZq" role="1PaTwD">
              <property role="3oM_SC" value="leftTurn" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZs" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZt" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZu" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZv" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZw" role="1PaTwD">
              <property role="3oM_SC" value="put" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZx" role="1PaTwD">
              <property role="3oM_SC" value="outside" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZy" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZz" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZ$" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZ_" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZA" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZC" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZD" role="1PaTwD">
              <property role="3oM_SC" value="parens" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5WZE" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5WZI" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5WZK" role="1PaTwD">
              <property role="3oM_SC" value="rightTurn" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZL" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZM" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZN" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZO" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZP" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZQ" role="1PaTwD">
              <property role="3oM_SC" value="put" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZR" role="1PaTwD">
              <property role="3oM_SC" value="outside" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZS" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZV" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZY" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5WZZ" role="1PaTwD">
              <property role="3oM_SC" value="parens" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5X00" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X04" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X06" role="1PaTwD">
              <property role="3oM_SC" value="firstCommonAncestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X07" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X08" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X09" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0a" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0b" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0c" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0d" role="1PaTwD">
              <property role="3oM_SC" value="parentheses" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5X0e" role="3cqZAp" />
        <node concept="3SKdUt" id="5YMdeR5X0f" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X0j" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X0l" role="1PaTwD">
              <property role="3oM_SC" value="Accumulate" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0m" role="1PaTwD">
              <property role="3oM_SC" value="expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0n" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0o" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0p" role="1PaTwD">
              <property role="3oM_SC" value="leftTurn" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0q" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0r" role="1PaTwD">
              <property role="3oM_SC" value="firstCommon" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0s" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0t" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0u" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0v" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0w" role="1PaTwD">
              <property role="3oM_SC" value="parens." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5X0x" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X0_" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X0B" role="1PaTwD">
              <property role="3oM_SC" value="These" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0C" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0D" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0E" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0F" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0G" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0H" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0I" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0J" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0K" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0L" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0M" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X0N" role="1PaTwD">
              <property role="3oM_SC" value="child." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X0O" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X0R" role="3cpWs9">
            <property role="TrG5h" value="leftAccumulator" />
            <node concept="3Tqbb2" id="5YMdeR5X0T" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5X0U" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZHf" resolve="buildAccumulator" />
              <node concept="37vLTw" id="5YMdeR5X0V" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZGE" resolve="firstCommonAncestor" />
              </node>
              <node concept="37vLTw" id="5YMdeR5X0W" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZGB" resolve="leftTurn" />
              </node>
              <node concept="3clFbT" id="5YMdeR5X0X" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5X0Y" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X12" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X14" role="1PaTwD">
              <property role="3oM_SC" value="Accumulate" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X15" role="1PaTwD">
              <property role="3oM_SC" value="expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X16" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X17" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X18" role="1PaTwD">
              <property role="3oM_SC" value="rightTurn" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X19" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1a" role="1PaTwD">
              <property role="3oM_SC" value="firstCommon" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1b" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1c" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1d" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1e" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1f" role="1PaTwD">
              <property role="3oM_SC" value="parens." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5X1g" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X1k" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X1m" role="1PaTwD">
              <property role="3oM_SC" value="These" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1n" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1o" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1p" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1q" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1r" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1s" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1t" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1u" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1v" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1w" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1x" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X1y" role="1PaTwD">
              <property role="3oM_SC" value="child." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X1z" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X1A" role="3cpWs9">
            <property role="TrG5h" value="rightAccumulator" />
            <node concept="3Tqbb2" id="5YMdeR5X1C" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR5X1D" role="33vP2m">
              <ref role="37wK5l" node="5YMdeQZZHf" resolve="buildAccumulator" />
              <node concept="37vLTw" id="5YMdeR5X1E" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZGE" resolve="firstCommonAncestor" />
              </node>
              <node concept="37vLTw" id="5YMdeR5X1F" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeQZZGH" resolve="rightTurn" />
              </node>
              <node concept="3clFbT" id="5YMdeR5X1G" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5X1H" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5X1I" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X1L" role="3cpWs9">
            <property role="TrG5h" value="parens" />
            <node concept="3Tqbb2" id="5YMdeR5X1N" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
            </node>
            <node concept="2ShNRf" id="5YMdeR5X1O" role="33vP2m">
              <node concept="3zrR0B" id="5YMdeR5X1Q" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5X1S" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5X1T" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5X1V" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZGP" resolve="rebalanceAfterParenthing" />
            <node concept="37vLTw" id="5YMdeR5X1W" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZGE" resolve="firstCommonAncestor" />
            </node>
            <node concept="37vLTw" id="5YMdeR5X1X" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZGH" resolve="rightTurn" />
            </node>
            <node concept="37vLTw" id="5YMdeR5X1Y" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZGB" resolve="leftTurn" />
            </node>
            <node concept="37vLTw" id="5YMdeR5X1Z" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5X1L" resolve="parens" />
            </node>
            <node concept="37vLTw" id="5YMdeR5X20" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5X1A" resolve="rightAccumulator" />
            </node>
            <node concept="37vLTw" id="5YMdeR5X21" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5X0R" resolve="leftAccumulator" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5X22" role="3cqZAp" />
        <node concept="3clFbF" id="5YMdeR5X23" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5X25" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR5X28" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5X2b" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5X1L" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="5YMdeR5X2c" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeR5X2d" role="2OqNvi">
              <node concept="1PxgMI" id="5YMdeR5X2f" role="2oxUTC">
                <node concept="37vLTw" id="5YMdeR5X2i" role="1m5AlR">
                  <ref role="3cqZAo" node="5YMdeQZZGE" resolve="firstCommonAncestor" />
                </node>
                <node concept="chp4Y" id="5YMdeR5X2j" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5X2k" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5X2l" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR5X1L" resolve="parens" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZGO" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZGP" role="jymVt">
      <property role="TrG5h" value="rebalanceAfterParenthing" />
      <node concept="3Tm6S6" id="5YMdeQZZGT" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZGU" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZGV" role="3clF46">
        <property role="TrG5h" value="commonAncestor" />
        <node concept="3Tqbb2" id="5YMdeQZZGX" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZGY" role="3clF46">
        <property role="TrG5h" value="rightTurn" />
        <node concept="3Tqbb2" id="5YMdeQZZH0" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZH1" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="3Tqbb2" id="5YMdeQZZH3" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZH4" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="5YMdeQZZH6" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZH7" role="3clF46">
        <property role="TrG5h" value="rightAccumulator" />
        <node concept="3Tqbb2" id="5YMdeQZZH9" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZHa" role="3clF46">
        <property role="TrG5h" value="leftAccumulator" />
        <node concept="3Tqbb2" id="5YMdeQZZHc" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZHd" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5X2m" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X2p" role="3cpWs9">
            <property role="TrG5h" value="leftSide" />
            <node concept="3Tqbb2" id="5YMdeR5X2r" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="2OqwBi" id="5YMdeR5X2s" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5X2v" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
              </node>
              <node concept="3zqWPK" id="5YMdeR5X2w" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X2x" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X2$" role="3cpWs9">
            <property role="TrG5h" value="rightSide" />
            <node concept="3Tqbb2" id="5YMdeR5X2A" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="2OqwBi" id="5YMdeR5X2B" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5X2E" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
              </node>
              <node concept="3zqWPK" id="5YMdeR5X2F" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5YMdeR5X2G" role="3cqZAp">
          <node concept="22lmx$" id="5YMdeR5X2I" role="1gVkn0">
            <node concept="3y3z36" id="5YMdeR5X2L" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5X2O" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR5X2p" resolve="leftSide" />
              </node>
              <node concept="10Nm6u" id="5YMdeR5X2P" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5YMdeR5X2Q" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR5X2T" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR5X2$" resolve="rightSide" />
              </node>
              <node concept="10Nm6u" id="5YMdeR5X2U" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X2V" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X2Y" role="3cpWs9">
            <property role="TrG5h" value="head" />
            <node concept="3Tqbb2" id="5YMdeR5X30" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5X31" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5X33" role="1eOMHV">
                <node concept="3y3z36" id="5YMdeR5X37" role="3K4Cdx">
                  <node concept="37vLTw" id="5YMdeR5X3a" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5X2$" resolve="rightSide" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5X3b" role="3uHU7w" />
                </node>
                <node concept="37vLTw" id="5YMdeR5X3c" role="3K4E3e">
                  <ref role="3cqZAo" node="5YMdeR5X2$" resolve="rightSide" />
                </node>
                <node concept="37vLTw" id="5YMdeR5X3d" role="3K4GZi">
                  <ref role="3cqZAo" node="5YMdeR5X2p" resolve="leftSide" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5X3e" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5X3g" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5X3j" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
            </node>
            <node concept="1P9Npp" id="5YMdeR5X3k" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5X3m" role="1P9ThW">
                <ref role="3cqZAo" node="5YMdeR5X2Y" resolve="head" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5X3n" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5X3p" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR5X3s" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5X3v" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZH4" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="5YMdeR5X3w" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeR5X3x" role="2OqNvi">
              <node concept="1PxgMI" id="5YMdeR5X3z" role="2oxUTC">
                <node concept="37vLTw" id="5YMdeR5X3A" role="1m5AlR">
                  <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
                </node>
                <node concept="chp4Y" id="5YMdeR5X3B" role="3oSUPX">
                  <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5X3C" role="3cqZAp" />
        <node concept="3clFbJ" id="5YMdeR5X3D" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5X3G" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5X3J" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeQZZHa" resolve="leftAccumulator" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5X3K" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5X3L" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5X3M" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5X3O" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X3R" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5X3S" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGP9" resolve="setSyntacticallyLeftSideExpression" />
                  <node concept="37vLTw" id="5YMdeR5X3T" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZHa" resolve="leftAccumulator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5X3U" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5X3X" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5X40" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeQZZH7" resolve="rightAccumulator" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5X41" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5X42" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5X43" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5X45" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X48" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZGV" resolve="commonAncestor" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5X49" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGPx" resolve="setSyntacticallyRightSideExpression" />
                  <node concept="37vLTw" id="5YMdeR5X4a" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZH7" resolve="rightAccumulator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X4b" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X4e" role="3cpWs9">
            <property role="TrG5h" value="subtree" />
            <node concept="3Tqbb2" id="5YMdeR5X4g" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5X4h" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5X4k" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5X4n" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5X2p" resolve="leftSide" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5X4o" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5X4p" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5X4q" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5X4s" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X4v" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5X4e" resolve="subtree" />
                </node>
                <node concept="37vLTw" id="5YMdeR5X4w" role="37vLTx">
                  <ref role="3cqZAo" node="5YMdeR5X2p" resolve="leftSide" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5X4x" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5X4z" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X4A" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZH1" resolve="leftTurn" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5X4B" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGPx" resolve="setSyntacticallyRightSideExpression" />
                  <node concept="37vLTw" id="5YMdeR5X4C" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZH4" resolve="parens" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5X4D" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5X4F" role="9aQI4">
              <node concept="3clFbF" id="5YMdeR5X4G" role="3cqZAp">
                <node concept="37vLTI" id="5YMdeR5X4I" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR5X4L" role="37vLTJ">
                    <ref role="3cqZAo" node="5YMdeR5X4e" resolve="subtree" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5X4M" role="37vLTx">
                    <ref role="3cqZAo" node="5YMdeQZZH4" resolve="parens" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5X4N" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5X4Q" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5X4T" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5X2$" resolve="rightSide" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5X4U" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5X4V" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5X4W" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5X4Y" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X51" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZGY" resolve="rightTurn" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5X52" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGP9" resolve="setSyntacticallyLeftSideExpression" />
                  <node concept="37vLTw" id="5YMdeR5X53" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5X4e" resolve="subtree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZHe" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZHf" role="jymVt">
      <property role="TrG5h" value="buildAccumulator" />
      <node concept="3Tm6S6" id="5YMdeQZZHj" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZHk" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZHl" role="3clF46">
        <property role="TrG5h" value="firstCommonAncestor" />
        <node concept="3Tqbb2" id="5YMdeQZZHn" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZHo" role="3clF46">
        <property role="TrG5h" value="turn" />
        <node concept="3Tqbb2" id="5YMdeQZZHq" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZHr" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="10P_77" id="5YMdeQZZHt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZHu" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5X54" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X58" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X5a" role="1PaTwD">
              <property role="3oM_SC" value="Accumulate" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5b" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5c" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5d" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5e" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5f" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5g" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5h" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5i" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5j" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X5k" role="1PaTwD">
              <property role="3oM_SC" value="parentheses" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X5l" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X5o" role="3cpWs9">
            <property role="TrG5h" value="accumulator" />
            <node concept="3Tqbb2" id="5YMdeR5X5q" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5X5r" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5X5u" role="3clFbw">
            <node concept="3y3z36" id="5YMdeR5X5x" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5X5$" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
              </node>
              <node concept="10Nm6u" id="5YMdeR5X5_" role="3uHU7w" />
            </node>
            <node concept="17QLQc" id="5YMdeR5X5A" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR5X5D" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
              </node>
              <node concept="37vLTw" id="5YMdeR5X5E" role="3uHU7w">
                <ref role="3cqZAo" node="5YMdeQZZHl" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5X5F" role="3clFbx">
            <node concept="3SKdUt" id="5YMdeR5X5G" role="3cqZAp">
              <node concept="1PaTwC" id="5YMdeR5X5K" role="1aUNEU">
                <node concept="3oM_SD" id="5YMdeR5X5M" role="1PaTwD">
                  <property role="3oM_SC" value="Accumulate" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5N" role="1PaTwD">
                  <property role="3oM_SC" value="nodes" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5O" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5P" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5Q" role="1PaTwD">
                  <property role="3oM_SC" value="path" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5R" role="1PaTwD">
                  <property role="3oM_SC" value="up" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5S" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5T" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5U" role="1PaTwD">
                  <property role="3oM_SC" value="left/right" />
                </node>
                <node concept="3oM_SD" id="5YMdeR5X5V" role="1PaTwD">
                  <property role="3oM_SC" value="paren" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5X5W" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5X5Y" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X61" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                </node>
                <node concept="1eOMI4" id="5YMdeR5X62" role="37vLTx">
                  <node concept="3K4zz7" id="5YMdeR5X64" role="1eOMHV">
                    <node concept="37vLTw" id="5YMdeR5X68" role="3K4Cdx">
                      <ref role="3cqZAo" node="5YMdeQZZHr" resolve="left" />
                    </node>
                    <node concept="2OqwBi" id="5YMdeR5X69" role="3K4E3e">
                      <node concept="37vLTw" id="5YMdeR5X6c" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
                      </node>
                      <node concept="3zqWPK" id="5YMdeR5X6d" role="2OqNvi">
                        <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5YMdeR5X6e" role="3K4GZi">
                      <node concept="37vLTw" id="5YMdeR5X6h" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
                      </node>
                      <node concept="3zqWPK" id="5YMdeR5X6i" role="2OqNvi">
                        <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5X6j" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5X6l" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5X6o" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                </node>
                <node concept="3YRAZt" id="5YMdeR5X6p" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5X6q" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5X6t" role="3cpWs9">
                <property role="TrG5h" value="current" />
                <node concept="3Tqbb2" id="5YMdeR5X6v" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
                <node concept="1PxgMI" id="5YMdeR5X6w" role="33vP2m">
                  <node concept="2OqwBi" id="5YMdeR5X6z" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR5X6A" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR5X6B" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5X6C" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5X6D" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5X6G" role="3cpWs9">
                <property role="TrG5h" value="previous" />
                <node concept="3Tqbb2" id="5YMdeR5X6I" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
                <node concept="37vLTw" id="5YMdeR5X6J" role="33vP2m">
                  <ref role="3cqZAo" node="5YMdeQZZHo" resolve="turn" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="5YMdeR5X6K" role="3cqZAp">
              <node concept="17QLQc" id="5YMdeR5X6N" role="2$JKZa">
                <node concept="37vLTw" id="5YMdeR5X6Q" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                </node>
                <node concept="37vLTw" id="5YMdeR5X6R" role="3uHU7w">
                  <ref role="3cqZAo" node="5YMdeQZZHl" resolve="firstCommonAncestor" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5X6S" role="2LFqv$">
                <node concept="3cpWs8" id="5YMdeR5X6T" role="3cqZAp">
                  <node concept="3cpWsn" id="5YMdeR5X6W" role="3cpWs9">
                    <property role="TrG5h" value="sideExpression" />
                    <node concept="3Tqbb2" id="5YMdeR5X6Y" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                    </node>
                    <node concept="1eOMI4" id="5YMdeR5X6Z" role="33vP2m">
                      <node concept="3K4zz7" id="5YMdeR5X71" role="1eOMHV">
                        <node concept="37vLTw" id="5YMdeR5X75" role="3K4Cdx">
                          <ref role="3cqZAo" node="5YMdeQZZHr" resolve="left" />
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5X76" role="3K4E3e">
                          <node concept="37vLTw" id="5YMdeR5X79" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                          </node>
                          <node concept="3zqWPK" id="5YMdeR5X7a" role="2OqNvi">
                            <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5YMdeR5X7b" role="3K4GZi">
                          <node concept="37vLTw" id="5YMdeR5X7e" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                          </node>
                          <node concept="3zqWPK" id="5YMdeR5X7f" role="2OqNvi">
                            <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5YMdeR5X7g" role="3cqZAp">
                  <node concept="1Wc70l" id="5YMdeR5X7j" role="3clFbw">
                    <node concept="3y3z36" id="5YMdeR5X7m" role="3uHU7B">
                      <node concept="37vLTw" id="5YMdeR5X7p" role="3uHU7B">
                        <ref role="3cqZAo" node="5YMdeR5X6W" resolve="sideExpression" />
                      </node>
                      <node concept="10Nm6u" id="5YMdeR5X7q" role="3uHU7w" />
                    </node>
                    <node concept="17R0WA" id="5YMdeR5X7r" role="3uHU7w">
                      <node concept="37vLTw" id="5YMdeR5X7u" role="3uHU7B">
                        <ref role="3cqZAo" node="5YMdeR5X6W" resolve="sideExpression" />
                      </node>
                      <node concept="37vLTw" id="5YMdeR5X7v" role="3uHU7w">
                        <ref role="3cqZAo" node="5YMdeR5X6G" resolve="previous" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5YMdeR5X7w" role="3clFbx">
                    <node concept="3clFbF" id="5YMdeR5X7x" role="3cqZAp">
                      <node concept="2OqwBi" id="5YMdeR5X7z" role="3clFbG">
                        <node concept="37vLTw" id="5YMdeR5X7A" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                        </node>
                        <node concept="1P9Npp" id="5YMdeR5X7B" role="2OqNvi">
                          <node concept="37vLTw" id="5YMdeR5X7D" role="1P9ThW">
                            <ref role="3cqZAo" node="5YMdeR5X6G" resolve="previous" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5YMdeR5X7E" role="3cqZAp">
                      <node concept="37vLTw" id="5YMdeR5X7H" role="3clFbw">
                        <ref role="3cqZAo" node="5YMdeQZZHr" resolve="left" />
                      </node>
                      <node concept="3clFbS" id="5YMdeR5X7I" role="3clFbx">
                        <node concept="3clFbF" id="5YMdeR5X7J" role="3cqZAp">
                          <node concept="2OqwBi" id="5YMdeR5X7L" role="3clFbG">
                            <node concept="37vLTw" id="5YMdeR5X7O" role="2Oq$k0">
                              <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                            </node>
                            <node concept="3zqWPK" id="5YMdeR5X7P" role="2OqNvi">
                              <ref role="37wK5l" node="5YMdeQZGP9" resolve="setSyntacticallyLeftSideExpression" />
                              <node concept="37vLTw" id="5YMdeR5X7Q" role="37wK5m">
                                <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="5YMdeR5X7R" role="9aQIa">
                        <node concept="3clFbS" id="5YMdeR5X7T" role="9aQI4">
                          <node concept="3clFbF" id="5YMdeR5X7U" role="3cqZAp">
                            <node concept="2OqwBi" id="5YMdeR5X7W" role="3clFbG">
                              <node concept="37vLTw" id="5YMdeR5X7Z" role="2Oq$k0">
                                <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                              </node>
                              <node concept="3zqWPK" id="5YMdeR5X80" role="2OqNvi">
                                <ref role="37wK5l" node="5YMdeQZGPx" resolve="setSyntacticallyRightSideExpression" />
                                <node concept="37vLTw" id="5YMdeR5X81" role="37wK5m">
                                  <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5YMdeR5X82" role="3cqZAp">
                      <node concept="37vLTI" id="5YMdeR5X84" role="3clFbG">
                        <node concept="37vLTw" id="5YMdeR5X87" role="37vLTJ">
                          <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                        </node>
                        <node concept="1PxgMI" id="5YMdeR5X88" role="37vLTx">
                          <node concept="37vLTw" id="5YMdeR5X8b" role="1m5AlR">
                            <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                          </node>
                          <node concept="chp4Y" id="5YMdeR5X8c" role="3oSUPX">
                            <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5YMdeR5X8d" role="9aQIa">
                    <node concept="3clFbS" id="5YMdeR5X8f" role="9aQI4">
                      <node concept="3clFbF" id="5YMdeR5X8g" role="3cqZAp">
                        <node concept="37vLTI" id="5YMdeR5X8i" role="3clFbG">
                          <node concept="37vLTw" id="5YMdeR5X8l" role="37vLTJ">
                            <ref role="3cqZAo" node="5YMdeR5X6G" resolve="previous" />
                          </node>
                          <node concept="37vLTw" id="5YMdeR5X8m" role="37vLTx">
                            <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5X8n" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5X8p" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5X8s" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5X6t" resolve="current" />
                    </node>
                    <node concept="1PxgMI" id="5YMdeR5X8t" role="37vLTx">
                      <node concept="2OqwBi" id="5YMdeR5X8w" role="1m5AlR">
                        <node concept="37vLTw" id="5YMdeR5X8z" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5X6G" resolve="previous" />
                        </node>
                        <node concept="1mfA1w" id="5YMdeR5X8$" role="2OqNvi" />
                      </node>
                      <node concept="chp4Y" id="5YMdeR5X8_" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5X8A" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5X8C" role="9aQI4">
              <node concept="3SKdUt" id="5YMdeR5X8D" role="3cqZAp">
                <node concept="1PaTwC" id="5YMdeR5X8H" role="1aUNEU">
                  <node concept="3oM_SD" id="5YMdeR5X8J" role="1PaTwD">
                    <property role="3oM_SC" value="Nothing" />
                  </node>
                  <node concept="3oM_SD" id="5YMdeR5X8K" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="5YMdeR5X8L" role="1PaTwD">
                    <property role="3oM_SC" value="accumulate" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5YMdeR5X8M" role="3cqZAp">
                <node concept="3cpWsn" id="5YMdeR5X8P" role="3cpWs9">
                  <property role="TrG5h" value="firstCommonAncestorChild" />
                  <node concept="3Tqbb2" id="5YMdeR5X8R" role="1tU5fm">
                    <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                  <node concept="1eOMI4" id="5YMdeR5X8S" role="33vP2m">
                    <node concept="3K4zz7" id="5YMdeR5X8U" role="1eOMHV">
                      <node concept="37vLTw" id="5YMdeR5X8Y" role="3K4Cdx">
                        <ref role="3cqZAo" node="5YMdeQZZHr" resolve="left" />
                      </node>
                      <node concept="2OqwBi" id="5YMdeR5X8Z" role="3K4E3e">
                        <node concept="37vLTw" id="5YMdeR5X92" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeQZZHl" resolve="firstCommonAncestor" />
                        </node>
                        <node concept="3zqWPK" id="5YMdeR5X93" role="2OqNvi">
                          <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5YMdeR5X94" role="3K4GZi">
                        <node concept="37vLTw" id="5YMdeR5X97" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeQZZHl" resolve="firstCommonAncestor" />
                        </node>
                        <node concept="3zqWPK" id="5YMdeR5X98" role="2OqNvi">
                          <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5YMdeR5X99" role="3cqZAp">
                <node concept="3y3z36" id="5YMdeR5X9c" role="3clFbw">
                  <node concept="37vLTw" id="5YMdeR5X9f" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5X8P" resolve="firstCommonAncestorChild" />
                  </node>
                  <node concept="10Nm6u" id="5YMdeR5X9g" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="5YMdeR5X9h" role="3clFbx">
                  <node concept="3clFbF" id="5YMdeR5X9i" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR5X9k" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5X9n" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                      </node>
                      <node concept="37vLTw" id="5YMdeR5X9o" role="37vLTx">
                        <ref role="3cqZAo" node="5YMdeR5X8P" resolve="firstCommonAncestorChild" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5X9p" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5X9r" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5X9u" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                      </node>
                      <node concept="3YRAZt" id="5YMdeR5X9v" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5YMdeR5X9w" role="9aQIa">
                  <node concept="3clFbS" id="5YMdeR5X9y" role="9aQI4">
                    <node concept="3clFbF" id="5YMdeR5X9z" role="3cqZAp">
                      <node concept="37vLTI" id="5YMdeR5X9_" role="3clFbG">
                        <node concept="37vLTw" id="5YMdeR5X9C" role="37vLTJ">
                          <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
                        </node>
                        <node concept="10Nm6u" id="5YMdeR5X9D" role="37vLTx" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5X9E" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5X9F" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR5X5o" resolve="accumulator" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZHy" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZHz" role="jymVt">
      <property role="TrG5h" value="clearIncompleteParens" />
      <node concept="3Tm6S6" id="5YMdeQZZHB" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZHC" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZHD" role="3clF46">
        <property role="TrG5h" value="otherExpression" />
        <node concept="3Tqbb2" id="5YMdeQZZHF" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZHG" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="5YMdeQZZHI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZHJ" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="5YMdeQZZHL" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZHM" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5X9G" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5X9K" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5X9M" role="1PaTwD">
              <property role="3oM_SC" value="Remove" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9N" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9O" role="1PaTwD">
              <property role="3oM_SC" value="found" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9P" role="1PaTwD">
              <property role="3oM_SC" value="matching" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9Q" role="1PaTwD">
              <property role="3oM_SC" value="paren" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9R" role="1PaTwD">
              <property role="3oM_SC" value="annotation" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9S" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9T" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5X9U" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5X9V" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5X9Y" role="3cpWs9">
            <property role="TrG5h" value="count" />
            <node concept="10Oyi0" id="5YMdeR5Xa0" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5Xa1" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5Xa4" role="3clFbw">
            <ref role="3cqZAo" node="5YMdeQZZHG" resolve="completingByRightParen" />
          </node>
          <node concept="3clFbS" id="5YMdeR5Xa5" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5Xa6" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5Xa8" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5Xab" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5X9Y" resolve="count" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5Xac" role="37vLTx">
                  <node concept="2OqwBi" id="5YMdeR5Xaf" role="2Oq$k0">
                    <node concept="37vLTw" id="5YMdeR5Xai" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZHD" resolve="otherExpression" />
                    </node>
                    <node concept="3CFZ6_" id="5YMdeR5Xaj" role="2OqNvi">
                      <node concept="3CFYIy" id="5YMdeR5Xal" role="3CFYIz">
                        <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5YMdeR5Xam" role="2OqNvi">
                    <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5Xan" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5Xap" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5Xas" role="2Oq$k0">
                  <node concept="37vLTw" id="5YMdeR5Xav" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZHD" resolve="otherExpression" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5Xaw" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5Xay" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
                <node concept="2oxUTD" id="5YMdeR5Xaz" role="2OqNvi">
                  <node concept="10Nm6u" id="5YMdeR5Xa_" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5XaA" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5XaC" role="3clFbG">
                <node concept="2OqwBi" id="5YMdeR5XaF" role="2Oq$k0">
                  <node concept="37vLTw" id="5YMdeR5XaI" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZHJ" resolve="parens" />
                  </node>
                  <node concept="3CFZ6_" id="5YMdeR5XaJ" role="2OqNvi">
                    <node concept="3CFYIy" id="5YMdeR5XaL" role="3CFYIz">
                      <ref role="3CFYIx" to="mo8k:5YMdeQYNSK" resolve="TSIncompleteLeftParen" />
                    </node>
                  </node>
                </node>
                <node concept="2oxUTD" id="5YMdeR5XaM" role="2OqNvi">
                  <node concept="10Nm6u" id="5YMdeR5XaO" role="2oxUTC" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5XaP" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5XaR" role="9aQI4">
              <node concept="3clFbF" id="5YMdeR5XaS" role="3cqZAp">
                <node concept="37vLTI" id="5YMdeR5XaU" role="3clFbG">
                  <node concept="37vLTw" id="5YMdeR5XaX" role="37vLTJ">
                    <ref role="3cqZAo" node="5YMdeR5X9Y" resolve="count" />
                  </node>
                  <node concept="2OqwBi" id="5YMdeR5XaY" role="37vLTx">
                    <node concept="2OqwBi" id="5YMdeR5Xb1" role="2Oq$k0">
                      <node concept="37vLTw" id="5YMdeR5Xb4" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZHD" resolve="otherExpression" />
                      </node>
                      <node concept="3CFZ6_" id="5YMdeR5Xb5" role="2OqNvi">
                        <node concept="3CFYIy" id="5YMdeR5Xb7" role="3CFYIz">
                          <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5YMdeR5Xb8" role="2OqNvi">
                      <ref role="3TsBF5" to="mo8k:5YMdeQYNSJ" resolve="count" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR5Xb9" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR5Xbb" role="3clFbG">
                  <node concept="2OqwBi" id="5YMdeR5Xbe" role="2Oq$k0">
                    <node concept="37vLTw" id="5YMdeR5Xbh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZHD" resolve="otherExpression" />
                    </node>
                    <node concept="3CFZ6_" id="5YMdeR5Xbi" role="2OqNvi">
                      <node concept="3CFYIy" id="5YMdeR5Xbk" role="3CFYIz">
                        <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="2oxUTD" id="5YMdeR5Xbl" role="2OqNvi">
                    <node concept="10Nm6u" id="5YMdeR5Xbn" role="2oxUTC" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5YMdeR5Xbo" role="3cqZAp">
                <node concept="2OqwBi" id="5YMdeR5Xbq" role="3clFbG">
                  <node concept="2OqwBi" id="5YMdeR5Xbt" role="2Oq$k0">
                    <node concept="37vLTw" id="5YMdeR5Xbw" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZHJ" resolve="parens" />
                    </node>
                    <node concept="3CFZ6_" id="5YMdeR5Xbx" role="2OqNvi">
                      <node concept="3CFYIy" id="5YMdeR5Xbz" role="3CFYIz">
                        <ref role="3CFYIx" to="mo8k:5YMdeQYNSM" resolve="TSIncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="2oxUTD" id="5YMdeR5Xb$" role="2OqNvi">
                    <node concept="10Nm6u" id="5YMdeR5XbA" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5XbB" role="3cqZAp" />
        <node concept="3SKdUt" id="5YMdeR5XbC" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5XbG" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5XbI" role="1PaTwD">
              <property role="3oM_SC" value="One" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbJ" role="1PaTwD">
              <property role="3oM_SC" value="paren" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbK" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbL" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbM" role="1PaTwD">
              <property role="3oM_SC" value="matched," />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbN" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbO" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbP" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbQ" role="1PaTwD">
              <property role="3oM_SC" value="decrease" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XbS" role="1PaTwD">
              <property role="3oM_SC" value="count" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XbT" role="3cqZAp">
          <node concept="d5anL" id="5YMdeR5XbV" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5XbY" role="37vLTJ">
              <ref role="3cqZAo" node="5YMdeR5X9Y" resolve="count" />
            </node>
            <node concept="3cmrfG" id="5YMdeR5XbZ" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5Xc0" role="3cqZAp">
          <node concept="3eOVzh" id="5YMdeR5Xc3" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5Xc6" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5X9Y" resolve="count" />
            </node>
            <node concept="3cmrfG" id="5YMdeR5Xc7" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xc8" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5Xc9" role="3cqZAp" />
          </node>
        </node>
        <node concept="1Dw8fO" id="5YMdeR5Xca" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xcd" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5YMdeR5Xcf" role="1tU5fm" />
            <node concept="3cmrfG" id="5YMdeR5Xcg" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5YMdeR5Xch" role="1Dwp0S">
            <node concept="37vLTw" id="5YMdeR5Xck" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5Xcd" resolve="i" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Xcl" role="3uHU7w">
              <ref role="3cqZAo" node="5YMdeR5X9Y" resolve="count" />
            </node>
          </node>
          <node concept="3uNrnE" id="5YMdeR5Xcm" role="1Dwrff">
            <node concept="37vLTw" id="5YMdeR5Xco" role="2$L3a6">
              <ref role="3cqZAo" node="5YMdeR5Xcd" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xcp" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5Xcq" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5Xcs" role="3clFbG">
                <ref role="37wK5l" node="5YMdeQZZFu" resolve="setOrIncreaseParen" />
                <node concept="37vLTw" id="5YMdeR5Xct" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZHJ" resolve="parens" />
                </node>
                <node concept="3fqX7Q" id="5YMdeR5Xcu" role="37wK5m">
                  <node concept="37vLTw" id="5YMdeR5Xcw" role="3fr31v">
                    <ref role="3cqZAo" node="5YMdeQZZHG" resolve="completingByRightParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZHN" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZHO" role="jymVt">
      <property role="TrG5h" value="findLeftTurn" />
      <node concept="3Tm6S6" id="5YMdeQZZHS" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZHT" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZHU" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="5YMdeQZZHW" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZHX" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="5YMdeQZZHZ" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZI0" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5Xcx" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Xc_" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5XcB" role="1PaTwD">
              <property role="3oM_SC" value="Climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcC" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcE" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcF" role="1PaTwD">
              <property role="3oM_SC" value="expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcH" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcJ" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcK" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcL" role="1PaTwD">
              <property role="3oM_SC" value="operation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5XcM" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5XcQ" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5XcS" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcT" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcU" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcV" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcW" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcY" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XcZ" role="1PaTwD">
              <property role="3oM_SC" value="sub-tree." />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd0" role="1PaTwD">
              <property role="3oM_SC" value="Never" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd1" role="1PaTwD">
              <property role="3oM_SC" value="climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd2" role="1PaTwD">
              <property role="3oM_SC" value="beyond" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd3" role="1PaTwD">
              <property role="3oM_SC" value="stopNode." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5Xd4" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5Xd6" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZIm" resolve="findTurn" />
            <node concept="37vLTw" id="5YMdeR5Xd7" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZHU" resolve="leaf" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Xd8" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZHX" resolve="stopNode" />
            </node>
            <node concept="3clFbT" id="5YMdeR5Xd9" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZI4" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZI5" role="jymVt">
      <property role="TrG5h" value="findRightTurn" />
      <node concept="3Tm6S6" id="5YMdeQZZI9" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZIa" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZIb" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="5YMdeQZZId" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZIe" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="5YMdeQZZIg" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZIh" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5Xda" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Xde" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Xdg" role="1PaTwD">
              <property role="3oM_SC" value="Climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdh" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdj" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdk" role="1PaTwD">
              <property role="3oM_SC" value="expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdl" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdm" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdo" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdp" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdq" role="1PaTwD">
              <property role="3oM_SC" value="operation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5Xdr" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Xdv" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Xdx" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdy" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xdz" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd$" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xd_" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdB" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdC" role="1PaTwD">
              <property role="3oM_SC" value="sub-tree." />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdD" role="1PaTwD">
              <property role="3oM_SC" value="Never" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdE" role="1PaTwD">
              <property role="3oM_SC" value="climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdF" role="1PaTwD">
              <property role="3oM_SC" value="beyond" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XdG" role="1PaTwD">
              <property role="3oM_SC" value="stopNode." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XdH" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5XdJ" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZIm" resolve="findTurn" />
            <node concept="37vLTw" id="5YMdeR5XdK" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZIb" resolve="leaf" />
            </node>
            <node concept="37vLTw" id="5YMdeR5XdL" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZIe" resolve="stopNode" />
            </node>
            <node concept="3clFbT" id="5YMdeR5XdM" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZIl" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZIm" role="jymVt">
      <property role="TrG5h" value="findTurn" />
      <node concept="3Tm6S6" id="5YMdeQZZIq" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZIr" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZIs" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="5YMdeQZZIu" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZIv" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="5YMdeQZZIx" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZIy" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="10P_77" id="5YMdeQZZI$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZI_" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5XdN" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5XdQ" role="3cpWs9">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="5YMdeR5XdS" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR5XdT" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5XdW" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZIs" resolve="leaf" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5XdX" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5XdY" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xe1" role="3cpWs9">
            <property role="TrG5h" value="previous" />
            <node concept="3Tqbb2" id="5YMdeR5Xe3" role="1tU5fm" />
            <node concept="37vLTw" id="5YMdeR5Xe4" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeQZZIs" resolve="leaf" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5Xe5" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5Xe8" role="2$JKZa">
            <node concept="17QLQc" id="5YMdeR5Xeb" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5Xee" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR5Xe1" resolve="previous" />
              </node>
              <node concept="37vLTw" id="5YMdeR5Xef" role="3uHU7w">
                <ref role="3cqZAo" node="5YMdeQZZIv" resolve="stopNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5YMdeR5Xeg" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR5Xej" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR5Xek" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR5Xem" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xen" role="2LFqv$">
            <node concept="3cpWs8" id="5YMdeR5Xeo" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Xer" role="3cpWs9">
                <property role="TrG5h" value="leftSideExpression" />
                <node concept="3Tqbb2" id="5YMdeR5Xet" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5Xeu" role="33vP2m">
                  <node concept="1eOMI4" id="5YMdeR5Xex" role="2Oq$k0">
                    <node concept="1PxgMI" id="5YMdeR5Xez" role="1eOMHV">
                      <node concept="37vLTw" id="5YMdeR5XeA" role="1m5AlR">
                        <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                      </node>
                      <node concept="chp4Y" id="5YMdeR5XeB" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zqWPK" id="5YMdeR5XeC" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5XeD" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5XeG" role="3cpWs9">
                <property role="TrG5h" value="rightSideExpression" />
                <node concept="3Tqbb2" id="5YMdeR5XeI" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5XeJ" role="33vP2m">
                  <node concept="1eOMI4" id="5YMdeR5XeM" role="2Oq$k0">
                    <node concept="1PxgMI" id="5YMdeR5XeO" role="1eOMHV">
                      <node concept="37vLTw" id="5YMdeR5XeR" role="1m5AlR">
                        <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                      </node>
                      <node concept="chp4Y" id="5YMdeR5XeS" role="3oSUPX">
                        <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zqWPK" id="5YMdeR5XeT" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5XeU" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5XeX" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR5Xf0" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeQZZIy" resolve="leftTurn" />
                </node>
                <node concept="17R0WA" id="5YMdeR5Xf1" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5Xf4" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5XeG" resolve="rightSideExpression" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5Xf5" role="3uHU7w">
                    <ref role="3cqZAo" node="5YMdeR5Xe1" resolve="previous" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xf6" role="3clFbx">
                <node concept="3cpWs6" id="5YMdeR5Xf7" role="3cqZAp">
                  <node concept="1PxgMI" id="5YMdeR5Xf8" role="3cqZAk">
                    <node concept="37vLTw" id="5YMdeR5Xfb" role="1m5AlR">
                      <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                    </node>
                    <node concept="chp4Y" id="5YMdeR5Xfc" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5Xfd" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5Xfg" role="3clFbw">
                <node concept="3fqX7Q" id="5YMdeR5Xfj" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5Xfl" role="3fr31v">
                    <ref role="3cqZAo" node="5YMdeQZZIy" resolve="leftTurn" />
                  </node>
                </node>
                <node concept="17R0WA" id="5YMdeR5Xfm" role="3uHU7w">
                  <node concept="37vLTw" id="5YMdeR5Xfp" role="3uHU7B">
                    <ref role="3cqZAo" node="5YMdeR5Xer" resolve="leftSideExpression" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5Xfq" role="3uHU7w">
                    <ref role="3cqZAo" node="5YMdeR5Xe1" resolve="previous" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xfr" role="3clFbx">
                <node concept="3cpWs6" id="5YMdeR5Xfs" role="3cqZAp">
                  <node concept="1PxgMI" id="5YMdeR5Xft" role="3cqZAk">
                    <node concept="37vLTw" id="5YMdeR5Xfw" role="1m5AlR">
                      <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                    </node>
                    <node concept="chp4Y" id="5YMdeR5Xfx" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5YMdeR5Xfy" role="3cqZAp" />
            <node concept="3clFbF" id="5YMdeR5Xfz" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5Xf_" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5XfC" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5Xe1" resolve="previous" />
                </node>
                <node concept="37vLTw" id="5YMdeR5XfD" role="37vLTx">
                  <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR5XfE" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5XfG" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5XfJ" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5XfK" role="37vLTx">
                  <node concept="37vLTw" id="5YMdeR5XfN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5XdQ" resolve="currentNode" />
                  </node>
                  <node concept="1mfA1w" id="5YMdeR5XfO" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5XfP" role="3cqZAp">
          <node concept="10Nm6u" id="5YMdeR5XfQ" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZID" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZIE" role="jymVt">
      <property role="TrG5h" value="parentPath" />
      <node concept="3Tm6S6" id="5YMdeQZZII" role="1B3o_S" />
      <node concept="2I9FWS" id="5YMdeQZZIJ" role="3clF45">
        <ref role="2I9WkF" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZIK" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="5YMdeQZZIM" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZIN" role="3clF46">
        <property role="TrG5h" value="rightParen" />
        <node concept="10P_77" id="5YMdeQZZIP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZIQ" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR5XfR" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5XfV" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5XfX" role="1PaTwD">
              <property role="3oM_SC" value="Find" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XfY" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5XfZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg0" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg1" role="1PaTwD">
              <property role="3oM_SC" value="expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg2" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg3" role="1PaTwD">
              <property role="3oM_SC" value="leaf" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg4" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg5" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg6" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg7" role="1PaTwD">
              <property role="3oM_SC" value="wrapped" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xg9" role="1PaTwD">
              <property role="3oM_SC" value="parens." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5Xga" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Xge" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Xgg" role="1PaTwD">
              <property role="3oM_SC" value="Stops" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgh" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgj" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgk" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgl" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgm" role="1PaTwD">
              <property role="3oM_SC" value="current" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgn" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgo" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgp" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgq" role="1PaTwD">
              <property role="3oM_SC" value="longer" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgr" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xgs" role="1PaTwD">
              <property role="3oM_SC" value="parenthesised." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5Xgt" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xgw" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="2I9FWS" id="5YMdeR5Xgy" role="1tU5fm">
              <ref role="2I9WkF" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="2ShNRf" id="5YMdeR5Xgz" role="33vP2m">
              <node concept="2T8Vx0" id="5YMdeR5Xg_" role="2ShVmc">
                <node concept="2I9FWS" id="5YMdeR5XgB" role="2T96Bj">
                  <ref role="2I9WkF" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XgC" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XgE" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5XgH" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5Xgw" resolve="path" />
            </node>
            <node concept="TSZUe" id="5YMdeR5XgI" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5XgK" role="25WWJ7">
                <ref role="3cqZAo" node="5YMdeQZZIK" resolve="leaf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5XgL" role="3cqZAp" />
        <node concept="1Dw8fO" id="5YMdeR5XgM" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5XgP" role="1Duv9x">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="5YMdeR5XgR" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR5XgS" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5XgV" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZIK" resolve="leaf" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5XgW" role="2OqNvi" />
            </node>
          </node>
          <node concept="1Wc70l" id="5YMdeR5XgX" role="1Dwp0S">
            <node concept="2OqwBi" id="5YMdeR5Xh0" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5Xh3" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5XgP" resolve="currentNode" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR5Xh4" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR5Xh6" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5YMdeR5Xh7" role="3uHU7w">
              <node concept="1eOMI4" id="5YMdeR5Xha" role="2Oq$k0">
                <node concept="1PxgMI" id="5YMdeR5Xhc" role="1eOMHV">
                  <node concept="37vLTw" id="5YMdeR5Xhf" role="1m5AlR">
                    <ref role="3cqZAo" node="5YMdeR5XgP" resolve="currentNode" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5Xhg" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                  </node>
                </node>
              </node>
              <node concept="3zqWPK" id="5YMdeR5Xhh" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZNdC" resolve="canPropagateUnmatchedParenUp" />
                <node concept="37vLTw" id="5YMdeR5Xhi" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZIK" resolve="leaf" />
                </node>
                <node concept="37vLTw" id="5YMdeR5Xhj" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZIN" resolve="rightParen" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTI" id="5YMdeR5Xhk" role="1Dwrff">
            <node concept="37vLTw" id="5YMdeR5Xhn" role="37vLTJ">
              <ref role="3cqZAo" node="5YMdeR5XgP" resolve="currentNode" />
            </node>
            <node concept="2OqwBi" id="5YMdeR5Xho" role="37vLTx">
              <node concept="37vLTw" id="5YMdeR5Xhr" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5XgP" resolve="currentNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5Xhs" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xht" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5Xhu" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5Xhw" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5Xhz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Xgw" resolve="path" />
                </node>
                <node concept="TSZUe" id="5YMdeR5Xh$" role="2OqNvi">
                  <node concept="1PxgMI" id="5YMdeR5XhA" role="25WWJ7">
                    <node concept="37vLTw" id="5YMdeR5XhD" role="1m5AlR">
                      <ref role="3cqZAo" node="5YMdeR5XgP" resolve="currentNode" />
                    </node>
                    <node concept="chp4Y" id="5YMdeR5XhE" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5XhF" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5XhG" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR5Xgw" resolve="path" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZIU" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZIV" role="jymVt">
      <property role="TrG5h" value="findRightmostOrLeftmostLeafExpression" />
      <node concept="3Tm1VV" id="5YMdeQZZIZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZJ0" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZJ1" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5YMdeQZZJ3" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZJ4" role="3clF46">
        <property role="TrG5h" value="rightmost" />
        <node concept="10P_77" id="5YMdeQZZJ6" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZJ7" role="3clF47">
        <node concept="3clFbJ" id="5YMdeR5XhH" role="3cqZAp">
          <node concept="3fqX7Q" id="5YMdeR5XhK" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR5XhM" role="3fr31v">
              <node concept="37vLTw" id="5YMdeR5XhP" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZJ1" resolve="root" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR5XhQ" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR5XhS" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5XhT" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5XhU" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5XhV" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeQZZJ1" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5XhW" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5XhX" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xi0" role="3cpWs9">
            <property role="TrG5h" value="parRoot" />
            <node concept="3Tqbb2" id="5YMdeR5Xi2" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
            </node>
            <node concept="1PxgMI" id="5YMdeR5Xi3" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5Xi6" role="1m5AlR">
                <ref role="3cqZAo" node="5YMdeQZZJ1" resolve="root" />
              </node>
              <node concept="chp4Y" id="5YMdeR5Xi7" role="3oSUPX">
                <ref role="cht4Q" to="mo8k:5YMdeQYNSu" resolve="TSIBinaryLike" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5Xi8" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5Xib" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5Xie" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeQZZJ4" resolve="rightmost" />
            </node>
            <node concept="3y3z36" id="5YMdeR5Xif" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR5Xii" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5Xil" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Xi0" resolve="parRoot" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5Xim" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                </node>
              </node>
              <node concept="10Nm6u" id="5YMdeR5Xin" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xio" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5Xip" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5Xiq" role="3cqZAk">
                <ref role="37wK5l" node="5YMdeQZZIV" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="2OqwBi" id="5YMdeR5Xir" role="37wK5m">
                  <node concept="37vLTw" id="5YMdeR5Xiu" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Xi0" resolve="parRoot" />
                  </node>
                  <node concept="3zqWPK" id="5YMdeR5Xiv" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="5YMdeR5Xiw" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZJ4" resolve="rightmost" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5Xix" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR5Xi$" role="3clFbw">
            <node concept="3fqX7Q" id="5YMdeR5XiB" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5XiD" role="3fr31v">
                <ref role="3cqZAo" node="5YMdeQZZJ4" resolve="rightmost" />
              </node>
            </node>
            <node concept="3y3z36" id="5YMdeR5XiE" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR5XiH" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5XiK" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Xi0" resolve="parRoot" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5XiL" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                </node>
              </node>
              <node concept="10Nm6u" id="5YMdeR5XiM" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5XiN" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5XiO" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5XiP" role="3cqZAk">
                <ref role="37wK5l" node="5YMdeQZZIV" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="2OqwBi" id="5YMdeR5XiQ" role="37wK5m">
                  <node concept="37vLTw" id="5YMdeR5XiT" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Xi0" resolve="parRoot" />
                  </node>
                  <node concept="3zqWPK" id="5YMdeR5XiU" role="2OqNvi">
                    <ref role="37wK5l" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="5YMdeR5XiV" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZJ4" resolve="rightmost" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5XiW" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR5XiX" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeQZZJ1" resolve="root" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZJb" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZJc" role="jymVt">
      <property role="TrG5h" value="checkWholeExpressionPriorities" />
      <node concept="3Tm1VV" id="5YMdeQZZJg" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZJh" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZJi" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZZJk" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZJl" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5XiY" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xj1" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5YMdeR5Xj3" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Xj4" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeQZZJi" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR5Xj5" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR5Xj9" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR5Xjb" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xjc" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xjd" role="1PaTwD">
              <property role="3oM_SC" value="top-most" />
            </node>
            <node concept="3oM_SD" id="5YMdeR5Xje" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5YMdeR5Xjf" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5Xji" role="2$JKZa">
            <node concept="2OqwBi" id="5YMdeR5Xjl" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5Xjo" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5Xj1" resolve="current" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5Xjp" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR5Xjq" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR5Xjs" role="cj9EA">
                <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xjt" role="2LFqv$">
            <node concept="3clFbF" id="5YMdeR5Xju" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR5Xjw" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5Xjz" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR5Xj1" resolve="current" />
                </node>
                <node concept="1PxgMI" id="5YMdeR5Xj$" role="37vLTx">
                  <node concept="2OqwBi" id="5YMdeR5XjB" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR5XjE" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR5Xj1" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR5XjF" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5XjG" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YMdeR5XjH" role="3cqZAp" />
        <node concept="3cpWs8" id="5YMdeR5XjI" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5XjL" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="_YKpA" id="5YMdeR5XjN" role="1tU5fm">
              <node concept="3Tqbb2" id="5YMdeR5XjP" role="_ZDj9">
                <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
            <node concept="2ShNRf" id="5YMdeR5XjQ" role="33vP2m">
              <node concept="Tc6Ow" id="5YMdeR5XjS" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5XjT" role="HW$YZ">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XjU" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XjW" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5XjZ" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5XjL" resolve="candidates" />
            </node>
            <node concept="X8dFx" id="5YMdeR5Xk0" role="2OqNvi">
              <node concept="2OqwBi" id="5YMdeR5Xk2" role="25WWJ7">
                <node concept="37vLTw" id="5YMdeR5Xk5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Xj1" resolve="current" />
                </node>
                <node concept="2Rf3mk" id="5YMdeR5Xk6" role="2OqNvi">
                  <node concept="1xMEDy" id="5YMdeR5Xk9" role="1xVPHs">
                    <node concept="chp4Y" id="5YMdeR5Xkb" role="ri$Ld">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5YMdeR5Xkc" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5Xkd" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5Xkf" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZJy" resolve="checkCandidateExpressionsPriorities" />
            <node concept="37vLTw" id="5YMdeR5Xkg" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5XjL" resolve="candidates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZJm" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZJn" role="jymVt">
      <property role="TrG5h" value="checkOperationWRTPriority" />
      <node concept="3Tm1VV" id="5YMdeQZZJr" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZJs" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZJt" role="3clF46">
        <property role="TrG5h" value="binOp" />
        <node concept="3Tqbb2" id="5YMdeQZZJv" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZJw" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5Xkh" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xkk" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="_YKpA" id="5YMdeR5Xkm" role="1tU5fm">
              <node concept="3Tqbb2" id="5YMdeR5Xko" role="_ZDj9">
                <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
            <node concept="2ShNRf" id="5YMdeR5Xkp" role="33vP2m">
              <node concept="Tc6Ow" id="5YMdeR5Xkr" role="2ShVmc">
                <node concept="3Tqbb2" id="5YMdeR5Xks" role="HW$YZ">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5Xkt" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5Xkv" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5Xky" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5Xkk" resolve="candidates" />
            </node>
            <node concept="TSZUe" id="5YMdeR5Xkz" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5Xk_" role="25WWJ7">
                <ref role="3cqZAo" node="5YMdeQZZJt" resolve="binOp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XkA" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5XkC" role="3clFbG">
            <ref role="37wK5l" node="5YMdeQZZJy" resolve="checkCandidateExpressionsPriorities" />
            <node concept="37vLTw" id="5YMdeR5XkD" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5Xkk" resolve="candidates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZJx" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZJy" role="jymVt">
      <property role="TrG5h" value="checkCandidateExpressionsPriorities" />
      <node concept="3Tm6S6" id="5YMdeQZZJA" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZJB" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZJC" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="5YMdeQZZJE" role="1tU5fm">
          <node concept="3Tqbb2" id="5YMdeQZZJG" role="_ZDj9">
            <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZJH" role="3clF47">
        <node concept="2$JKZl" id="5YMdeR5XkE" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XkH" role="2$JKZa">
            <node concept="37vLTw" id="5YMdeR5XkK" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
            </node>
            <node concept="3GX2aA" id="5YMdeR5XkL" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="5YMdeR5XkM" role="2LFqv$">
            <node concept="3cpWs8" id="5YMdeR5XkN" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5XkQ" role="3cpWs9">
                <property role="TrG5h" value="candidate" />
                <node concept="3Tqbb2" id="5YMdeR5XkS" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5XkT" role="33vP2m">
                  <node concept="37vLTw" id="5YMdeR5XkW" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
                  </node>
                  <node concept="1uHKPH" id="5YMdeR5XkX" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5XkY" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR5Xl1" role="3clFbw">
                <node concept="1Wc70l" id="5YMdeR5Xl4" role="3uHU7B">
                  <node concept="1rXfSq" id="5YMdeR5Xl7" role="3uHU7B">
                    <ref role="37wK5l" node="5YMdeQZZJJ" resolve="checkOperationChildWRTPriority" />
                    <node concept="37vLTw" id="5YMdeR5Xl8" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5XkQ" resolve="candidate" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5Xl9" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xla" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5YMdeR5Xlb" role="3uHU7w">
                    <ref role="37wK5l" node="5YMdeQZZJJ" resolve="checkOperationChildWRTPriority" />
                    <node concept="37vLTw" id="5YMdeR5Xlc" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5XkQ" resolve="candidate" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5Xld" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xle" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="5YMdeR5Xlf" role="3uHU7w">
                  <ref role="37wK5l" node="5YMdeQZZK5" resolve="checkOperationParentWRTPriority" />
                  <node concept="37vLTw" id="5YMdeR5Xlg" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR5XkQ" resolve="candidate" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR5Xlh" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xli" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Xlj" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5Xll" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5Xlo" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZJC" resolve="candidates" />
                    </node>
                    <node concept="2Kt2Hk" id="5YMdeR5Xlp" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZJI" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZJJ" role="jymVt">
      <property role="TrG5h" value="checkOperationChildWRTPriority" />
      <node concept="3Tm6S6" id="5YMdeQZZJN" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeQZZJO" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZJP" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3Tqbb2" id="5YMdeQZZJR" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZJS" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="5YMdeQZZJU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZJV" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="5YMdeQZZJX" role="1tU5fm">
          <node concept="3Tqbb2" id="5YMdeQZZJZ" role="_ZDj9">
            <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZK0" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5Xlq" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xlt" role="3cpWs9">
            <property role="TrG5h" value="sideExpr" />
            <node concept="3Tqbb2" id="5YMdeR5Xlv" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5Xlw" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5Xly" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5XlA" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZJS" resolve="isRight" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5XlB" role="3K4E3e">
                  <node concept="37vLTw" id="5YMdeR5XlE" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZJP" resolve="op" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5XlF" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5YMdeR5XlG" role="3K4GZi">
                  <node concept="37vLTw" id="5YMdeR5XlJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZJP" resolve="op" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5XlK" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5XlL" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XlO" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5XlR" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR5Xlt" resolve="sideExpr" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR5XlS" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR5XlU" role="cj9EA">
                <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5XlV" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR5XlW" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5XlZ" role="3cpWs9">
                <property role="TrG5h" value="sideChild" />
                <node concept="3Tqbb2" id="5YMdeR5Xm1" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
                <node concept="1PxgMI" id="5YMdeR5Xm2" role="33vP2m">
                  <node concept="37vLTw" id="5YMdeR5Xm5" role="1m5AlR">
                    <ref role="3cqZAo" node="5YMdeR5Xlt" resolve="sideExpr" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5Xm6" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5Xm7" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5Xma" role="3clFbw">
                <ref role="37wK5l" node="5YMdeQZZKU" resolve="isBadPriority" />
                <node concept="37vLTw" id="5YMdeR5Xmb" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR5XlZ" resolve="sideChild" />
                </node>
                <node concept="37vLTw" id="5YMdeR5Xmc" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZJP" resolve="op" />
                </node>
                <node concept="37vLTw" id="5YMdeR5Xmd" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZJS" resolve="isRight" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xme" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Xmf" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5Xmh" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZKD" resolve="rotateTree" />
                    <node concept="37vLTw" id="5YMdeR5Xmi" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5XlZ" resolve="sideChild" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xmj" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZJP" resolve="op" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xmk" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZJS" resolve="isRight" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5Xml" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5Xmn" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5Xmq" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZJV" resolve="candidates" />
                    </node>
                    <node concept="TSZUe" id="5YMdeR5Xmr" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR5Xmt" role="25WWJ7">
                        <ref role="3cqZAo" node="5YMdeR5XlZ" resolve="sideChild" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeR5Xmu" role="3cqZAp">
                  <node concept="3clFbT" id="5YMdeR5Xmv" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5Xmw" role="3cqZAp">
          <node concept="3clFbT" id="5YMdeR5Xmx" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZK4" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZK5" role="jymVt">
      <property role="TrG5h" value="checkOperationParentWRTPriority" />
      <node concept="3Tm6S6" id="5YMdeQZZK9" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeQZZKa" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZKb" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3Tqbb2" id="5YMdeQZZKd" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZKe" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="5YMdeQZZKg" role="1tU5fm">
          <node concept="3Tqbb2" id="5YMdeQZZKi" role="_ZDj9">
            <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeQZZKj" role="3clF47">
        <node concept="3clFbJ" id="5YMdeR5Xmy" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR5Xm_" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR5XmC" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR5XmF" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5XmG" role="2OqNvi" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5XmH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5XmI" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5XmJ" role="3cqZAp">
              <node concept="3clFbT" id="5YMdeR5XmK" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5XmL" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XmO" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR5XmR" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR5XmU" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5XmV" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR5XmW" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR5XmY" role="cj9EA">
                <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5XmZ" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR5Xn0" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Xn3" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3Tqbb2" id="5YMdeR5Xn5" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
                <node concept="1PxgMI" id="5YMdeR5Xn6" role="33vP2m">
                  <node concept="2OqwBi" id="5YMdeR5Xn9" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR5Xnc" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR5Xnd" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR5Xne" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YMdeR5Xnf" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR5Xni" role="3cpWs9">
                <property role="TrG5h" value="isRight" />
                <node concept="10P_77" id="5YMdeR5Xnk" role="1tU5fm" />
                <node concept="3clFbT" id="5YMdeR5Xnl" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5Xnm" role="3cqZAp">
              <node concept="3clFbC" id="5YMdeR5Xnp" role="3clFbw">
                <node concept="2OqwBi" id="5YMdeR5Xns" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5Xnv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Xn3" resolve="parent" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5Xnw" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="5YMdeR5Xnx" role="3uHU7w">
                  <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xny" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Xnz" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR5Xn_" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5XnC" role="37vLTJ">
                      <ref role="3cqZAo" node="5YMdeR5Xni" resolve="isRight" />
                    </node>
                    <node concept="3clFbT" id="5YMdeR5XnD" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="5YMdeR5XnE" role="3eNLev">
                <node concept="3clFbC" id="5YMdeR5XnH" role="3eO9$A">
                  <node concept="2OqwBi" id="5YMdeR5XnK" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR5XnN" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR5Xn3" resolve="parent" />
                    </node>
                    <node concept="3TrEf2" id="5YMdeR5XnO" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5YMdeR5XnP" role="3uHU7w">
                    <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                  </node>
                </node>
                <node concept="3clFbS" id="5YMdeR5XnQ" role="3eOfB_">
                  <node concept="3clFbF" id="5YMdeR5XnR" role="3cqZAp">
                    <node concept="37vLTI" id="5YMdeR5XnT" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5XnW" role="37vLTJ">
                        <ref role="3cqZAo" node="5YMdeR5Xni" resolve="isRight" />
                      </node>
                      <node concept="3clFbT" id="5YMdeR5XnX" role="37vLTx">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5XnY" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR5Xo1" role="3clFbw">
                <ref role="37wK5l" node="5YMdeQZZKU" resolve="isBadPriority" />
                <node concept="37vLTw" id="5YMdeR5Xo2" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                </node>
                <node concept="37vLTw" id="5YMdeR5Xo3" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR5Xn3" resolve="parent" />
                </node>
                <node concept="37vLTw" id="5YMdeR5Xo4" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR5Xni" resolve="isRight" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR5Xo5" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Xo6" role="3cqZAp">
                  <node concept="1rXfSq" id="5YMdeR5Xo8" role="3clFbG">
                    <ref role="37wK5l" node="5YMdeQZZKD" resolve="rotateTree" />
                    <node concept="37vLTw" id="5YMdeR5Xo9" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xoa" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Xn3" resolve="parent" />
                    </node>
                    <node concept="37vLTw" id="5YMdeR5Xob" role="37wK5m">
                      <ref role="3cqZAo" node="5YMdeR5Xni" resolve="isRight" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR5Xoc" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5Xoe" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR5Xoh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZKe" resolve="candidates" />
                    </node>
                    <node concept="TSZUe" id="5YMdeR5Xoi" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR5Xok" role="25WWJ7">
                        <ref role="3cqZAo" node="5YMdeR5Xn3" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeR5Xol" role="3cqZAp">
                  <node concept="3clFbT" id="5YMdeR5Xom" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5YMdeR5Xon" role="3cqZAp">
              <node concept="3clFbT" id="5YMdeR5Xoo" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5Xop" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5Xor" role="9aQI4">
              <node concept="3clFbJ" id="5YMdeR5Xos" role="3cqZAp">
                <node concept="1Wc70l" id="5YMdeR5Xov" role="3clFbw">
                  <node concept="2OqwBi" id="5YMdeR5Xoy" role="3uHU7B">
                    <node concept="2OqwBi" id="5YMdeR5Xo_" role="2Oq$k0">
                      <node concept="37vLTw" id="5YMdeR5XoC" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                      </node>
                      <node concept="1mfA1w" id="5YMdeR5XoD" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="5YMdeR5XoE" role="2OqNvi">
                      <node concept="chp4Y" id="5YMdeR5XoG" role="cj9EA">
                        <ref role="cht4Q" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="5YMdeR5XoH" role="3uHU7w">
                    <node concept="2OqwBi" id="5YMdeR5XoK" role="3uHU7B">
                      <node concept="37vLTw" id="5YMdeR5XoN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                      </node>
                      <node concept="2NL2c5" id="5YMdeR5XoO" role="2OqNvi" />
                    </node>
                    <node concept="359W_D" id="5YMdeR5XoP" role="3uHU7w">
                      <ref role="359W_E" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                      <ref role="359W_F" to="mo8k:1UjCfdjUYX5" resolve="operand" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5YMdeR5XoQ" role="3clFbx">
                  <node concept="3cpWs8" id="5YMdeR5XoR" role="3cqZAp">
                    <node concept="3cpWsn" id="5YMdeR5XoU" role="3cpWs9">
                      <property role="TrG5h" value="dotExpr" />
                      <node concept="3Tqbb2" id="5YMdeR5XoW" role="1tU5fm">
                        <ref role="ehGHo" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                      </node>
                      <node concept="1PxgMI" id="5YMdeR5XoX" role="33vP2m">
                        <node concept="2OqwBi" id="5YMdeR5Xp0" role="1m5AlR">
                          <node concept="37vLTw" id="5YMdeR5Xp3" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                          </node>
                          <node concept="1mfA1w" id="5YMdeR5Xp4" role="2OqNvi" />
                        </node>
                        <node concept="chp4Y" id="5YMdeR5Xp5" role="3oSUPX">
                          <ref role="cht4Q" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5Xp6" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5Xp8" role="3clFbG">
                      <node concept="37vLTw" id="5YMdeR5Xpb" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR5XoU" resolve="dotExpr" />
                      </node>
                      <node concept="1P9Npp" id="5YMdeR5Xpc" role="2OqNvi">
                        <node concept="37vLTw" id="5YMdeR5Xpe" role="1P9ThW">
                          <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5Xpf" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5Xph" role="3clFbG">
                      <node concept="2OqwBi" id="5YMdeR5Xpk" role="2Oq$k0">
                        <node concept="37vLTw" id="5YMdeR5Xpn" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeR5XoU" resolve="dotExpr" />
                        </node>
                        <node concept="3TrEf2" id="5YMdeR5Xpo" role="2OqNvi">
                          <ref role="3Tt5mk" to="mo8k:1UjCfdjUYX5" resolve="operand" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="5YMdeR5Xpp" role="2OqNvi">
                        <node concept="2OqwBi" id="5YMdeR5Xpr" role="2oxUTC">
                          <node concept="37vLTw" id="5YMdeR5Xpu" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                          </node>
                          <node concept="3TrEf2" id="5YMdeR5Xpv" role="2OqNvi">
                            <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5YMdeR5Xpw" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5Xpy" role="3clFbG">
                      <node concept="2OqwBi" id="5YMdeR5Xp_" role="2Oq$k0">
                        <node concept="37vLTw" id="5YMdeR5XpC" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeQZZKb" resolve="op" />
                        </node>
                        <node concept="3TrEf2" id="5YMdeR5XpD" role="2OqNvi">
                          <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="5YMdeR5XpE" role="2OqNvi">
                        <node concept="37vLTw" id="5YMdeR5XpG" role="2oxUTC">
                          <ref role="3cqZAo" node="5YMdeR5XoU" resolve="dotExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5YMdeR5XpH" role="9aQIa">
                  <node concept="3clFbS" id="5YMdeR5XpJ" role="9aQI4">
                    <node concept="3cpWs6" id="5YMdeR5XpK" role="3cqZAp">
                      <node concept="3clFbT" id="5YMdeR5XpL" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5YMdeR5XpM" role="3cqZAp">
                <node concept="3clFbT" id="5YMdeR5XpN" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZKn" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZKo" role="jymVt">
      <property role="TrG5h" value="getBinOp" />
      <node concept="3Tm1VV" id="5YMdeQZZKs" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeQZZKt" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
      <node concept="37vLTG" id="5YMdeQZZKu" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5YMdeQZZKw" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZKx" role="3clF46">
        <property role="TrG5h" value="toRight" />
        <node concept="10P_77" id="5YMdeQZZKz" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZK$" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5XpO" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5XpR" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="5YMdeR5XpT" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR5XpU" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5XpX" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeQZZKu" resolve="expr" />
              </node>
              <node concept="1mfA1w" id="5YMdeR5XpY" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5XpZ" role="3cqZAp">
          <node concept="3fqX7Q" id="5YMdeR5Xq2" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR5Xq4" role="3fr31v">
              <node concept="37vLTw" id="5YMdeR5Xq7" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR5XpR" resolve="parent" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR5Xq8" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR5Xqa" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xqb" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5Xqc" role="3cqZAp">
              <node concept="10Nm6u" id="5YMdeR5Xqd" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5Xqe" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xqh" role="3cpWs9">
            <property role="TrG5h" value="parentOp" />
            <node concept="3Tqbb2" id="5YMdeR5Xqj" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
            </node>
            <node concept="1PxgMI" id="5YMdeR5Xqk" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5Xqn" role="1m5AlR">
                <ref role="3cqZAo" node="5YMdeR5XpR" resolve="parent" />
              </node>
              <node concept="chp4Y" id="5YMdeR5Xqo" role="3oSUPX">
                <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5Xqp" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xqs" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <node concept="10P_77" id="5YMdeR5Xqu" role="1tU5fm" />
            <node concept="1Wc70l" id="5YMdeR5Xqv" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR5Xqy" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeQZZKx" resolve="toRight" />
              </node>
              <node concept="3clFbC" id="5YMdeR5Xqz" role="3uHU7w">
                <node concept="2OqwBi" id="5YMdeR5XqA" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5XqD" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Xqh" resolve="parentOp" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5XqE" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="5YMdeR5XqF" role="3uHU7w">
                  <ref role="3cqZAo" node="5YMdeQZZKu" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR5XqG" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5XqJ" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <node concept="10P_77" id="5YMdeR5XqL" role="1tU5fm" />
            <node concept="1Wc70l" id="5YMdeR5XqM" role="33vP2m">
              <node concept="3fqX7Q" id="5YMdeR5XqP" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5XqR" role="3fr31v">
                  <ref role="3cqZAo" node="5YMdeQZZKx" resolve="toRight" />
                </node>
              </node>
              <node concept="3clFbC" id="5YMdeR5XqS" role="3uHU7w">
                <node concept="2OqwBi" id="5YMdeR5XqV" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR5XqY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR5Xqh" resolve="parentOp" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5XqZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="5YMdeR5Xr0" role="3uHU7w">
                  <ref role="3cqZAo" node="5YMdeQZZKu" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5Xr1" role="3cqZAp">
          <node concept="22lmx$" id="5YMdeR5Xr4" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5Xr7" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5Xqs" resolve="right" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Xr8" role="3uHU7w">
              <ref role="3cqZAo" node="5YMdeR5XqJ" resolve="left" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR5Xr9" role="3clFbx">
            <node concept="3cpWs6" id="5YMdeR5Xra" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5Xrb" role="3cqZAk">
                <ref role="3cqZAo" node="5YMdeR5Xqh" resolve="parentOp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR5Xrc" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR5Xrd" role="3cqZAk">
            <ref role="37wK5l" node="5YMdeQZZKo" resolve="getBinOp" />
            <node concept="37vLTw" id="5YMdeR5Xre" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR5Xqh" resolve="parentOp" />
            </node>
            <node concept="37vLTw" id="5YMdeR5Xrf" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeQZZKx" resolve="toRight" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeQZZKC" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZKD" role="jymVt">
      <property role="TrG5h" value="rotateTree" />
      <node concept="3Tm1VV" id="5YMdeQZZKH" role="1B3o_S" />
      <node concept="3cqZAl" id="5YMdeQZZKI" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZKJ" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5YMdeQZZKL" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZKM" role="3clF46">
        <property role="TrG5h" value="op" />
        <node concept="3Tqbb2" id="5YMdeQZZKO" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZKP" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="5YMdeQZZKR" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZKS" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR5Xrg" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR5Xrj" role="3cpWs9">
            <property role="TrG5h" value="backsideExpr" />
            <node concept="3Tqbb2" id="5YMdeR5Xrl" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1eOMI4" id="5YMdeR5Xrm" role="33vP2m">
              <node concept="3K4zz7" id="5YMdeR5Xro" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5Xrs" role="3K4Cdx">
                  <ref role="3cqZAo" node="5YMdeQZZKP" resolve="isRight" />
                </node>
                <node concept="2OqwBi" id="5YMdeR5Xrt" role="3K4E3e">
                  <node concept="37vLTw" id="5YMdeR5Xrw" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5Xrx" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5YMdeR5Xry" role="3K4GZi">
                  <node concept="37vLTw" id="5YMdeR5Xr_" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
                  </node>
                  <node concept="3TrEf2" id="5YMdeR5XrA" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XrB" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XrD" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5XrG" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
            </node>
            <node concept="3YRAZt" id="5YMdeR5XrH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR5XrI" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR5XrK" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR5XrN" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
            </node>
            <node concept="1P9Npp" id="5YMdeR5XrO" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR5XrQ" role="1P9ThW">
                <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR5XrR" role="3cqZAp">
          <node concept="3y3z36" id="5YMdeR5XrU" role="3clFbw">
            <node concept="37vLTw" id="5YMdeR5XrX" role="3uHU7B">
              <ref role="3cqZAo" node="5YMdeR5Xrj" resolve="backsideExpr" />
            </node>
            <node concept="10Nm6u" id="5YMdeR5XrY" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5YMdeR5XrZ" role="3clFbx">
            <node concept="3clFbF" id="5YMdeR5Xs0" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR5Xs2" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR5Xs5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR5Xrj" resolve="backsideExpr" />
                </node>
                <node concept="1P9Npp" id="5YMdeR5Xs6" role="2OqNvi">
                  <node concept="37vLTw" id="5YMdeR5Xs8" role="1P9ThW">
                    <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR5Xs9" role="3cqZAp">
              <node concept="37vLTw" id="5YMdeR5Xsc" role="3clFbw">
                <ref role="3cqZAo" node="5YMdeQZZKP" resolve="isRight" />
              </node>
              <node concept="3clFbS" id="5YMdeR5Xsd" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR5Xse" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR5Xsg" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeR5Xsj" role="2Oq$k0">
                      <node concept="37vLTw" id="5YMdeR5Xsm" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
                      </node>
                      <node concept="3TrEf2" id="5YMdeR5Xsn" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="5YMdeR5Xso" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR5Xsq" role="2oxUTC">
                        <ref role="3cqZAo" node="5YMdeR5Xrj" resolve="backsideExpr" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5YMdeR5Xsr" role="9aQIa">
                <node concept="3clFbS" id="5YMdeR5Xst" role="9aQI4">
                  <node concept="3clFbF" id="5YMdeR5Xsu" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5Xsw" role="3clFbG">
                      <node concept="2OqwBi" id="5YMdeR5Xsz" role="2Oq$k0">
                        <node concept="37vLTw" id="5YMdeR5XsA" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
                        </node>
                        <node concept="3TrEf2" id="5YMdeR5XsB" role="2OqNvi">
                          <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="5YMdeR5XsC" role="2OqNvi">
                        <node concept="37vLTw" id="5YMdeR5XsE" role="2oxUTC">
                          <ref role="3cqZAo" node="5YMdeR5Xrj" resolve="backsideExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5YMdeR5XsF" role="9aQIa">
            <node concept="3clFbS" id="5YMdeR5XsH" role="9aQI4">
              <node concept="3clFbJ" id="5YMdeR5XsI" role="3cqZAp">
                <node concept="37vLTw" id="5YMdeR5XsL" role="3clFbw">
                  <ref role="3cqZAo" node="5YMdeQZZKP" resolve="isRight" />
                </node>
                <node concept="3clFbS" id="5YMdeR5XsM" role="3clFbx">
                  <node concept="3clFbF" id="5YMdeR5XsN" role="3cqZAp">
                    <node concept="2OqwBi" id="5YMdeR5XsP" role="3clFbG">
                      <node concept="2OqwBi" id="5YMdeR5XsS" role="2Oq$k0">
                        <node concept="37vLTw" id="5YMdeR5XsV" role="2Oq$k0">
                          <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
                        </node>
                        <node concept="3TrEf2" id="5YMdeR5XsW" role="2OqNvi">
                          <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="5YMdeR5XsX" role="2OqNvi">
                        <node concept="37vLTw" id="5YMdeR5XsZ" role="2oxUTC">
                          <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5YMdeR5Xt0" role="9aQIa">
                  <node concept="3clFbS" id="5YMdeR5Xt2" role="9aQI4">
                    <node concept="3clFbF" id="5YMdeR5Xt3" role="3cqZAp">
                      <node concept="2OqwBi" id="5YMdeR5Xt5" role="3clFbG">
                        <node concept="2OqwBi" id="5YMdeR5Xt8" role="2Oq$k0">
                          <node concept="37vLTw" id="5YMdeR5Xtb" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YMdeQZZKJ" resolve="child" />
                          </node>
                          <node concept="3TrEf2" id="5YMdeR5Xtc" role="2OqNvi">
                            <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                          </node>
                        </node>
                        <node concept="2oxUTD" id="5YMdeR5Xtd" role="2OqNvi">
                          <node concept="37vLTw" id="5YMdeR5Xtf" role="2oxUTC">
                            <ref role="3cqZAo" node="5YMdeQZZKM" resolve="op" />
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
    <node concept="2tJIrI" id="5YMdeQZZKT" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeQZZKU" role="jymVt">
      <property role="TrG5h" value="isBadPriority" />
      <node concept="3Tm1VV" id="5YMdeQZZKY" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeQZZKZ" role="3clF45" />
      <node concept="37vLTG" id="5YMdeQZZL0" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5YMdeQZZL2" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZL3" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="5YMdeQZZL5" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeQZZL6" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="5YMdeQZZL8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5YMdeQZZL9" role="3clF47">
        <node concept="3cpWs6" id="5YMdeR5Xtg" role="3cqZAp">
          <node concept="22lmx$" id="5YMdeR5Xth" role="3cqZAk">
            <node concept="3eOVzh" id="5YMdeR5Xtk" role="3uHU7B">
              <node concept="2OqwBi" id="5YMdeR5Xtn" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR5Xtq" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZL0" resolve="child" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5Xtr" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
                </node>
              </node>
              <node concept="2OqwBi" id="5YMdeR5Xts" role="3uHU7w">
                <node concept="37vLTw" id="5YMdeR5Xtv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeQZZL3" resolve="parent" />
                </node>
                <node concept="3zqWPK" id="5YMdeR5Xtw" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="5YMdeR5Xtx" role="3uHU7w">
              <node concept="1Wc70l" id="5YMdeR5Xtz" role="1eOMHV">
                <node concept="37vLTw" id="5YMdeR5XtA" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeQZZL6" resolve="isRight" />
                </node>
                <node concept="3clFbC" id="5YMdeR5XtB" role="3uHU7w">
                  <node concept="2OqwBi" id="5YMdeR5XtE" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR5XtH" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZL0" resolve="child" />
                    </node>
                    <node concept="3zqWPK" id="5YMdeR5XtI" role="2OqNvi">
                      <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5YMdeR5XtJ" role="3uHU7w">
                    <node concept="37vLTw" id="5YMdeR5XtM" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeQZZL3" resolve="parent" />
                    </node>
                    <node concept="3zqWPK" id="5YMdeR5XtN" role="2OqNvi">
                      <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
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
  <node concept="312cEu" id="5YMdeR6OZt">
    <property role="TrG5h" value="TSPrecedenceUtil" />
    <node concept="3Tm1VV" id="5YMdeR6OZv" role="1B3o_S" />
    <node concept="3clFbW" id="5YMdeR6OZw" role="jymVt">
      <node concept="3cqZAl" id="5YMdeR6OZx" role="3clF45" />
      <node concept="3Tm1VV" id="5YMdeR6OZ$" role="1B3o_S" />
      <node concept="3clFbS" id="5YMdeR6OZ_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5YMdeR6OZA" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6OZB" role="jymVt">
      <property role="TrG5h" value="getTargetForRightTransform" />
      <node concept="3Tm1VV" id="5YMdeR6OZF" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeR6OZG" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeR6OZH" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5YMdeR6OZJ" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6OZK" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR70Ok" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70Oo" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70Oq" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Or" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Os" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Ot" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Ou" role="1PaTwD">
              <property role="3oM_SC" value="side" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Ov" role="1PaTwD">
              <property role="3oM_SC" value="transform" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Ow" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Ox" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Oy" role="1PaTwD">
              <property role="3oM_SC" value="applied" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Oz" role="1PaTwD">
              <property role="3oM_SC" value="to:" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70O$" role="1PaTwD">
              <property role="3oM_SC" value="climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70O_" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OA" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR70OC" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70OG" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70OI" role="1PaTwD">
              <property role="3oM_SC" value="sub-expressions" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OK" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OL" role="1PaTwD">
              <property role="3oM_SC" value="operator" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OM" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70ON" role="1PaTwD">
              <property role="3oM_SC" value="bind" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OO" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OP" role="1PaTwD">
              <property role="3oM_SC" value="loosely" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70OQ" role="1PaTwD">
              <property role="3oM_SC" value="than." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR70OR" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70OU" role="3cpWs9">
            <property role="TrG5h" value="targetNode" />
            <node concept="3Tqbb2" id="5YMdeR70OW" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR70OX" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeR6OZH" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5YMdeR70OY" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70P1" role="1Duv9x">
            <property role="TrG5h" value="parentNode" />
            <node concept="3Tqbb2" id="5YMdeR70P3" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR70P4" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR70P7" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR70P8" role="2OqNvi" />
            </node>
          </node>
          <node concept="1Wc70l" id="5YMdeR70P9" role="1Dwp0S">
            <node concept="3y3z36" id="5YMdeR70Pc" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR70Pf" role="3uHU7B">
                <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
              </node>
              <node concept="10Nm6u" id="5YMdeR70Pg" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="5YMdeR70Ph" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR70Pk" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR70Pl" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR70Pn" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTI" id="5YMdeR70Po" role="1Dwrff">
            <node concept="37vLTw" id="5YMdeR70Pr" role="37vLTJ">
              <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
            </node>
            <node concept="2OqwBi" id="5YMdeR70Ps" role="37vLTx">
              <node concept="37vLTw" id="5YMdeR70Pv" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR70Pw" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR70Px" role="2LFqv$">
            <node concept="3clFbJ" id="5YMdeR70Py" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR70P_" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR70PC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
                </node>
                <node concept="1mIQ4w" id="5YMdeR70PD" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeR70PF" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70PG" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeR70PH" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70PL" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70PN" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PO" role="1PaTwD">
                      <property role="3oM_SC" value="parentheses" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PP" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PQ" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PR" role="1PaTwD">
                      <property role="3oM_SC" value="boundary" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PS" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PT" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PU" role="1PaTwD">
                      <property role="3oM_SC" value="expression," />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PV" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PW" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PX" role="1PaTwD">
                      <property role="3oM_SC" value="go" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PY" role="1PaTwD">
                      <property role="3oM_SC" value="further" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70PZ" role="1PaTwD">
                      <property role="3oM_SC" value="up" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="5YMdeR70Q0" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR70Q1" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR70Q4" role="3clFbw">
                <node concept="2OqwBi" id="5YMdeR70Q7" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR70Qa" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
                  </node>
                  <node concept="1mIQ4w" id="5YMdeR70Qb" role="2OqNvi">
                    <node concept="chp4Y" id="5YMdeR70Qd" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="5YMdeR70Qe" role="3uHU7w">
                  <node concept="2OqwBi" id="5YMdeR70Qh" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR70Qk" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
                    </node>
                    <node concept="2NL2c5" id="5YMdeR70Ql" role="2OqNvi" />
                  </node>
                  <node concept="359W_D" id="5YMdeR70Qm" role="3uHU7w">
                    <ref role="359W_E" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    <ref role="359W_F" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70Qn" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeR70Qo" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70Qs" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70Qu" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Qv" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Qw" role="1PaTwD">
                      <property role="3oM_SC" value="parent" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Qx" role="1PaTwD">
                      <property role="3oM_SC" value="expression" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Qy" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Qz" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Q$" role="1PaTwD">
                      <property role="3oM_SC" value="binary" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Q_" role="1PaTwD">
                      <property role="3oM_SC" value="operation" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QA" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QB" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QC" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QD" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QE" role="1PaTwD">
                      <property role="3oM_SC" value="its" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QF" role="1PaTwD">
                      <property role="3oM_SC" value="left" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QG" role="1PaTwD">
                      <property role="3oM_SC" value="child" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="5YMdeR70QH" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70QL" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70QN" role="1PaTwD">
                      <property role="3oM_SC" value="then" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QO" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QP" role="1PaTwD">
                      <property role="3oM_SC" value="should" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QQ" role="1PaTwD">
                      <property role="3oM_SC" value="rather" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QR" role="1PaTwD">
                      <property role="3oM_SC" value="transform" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QS" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QT" role="1PaTwD">
                      <property role="3oM_SC" value="current" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70QU" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="5YMdeR70QV" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR70QW" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR70QZ" role="3clFbw">
                <node concept="2OqwBi" id="5YMdeR70R2" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR70R5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
                  </node>
                  <node concept="1mIQ4w" id="5YMdeR70R6" role="2OqNvi">
                    <node concept="chp4Y" id="5YMdeR70R8" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="5YMdeR70R9" role="3uHU7w">
                  <node concept="2OqwBi" id="5YMdeR70Rc" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR70Rf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
                    </node>
                    <node concept="2NL2c5" id="5YMdeR70Rg" role="2OqNvi" />
                  </node>
                  <node concept="359W_D" id="5YMdeR70Rh" role="3uHU7w">
                    <ref role="359W_E" to="mo8k:1UjCfdjUYX3" resolve="TSDotExpression" />
                    <ref role="359W_F" to="mo8k:1UjCfdjUYX5" resolve="operand" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70Ri" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeR70Rj" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70Rn" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70Rp" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rq" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rr" role="1PaTwD">
                      <property role="3oM_SC" value="parent" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rs" role="1PaTwD">
                      <property role="3oM_SC" value="expression" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rt" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Ru" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rv" role="1PaTwD">
                      <property role="3oM_SC" value="dot" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rw" role="1PaTwD">
                      <property role="3oM_SC" value="expression" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rx" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Ry" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Rz" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70R$" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70R_" role="1PaTwD">
                      <property role="3oM_SC" value="its" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RA" role="1PaTwD">
                      <property role="3oM_SC" value="operand" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="5YMdeR70RB" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70RF" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70RH" role="1PaTwD">
                      <property role="3oM_SC" value="then" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RI" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RJ" role="1PaTwD">
                      <property role="3oM_SC" value="should" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RK" role="1PaTwD">
                      <property role="3oM_SC" value="rather" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RL" role="1PaTwD">
                      <property role="3oM_SC" value="transform" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RM" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RN" role="1PaTwD">
                      <property role="3oM_SC" value="current" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70RO" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="5YMdeR70RP" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR70RQ" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR70RS" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR70RV" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
                </node>
                <node concept="1PxgMI" id="5YMdeR70RW" role="37vLTx">
                  <node concept="37vLTw" id="5YMdeR70RZ" role="1m5AlR">
                    <ref role="3cqZAo" node="5YMdeR70P1" resolve="parentNode" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR70S0" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR70S1" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR70S2" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR70OU" resolve="targetNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6OZO" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6OZP" role="jymVt">
      <property role="TrG5h" value="getTargetForLeftTransform" />
      <node concept="3Tm1VV" id="5YMdeR6OZT" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeR6OZU" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeR6OZV" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5YMdeR6OZX" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeR6OZY" role="3clF46">
        <property role="TrG5h" value="resultNode" />
        <node concept="3Tqbb2" id="5YMdeR6P00" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P01" role="3clF47">
        <node concept="3SKdUt" id="5YMdeR70S3" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70S7" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70S9" role="1PaTwD">
              <property role="3oM_SC" value="Climb" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sa" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sb" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sc" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sd" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Se" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sf" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sg" role="1PaTwD">
              <property role="3oM_SC" value="binds" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sh" role="1PaTwD">
              <property role="3oM_SC" value="tighter" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Si" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sk" role="1PaTwD">
              <property role="3oM_SC" value="operator" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sl" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sm" role="1PaTwD">
              <property role="3oM_SC" value="inserted," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR70Sn" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70Sr" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70St" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Su" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sw" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sx" role="1PaTwD">
              <property role="3oM_SC" value="operator" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sy" role="1PaTwD">
              <property role="3oM_SC" value="ends" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Sz" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70S$" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70S_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70SA" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70SB" role="1PaTwD">
              <property role="3oM_SC" value="place" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70SC" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70SD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70SE" role="1PaTwD">
              <property role="3oM_SC" value="tree." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR70SF" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70SI" role="3cpWs9">
            <property role="TrG5h" value="resultingExpressionPriority" />
            <node concept="10Oyi0" id="5YMdeR70SK" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR70SL" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR70SO" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6OZY" resolve="resultNode" />
              </node>
              <node concept="3zqWPK" id="5YMdeR70SP" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YMdeR70SQ" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70ST" role="3cpWs9">
            <property role="TrG5h" value="targetNode" />
            <node concept="3Tqbb2" id="5YMdeR70SV" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5YMdeR70SW" role="33vP2m">
              <ref role="3cqZAo" node="5YMdeR6OZV" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5YMdeR70SX" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70T0" role="1Duv9x">
            <property role="TrG5h" value="parentNode" />
            <node concept="3Tqbb2" id="5YMdeR70T2" role="1tU5fm" />
            <node concept="2OqwBi" id="5YMdeR70T3" role="33vP2m">
              <node concept="37vLTw" id="5YMdeR70T6" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR70ST" resolve="targetNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR70T7" role="2OqNvi" />
            </node>
          </node>
          <node concept="1Wc70l" id="5YMdeR70T8" role="1Dwp0S">
            <node concept="1Wc70l" id="5YMdeR70Tb" role="3uHU7B">
              <node concept="3y3z36" id="5YMdeR70Te" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR70Th" role="3uHU7B">
                  <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                </node>
                <node concept="10Nm6u" id="5YMdeR70Ti" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="5YMdeR70Tj" role="3uHU7w">
                <node concept="37vLTw" id="5YMdeR70Tm" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                </node>
                <node concept="1mIQ4w" id="5YMdeR70Tn" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeR70Tp" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="5YMdeR70Tq" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR70Tt" role="3uHU7B">
                <node concept="1eOMI4" id="5YMdeR70Tw" role="2Oq$k0">
                  <node concept="1PxgMI" id="5YMdeR70Ty" role="1eOMHV">
                    <node concept="37vLTw" id="5YMdeR70T_" role="1m5AlR">
                      <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                    </node>
                    <node concept="chp4Y" id="5YMdeR70TA" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="5YMdeR70TB" role="2OqNvi">
                  <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
                </node>
              </node>
              <node concept="37vLTw" id="5YMdeR70TC" role="3uHU7w">
                <ref role="3cqZAo" node="5YMdeR70SI" resolve="resultingExpressionPriority" />
              </node>
            </node>
          </node>
          <node concept="37vLTI" id="5YMdeR70TD" role="1Dwrff">
            <node concept="37vLTw" id="5YMdeR70TG" role="37vLTJ">
              <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
            </node>
            <node concept="2OqwBi" id="5YMdeR70TH" role="37vLTx">
              <node concept="37vLTw" id="5YMdeR70TK" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR70ST" resolve="targetNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR70TL" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR70TM" role="2LFqv$">
            <node concept="3clFbJ" id="5YMdeR70TN" role="3cqZAp">
              <node concept="2OqwBi" id="5YMdeR70TQ" role="3clFbw">
                <node concept="37vLTw" id="5YMdeR70TT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                </node>
                <node concept="1mIQ4w" id="5YMdeR70TU" role="2OqNvi">
                  <node concept="chp4Y" id="5YMdeR70TW" role="cj9EA">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70TX" role="3clFbx">
                <node concept="3zACq4" id="5YMdeR70TY" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR70TZ" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR70U2" role="3clFbw">
                <node concept="2OqwBi" id="5YMdeR70U5" role="3uHU7B">
                  <node concept="37vLTw" id="5YMdeR70U8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                  </node>
                  <node concept="1mIQ4w" id="5YMdeR70U9" role="2OqNvi">
                    <node concept="chp4Y" id="5YMdeR70Ub" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="5YMdeR70Uc" role="3uHU7w">
                  <node concept="2OqwBi" id="5YMdeR70Uf" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR70Ui" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR70ST" resolve="targetNode" />
                    </node>
                    <node concept="2NL2c5" id="5YMdeR70Uj" role="2OqNvi" />
                  </node>
                  <node concept="359W_D" id="5YMdeR70Uk" role="3uHU7w">
                    <ref role="359W_E" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    <ref role="359W_F" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70Ul" role="3clFbx">
                <node concept="3SKdUt" id="5YMdeR70Um" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70Uq" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70Us" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Ut" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Uu" role="1PaTwD">
                      <property role="3oM_SC" value="parent" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Uv" role="1PaTwD">
                      <property role="3oM_SC" value="binary" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Uw" role="1PaTwD">
                      <property role="3oM_SC" value="operation" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Ux" role="1PaTwD">
                      <property role="3oM_SC" value="binds" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Uy" role="1PaTwD">
                      <property role="3oM_SC" value="tighter" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70Uz" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70U$" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70U_" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UA" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UB" role="1PaTwD">
                      <property role="3oM_SC" value="its" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UC" role="1PaTwD">
                      <property role="3oM_SC" value="right" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UD" role="1PaTwD">
                      <property role="3oM_SC" value="child" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="5YMdeR70UE" role="3cqZAp">
                  <node concept="1PaTwC" id="5YMdeR70UI" role="1aUNEU">
                    <node concept="3oM_SD" id="5YMdeR70UK" role="1PaTwD">
                      <property role="3oM_SC" value="then" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UL" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UM" role="1PaTwD">
                      <property role="3oM_SC" value="should" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UN" role="1PaTwD">
                      <property role="3oM_SC" value="rather" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UO" role="1PaTwD">
                      <property role="3oM_SC" value="transform" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UP" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UQ" role="1PaTwD">
                      <property role="3oM_SC" value="current" />
                    </node>
                    <node concept="3oM_SD" id="5YMdeR70UR" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="5YMdeR70US" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="5YMdeR70UT" role="3cqZAp">
              <node concept="37vLTI" id="5YMdeR70UV" role="3clFbG">
                <node concept="37vLTw" id="5YMdeR70UY" role="37vLTJ">
                  <ref role="3cqZAo" node="5YMdeR70ST" resolve="targetNode" />
                </node>
                <node concept="1PxgMI" id="5YMdeR70UZ" role="37vLTx">
                  <node concept="37vLTw" id="5YMdeR70V2" role="1m5AlR">
                    <ref role="3cqZAo" node="5YMdeR70T0" resolve="parentNode" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR70V3" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR70V4" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR70V5" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR70ST" resolve="targetNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6P05" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6P06" role="jymVt">
      <property role="TrG5h" value="isSamePriority" />
      <node concept="3Tm1VV" id="5YMdeR6P0a" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeR6P0b" role="3clF45" />
      <node concept="37vLTG" id="5YMdeR6P0c" role="3clF46">
        <property role="TrG5h" value="firstExpression" />
        <node concept="3Tqbb2" id="5YMdeR6P0e" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeR6P0f" role="3clF46">
        <property role="TrG5h" value="secondExpression" />
        <node concept="3Tqbb2" id="5YMdeR6P0h" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P0i" role="3clF47">
        <node concept="3cpWs6" id="5YMdeR70V6" role="3cqZAp">
          <node concept="3clFbC" id="5YMdeR70V7" role="3cqZAk">
            <node concept="2OqwBi" id="5YMdeR70Va" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR70Vd" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0c" resolve="firstExpression" />
              </node>
              <node concept="3zqWPK" id="5YMdeR70Ve" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
              </node>
            </node>
            <node concept="2OqwBi" id="5YMdeR70Vf" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR70Vi" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0f" resolve="secondExpression" />
              </node>
              <node concept="3zqWPK" id="5YMdeR70Vj" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6P0m" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6P0n" role="jymVt">
      <property role="TrG5h" value="isHigherPriority" />
      <node concept="3Tm6S6" id="5YMdeR6P0r" role="1B3o_S" />
      <node concept="10P_77" id="5YMdeR6P0s" role="3clF45" />
      <node concept="37vLTG" id="5YMdeR6P0t" role="3clF46">
        <property role="TrG5h" value="firstExpression" />
        <node concept="3Tqbb2" id="5YMdeR6P0v" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeR6P0w" role="3clF46">
        <property role="TrG5h" value="secondExpression" />
        <node concept="3Tqbb2" id="5YMdeR6P0y" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P0z" role="3clF47">
        <node concept="3cpWs6" id="5YMdeR70Vk" role="3cqZAp">
          <node concept="3eOSWO" id="5YMdeR70Vl" role="3cqZAk">
            <node concept="2OqwBi" id="5YMdeR70Vo" role="3uHU7B">
              <node concept="37vLTw" id="5YMdeR70Vr" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0t" resolve="firstExpression" />
              </node>
              <node concept="3zqWPK" id="5YMdeR70Vs" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
              </node>
            </node>
            <node concept="2OqwBi" id="5YMdeR70Vt" role="3uHU7w">
              <node concept="37vLTw" id="5YMdeR70Vw" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0w" resolve="secondExpression" />
              </node>
              <node concept="3zqWPK" id="5YMdeR70Vx" role="2OqNvi">
                <ref role="37wK5l" node="5YMdeQZxA0" resolve="getPriority" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6P0B" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6P0C" role="jymVt">
      <property role="TrG5h" value="parenthesiseIfNecessary" />
      <node concept="3Tm1VV" id="5YMdeR6P0G" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeR6P0H" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="37vLTG" id="5YMdeR6P0I" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5YMdeR6P0K" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P0L" role="3clF47">
        <node concept="3clFbJ" id="5YMdeR70Vy" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR70V_" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR70VC" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR70VF" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
              </node>
              <node concept="1mfA1w" id="5YMdeR70VG" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5YMdeR70VH" role="2OqNvi">
              <node concept="chp4Y" id="5YMdeR70VJ" role="cj9EA">
                <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR70VK" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR70VL" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR70VO" role="3cpWs9">
                <property role="TrG5h" value="parentBinaryOperation" />
                <node concept="3Tqbb2" id="5YMdeR70VQ" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
                <node concept="1PxgMI" id="5YMdeR70VR" role="33vP2m">
                  <node concept="2OqwBi" id="5YMdeR70VU" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR70VX" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR70VY" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR70VZ" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR70W0" role="3cqZAp">
              <node concept="1Wc70l" id="5YMdeR70W3" role="3clFbw">
                <node concept="17R0WA" id="5YMdeR70W6" role="3uHU7B">
                  <node concept="2OqwBi" id="5YMdeR70W9" role="3uHU7B">
                    <node concept="37vLTw" id="5YMdeR70Wc" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
                    </node>
                    <node concept="2NL2c5" id="5YMdeR70Wd" role="2OqNvi" />
                  </node>
                  <node concept="359W_D" id="5YMdeR70We" role="3uHU7w">
                    <ref role="359W_E" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    <ref role="359W_F" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                  </node>
                </node>
                <node concept="1rXfSq" id="5YMdeR70Wf" role="3uHU7w">
                  <ref role="37wK5l" node="5YMdeR6P0n" resolve="isHigherPriority" />
                  <node concept="37vLTw" id="5YMdeR70Wg" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR70VO" resolve="parentBinaryOperation" />
                  </node>
                  <node concept="37vLTw" id="5YMdeR70Wh" role="37wK5m">
                    <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70Wi" role="3clFbx">
                <node concept="3cpWs8" id="5YMdeR70Wj" role="3cqZAp">
                  <node concept="3cpWsn" id="5YMdeR70Wm" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="5YMdeR70Wo" role="1tU5fm">
                      <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                    </node>
                    <node concept="2ShNRf" id="5YMdeR70Wp" role="33vP2m">
                      <node concept="3zrR0B" id="5YMdeR70Wr" role="2ShVmc">
                        <node concept="3Tqbb2" id="5YMdeR70Wt" role="3zrR0E">
                          <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR70Wu" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR70Ww" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR70Wz" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
                    </node>
                    <node concept="1P9Npp" id="5YMdeR70W$" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR70WA" role="1P9ThW">
                        <ref role="3cqZAo" node="5YMdeR70Wm" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR70WB" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR70WD" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeR70WG" role="37vLTJ">
                      <node concept="37vLTw" id="5YMdeR70WJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR70Wm" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="5YMdeR70WK" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5YMdeR70WL" role="37vLTx">
                      <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeR70WM" role="3cqZAp">
                  <node concept="37vLTw" id="5YMdeR70WN" role="3cqZAk">
                    <ref role="3cqZAo" node="5YMdeR70Wm" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR70WO" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR70WP" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR6P0I" resolve="contextNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6P0P" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6P0Q" role="jymVt">
      <property role="TrG5h" value="processLeftTransform" />
      <node concept="3Tm1VV" id="5YMdeR6P0U" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeR6P0V" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
      <node concept="37vLTG" id="5YMdeR6P0W" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3Tqbb2" id="5YMdeR6P0Y" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeR6P0Z" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="5YMdeR6P11" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P12" role="3clF47">
        <node concept="3cpWs8" id="5YMdeR70WQ" role="3cqZAp">
          <node concept="3cpWsn" id="5YMdeR70WT" role="3cpWs9">
            <property role="TrG5h" value="nodeToProcess" />
            <node concept="3Tqbb2" id="5YMdeR70WV" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="1rXfSq" id="5YMdeR70WW" role="33vP2m">
              <ref role="37wK5l" node="5YMdeR6OZP" resolve="getTargetForLeftTransform" />
              <node concept="37vLTw" id="5YMdeR70WX" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR6P0W" resolve="sourceNode" />
              </node>
              <node concept="37vLTw" id="5YMdeR70WY" role="37wK5m">
                <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR70WZ" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70X3" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70X5" role="1PaTwD">
              <property role="3oM_SC" value="since" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X6" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X7" role="1PaTwD">
              <property role="3oM_SC" value="operations" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X8" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X9" role="1PaTwD">
              <property role="3oM_SC" value="left-associative" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xa" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xb" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xc" role="1PaTwD">
              <property role="3oM_SC" value="perform" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xd" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xe" role="1PaTwD">
              <property role="3oM_SC" value="complex" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xf" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xg" role="1PaTwD">
              <property role="3oM_SC" value="transform" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xh" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YMdeR70Xi" role="3cqZAp">
          <node concept="1PaTwC" id="5YMdeR70Xm" role="1aUNEU">
            <node concept="3oM_SD" id="5YMdeR70Xo" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xp" role="1PaTwD">
              <property role="3oM_SC" value="operation" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xq" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xs" role="1PaTwD">
              <property role="3oM_SC" value="&quot;rightExpression&quot;" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xt" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xu" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xv" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xw" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xx" role="1PaTwD">
              <property role="3oM_SC" value="operation" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xy" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70Xz" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X$" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5YMdeR70X_" role="1PaTwD">
              <property role="3oM_SC" value="priority" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5YMdeR70XA" role="3cqZAp">
          <node concept="1Wc70l" id="5YMdeR70XD" role="3clFbw">
            <node concept="2OqwBi" id="5YMdeR70XG" role="3uHU7B">
              <node concept="2OqwBi" id="5YMdeR70XJ" role="2Oq$k0">
                <node concept="37vLTw" id="5YMdeR70XM" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
                </node>
                <node concept="1mfA1w" id="5YMdeR70XN" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="5YMdeR70XO" role="2OqNvi">
                <node concept="chp4Y" id="5YMdeR70XQ" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="5YMdeR70XR" role="3uHU7w">
              <node concept="2OqwBi" id="5YMdeR70XU" role="3uHU7B">
                <node concept="37vLTw" id="5YMdeR70XX" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
                </node>
                <node concept="2NL2c5" id="5YMdeR70XY" role="2OqNvi" />
              </node>
              <node concept="359W_D" id="5YMdeR70XZ" role="3uHU7w">
                <ref role="359W_E" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                <ref role="359W_F" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5YMdeR70Y0" role="3clFbx">
            <node concept="3cpWs8" id="5YMdeR70Y1" role="3cqZAp">
              <node concept="3cpWsn" id="5YMdeR70Y4" role="3cpWs9">
                <property role="TrG5h" value="parentBinaryOperation" />
                <node concept="3Tqbb2" id="5YMdeR70Y6" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
                <node concept="1PxgMI" id="5YMdeR70Y7" role="33vP2m">
                  <node concept="2OqwBi" id="5YMdeR70Ya" role="1m5AlR">
                    <node concept="37vLTw" id="5YMdeR70Yd" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
                    </node>
                    <node concept="1mfA1w" id="5YMdeR70Ye" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5YMdeR70Yf" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YMdeR70Yg" role="3cqZAp">
              <node concept="1rXfSq" id="5YMdeR70Yj" role="3clFbw">
                <ref role="37wK5l" node="5YMdeR6P06" resolve="isSamePriority" />
                <node concept="37vLTw" id="5YMdeR70Yk" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR70Y4" resolve="parentBinaryOperation" />
                </node>
                <node concept="37vLTw" id="5YMdeR70Yl" role="37wK5m">
                  <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
                </node>
              </node>
              <node concept="3clFbS" id="5YMdeR70Ym" role="3clFbx">
                <node concept="3clFbF" id="5YMdeR70Yn" role="3cqZAp">
                  <node concept="2OqwBi" id="5YMdeR70Yp" role="3clFbG">
                    <node concept="37vLTw" id="5YMdeR70Ys" role="2Oq$k0">
                      <ref role="3cqZAo" node="5YMdeR70Y4" resolve="parentBinaryOperation" />
                    </node>
                    <node concept="1P9Npp" id="5YMdeR70Yt" role="2OqNvi">
                      <node concept="37vLTw" id="5YMdeR70Yv" role="1P9ThW">
                        <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR70Yw" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR70Yy" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeR70Y_" role="37vLTJ">
                      <node concept="37vLTw" id="5YMdeR70YC" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="5YMdeR70YD" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5YMdeR70YE" role="37vLTx">
                      <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5YMdeR70YF" role="3cqZAp">
                  <node concept="37vLTI" id="5YMdeR70YH" role="3clFbG">
                    <node concept="2OqwBi" id="5YMdeR70YK" role="37vLTJ">
                      <node concept="37vLTw" id="5YMdeR70YN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="5YMdeR70YO" role="2OqNvi">
                        <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5YMdeR70YP" role="37vLTx">
                      <ref role="3cqZAo" node="5YMdeR70Y4" resolve="parentBinaryOperation" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5YMdeR70YQ" role="3cqZAp">
                  <node concept="37vLTw" id="5YMdeR70YR" role="3cqZAk">
                    <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR70YS" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR70YU" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR70YX" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
            </node>
            <node concept="1P9Npp" id="5YMdeR70YY" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR70Z0" role="1P9ThW">
                <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR70Z1" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR70Z3" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR70Z6" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR70Z9" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
              </node>
              <node concept="3TrEf2" id="5YMdeR70Za" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeR70Zb" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR70Zd" role="2oxUTC">
                <ref role="3cqZAo" node="5YMdeR70WT" resolve="nodeToProcess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR70Ze" role="3cqZAp">
          <node concept="1rXfSq" id="5YMdeR70Zg" role="3clFbG">
            <ref role="37wK5l" node="5YMdeR6P0C" resolve="parenthesiseIfNecessary" />
            <node concept="37vLTw" id="5YMdeR70Zh" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR70Zi" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR70Zj" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR6P0Z" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YMdeR6P16" role="jymVt" />
    <node concept="2YIFZL" id="5YMdeR6P17" role="jymVt">
      <property role="TrG5h" value="processRightTransform" />
      <node concept="3Tm1VV" id="5YMdeR6P1b" role="1B3o_S" />
      <node concept="3Tqbb2" id="5YMdeR6P1c" role="3clF45">
        <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
      </node>
      <node concept="37vLTG" id="5YMdeR6P1d" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3Tqbb2" id="5YMdeR6P1f" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="5YMdeR6P1g" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="5YMdeR6P1i" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
        </node>
      </node>
      <node concept="3clFbS" id="5YMdeR6P1j" role="3clF47">
        <node concept="3clFbF" id="5YMdeR6P1k" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR70Zk" role="3clFbG">
            <node concept="37vLTw" id="5YMdeR70Zn" role="2Oq$k0">
              <ref role="3cqZAo" node="5YMdeR6P1d" resolve="sourceNode" />
            </node>
            <node concept="1P9Npp" id="5YMdeR70Zo" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR70Zq" role="1P9ThW">
                <ref role="3cqZAo" node="5YMdeR6P1g" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR70Zr" role="3cqZAp">
          <node concept="2OqwBi" id="5YMdeR70Zt" role="3clFbG">
            <node concept="2OqwBi" id="5YMdeR70Zw" role="2Oq$k0">
              <node concept="37vLTw" id="5YMdeR70Zz" role="2Oq$k0">
                <ref role="3cqZAo" node="5YMdeR6P1g" resolve="result" />
              </node>
              <node concept="3TrEf2" id="5YMdeR70Z$" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5YMdeQYNSC" resolve="leftExpression" />
              </node>
            </node>
            <node concept="2oxUTD" id="5YMdeR70Z_" role="2OqNvi">
              <node concept="37vLTw" id="5YMdeR70ZB" role="2oxUTC">
                <ref role="3cqZAo" node="5YMdeR6P1d" resolve="sourceNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YMdeR70ZC" role="3cqZAp">
          <node concept="2YIFZM" id="5YMdeR70ZE" role="3clFbG">
            <ref role="1Pybhc" node="5YMdeQZZE8" resolve="TSParenthesisUtil" />
            <ref role="37wK5l" node="5YMdeQZZJn" resolve="checkOperationWRTPriority" />
            <node concept="37vLTw" id="5YMdeR70ZF" role="37wK5m">
              <ref role="3cqZAo" node="5YMdeR6P1g" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YMdeR70ZG" role="3cqZAp">
          <node concept="37vLTw" id="5YMdeR70ZH" role="3cqZAk">
            <ref role="3cqZAo" node="5YMdeR6P1g" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5Xb8BFgn1Zi" role="jymVt">
      <property role="TrG5h" value="createTernaryOperator" />
      <node concept="3Tm1VV" id="5Xb8BFgn1Zm" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Xb8BFgn1Zn" role="3clF45">
        <ref role="ehGHo" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
      </node>
      <node concept="37vLTG" id="5Xb8BFgn1Zo" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3Tqbb2" id="5Xb8BFgn1Zq" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5Xb8BFgn1Zr" role="3clF47">
        <node concept="3SKdUt" id="5Xb8BFgn1Zs" role="3cqZAp">
          <node concept="1PaTwC" id="5Xb8BFgn1Zw" role="1aUNEU">
            <node concept="3oM_SD" id="5Xb8BFgn1Zy" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1Zz" role="1PaTwD">
              <property role="3oM_SC" value="ternary" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1Z$" role="1PaTwD">
              <property role="3oM_SC" value="operator" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1Z_" role="1PaTwD">
              <property role="3oM_SC" value="binds" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZA" role="1PaTwD">
              <property role="3oM_SC" value="looser" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZB" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZC" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZD" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZE" role="1PaTwD">
              <property role="3oM_SC" value="operation," />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZF" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZG" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZH" role="1PaTwD">
              <property role="3oM_SC" value="condition" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZI" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5Xb8BFgn1ZK" role="3cqZAp">
          <node concept="1PaTwC" id="5Xb8BFgn1ZO" role="1aUNEU">
            <node concept="3oM_SD" id="5Xb8BFgn1ZQ" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZR" role="1PaTwD">
              <property role="3oM_SC" value="chain" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZS" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZT" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZU" role="1PaTwD">
              <property role="3oM_SC" value="operations" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZW" role="1PaTwD">
              <property role="3oM_SC" value="caret" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZX" role="1PaTwD">
              <property role="3oM_SC" value="sits" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZY" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn1ZZ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn200" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn201" role="1PaTwD">
              <property role="3oM_SC" value="end" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgn202" role="1PaTwD">
              <property role="3oM_SC" value="of." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Xb8BFgn203" role="3cqZAp">
          <node concept="3cpWsn" id="5Xb8BFgn206" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="5Xb8BFgn208" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
            </node>
            <node concept="2ShNRf" id="5Xb8BFgn209" role="33vP2m">
              <node concept="3zrR0B" id="5Xb8BFgn20b" role="2ShVmc">
                <node concept="3Tqbb2" id="5Xb8BFgn20d" role="3zrR0E">
                  <ref role="ehGHo" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Xb8BFgn20e" role="3cqZAp">
          <node concept="3cpWsn" id="5Xb8BFgn20h" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5Xb8BFgn20j" role="1tU5fm">
              <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
            </node>
            <node concept="37vLTw" id="5Xb8BFgn20k" role="33vP2m">
              <ref role="3cqZAo" node="5Xb8BFgn1Zo" resolve="sourceNode" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5Xb8BFgn20l" role="3cqZAp">
          <node concept="1Wc70l" id="5Xb8BFgn20o" role="2$JKZa">
            <node concept="2OqwBi" id="5Xb8BFgn20r" role="3uHU7B">
              <node concept="2OqwBi" id="5Xb8BFgn20u" role="2Oq$k0">
                <node concept="37vLTw" id="5Xb8BFgn20x" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                </node>
                <node concept="1mfA1w" id="5Xb8BFgn20y" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="5Xb8BFgn20z" role="2OqNvi">
                <node concept="chp4Y" id="5Xb8BFgn20_" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="5Xb8BFgn20A" role="3uHU7w">
              <node concept="2OqwBi" id="5Xb8BFgn20D" role="3uHU7B">
                <node concept="1eOMI4" id="5Xb8BFgn20G" role="2Oq$k0">
                  <node concept="1PxgMI" id="5Xb8BFgn20I" role="1eOMHV">
                    <node concept="2OqwBi" id="5Xb8BFgn20L" role="1m5AlR">
                      <node concept="37vLTw" id="5Xb8BFgn20O" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                      </node>
                      <node concept="1mfA1w" id="5Xb8BFgn20P" role="2OqNvi" />
                    </node>
                    <node concept="chp4Y" id="5Xb8BFgn20Q" role="3oSUPX">
                      <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5Xb8BFgn20R" role="2OqNvi">
                  <ref role="3Tt5mk" to="mo8k:5YMdeQYNSD" resolve="rightExpression" />
                </node>
              </node>
              <node concept="37vLTw" id="5Xb8BFgn20S" role="3uHU7w">
                <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5Xb8BFgn20T" role="2LFqv$">
            <node concept="3clFbF" id="5Xb8BFgn20U" role="3cqZAp">
              <node concept="37vLTI" id="5Xb8BFgn20W" role="3clFbG">
                <node concept="37vLTw" id="5Xb8BFgn20Z" role="37vLTJ">
                  <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                </node>
                <node concept="1PxgMI" id="5Xb8BFgn210" role="37vLTx">
                  <node concept="2OqwBi" id="5Xb8BFgn213" role="1m5AlR">
                    <node concept="37vLTw" id="5Xb8BFgn216" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="5Xb8BFgn217" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="5Xb8BFgn218" role="3oSUPX">
                    <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Xb8BFgn219" role="3cqZAp">
          <node concept="22lmx$" id="5Xb8BFgn21c" role="3clFbw">
            <node concept="2OqwBi" id="5Xb8BFgn21f" role="3uHU7B">
              <node concept="2OqwBi" id="5Xb8BFgn21i" role="2Oq$k0">
                <node concept="37vLTw" id="5Xb8BFgn21l" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                </node>
                <node concept="1mfA1w" id="5Xb8BFgn21m" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="5Xb8BFgn21n" role="2OqNvi">
                <node concept="chp4Y" id="5Xb8BFgn21p" role="cj9EA">
                  <ref role="cht4Q" to="mo8k:5YMdeQYNS_" resolve="TSBinaryOperation" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="5Xb8BFgn21q" role="3uHU7w">
              <node concept="1Wc70l" id="5Xb8BFgn21s" role="1eOMHV">
                <node concept="2OqwBi" id="5Xb8BFgn21v" role="3uHU7B">
                  <node concept="2OqwBi" id="5Xb8BFgn21y" role="2Oq$k0">
                    <node concept="37vLTw" id="5Xb8BFgn21_" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="5Xb8BFgn21A" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="5Xb8BFgn21B" role="2OqNvi">
                    <node concept="chp4Y" id="5Xb8BFgn21D" role="cj9EA">
                      <ref role="cht4Q" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="5Xb8BFgn21E" role="3uHU7w">
                  <node concept="2OqwBi" id="5Xb8BFgn21H" role="3uHU7B">
                    <node concept="1eOMI4" id="5Xb8BFgn21K" role="2Oq$k0">
                      <node concept="1PxgMI" id="5Xb8BFgn21M" role="1eOMHV">
                        <node concept="2OqwBi" id="5Xb8BFgn21P" role="1m5AlR">
                          <node concept="37vLTw" id="5Xb8BFgn21S" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                          </node>
                          <node concept="1mfA1w" id="5Xb8BFgn21T" role="2OqNvi" />
                        </node>
                        <node concept="chp4Y" id="5Xb8BFgn21U" role="3oSUPX">
                          <ref role="cht4Q" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5Xb8BFgn21V" role="2OqNvi">
                      <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5Xb8BFgn21W" role="3uHU7w">
                    <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5Xb8BFgn21X" role="3clFbx">
            <node concept="3SKdUt" id="5Xb8BFgn21Y" role="3cqZAp">
              <node concept="1PaTwC" id="5Xb8BFgn222" role="1aUNEU">
                <node concept="3oM_SD" id="5Xb8BFgn224" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn225" role="1PaTwD">
                  <property role="3oM_SC" value="operand" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn226" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn227" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn228" role="1PaTwD">
                  <property role="3oM_SC" value="binary" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn229" role="1PaTwD">
                  <property role="3oM_SC" value="operation," />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22a" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22b" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22c" role="1PaTwD">
                  <property role="3oM_SC" value="condition" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22d" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22e" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22f" role="1PaTwD">
                  <property role="3oM_SC" value="ternary" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22g" role="1PaTwD">
                  <property role="3oM_SC" value="operator:" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5Xb8BFgn22h" role="3cqZAp">
              <node concept="1PaTwC" id="5Xb8BFgn22l" role="1aUNEU">
                <node concept="3oM_SD" id="5Xb8BFgn22n" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22o" role="1PaTwD">
                  <property role="3oM_SC" value="ternary" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22p" role="1PaTwD">
                  <property role="3oM_SC" value="binds" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22q" role="1PaTwD">
                  <property role="3oM_SC" value="too" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22r" role="1PaTwD">
                  <property role="3oM_SC" value="loosely" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22s" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22t" role="1PaTwD">
                  <property role="3oM_SC" value="sit" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22u" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22v" role="1PaTwD">
                  <property role="3oM_SC" value="without" />
                </node>
                <node concept="3oM_SD" id="5Xb8BFgn22w" role="1PaTwD">
                  <property role="3oM_SC" value="parentheses" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5Xb8BFgn22x" role="3cqZAp">
              <node concept="3cpWsn" id="5Xb8BFgn22$" role="3cpWs9">
                <property role="TrG5h" value="parens" />
                <node concept="3Tqbb2" id="5Xb8BFgn22A" role="1tU5fm">
                  <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                </node>
                <node concept="2ShNRf" id="5Xb8BFgn22B" role="33vP2m">
                  <node concept="3zrR0B" id="5Xb8BFgn22D" role="2ShVmc">
                    <node concept="3Tqbb2" id="5Xb8BFgn22F" role="3zrR0E">
                      <ref role="ehGHo" to="mo8k:5YMdeQYNSy" resolve="TSParenthesizedExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Xb8BFgn22G" role="3cqZAp">
              <node concept="2OqwBi" id="5Xb8BFgn22I" role="3clFbG">
                <node concept="2OqwBi" id="5Xb8BFgn22L" role="2Oq$k0">
                  <node concept="37vLTw" id="5Xb8BFgn22O" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Xb8BFgn22$" resolve="parens" />
                  </node>
                  <node concept="3TrEf2" id="5Xb8BFgn22P" role="2OqNvi">
                    <ref role="3Tt5mk" to="mo8k:5YMdeQYNS$" resolve="expression" />
                  </node>
                </node>
                <node concept="2oxUTD" id="5Xb8BFgn22Q" role="2OqNvi">
                  <node concept="37vLTw" id="5Xb8BFgn22S" role="2oxUTC">
                    <ref role="3cqZAo" node="5Xb8BFgn206" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Xb8BFgn22T" role="3cqZAp">
              <node concept="2OqwBi" id="5Xb8BFgn22V" role="3clFbG">
                <node concept="37vLTw" id="5Xb8BFgn22Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                </node>
                <node concept="1P9Npp" id="5Xb8BFgn22Z" role="2OqNvi">
                  <node concept="37vLTw" id="5Xb8BFgn231" role="1P9ThW">
                    <ref role="3cqZAo" node="5Xb8BFgn22$" resolve="parens" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5Xb8BFgn232" role="9aQIa">
            <node concept="3clFbS" id="5Xb8BFgn234" role="9aQI4">
              <node concept="3clFbF" id="5Xb8BFgn235" role="3cqZAp">
                <node concept="2OqwBi" id="5Xb8BFgn237" role="3clFbG">
                  <node concept="37vLTw" id="5Xb8BFgn23a" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
                  </node>
                  <node concept="1P9Npp" id="5Xb8BFgn23b" role="2OqNvi">
                    <node concept="37vLTw" id="5Xb8BFgn23d" role="1P9ThW">
                      <ref role="3cqZAo" node="5Xb8BFgn206" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xb8BFgn23e" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgn23g" role="3clFbG">
            <node concept="2OqwBi" id="5Xb8BFgn23j" role="2Oq$k0">
              <node concept="37vLTw" id="5Xb8BFgn23m" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xb8BFgn206" resolve="result" />
              </node>
              <node concept="3TrEf2" id="5Xb8BFgn23n" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
              </node>
            </node>
            <node concept="2oxUTD" id="5Xb8BFgn23o" role="2OqNvi">
              <node concept="37vLTw" id="5Xb8BFgn23q" role="2oxUTC">
                <ref role="3cqZAo" node="5Xb8BFgn20h" resolve="current" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Xb8BFgn23r" role="3cqZAp">
          <node concept="37vLTw" id="5Xb8BFgn23s" role="3cqZAk">
            <ref role="3cqZAo" node="5Xb8BFgn206" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5Xb8BFgmLRi">
    <ref role="13h7C2" to="mo8k:5Xb8BFglYQ1" resolve="TSTernaryOperatorExpression" />
    <node concept="13hLZK" id="5Xb8BFgmLRl" role="13h7CW">
      <node concept="3clFbS" id="5Xb8BFgmLRn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5Xb8BFgmLRo" role="13h7CS">
      <property role="TrG5h" value="getPriority" />
      <ref role="13i0hy" node="5YMdeQZxA0" resolve="getPriority" />
      <node concept="3Tm1VV" id="5Xb8BFgmLRs" role="1B3o_S" />
      <node concept="10Oyi0" id="5Xb8BFgmLRt" role="3clF45" />
      <node concept="3clFbS" id="5Xb8BFgmLRu" role="3clF47">
        <node concept="3SKdUt" id="5Xb8BFgmLRv" role="3cqZAp">
          <node concept="1PaTwC" id="5Xb8BFgmLRz" role="1aUNEU">
            <node concept="3oM_SD" id="5Xb8BFgmLR_" role="1PaTwD">
              <property role="3oM_SC" value="binds" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRA" role="1PaTwD">
              <property role="3oM_SC" value="looser" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRB" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRC" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRD" role="1PaTwD">
              <property role="3oM_SC" value="binary" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRE" role="1PaTwD">
              <property role="3oM_SC" value="operation," />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRF" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRH" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRI" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5Xb8BFgmLRJ" role="1PaTwD">
              <property role="3oM_SC" value="leaf" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xb8BFgmLRK" role="3cqZAp">
          <node concept="3cmrfG" id="5Xb8BFgmLRM" role="3clFbG">
            <property role="3cmrfH" value="5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Xb8BFgmLRN" role="13h7CS">
      <property role="TrG5h" value="getSyntacticallyLeftSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGOP" resolve="getSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5Xb8BFgmLRR" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Xb8BFgmLRS" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5Xb8BFgmLRT" role="3clF47">
        <node concept="3clFbF" id="5Xb8BFgmLRU" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgmLRW" role="3clFbG">
            <node concept="13iPFW" id="5Xb8BFgmLRZ" role="2Oq$k0" />
            <node concept="3TrEf2" id="5Xb8BFgmLS0" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Xb8BFgmLS1" role="13h7CS">
      <property role="TrG5h" value="getSyntacticallyRightSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGOZ" resolve="getSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5Xb8BFgmLS5" role="1B3o_S" />
      <node concept="3Tqbb2" id="5Xb8BFgmLS6" role="3clF45">
        <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
      <node concept="3clFbS" id="5Xb8BFgmLS7" role="3clF47">
        <node concept="3clFbF" id="5Xb8BFgmLS8" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgmLSa" role="3clFbG">
            <node concept="13iPFW" id="5Xb8BFgmLSd" role="2Oq$k0" />
            <node concept="3TrEf2" id="5Xb8BFgmLSe" role="2OqNvi">
              <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ6" resolve="ifFalse" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Xb8BFgmLSf" role="13h7CS">
      <property role="TrG5h" value="setSyntacticallyLeftSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGP9" resolve="setSyntacticallyLeftSideExpression" />
      <node concept="3Tm1VV" id="5Xb8BFgmLSj" role="1B3o_S" />
      <node concept="3cqZAl" id="5Xb8BFgmLSk" role="3clF45" />
      <node concept="37vLTG" id="5Xb8BFgmLSl" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5Xb8BFgmLSn" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5Xb8BFgmLSo" role="3clF47">
        <node concept="3clFbF" id="5Xb8BFgmLSp" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgmLSr" role="3clFbG">
            <node concept="2OqwBi" id="5Xb8BFgmLSu" role="2Oq$k0">
              <node concept="13iPFW" id="5Xb8BFgmLSx" role="2Oq$k0" />
              <node concept="3TrEf2" id="5Xb8BFgmLSy" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ4" resolve="condition" />
              </node>
            </node>
            <node concept="2oxUTD" id="5Xb8BFgmLSz" role="2OqNvi">
              <node concept="37vLTw" id="5Xb8BFgmLS_" role="2oxUTC">
                <ref role="3cqZAo" node="5Xb8BFgmLSl" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5Xb8BFgmLSA" role="13h7CS">
      <property role="TrG5h" value="setSyntacticallyRightSideExpression" />
      <ref role="13i0hy" node="5YMdeQZGPx" resolve="setSyntacticallyRightSideExpression" />
      <node concept="3Tm1VV" id="5Xb8BFgmLSE" role="1B3o_S" />
      <node concept="3cqZAl" id="5Xb8BFgmLSF" role="3clF45" />
      <node concept="37vLTG" id="5Xb8BFgmLSG" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="5Xb8BFgmLSI" role="1tU5fm">
          <ref role="ehGHo" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="5Xb8BFgmLSJ" role="3clF47">
        <node concept="3clFbF" id="5Xb8BFgmLSK" role="3cqZAp">
          <node concept="2OqwBi" id="5Xb8BFgmLSM" role="3clFbG">
            <node concept="2OqwBi" id="5Xb8BFgmLSP" role="2Oq$k0">
              <node concept="13iPFW" id="5Xb8BFgmLSS" role="2Oq$k0" />
              <node concept="3TrEf2" id="5Xb8BFgmLST" role="2OqNvi">
                <ref role="3Tt5mk" to="mo8k:5Xb8BFglYQ6" resolve="ifFalse" />
              </node>
            </node>
            <node concept="2oxUTD" id="5Xb8BFgmLSU" role="2OqNvi">
              <node concept="37vLTw" id="5Xb8BFgmLSW" role="2oxUTC">
                <ref role="3cqZAo" node="5Xb8BFgmLSG" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

