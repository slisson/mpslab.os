<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f9bfdcd6-cf4c-4a53-9757-ba9616b08727(de.q60.mps.lang.typescript.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
  <node concept="PlHQZ" id="1TCdlWHrFuz">
    <property role="TrG5h" value="IStatement" />
    <property role="EcuMT" value="5251401983424050518" />
  </node>
  <node concept="PlHQZ" id="1TCdlWHrFu$">
    <property role="TrG5h" value="IExpression" />
    <property role="EcuMT" value="2876488474811090501" />
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFu_">
    <property role="TrG5h" value="Module" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="2596016207932595749" />
    <node concept="PrWs8" id="1TCdlWHrFuA" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1TCdlWHrFuB" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="906924707476882095" />
      <ref role="20lvS9" node="1TCdlWHrFuz" resolve="IStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFuC">
    <property role="TrG5h" value="ExpressionStatement" />
    <property role="EcuMT" value="7259284324402748763" />
    <node concept="PrWs8" id="1TCdlWHrFuD" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="IStatement" />
    </node>
    <node concept="1TJgyj" id="1TCdlWHrFuE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3951472244529450579" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFuF">
    <property role="TrG5h" value="ConsoleLog" />
    <property role="EcuMT" value="8721570043856821956" />
    <node concept="PrWs8" id="1TCdlWHrFuG" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
    <node concept="1TJgyj" id="1TCdlWHrFuH" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="4034092257342201905" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFuI">
    <property role="TrG5h" value="StringLiteral" />
    <property role="EcuMT" value="3369613353357185318" />
    <node concept="PrWs8" id="1TCdlWHrFuJ" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
    <node concept="1TJgyi" id="1TCdlWHrFuK" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="7217799321058434228" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="1UjCfdjUYX2">
    <property role="TrG5h" value="IOperation" />
    <property role="EcuMT" value="1928820467449341899" />
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYX3">
    <property role="TrG5h" value="DotExpression" />
    <property role="EcuMT" value="8391732534571575383" />
    <node concept="PrWs8" id="1UjCfdjUYX4" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
    <node concept="1TJgyj" id="1UjCfdjUYX5" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operand" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7381226927831223239" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
    <node concept="1TJgyj" id="1UjCfdjUYX6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="439023831131999408" />
      <ref role="20lvS9" node="1UjCfdjUYX2" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYX7">
    <property role="TrG5h" value="Identifier" />
    <property role="EcuMT" value="8057680275657749238" />
    <node concept="PrWs8" id="1UjCfdjUYX8" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
    <node concept="1TJgyi" id="1UjCfdjUYX9" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="9006610581731349485" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYXa">
    <property role="TrG5h" value="CallOperation" />
    <property role="EcuMT" value="5541867723906688375" />
    <node concept="PrWs8" id="1UjCfdjUYXb" role="PzmwI">
      <ref role="PrY4T" node="1UjCfdjUYX2" resolve="IOperation" />
    </node>
    <node concept="1TJgyi" id="1UjCfdjUYXc" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="6608899821446889191" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="1UjCfdjUYXd" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="8771072280908425434" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Ul7eGthLpQ">
    <property role="TrG5h" value="IType" />
    <property role="EcuMT" value="7572147840022189753" />
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpR">
    <property role="TrG5h" value="ConsoleType" />
    <property role="EcuMT" value="8281127187734251692" />
    <node concept="PrWs8" id="4Ul7eGthLpS" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="IType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpT">
    <property role="TrG5h" value="Console" />
    <property role="EcuMT" value="3145181163763065424" />
    <node concept="PrWs8" id="4Ul7eGthLpU" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpV">
    <property role="TrG5h" value="ConsoleOp_Base" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="9164307796362968320" />
    <node concept="PrWs8" id="4Ul7eGthLpW" role="PzmwI">
      <ref role="PrY4T" node="1UjCfdjUYX2" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpX">
    <property role="TrG5h" value="ConsoleOp_Log" />
    <property role="EcuMT" value="1856649162453200722" />
    <ref role="1TJDcQ" node="4Ul7eGthLpV" resolve="ConsoleOp_Base" />
    <node concept="1TJgyj" id="4Ul7eGthLpY" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2591751422752546988" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="IExpression" />
    </node>
  </node>
</model>

