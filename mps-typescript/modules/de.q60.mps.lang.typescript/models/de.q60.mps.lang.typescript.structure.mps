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
      <concept id="6054523464626862044" name="jetbrains.mps.lang.structure.structure.AttributeInfo_IsMultiple" flags="ng" index="tn0Fv" />
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
        <child id="7588428831955550186" name="multiple" index="HhnKV" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="1TCdlWHrFuz">
    <property role="TrG5h" value="TSIStatement" />
    <property role="EcuMT" value="5251401983424050518" />
  </node>
  <node concept="PlHQZ" id="1TCdlWHrFu$">
    <property role="TrG5h" value="TSIExpression" />
    <property role="EcuMT" value="2876488474811090501" />
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFu_">
    <property role="TrG5h" value="TSModule" />
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
      <ref role="20lvS9" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFuC">
    <property role="TrG5h" value="TSExpressionStatement" />
    <property role="EcuMT" value="7259284324402748763" />
    <node concept="PrWs8" id="1TCdlWHrFuD" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="1TJgyj" id="1TCdlWHrFuE" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="3951472244529450579" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TCdlWHrFuI">
    <property role="TrG5h" value="TSStringLiteral" />
    <property role="EcuMT" value="3369613353357185318" />
    <node concept="PrWs8" id="1TCdlWHrFuJ" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyi" id="1TCdlWHrFuK" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <property role="IQ2nx" value="7217799321058434228" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="1UjCfdjUYX2">
    <property role="TrG5h" value="TSIOperation" />
    <property role="EcuMT" value="1928820467449341899" />
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYX3">
    <property role="TrG5h" value="TSDotExpression" />
    <property role="EcuMT" value="8391732534571575383" />
    <node concept="PrWs8" id="1UjCfdjUYX4" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="1UjCfdjUYX5" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operand" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="7381226927831223239" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="1UjCfdjUYX6" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="IQ2ns" value="439023831131999408" />
      <ref role="20lvS9" node="1UjCfdjUYX2" resolve="TSIOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYX7">
    <property role="TrG5h" value="TSIdentifier" />
    <property role="EcuMT" value="8057680275657749238" />
    <node concept="PrWs8" id="1UjCfdjUYX8" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyi" id="1UjCfdjUYX9" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="9006610581731349485" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UjCfdjUYXa">
    <property role="TrG5h" value="TSCallOperation" />
    <property role="EcuMT" value="5541867723906688375" />
    <node concept="PrWs8" id="1UjCfdjUYXb" role="PzmwI">
      <ref role="PrY4T" node="1UjCfdjUYX2" resolve="TSIOperation" />
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
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Ul7eGthLpQ">
    <property role="TrG5h" value="TSIType" />
    <property role="EcuMT" value="7572147840022189753" />
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpR">
    <property role="TrG5h" value="TSConsoleType" />
    <property role="EcuMT" value="8281127187734251692" />
    <node concept="PrWs8" id="4Ul7eGthLpS" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpT">
    <property role="TrG5h" value="TSConsole" />
    <property role="EcuMT" value="3145181163763065424" />
    <node concept="PrWs8" id="4Ul7eGthLpU" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpV">
    <property role="TrG5h" value="TSConsoleOp_Base" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="9164307796362968320" />
    <node concept="PrWs8" id="4Ul7eGthLpW" role="PzmwI">
      <ref role="PrY4T" node="1UjCfdjUYX2" resolve="TSIOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Ul7eGthLpX">
    <property role="TrG5h" value="TSConsoleOp_Log" />
    <property role="EcuMT" value="1856649162453200722" />
    <ref role="1TJDcQ" node="4Ul7eGthLpV" resolve="TSConsoleOp_Base" />
    <node concept="1TJgyj" id="4Ul7eGthLpY" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="IQ2ns" value="2591751422752546988" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="5YMdeQYNSu">
    <property role="EcuMT" value="1445413963760488782" />
    <property role="TrG5h" value="TSIBinaryLike" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSv">
    <property role="EcuMT" value="8373526123298530633" />
    <property role="TrG5h" value="TSNumberLiteral" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5YMdeQYNSw" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyi" id="5YMdeQYNSx" role="1TKVEl">
      <property role="IQ2nx" value="7606013538328487736" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSy">
    <property role="EcuMT" value="83412354109643915" />
    <property role="TrG5h" value="TSParenthesizedExpression" />
    <property role="34LRSv" value="(expr)" />
    <property role="R4oN_" value="parenthesis" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5YMdeQYNSz" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="5YMdeQYNS$" role="1TKVEi">
      <property role="IQ2ns" value="7350906890408026229" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5YMdeQYNS_">
    <property role="EcuMT" value="3894583660651454994" />
    <property role="TrG5h" value="TSBinaryOperation" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="&lt;?&gt;" />
    <property role="R4oN_" value="abstract binary operation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5YMdeQYNSA" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="PrWs8" id="5YMdeQYNSB" role="PzmwI">
      <ref role="PrY4T" node="5YMdeQYNSu" resolve="TSIBinaryLike" />
    </node>
    <node concept="1TJgyj" id="5YMdeQYNSC" role="1TKVEi">
      <property role="IQ2ns" value="5707686448369938903" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="leftExpression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="5YMdeQYNSD" role="1TKVEi">
      <property role="IQ2ns" value="7602522883118221103" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rightExpression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSE">
    <property role="EcuMT" value="6704462043861673507" />
    <property role="TrG5h" value="TSPlusExpression" />
    <property role="34LRSv" value="+" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSF">
    <property role="EcuMT" value="1507547570108522935" />
    <property role="TrG5h" value="TSMinusExpression" />
    <property role="34LRSv" value="-" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSG">
    <property role="EcuMT" value="317735058024221081" />
    <property role="TrG5h" value="TSMulExpression" />
    <property role="34LRSv" value="*" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSH">
    <property role="EcuMT" value="6812379895036577066" />
    <property role="TrG5h" value="TSDivExpression" />
    <property role="34LRSv" value="/" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="PlHQZ" id="5YMdeQYNSI">
    <property role="EcuMT" value="4291374753109167949" />
    <property role="TrG5h" value="TSIIncompleteParen" />
    <node concept="1TJgyi" id="5YMdeQYNSJ" role="1TKVEl">
      <property role="IQ2nx" value="3567944042883971429" />
      <property role="TrG5h" value="count" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSK">
    <property role="EcuMT" value="1382782322912190867" />
    <property role="TrG5h" value="TSIncompleteLeftParen" />
    <property role="34LRSv" value="(" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="5YMdeQYNSL" role="PzmwI">
      <ref role="PrY4T" node="5YMdeQYNSI" resolve="TSIIncompleteParen" />
    </node>
    <node concept="M6xJ_" id="5YMdeQZ4tV" role="lGtFl">
      <property role="Hh88m" value="incomplete left paren" />
      <node concept="tn0Fv" id="5YMdeQZ4tW" role="HhnKV" />
      <node concept="trNpa" id="5YMdeQZ4tX" role="EQaZv">
        <ref role="trN6q" node="1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSM">
    <property role="EcuMT" value="2240197384627242780" />
    <property role="TrG5h" value="TSIncompleteRightParen" />
    <property role="34LRSv" value=")" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="PrWs8" id="5YMdeQYNSN" role="PzmwI">
      <ref role="PrY4T" node="5YMdeQYNSI" resolve="TSIIncompleteParen" />
    </node>
    <node concept="M6xJ_" id="5YMdeQZ4tY" role="lGtFl">
      <property role="Hh88m" value="incomplete right paren" />
      <node concept="tn0Fv" id="5YMdeQZ4tZ" role="HhnKV" />
      <node concept="trNpa" id="5YMdeQZ4u0" role="EQaZv">
        <ref role="trN6q" node="1TCdlWHrFu$" resolve="TSIExpression" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5Xb8BFglYQ1">
    <property role="EcuMT" value="2282927104365302788" />
    <property role="TrG5h" value="TSTernaryOperatorExpression" />
    <property role="34LRSv" value="(expr) ? (expr) : expr" />
    <property role="R4oN_" value="ternary operator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5Xb8BFglYQ2" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="PrWs8" id="5Xb8BFglYQ3" role="PzmwI">
      <ref role="PrY4T" node="5YMdeQYNSu" resolve="TSIBinaryLike" />
    </node>
    <node concept="1TJgyj" id="5Xb8BFglYQ4" role="1TKVEi">
      <property role="IQ2ns" value="7687543187806104797" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="5Xb8BFglYQ5" role="1TKVEi">
      <property role="IQ2ns" value="7744661840340332174" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ifTrue" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="5Xb8BFglYQ6" role="1TKVEi">
      <property role="IQ2ns" value="4217550342683633468" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ifFalse" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5s1">
    <property role="EcuMT" value="6275768358144507624" />
    <property role="TrG5h" value="TSEqualsExpression" />
    <property role="34LRSv" value="==" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5ta">
    <property role="EcuMT" value="3472769636933287167" />
    <property role="TrG5h" value="TSBooleanType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5tb" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5um">
    <property role="EcuMT" value="7106926194277792125" />
    <property role="TrG5h" value="TSNumberType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5un" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5v$">
    <property role="EcuMT" value="5991954684290791457" />
    <property role="TrG5h" value="TSStringType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5v_" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
</model>

