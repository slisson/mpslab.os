<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3294770e-3023-4d24-9850-53098ac7516e(de.q60.mps.lang.typescript.unitTest.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="mo8k" ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="6WKYICF_RIE">
    <property role="EcuMT" value="9183028416255918917" />
    <property role="TrG5h" value="TSIAssertion" />
    <node concept="PrWs8" id="6WKYICF_RIF" role="PrDN$">
      <ref role="PrY4T" to="mo8k:1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RIG">
    <property role="EcuMT" value="2540675105150896836" />
    <property role="TrG5h" value="TSTestCase" />
    <property role="19KtqR" value="true" />
    <property role="R4oN_" value="TypeScript test case" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RIH" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIK" role="1TKVEi">
      <property role="IQ2ns" value="3377630177900161387" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="testMethods" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6WKYICF_RIL" resolve="TSTestMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RIL">
    <property role="EcuMT" value="2893403391783031051" />
    <property role="TrG5h" value="TSTestMethod" />
    <property role="34LRSv" value="test" />
    <property role="R4oN_" value="test method" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RIM" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIN" role="1TKVEi">
      <property role="IQ2ns" value="3423858813637018076" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="PrWs8" id="6WKYICFSfQy" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RIO">
    <property role="EcuMT" value="7474925316805868297" />
    <property role="TrG5h" value="TSAssertTrue" />
    <property role="34LRSv" value="assert true" />
    <property role="R4oN_" value="assert that a condition holds" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RIP" role="PzmwI">
      <ref role="PrY4T" node="6WKYICF_RIE" resolve="TSIAssertion" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIQ" role="1TKVEi">
      <property role="IQ2ns" value="923496749372008960" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RIS">
    <property role="EcuMT" value="5324903807302792343" />
    <property role="TrG5h" value="TSAssertFalse" />
    <property role="34LRSv" value="assert false" />
    <property role="R4oN_" value="assert that a condition does not hold" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RIT" role="PzmwI">
      <ref role="PrY4T" node="6WKYICF_RIE" resolve="TSIAssertion" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIU" role="1TKVEi">
      <property role="IQ2ns" value="1719658372091490261" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RIW">
    <property role="EcuMT" value="9159215323861021911" />
    <property role="TrG5h" value="TSAssertEquals" />
    <property role="34LRSv" value="assert equals" />
    <property role="R4oN_" value="assert that two expressions are deeply equal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RIX" role="PzmwI">
      <ref role="PrY4T" node="6WKYICF_RIE" resolve="TSIAssertion" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIY" role="1TKVEi">
      <property role="IQ2ns" value="4433563903700617020" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actual" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RIZ" role="1TKVEi">
      <property role="IQ2ns" value="4065307100039490071" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expected" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICF_RJ1">
    <property role="EcuMT" value="7158842254919711510" />
    <property role="TrG5h" value="TSAssertNotEquals" />
    <property role="34LRSv" value="assert not equals" />
    <property role="R4oN_" value="assert that two expressions are not deeply equal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICF_RJ2" role="PzmwI">
      <ref role="PrY4T" node="6WKYICF_RIE" resolve="TSIAssertion" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RJ3" role="1TKVEi">
      <property role="IQ2ns" value="6572111961859092722" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actual" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="6WKYICF_RJ4" role="1TKVEi">
      <property role="IQ2ns" value="3663594992465210637" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expected" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFMSWv">
    <property role="EcuMT" value="1671337506811517318" />
    <property role="TrG5h" value="TSFail" />
    <property role="34LRSv" value="fail" />
    <property role="R4oN_" value="fail the test unconditionally" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICFMSWw" role="PzmwI">
      <ref role="PrY4T" node="6WKYICF_RIE" resolve="TSIAssertion" />
    </node>
    <node concept="1TJgyj" id="6WKYICFMSWx" role="1TKVEi">
      <property role="IQ2ns" value="1832419353059037549" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="message" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="mo8k:1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
</model>

