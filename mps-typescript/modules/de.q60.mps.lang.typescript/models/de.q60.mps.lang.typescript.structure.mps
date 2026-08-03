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
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
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
    <node concept="PrWs8" id="6WKYICFF5dR" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
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
    <node concept="1TJgyj" id="6WKYICFF5zd" role="1TKVEi">
      <property role="IQ2ns" value="7745766023969360865" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6WKYICFF5f7" resolve="TSIDeclaration" />
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
    <property role="R4oN_" value="an expression with a syntactic left and/or right side" />
    <node concept="PrWs8" id="6WKYICGl6Ib" role="PrDN$">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
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
      <ref role="AX2Wp" node="6WKYICG4pvG" resolve="TSNumberValue" />
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
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSF">
    <property role="EcuMT" value="1507547570108522935" />
    <property role="TrG5h" value="TSMinusExpression" />
    <property role="34LRSv" value="-" />
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSG">
    <property role="EcuMT" value="317735058024221081" />
    <property role="TrG5h" value="TSMulExpression" />
    <property role="34LRSv" value="*" />
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
  </node>
  <node concept="1TIwiD" id="5YMdeQYNSH">
    <property role="EcuMT" value="6812379895036577066" />
    <property role="TrG5h" value="TSDivExpression" />
    <property role="34LRSv" value="/" />
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
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
    <ref role="1TJDcQ" node="6WKYICGTM1y" resolve="TSEqualityOperation" />
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5ta">
    <property role="EcuMT" value="3472769636933287167" />
    <property role="TrG5h" value="TSBooleanType" />
    <property role="34LRSv" value="boolean" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5tb" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5um">
    <property role="EcuMT" value="7106926194277792125" />
    <property role="TrG5h" value="TSNumberType" />
    <property role="34LRSv" value="number" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5un" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4R4WbZLH5v$">
    <property role="EcuMT" value="5991954684290791457" />
    <property role="TrG5h" value="TSStringType" />
    <property role="34LRSv" value="string" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4R4WbZLH5v_" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="PlHQZ" id="6WKYICFF5f7">
    <property role="EcuMT" value="9084739418922119906" />
    <property role="TrG5h" value="TSIDeclaration" />
    <node concept="PrWs8" id="6WKYICFF5f8" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFF5gs">
    <property role="EcuMT" value="8640047791204011315" />
    <property role="TrG5h" value="TSBlock" />
    <property role="34LRSv" value="{}" />
    <property role="R4oN_" value="block" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICFF5gt" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="PrWs8" id="6WKYICFF5gu" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5gv" role="1TKVEi">
      <property role="IQ2ns" value="7935308623531745380" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFF5hS">
    <property role="EcuMT" value="2676595144476088988" />
    <property role="TrG5h" value="TSVariableDeclaration" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="variable declaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICFF5hT" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="PrWs8" id="6WKYICFF5hU" role="PzmwI">
      <ref role="PrY4T" node="6WKYICFF5f7" resolve="TSIDeclaration" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5hV" role="1TKVEi">
      <property role="IQ2ns" value="7603193039132759139" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="declaredType" />
      <ref role="20lvS9" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5hW" role="1TKVEi">
      <property role="IQ2ns" value="8956598854396892412" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializer" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFF5jm">
    <property role="EcuMT" value="4306270926879848440" />
    <property role="TrG5h" value="TSLetDeclaration" />
    <property role="34LRSv" value="let" />
    <ref role="1TJDcQ" node="6WKYICFF5hS" resolve="TSVariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="6WKYICFF5kL">
    <property role="EcuMT" value="4715308568151819694" />
    <property role="TrG5h" value="TSConstDeclaration" />
    <property role="34LRSv" value="const" />
    <ref role="1TJDcQ" node="6WKYICFF5hS" resolve="TSVariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="6WKYICFF5md">
    <property role="EcuMT" value="4182053541792754620" />
    <property role="TrG5h" value="TSVarDeclaration" />
    <property role="34LRSv" value="var" />
    <ref role="1TJDcQ" node="6WKYICFF5hS" resolve="TSVariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="6WKYICFF5nG">
    <property role="EcuMT" value="3720627991746027321" />
    <property role="TrG5h" value="TSElseIfClause" />
    <property role="34LRSv" value="else if" />
    <property role="R4oN_" value="else-if clause" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6WKYICFF5nH" role="1TKVEi">
      <property role="IQ2ns" value="4391307923817728188" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5nI" role="1TKVEi">
      <property role="IQ2ns" value="1792031550624269005" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="block" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6WKYICFF5gs" resolve="TSBlock" />
    </node>
    <node concept="PrWs8" id="6WKYICGeLM6" role="PzmwI">
      <ref role="PrY4T" node="6WKYICGeLHG" resolve="TSITrailingChildOwner" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFF5pj">
    <property role="EcuMT" value="1786862727331701833" />
    <property role="TrG5h" value="TSIfStatement" />
    <property role="34LRSv" value="if" />
    <property role="R4oN_" value="if statement" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICFF5pk" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5pl" role="1TKVEi">
      <property role="IQ2ns" value="264280299738157132" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5pm" role="1TKVEi">
      <property role="IQ2ns" value="6415352913453783659" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="thenBlock" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6WKYICFF5gs" resolve="TSBlock" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5pn" role="1TKVEi">
      <property role="IQ2ns" value="2578765457793828190" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elseIfClauses" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6WKYICFF5nG" resolve="TSElseIfClause" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5po" role="1TKVEi">
      <property role="IQ2ns" value="186330115020247543" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elseBlock" />
      <ref role="20lvS9" node="6WKYICFF5gs" resolve="TSBlock" />
    </node>
    <node concept="PrWs8" id="6WKYICGeLKc" role="PzmwI">
      <ref role="PrY4T" node="6WKYICGeLHG" resolve="TSITrailingChildOwner" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICFF5r1">
    <property role="EcuMT" value="902545861387718385" />
    <property role="TrG5h" value="TSAssignmentStatement" />
    <property role="34LRSv" value="=" />
    <property role="R4oN_" value="assignment" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICFF5r2" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFuz" resolve="TSIStatement" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5r3" role="1TKVEi">
      <property role="IQ2ns" value="488639419388104298" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1UjCfdjUYX7" resolve="TSIdentifier" />
    </node>
    <node concept="1TJgyj" id="6WKYICFF5r4" role="1TKVEi">
      <property role="IQ2ns" value="834448770786422024" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="Az7Fb" id="6WKYICG4pvG">
    <property role="3F6X1D" value="8012179620760754156" />
    <property role="FLfZY" value="-?(0[xX][0-9a-fA-F_]*n?|0[bB][01_]*n?|0[oO][0-7_]*n?|[0-9][0-9_]*n|([0-9][0-9_]*([.][0-9_]*)?|[.][0-9][0-9_]*)([eE][-+]?[0-9_]*)?n?)" />
    <property role="TrG5h" value="TSNumberValue" />
  </node>
  <node concept="PlHQZ" id="6WKYICGeLHG">
    <property role="EcuMT" value="237373411153851389" />
    <property role="TrG5h" value="TSITrailingChildOwner" />
    <property role="R4oN_" value="a construct whose notation ends with one of its children" />
  </node>
  <node concept="1TIwiD" id="6WKYICGl6K7">
    <property role="EcuMT" value="4112825962079110083" />
    <property role="TrG5h" value="TSExponentExpression" />
    <property role="34LRSv" value="**" />
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGq2yd">
    <property role="EcuMT" value="5203292047127445673" />
    <property role="TrG5h" value="TSUnaryOperation" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="&lt;?&gt;" />
    <property role="R4oN_" value="abstract prefix unary operation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICGq2ye" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="PrWs8" id="6WKYICGq2yf" role="PzmwI">
      <ref role="PrY4T" node="5YMdeQYNSu" resolve="TSIBinaryLike" />
    </node>
    <node concept="1TJgyj" id="6WKYICGq2yg" role="1TKVEi">
      <property role="IQ2ns" value="1920165562965334341" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICGq2$h">
    <property role="EcuMT" value="2450593264803086893" />
    <property role="TrG5h" value="TSNotExpression" />
    <property role="34LRSv" value="!" />
    <property role="R4oN_" value="logical not" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGq2Aj">
    <property role="EcuMT" value="5261423696657887118" />
    <property role="TrG5h" value="TSUnaryMinusExpression" />
    <property role="34LRSv" value="-" />
    <property role="R4oN_" value="unary minus" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGq2C9">
    <property role="EcuMT" value="9084056344319210901" />
    <property role="TrG5h" value="TSUnaryPlusExpression" />
    <property role="34LRSv" value="+" />
    <property role="R4oN_" value="unary plus" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4wB">
    <property role="EcuMT" value="8935702142937456039" />
    <property role="TrG5h" value="TSModExpression" />
    <property role="34LRSv" value="%" />
    <ref role="1TJDcQ" node="6WKYICGTLWY" resolve="TSArithmeticOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4yG">
    <property role="EcuMT" value="7652281983549135489" />
    <property role="TrG5h" value="TSLessThanExpression" />
    <property role="34LRSv" value="&lt;" />
    <ref role="1TJDcQ" node="6WKYICGTLZ9" resolve="TSComparisonOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4$_">
    <property role="EcuMT" value="2363935850608653464" />
    <property role="TrG5h" value="TSGreaterThanExpression" />
    <property role="34LRSv" value="&gt;" />
    <ref role="1TJDcQ" node="6WKYICGTLZ9" resolve="TSComparisonOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4AG">
    <property role="EcuMT" value="3854543600690315319" />
    <property role="TrG5h" value="TSLessThanOrEqualsExpression" />
    <property role="34LRSv" value="&lt;=" />
    <ref role="1TJDcQ" node="6WKYICGTLZ9" resolve="TSComparisonOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4CB">
    <property role="EcuMT" value="1249726736402875518" />
    <property role="TrG5h" value="TSGreaterThanOrEqualsExpression" />
    <property role="34LRSv" value="&gt;=" />
    <ref role="1TJDcQ" node="6WKYICGTLZ9" resolve="TSComparisonOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4EK">
    <property role="EcuMT" value="8712758610826896388" />
    <property role="TrG5h" value="TSInExpression" />
    <property role="34LRSv" value="in" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4GU">
    <property role="EcuMT" value="3149544303132428410" />
    <property role="TrG5h" value="TSNotEqualsExpression" />
    <property role="34LRSv" value="!=" />
    <ref role="1TJDcQ" node="6WKYICGTM1y" resolve="TSEqualityOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4IS">
    <property role="EcuMT" value="7893345815834438480" />
    <property role="TrG5h" value="TSStrictEqualsExpression" />
    <property role="34LRSv" value="===" />
    <ref role="1TJDcQ" node="6WKYICGTM1y" resolve="TSEqualityOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4KR">
    <property role="EcuMT" value="1686735314819989884" />
    <property role="TrG5h" value="TSStrictNotEqualsExpression" />
    <property role="34LRSv" value="!==" />
    <ref role="1TJDcQ" node="6WKYICGTM1y" resolve="TSEqualityOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4N4">
    <property role="EcuMT" value="3676654959372615760" />
    <property role="TrG5h" value="TSLogicalAndExpression" />
    <property role="34LRSv" value="&amp;&amp;" />
    <ref role="1TJDcQ" node="6WKYICGTM3J" resolve="TSLogicalOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4Pi">
    <property role="EcuMT" value="3372963032200918088" />
    <property role="TrG5h" value="TSLogicalOrExpression" />
    <property role="34LRSv" value="||" />
    <ref role="1TJDcQ" node="6WKYICGTM3J" resolve="TSLogicalOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4Rx">
    <property role="EcuMT" value="4042126980422580726" />
    <property role="TrG5h" value="TSNullishCoalescingExpression" />
    <property role="34LRSv" value="??" />
    <ref role="1TJDcQ" node="6WKYICGTM3J" resolve="TSLogicalOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4T$">
    <property role="EcuMT" value="168856877714170834" />
    <property role="TrG5h" value="TSBitwiseAndExpression" />
    <property role="34LRSv" value="&amp;" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4VP">
    <property role="EcuMT" value="1480981823278437632" />
    <property role="TrG5h" value="TSBitwiseOrExpression" />
    <property role="34LRSv" value="|" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS4XU">
    <property role="EcuMT" value="6852763229296375794" />
    <property role="TrG5h" value="TSBitwiseXorExpression" />
    <property role="34LRSv" value="^" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS50d">
    <property role="EcuMT" value="8939379926891817692" />
    <property role="TrG5h" value="TSLeftShiftExpression" />
    <property role="34LRSv" value="&lt;&lt;" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS52k">
    <property role="EcuMT" value="4892061089786907168" />
    <property role="TrG5h" value="TSRightShiftExpression" />
    <property role="34LRSv" value="&gt;&gt;" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS54D">
    <property role="EcuMT" value="4462294479766427379" />
    <property role="TrG5h" value="TSUnsignedRightShiftExpression" />
    <property role="34LRSv" value="&gt;&gt;&gt;" />
    <ref role="1TJDcQ" node="6WKYICGTM6a" resolve="TSBitwiseOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGS56Z">
    <property role="EcuMT" value="885131696144140641" />
    <property role="TrG5h" value="TSCommaExpression" />
    <property role="34LRSv" value="," />
    <property role="R4oN_" value="sequence operator" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGTLWY">
    <property role="EcuMT" value="7421060654160589687" />
    <property role="TrG5h" value="TSArithmeticOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract arithmetic operation" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGTLZ9">
    <property role="EcuMT" value="5322107188779025524" />
    <property role="TrG5h" value="TSComparisonOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract ordering comparison" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGTM1y">
    <property role="EcuMT" value="2469291474651366481" />
    <property role="TrG5h" value="TSEqualityOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract equality comparison" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGTM3J">
    <property role="EcuMT" value="244976765362443984" />
    <property role="TrG5h" value="TSLogicalOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract short-circuiting operation" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGTM6a">
    <property role="EcuMT" value="7116416067177086511" />
    <property role="TrG5h" value="TSBitwiseOperation" />
    <property role="R5$K7" value="true" />
    <property role="R4oN_" value="abstract bitwise operation" />
    <ref role="1TJDcQ" node="5YMdeQYNS_" resolve="TSBinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGUW4_">
    <property role="EcuMT" value="3620359941814459762" />
    <property role="TrG5h" value="TSBitwiseNotExpression" />
    <property role="34LRSv" value="~" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGUW72">
    <property role="EcuMT" value="3854180306267379657" />
    <property role="TrG5h" value="TSTypeofExpression" />
    <property role="34LRSv" value="typeof" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGUW9j">
    <property role="EcuMT" value="4387831483603896369" />
    <property role="TrG5h" value="TSVoidExpression" />
    <property role="34LRSv" value="void" />
    <ref role="1TJDcQ" node="6WKYICGq2yd" resolve="TSUnaryOperation" />
  </node>
  <node concept="1TIwiD" id="6WKYICGXUWw">
    <property role="EcuMT" value="3070560246356573576" />
    <property role="TrG5h" value="TSBooleanLiteral" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="&lt;?&gt;" />
    <property role="R4oN_" value="abstract boolean literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICGXUWx" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICGXUYP">
    <property role="EcuMT" value="6260345984398119061" />
    <property role="TrG5h" value="TSTrueLiteral" />
    <property role="34LRSv" value="true" />
    <ref role="1TJDcQ" node="6WKYICGXUWw" resolve="TSBooleanLiteral" />
  </node>
  <node concept="1TIwiD" id="6WKYICGXV1n">
    <property role="EcuMT" value="3284552453049428227" />
    <property role="TrG5h" value="TSFalseLiteral" />
    <property role="34LRSv" value="false" />
    <ref role="1TJDcQ" node="6WKYICGXUWw" resolve="TSBooleanLiteral" />
  </node>
  <node concept="1TIwiD" id="6WKYICGZscX">
    <property role="EcuMT" value="1480635482070849035" />
    <property role="TrG5h" value="TSTemplateSpan" />
    <property role="R4oN_" value="an interpolation and the text that follows it" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6WKYICGZscY" role="1TKVEl">
      <property role="IQ2nx" value="6377797546063508848" />
      <property role="TrG5h" value="tail" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6WKYICGZscZ" role="1TKVEi">
      <property role="IQ2ns" value="954812604092234846" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICGZsfC">
    <property role="EcuMT" value="7021042242623486884" />
    <property role="TrG5h" value="TSTemplateLiteral" />
    <property role="34LRSv" value="`" />
    <property role="R4oN_" value="template literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICGZsfD" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
    <node concept="1TJgyi" id="6WKYICGZsfE" role="1TKVEl">
      <property role="IQ2nx" value="1331468974520002934" />
      <property role="TrG5h" value="head" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6WKYICGZsfF" role="1TKVEi">
      <property role="IQ2ns" value="912235450054412245" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="spans" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6WKYICGZscX" resolve="TSTemplateSpan" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICH1a85">
    <property role="EcuMT" value="2894647882240095206" />
    <property role="TrG5h" value="TSNullType" />
    <property role="34LRSv" value="null" />
    <property role="R4oN_" value="null type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICH1a86" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICH1aaA">
    <property role="EcuMT" value="5086057359599138485" />
    <property role="TrG5h" value="TSUndefinedType" />
    <property role="34LRSv" value="undefined" />
    <property role="R4oN_" value="undefined type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICH1aaB" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICH1adn">
    <property role="EcuMT" value="4523838444874165896" />
    <property role="TrG5h" value="TSUnionType" />
    <property role="34LRSv" value="|" />
    <property role="R4oN_" value="union type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICH1ado" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
    <node concept="1TJgyj" id="6WKYICH1adp" role="1TKVEi">
      <property role="IQ2ns" value="4870825102337838263" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="types" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="6WKYICH1afZ">
    <property role="EcuMT" value="5273689272520536483" />
    <property role="TrG5h" value="TSArrayType" />
    <property role="34LRSv" value="[]" />
    <property role="R4oN_" value="array type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6WKYICH1ag0" role="PzmwI">
      <ref role="PrY4T" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
    <node concept="1TJgyj" id="6WKYICH1ag1" role="1TKVEi">
      <property role="IQ2ns" value="8144558156267705696" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elementType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Ul7eGthLpQ" resolve="TSIType" />
    </node>
  </node>
  <node concept="1TIwiD" id="5TZAFSUs1Ds">
    <property role="EcuMT" value="1148579228915497614" />
    <property role="TrG5h" value="TSNullLiteral" />
    <property role="34LRSv" value="null" />
    <property role="R4oN_" value="null literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5TZAFSUs1Dt" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5TZAFSUs1G7">
    <property role="EcuMT" value="8023700100379537636" />
    <property role="TrG5h" value="TSUndefinedLiteral" />
    <property role="34LRSv" value="undefined" />
    <property role="R4oN_" value="undefined literal" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5TZAFSUs1G8" role="PzmwI">
      <ref role="PrY4T" node="1TCdlWHrFu$" resolve="TSIExpression" />
    </node>
  </node>
</model>

