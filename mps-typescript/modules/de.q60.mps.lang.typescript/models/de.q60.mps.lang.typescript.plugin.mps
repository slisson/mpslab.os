<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:46183131-d77a-437b-ac8e-fdc52a6ee598(de.q60.mps.lang.typescript.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
  </languages>
  <imports>
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
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
        <node concept="3cpWs6" id="1jfLtDTDIgx" role="3cqZAp">
          <node concept="2ShNRf" id="1jfLtDTDIgy" role="3cqZAk">
            <node concept="Tc6Ow" id="1jfLtDTDIg$" role="2ShVmc">
              <node concept="3uibUv" id="1jfLtDTDIg_" role="HW$YZ">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
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
</model>

