<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:32eca46c-b913-4bca-b9f5-3b2c26c671f1(de.q60.mps.lang.typescript.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="2282927104365302788" name="de.q60.mps.lang.typescript.structure.TSTernaryOperatorExpression" flags="ng" index="0o88v">
        <child id="7744661840340332174" name="ifTrue" index="10ubTB" />
        <child id="4217550342683633468" name="ifFalse" index="3nuTyc" />
        <child id="7687543187806104797" name="condition" index="3y1SWh" />
      </concept>
      <concept id="5942537026495012038" name="de.q60.mps.lang.typescript.structure.TSMulAssignExpression" flags="ng" index="22FROQ" />
      <concept id="1507547570108522935" name="de.q60.mps.lang.typescript.structure.TSMinusExpression" flags="ng" index="2IocK" />
      <concept id="1140500669856697243" name="de.q60.mps.lang.typescript.structure.TSExponentAssignExpression" flags="ng" index="3d9ja" />
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
      <concept id="1571062397014420555" name="de.q60.mps.lang.typescript.structure.TSExpressionBody" flags="ng" index="bMiiA">
        <child id="7669103814434551014" name="expression" index="QAdmJ" />
      </concept>
      <concept id="1856649162453200722" name="de.q60.mps.lang.typescript.structure.TSConsoleOp_Log" flags="ng" index="2hi8J1">
        <child id="2591751422752546988" name="argument" index="3gGa23" />
      </concept>
      <concept id="8391732534571575383" name="de.q60.mps.lang.typescript.structure.TSDotExpression" flags="ng" index="hjOgg">
        <child id="439023831131999408" name="operation" index="CABlD" />
        <child id="7381226927831223239" name="operand" index="3DwI$f" />
      </concept>
      <concept id="519210219420976711" name="de.q60.mps.lang.typescript.structure.TSPrefixIncrementExpression" flags="ng" index="2joTMQ" />
      <concept id="5318128150707536103" name="de.q60.mps.lang.typescript.structure.TSLeftShiftAssignExpression" flags="ng" index="l84A7" />
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="8753009674359597755" name="de.q60.mps.lang.typescript.structure.TSVoidType" flags="ng" index="qIwln" />
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4951537840020102359" name="de.q60.mps.lang.typescript.structure.TSDivAssignExpression" flags="ng" index="qYJAT" />
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="5261423696657887118" name="de.q60.mps.lang.typescript.structure.TSUnaryMinusExpression" flags="ng" index="2t6vHR" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="6653327715734904214" name="de.q60.mps.lang.typescript.structure.TSUnsignedRightShiftAssignExpression" flags="ng" index="yXCfo" />
      <concept id="1336511613465215979" name="de.q60.mps.lang.typescript.structure.TSLogicalAndAssignExpression" flags="ng" index="$iRRg" />
      <concept id="1148579228915497614" name="de.q60.mps.lang.typescript.structure.TSNullLiteral" flags="ng" index="C5IwR" />
      <concept id="6957642462239564337" name="de.q60.mps.lang.typescript.structure.TSFunctionTypeParameter" flags="ng" index="2Fu235">
        <child id="5089302120831439094" name="declaredType" index="3cr0mA" />
      </concept>
      <concept id="4042126980422580726" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingExpression" flags="ng" index="2H1bN$" />
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="229562936135476531" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingAssignExpression" flags="ng" index="IRftP" />
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
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
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="5203292047127445673" name="de.q60.mps.lang.typescript.structure.TSUnaryOperation" flags="ng" index="V$4S_">
        <child id="1920165562965334341" name="expression" index="3CQlky" />
      </concept>
      <concept id="7113081857034482378" name="de.q60.mps.lang.typescript.structure.TSPostfixIncrementExpression" flags="ng" index="10p$M9" />
      <concept id="5386741445896491392" name="de.q60.mps.lang.typescript.structure.TSPostfixOperation" flags="ng" index="11ilPe">
        <child id="3230647348629920174" name="expression" index="2Psk$b" />
      </concept>
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="escapedValue" index="3b_9E9" />
      </concept>
      <concept id="3431481493934648401" name="de.q60.mps.lang.typescript.structure.TSPostfixDecrementExpression" flags="ng" index="34OzTH" />
      <concept id="3355733505089403539" name="de.q60.mps.lang.typescript.structure.TSAssignmentExpression" flags="ng" index="35aKX4" />
      <concept id="7168794925149236725" name="de.q60.mps.lang.typescript.structure.TSLogicalOrAssignExpression" flags="ng" index="36m03P" />
      <concept id="2552176483587294401" name="de.q60.mps.lang.typescript.structure.TSPropertyAssignment" flags="ng" index="17ea8W">
        <child id="5678931280796787468" name="initializer" index="hsbV_" />
      </concept>
      <concept id="9916445101189094" name="de.q60.mps.lang.typescript.structure.TSArrowFunction" flags="ng" index="1b$XOi">
        <child id="4933867365879096709" name="body" index="34pjIZ" />
      </concept>
      <concept id="5232066951734860421" name="de.q60.mps.lang.typescript.structure.TSBitwiseOrAssignExpression" flags="ng" index="1bETeD" />
      <concept id="8473436592292004310" name="de.q60.mps.lang.typescript.structure.TSMinusAssignExpression" flags="ng" index="3bMN1T" />
      <concept id="7517680150159072311" name="de.q60.mps.lang.typescript.structure.TSBitwiseXorAssignExpression" flags="ng" index="1dqbpN" />
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="7694618822963474221" name="de.q60.mps.lang.typescript.structure.TSModAssignExpression" flags="ng" index="1i3mww" />
      <concept id="3285196913916941830" name="de.q60.mps.lang.typescript.structure.TSPlusAssignExpression" flags="ng" index="3iFsGD" />
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="1940646736673164813" name="de.q60.mps.lang.typescript.structure.TSObjectType" flags="ng" index="3n0$7x">
        <child id="5485283431336319566" name="members" index="2XfbTT" />
      </concept>
      <concept id="4523838444874165896" name="de.q60.mps.lang.typescript.structure.TSUnionType" flags="ng" index="3pfgAg">
        <child id="4870825102337838263" name="types" index="3KvU$C" />
      </concept>
      <concept id="5495870994482695625" name="de.q60.mps.lang.typescript.structure.TSRightShiftAssignExpression" flags="ng" index="1pLGL4" />
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="2766191210374331012" name="de.q60.mps.lang.typescript.structure.TSIFunctionLike" flags="ngI" index="3ti0qV">
        <child id="2122589399313796228" name="returnType" index="jrNXk" />
        <child id="6735212671840276135" name="parameters" index="3qLSqq" />
      </concept>
      <concept id="6260345984398119061" name="de.q60.mps.lang.typescript.structure.TSTrueLiteral" flags="ng" index="1tXIsk" />
      <concept id="6565583381729432161" name="de.q60.mps.lang.typescript.structure.TSReturnStatement" flags="ng" index="3wbn4H">
        <child id="9210120436657261188" name="expression" index="qlm4T" />
      </concept>
      <concept id="3472769636933287167" name="de.q60.mps.lang.typescript.structure.TSBooleanType" flags="ng" index="3$6BPE" />
      <concept id="6275768358144507624" name="de.q60.mps.lang.typescript.structure.TSEqualsExpression" flags="ng" index="1CNJNU" />
      <concept id="1470766081798713625" name="de.q60.mps.lang.typescript.structure.TSPropertySignature" flags="ng" index="1D9KjG">
        <property id="6065535284884101344" name="isOptional" index="Cc4jk" />
        <child id="905576507103305314" name="declaredType" index="ahpXF" />
      </concept>
      <concept id="3288523768773114486" name="de.q60.mps.lang.typescript.structure.TSFunctionDeclaration" flags="ng" index="3Gxli7">
        <child id="6635070173404449213" name="body" index="1PAOym" />
      </concept>
      <concept id="2676595144476088988" name="de.q60.mps.lang.typescript.structure.TSVariableDeclaration" flags="ng" index="1Jbnu6">
        <child id="7603193039132759139" name="declaredType" index="19IeeE" />
        <child id="8956598854396892412" name="initializer" index="1bGQZ8" />
      </concept>
      <concept id="3284552453049428227" name="de.q60.mps.lang.typescript.structure.TSFalseLiteral" flags="ng" index="3JGNCe" />
      <concept id="3145181163763065424" name="de.q60.mps.lang.typescript.structure.TSConsole" flags="ng" index="3JZgZa" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24Z7zp" id="LRngVnQgjd">
    <property role="TrG5h" value="hello" />
    <node concept="3ja7nU" id="LRngVnQgje" role="1JIkAo">
      <node concept="hjOgg" id="5xjl6SV$pw" role="$a3P1">
        <node concept="3JZgZa" id="5xjl6SV$pz" role="3DwI$f" />
        <node concept="2hi8J1" id="5xjl6SV$p$" role="CABlD">
          <node concept="33xXhr" id="5xjl6SV$p_" role="3gGa23">
            <property role="3b_9E9" value="Hello, world!" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="DTPfQdiZrE">
    <property role="TrG5h" value="demo" />
    <node concept="3ja7nU" id="DTPfQdiZrF" role="1JIkAo">
      <node concept="hjOgg" id="DTPfQdiZrG" role="$a3P1">
        <node concept="3JZgZa" id="DTPfQdiZrH" role="3DwI$f" />
        <node concept="2hi8J1" id="DTPfQdiZrI" role="CABlD">
          <node concept="33xXhr" id="DTPfQdiZrJ" role="3gGa23">
            <property role="3b_9E9" value="Hello, world!" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5YMdeRclLm">
    <property role="TrG5h" value="math" />
    <node concept="3ja7nU" id="5YMdeRclLn" role="1JIkAo">
      <node concept="2o8mD1" id="5YMdeRclLp" role="$a3P1">
        <node concept="mk1J3" id="5YMdeRclLs" role="33kRt2">
          <node concept="24BhzH" id="5YMdeRclLv" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="pJsIj" id="5YMdeRclLw" role="GyX5B">
            <node concept="1rvuUm" id="5YMdeRclLy" role="3tJ$EF">
              <node concept="24BhzH" id="5YMdeRclL_" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="5YMdeRclLA" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="pJsIj" id="5YMdeRclLB" role="GyX5B">
          <node concept="2IocK" id="5YMdeRclLD" role="3tJ$EF">
            <node concept="24BhzH" id="5YMdeRclLG" role="33kRt2">
              <property role="2Hr5CV" value="4" />
            </node>
            <node concept="24BhzH" id="5YMdeRclLH" role="GyX5B">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="6WKYICG5UgJ" role="1JIkAo">
      <node concept="1rvuUm" id="6WKYICG5UgL" role="$a3P1">
        <node concept="mk1J3" id="6WKYICG5UgO" role="33kRt2">
          <node concept="24BhzH" id="6WKYICG5UgR" role="33kRt2">
            <property role="2Hr5CV" value="1.5" />
          </node>
          <node concept="24BhzH" id="6WKYICG5UgS" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5UgT" role="GyX5B">
          <property role="2Hr5CV" value="6.02e23" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5Xb8BFgqa8L">
    <property role="TrG5h" value="ternary" />
    <node concept="3ja7nU" id="5Xb8BFgqa8M" role="1JIkAo">
      <node concept="0o88v" id="5Xb8BFgqa8O" role="$a3P1">
        <node concept="1CNJNU" id="6WKYICFAJHl" role="3y1SWh">
          <node concept="1rvuUm" id="6WKYICFAJHo" role="33kRt2">
            <node concept="24BhzH" id="6WKYICFAJHr" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFAJHs" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFAJHt" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="mk1J3" id="5Xb8BFgqa8X" role="10ubTB">
          <node concept="24BhzH" id="5Xb8BFgqa90" role="33kRt2">
            <property role="2Hr5CV" value="3" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa91" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="0o88v" id="5Xb8BFgqa92" role="3nuTyc">
          <node concept="1CNJNU" id="6WKYICFAJHu" role="3y1SWh">
            <node concept="24BhzH" id="6WKYICFAJHx" role="33kRt2">
              <property role="2Hr5CV" value="5" />
            </node>
            <node concept="24BhzH" id="6WKYICFAJHy" role="GyX5B">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa97" role="10ubTB">
            <property role="2Hr5CV" value="6" />
          </node>
          <node concept="24BhzH" id="5Xb8BFgqa98" role="3nuTyc">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5Xb8BFgqa99" role="1JIkAo">
      <node concept="1rvuUm" id="5Xb8BFgqa9b" role="$a3P1">
        <node concept="pJsIj" id="5Xb8BFgqa9e" role="33kRt2">
          <node concept="0o88v" id="5Xb8BFgqa9g" role="3tJ$EF">
            <node concept="1CNJNU" id="6WKYICFAJHz" role="3y1SWh">
              <node concept="24BhzH" id="6WKYICFAJHA" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFAJHB" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
            <node concept="24BhzH" id="5Xb8BFgqa9l" role="10ubTB">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="5Xb8BFgqa9m" role="3nuTyc">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="5Xb8BFgqa9n" role="GyX5B">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="4R4WbZLIm68">
    <property role="TrG5h" value="equality" />
    <node concept="3ja7nU" id="4R4WbZLIm69" role="1JIkAo">
      <node concept="1CNJNU" id="6QS6LNOMnsy" role="$a3P1">
        <node concept="mk1J3" id="6QS6LNOMns_" role="33kRt2">
          <node concept="24BhzH" id="6QS6LNOMnsC" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="6QS6LNOMnsD" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="24BhzH" id="6QS6LNOMnsE" role="GyX5B">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="6QS6LNOMnsF" role="1JIkAo">
      <node concept="1CNJNU" id="6QS6LNOMnsH" role="$a3P1">
        <node concept="33xXhr" id="6QS6LNOMnsK" role="33kRt2">
          <property role="3b_9E9" value="a" />
        </node>
        <node concept="33xXhr" id="6QS6LNOMnsL" role="GyX5B">
          <property role="3b_9E9" value="a" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="6QS6LNPtLwe">
    <property role="TrG5h" value="escapes" />
    <node concept="3ja7nU" id="6QS6LNPtLwf" role="1JIkAo">
      <node concept="hjOgg" id="6QS6LNPtLwh" role="$a3P1">
        <node concept="3JZgZa" id="6QS6LNPtLwk" role="3DwI$f" />
        <node concept="2hi8J1" id="6QS6LNPtLwl" role="CABlD">
          <node concept="33xXhr" id="6QS6LNPtLwm" role="3gGa23">
            <property role="3b_9E9" value="a \&quot;quote\&quot;, a \\backslash and a\nnewline" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="6WKYICFNroW">
    <property role="TrG5h" value="declarations" />
    <node concept="2MuU66" id="6WKYICFNroX" role="1JIkAo">
      <property role="TrG5h" value="greeting" />
      <node concept="2Kh4GC" id="6WKYICFNroY" role="19IeeE" />
      <node concept="33xXhr" id="6WKYICFNroZ" role="1bGQZ8">
        <property role="3b_9E9" value="Hello, world!" />
      </node>
    </node>
    <node concept="2swglJ" id="6WKYICFNrp0" role="1JIkAo">
      <property role="TrG5h" value="counter" />
      <node concept="24BhzH" id="6WKYICFNrp1" role="1bGQZ8">
        <property role="2Hr5CV" value="0" />
      </node>
    </node>
    <node concept="3ja7nU" id="1dYSrZvz9ah" role="1JIkAo">
      <node concept="35aKX4" id="1dYSrZvz9ag" role="$a3P1">
        <node concept="2v$HdM" id="6WKYICFNrp5" role="33kRt2">
          <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
        </node>
        <node concept="1rvuUm" id="6WKYICFNrp6" role="GyX5B">
          <node concept="2v$HdM" id="6WKYICFNrp9" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
          </node>
          <node concept="24BhzH" id="6WKYICFNrpa" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Oct9B" id="6WKYICFNrpb" role="1JIkAo">
      <node concept="1CNJNU" id="6WKYICFNrpe" role="18F3B4">
        <node concept="2v$HdM" id="6WKYICFNrph" role="33kRt2">
          <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
        </node>
        <node concept="24BhzH" id="6WKYICFNrpi" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="qYD23" id="6WKYICFNrpj" role="12avcn">
        <node concept="3ja7nU" id="6WKYICFNrpk" role="6EW52">
          <node concept="hjOgg" id="6WKYICFNrpm" role="$a3P1">
            <node concept="3JZgZa" id="6WKYICFNrpp" role="3DwI$f" />
            <node concept="2hi8J1" id="6WKYICFNrpq" role="CABlD">
              <node concept="2v$HdM" id="6WKYICFNrpr" role="3gGa23">
                <ref role="2oxrr9" node="6WKYICFNroX" resolve="greeting" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ILWLb" id="6WKYICFNrps" role="1X4dzr">
        <node concept="1CNJNU" id="6WKYICFNrpv" role="1usCvQ">
          <node concept="2v$HdM" id="6WKYICFNrpy" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
          </node>
          <node concept="24BhzH" id="6WKYICFNrpz" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFNrp$" role="1TBx7Y">
          <node concept="2MuU66" id="6WKYICFNrp_" role="6EW52">
            <property role="TrG5h" value="twice" />
            <node concept="mk1J3" id="6WKYICFNrpA" role="1bGQZ8">
              <node concept="2v$HdM" id="6WKYICFNrpD" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
              </node>
              <node concept="24BhzH" id="6WKYICFNrpE" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
          <node concept="3ja7nU" id="6WKYICFNrpF" role="6EW52">
            <node concept="hjOgg" id="6WKYICFNrpH" role="$a3P1">
              <node concept="3JZgZa" id="6WKYICFNrpK" role="3DwI$f" />
              <node concept="2hi8J1" id="6WKYICFNrpL" role="CABlD">
                <node concept="2v$HdM" id="6WKYICFNrpM" role="3gGa23">
                  <ref role="2oxrr9" node="6WKYICFNrp_" resolve="twice" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="qYD23" id="6WKYICFNrpN" role="2uaaIR">
        <node concept="3ja7nU" id="6WKYICFNrpO" role="6EW52">
          <node concept="hjOgg" id="6WKYICFNrpQ" role="$a3P1">
            <node concept="3JZgZa" id="6WKYICFNrpT" role="3DwI$f" />
            <node concept="2hi8J1" id="6WKYICFNrpU" role="CABlD">
              <node concept="33xXhr" id="6WKYICFNrpV" role="3gGa23">
                <property role="3b_9E9" value="neither" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5TZAFSUwUpx">
    <property role="TrG5h" value="nullish" />
    <node concept="2swglJ" id="5TZAFSUwUpy" role="1JIkAo">
      <property role="TrG5h" value="nullable" />
      <node concept="3pfgAg" id="5TZAFSUwUpz" role="19IeeE">
        <node concept="2UUy$f" id="5TZAFSUwUp$" role="3KvU$C" />
        <node concept="1ku6r5" id="5TZAFSUwUp_" role="3KvU$C" />
      </node>
      <node concept="C5IwR" id="5TZAFSUwUpA" role="1bGQZ8" />
    </node>
    <node concept="3ja7nU" id="1dYSrZvz9aj" role="1JIkAo">
      <node concept="35aKX4" id="1dYSrZvz9ai" role="$a3P1">
        <node concept="2v$HdM" id="5TZAFSUwUpE" role="33kRt2">
          <ref role="2oxrr9" node="5TZAFSUwUpy" resolve="nullable" />
        </node>
        <node concept="24BhzH" id="5TZAFSUwUpF" role="GyX5B">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5TZAFSUwUpG" role="1JIkAo">
      <property role="TrG5h" value="missing" />
      <node concept="3OJVyd" id="5TZAFSUwUpH" role="19IeeE" />
      <node concept="2OeDxu" id="5TZAFSUwUpI" role="1bGQZ8" />
    </node>
    <node concept="3ja7nU" id="5TZAFSUwUpJ" role="1JIkAo">
      <node concept="hjOgg" id="5TZAFSUwUpL" role="$a3P1">
        <node concept="3JZgZa" id="5TZAFSUwUpO" role="3DwI$f" />
        <node concept="2hi8J1" id="5TZAFSUwUpP" role="CABlD">
          <node concept="2H1bN$" id="5TZAFSUwUpQ" role="3gGa23">
            <node concept="2v$HdM" id="5TZAFSUwUpT" role="33kRt2">
              <ref role="2oxrr9" node="5TZAFSUwUpy" resolve="nullable" />
            </node>
            <node concept="24BhzH" id="5TZAFSUwUpU" role="GyX5B">
              <property role="2Hr5CV" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="30$vFIOsR3c">
    <property role="TrG5h" value="arrays" />
    <node concept="2swglJ" id="30$vFIOsR3d" role="1JIkAo">
      <property role="TrG5h" value="names" />
      <node concept="3pfgAg" id="30$vFIOsR3e" role="19IeeE">
        <node concept="29s1Bg" id="30$vFIOsR3f" role="3KvU$C">
          <node concept="2Kh4GC" id="30$vFIOsR3h" role="2XRTOt" />
        </node>
        <node concept="3OJVyd" id="30$vFIOsR3i" role="3KvU$C" />
      </node>
      <node concept="2OeDxu" id="30$vFIOsR3j" role="1bGQZ8" />
    </node>
    <node concept="2swglJ" id="30$vFIOsR3k" role="1JIkAo">
      <property role="TrG5h" value="mixed" />
      <node concept="3pfgAg" id="30$vFIOsR3l" role="19IeeE">
        <node concept="29s1Bg" id="30$vFIOsR3m" role="3KvU$C">
          <node concept="3pfgAg" id="30$vFIOsR3o" role="2XRTOt">
            <node concept="1ku6r5" id="30$vFIOsR3p" role="3KvU$C" />
            <node concept="2Kh4GC" id="30$vFIOsR3q" role="3KvU$C" />
          </node>
        </node>
        <node concept="2UUy$f" id="30$vFIOsR3r" role="3KvU$C" />
      </node>
      <node concept="C5IwR" id="30$vFIOsR3s" role="1bGQZ8" />
    </node>
    <node concept="2swglJ" id="30$vFIOsR3t" role="1JIkAo">
      <property role="TrG5h" value="grid" />
      <node concept="3pfgAg" id="30$vFIOsR3u" role="19IeeE">
        <node concept="29s1Bg" id="30$vFIOsR3v" role="3KvU$C">
          <node concept="29s1Bg" id="30$vFIOsR3x" role="2XRTOt">
            <node concept="1ku6r5" id="30$vFIOsR3z" role="2XRTOt" />
          </node>
        </node>
        <node concept="2UUy$f" id="30$vFIOsR3$" role="3KvU$C" />
      </node>
      <node concept="C5IwR" id="30$vFIOsR3_" role="1bGQZ8" />
    </node>
    <node concept="3ja7nU" id="30$vFIOsR3A" role="1JIkAo">
      <node concept="hjOgg" id="30$vFIOsR3C" role="$a3P1">
        <node concept="3JZgZa" id="30$vFIOsR3F" role="3DwI$f" />
        <node concept="2hi8J1" id="30$vFIOsR3G" role="CABlD">
          <node concept="2H1bN$" id="30$vFIOsR3H" role="3gGa23">
            <node concept="2v$HdM" id="30$vFIOsR3K" role="33kRt2">
              <ref role="2oxrr9" node="30$vFIOsR3d" resolve="names" />
            </node>
            <node concept="33xXhr" id="30$vFIOsR3L" role="GyX5B">
              <property role="3b_9E9" value="none" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="30$vFIOsR3M" role="1JIkAo">
      <node concept="hjOgg" id="30$vFIOsR3O" role="$a3P1">
        <node concept="3JZgZa" id="30$vFIOsR3R" role="3DwI$f" />
        <node concept="2hi8J1" id="30$vFIOsR3S" role="CABlD">
          <node concept="2H1bN$" id="30$vFIOsR3T" role="3gGa23">
            <node concept="2v$HdM" id="30$vFIOsR3W" role="33kRt2">
              <ref role="2oxrr9" node="30$vFIOsR3k" resolve="mixed" />
            </node>
            <node concept="33xXhr" id="30$vFIOsR3X" role="GyX5B">
              <property role="3b_9E9" value="none" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="30$vFIOsR3Y" role="1JIkAo">
      <node concept="hjOgg" id="30$vFIOsR40" role="$a3P1">
        <node concept="3JZgZa" id="30$vFIOsR43" role="3DwI$f" />
        <node concept="2hi8J1" id="30$vFIOsR44" role="CABlD">
          <node concept="2H1bN$" id="30$vFIOsR45" role="3gGa23">
            <node concept="2v$HdM" id="30$vFIOsR48" role="33kRt2">
              <ref role="2oxrr9" node="30$vFIOsR3t" resolve="grid" />
            </node>
            <node concept="33xXhr" id="30$vFIOsR49" role="GyX5B">
              <property role="3b_9E9" value="none" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="465JEkTqYfp">
    <property role="TrG5h" value="functions" />
    <node concept="3Gxli7" id="465JEkTqYfq" role="1JIkAo">
      <property role="TrG5h" value="double" />
      <node concept="SCM_e" id="465JEkTqYfs" role="3qLSqq">
        <property role="TrG5h" value="value" />
        <node concept="1ku6r5" id="465JEkTqYfu" role="2xFk6U" />
      </node>
      <node concept="1ku6r5" id="465JEkTqYfv" role="jrNXk" />
      <node concept="qYD23" id="465JEkTqYfw" role="1PAOym">
        <node concept="3wbn4H" id="465JEkTqYfx" role="6EW52">
          <node concept="mk1J3" id="465JEkTqYfy" role="qlm4T">
            <node concept="2v$HdM" id="465JEkTqYf_" role="33kRt2">
              <ref role="2oxrr9" node="465JEkTqYfs" resolve="value" />
            </node>
            <node concept="24BhzH" id="465JEkTqYfA" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Gxli7" id="465JEkTqYkR" role="1JIkAo">
      <property role="TrG5h" value="greet" />
      <node concept="qIwln" id="465JEkTqYkT" role="jrNXk" />
      <node concept="qYD23" id="465JEkTqYkU" role="1PAOym">
        <node concept="3ja7nU" id="465JEkTqYkV" role="6EW52">
          <node concept="hjOgg" id="465JEkTqYkX" role="$a3P1">
            <node concept="3JZgZa" id="465JEkTqYl0" role="3DwI$f" />
            <node concept="2hi8J1" id="465JEkTqYl1" role="CABlD">
              <node concept="33xXhr" id="465JEkTqYl2" role="3gGa23">
                <property role="3b_9E9" value="hi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Gxli7" id="465JEkTFElP" role="1JIkAo">
      <property role="TrG5h" value="label" />
      <node concept="SCM_e" id="465JEkTFElR" role="3qLSqq">
        <property role="TrG5h" value="text" />
        <node concept="2Kh4GC" id="465JEkTFElT" role="2xFk6U" />
      </node>
      <node concept="SCM_e" id="465JEkTFElU" role="3qLSqq">
        <property role="TrG5h" value="prefix" />
        <node concept="2Kh4GC" id="465JEkTFElW" role="2xFk6U" />
        <node concept="33xXhr" id="465JEkTFElX" role="1ciTpo">
          <property role="3b_9E9" value="&gt; " />
        </node>
      </node>
      <node concept="2Kh4GC" id="465JEkTFElY" role="jrNXk" />
      <node concept="qYD23" id="465JEkTFElZ" role="1PAOym">
        <node concept="3wbn4H" id="465JEkTFEm0" role="6EW52">
          <node concept="1rvuUm" id="465JEkTFEm1" role="qlm4T">
            <node concept="2v$HdM" id="465JEkTFEm4" role="33kRt2">
              <ref role="2oxrr9" node="465JEkTFElU" resolve="prefix" />
            </node>
            <node concept="2v$HdM" id="465JEkTFEm5" role="GyX5B">
              <ref role="2oxrr9" node="465JEkTFElR" resolve="text" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Gxli7" id="465JEkTFEm6" role="1JIkAo">
      <property role="TrG5h" value="maybeName" />
      <node concept="SCM_e" id="465JEkTFEm8" role="3qLSqq">
        <property role="35kMex" value="true" />
        <property role="TrG5h" value="name" />
        <node concept="2Kh4GC" id="465JEkTFEma" role="2xFk6U" />
      </node>
      <node concept="3pfgAg" id="465JEkTFEmb" role="jrNXk">
        <node concept="2Kh4GC" id="465JEkTFEmc" role="3KvU$C" />
        <node concept="3OJVyd" id="465JEkTFEmd" role="3KvU$C" />
      </node>
      <node concept="qYD23" id="465JEkTFEme" role="1PAOym">
        <node concept="3wbn4H" id="465JEkTFEmf" role="6EW52">
          <node concept="2v$HdM" id="465JEkTFEmg" role="qlm4T">
            <ref role="2oxrr9" node="465JEkTFEm8" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Gxli7" id="465JEkTFEmh" role="1JIkAo">
      <property role="TrG5h" value="firstOrZero" />
      <node concept="SCM_e" id="465JEkTFEmj" role="3qLSqq">
        <property role="1d60j6" value="true" />
        <property role="TrG5h" value="values" />
        <node concept="29s1Bg" id="465JEkTFEml" role="2xFk6U">
          <node concept="1ku6r5" id="465JEkTFEmn" role="2XRTOt" />
        </node>
      </node>
      <node concept="1ku6r5" id="465JEkTFEmo" role="jrNXk" />
      <node concept="qYD23" id="465JEkTFEmp" role="1PAOym">
        <node concept="3wbn4H" id="465JEkTFEmq" role="6EW52">
          <node concept="24BhzH" id="465JEkTFEmr" role="qlm4T">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEms" role="1JIkAo">
      <node concept="hjOgg" id="465JEkTFEmu" role="$a3P1">
        <node concept="3JZgZa" id="465JEkTFEmx" role="3DwI$f" />
        <node concept="2hi8J1" id="465JEkTFEmy" role="CABlD">
          <node concept="2R1OvL" id="465JEkTFEmz" role="3gGa23">
            <node concept="2v$HdM" id="465JEkTFEm_" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTqYfq" resolve="double" />
            </node>
            <node concept="24BhzH" id="465JEkTFEmA" role="DTHKp">
              <property role="2Hr5CV" value="21" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEmB" role="1JIkAo">
      <node concept="2R1OvL" id="465JEkTFEmD" role="$a3P1">
        <node concept="2v$HdM" id="465JEkTFEmF" role="3yUXHQ">
          <ref role="2oxrr9" node="465JEkTqYkR" resolve="greet" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEmG" role="1JIkAo">
      <node concept="hjOgg" id="465JEkTFEmI" role="$a3P1">
        <node concept="3JZgZa" id="465JEkTFEmL" role="3DwI$f" />
        <node concept="2hi8J1" id="465JEkTFEmM" role="CABlD">
          <node concept="2R1OvL" id="465JEkTFEmN" role="3gGa23">
            <node concept="2v$HdM" id="465JEkTFEmP" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTFElP" resolve="label" />
            </node>
            <node concept="33xXhr" id="465JEkTFEmQ" role="DTHKp">
              <property role="3b_9E9" value="with the default prefix" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEmR" role="1JIkAo">
      <node concept="hjOgg" id="465JEkTFEmT" role="$a3P1">
        <node concept="3JZgZa" id="465JEkTFEmW" role="3DwI$f" />
        <node concept="2hi8J1" id="465JEkTFEmX" role="CABlD">
          <node concept="2R1OvL" id="465JEkTFEmY" role="3gGa23">
            <node concept="2v$HdM" id="465JEkTFEn0" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTFElP" resolve="label" />
            </node>
            <node concept="33xXhr" id="465JEkTFEn1" role="DTHKp">
              <property role="3b_9E9" value="with one of its own" />
            </node>
            <node concept="33xXhr" id="465JEkTFEn2" role="DTHKp">
              <property role="3b_9E9" value="* " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEn3" role="1JIkAo">
      <node concept="hjOgg" id="465JEkTFEn5" role="$a3P1">
        <node concept="3JZgZa" id="465JEkTFEn8" role="3DwI$f" />
        <node concept="2hi8J1" id="465JEkTFEn9" role="CABlD">
          <node concept="2R1OvL" id="465JEkTFEna" role="3gGa23">
            <node concept="2v$HdM" id="465JEkTFEnc" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTFEm6" resolve="maybeName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="465JEkTFEnd" role="1JIkAo">
      <node concept="hjOgg" id="465JEkTFEnf" role="$a3P1">
        <node concept="3JZgZa" id="465JEkTFEni" role="3DwI$f" />
        <node concept="2hi8J1" id="465JEkTFEnj" role="CABlD">
          <node concept="2R1OvL" id="465JEkTFEnk" role="3gGa23">
            <node concept="2v$HdM" id="465JEkTFEnm" role="3yUXHQ">
              <ref role="2oxrr9" node="465JEkTFEmh" resolve="firstOrZero" />
            </node>
            <node concept="24BhzH" id="465JEkTFEnn" role="DTHKp">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="465JEkTFEno" role="DTHKp">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="465JEkTFEnp" role="DTHKp">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5OpYk6foWuS">
    <property role="TrG5h" value="arrows" />
    <node concept="2MuU66" id="5OpYk6foWuT" role="1JIkAo">
      <property role="TrG5h" value="double" />
      <node concept="3MZLnu" id="5OpYk6foWuU" role="19IeeE">
        <node concept="2Fu235" id="5OpYk6foWuW" role="2thRFd">
          <property role="TrG5h" value="a" />
          <node concept="1ku6r5" id="5OpYk6foWuY" role="3cr0mA" />
        </node>
        <node concept="1ku6r5" id="5OpYk6foWuZ" role="19PnrX" />
      </node>
      <node concept="1b$XOi" id="5OpYk6foWv0" role="1bGQZ8">
        <node concept="SCM_e" id="5OpYk6foWv2" role="3qLSqq">
          <property role="TrG5h" value="value" />
          <node concept="1ku6r5" id="5OpYk6foWv4" role="2xFk6U" />
        </node>
        <node concept="bMiiA" id="5OpYk6foWv5" role="34pjIZ">
          <node concept="mk1J3" id="5OpYk6foWv7" role="QAdmJ">
            <node concept="2v$HdM" id="5OpYk6foWva" role="33kRt2">
              <ref role="2oxrr9" node="5OpYk6foWv2" resolve="value" />
            </node>
            <node concept="24BhzH" id="5OpYk6foWvb" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6foWvc" role="1JIkAo">
      <property role="TrG5h" value="shout" />
      <node concept="1b$XOi" id="5OpYk6foWvd" role="1bGQZ8">
        <node concept="SCM_e" id="5OpYk6foWvf" role="3qLSqq">
          <property role="TrG5h" value="text" />
          <node concept="2Kh4GC" id="5OpYk6foWvh" role="2xFk6U" />
        </node>
        <node concept="2Kh4GC" id="5OpYk6foWvi" role="jrNXk" />
        <node concept="qYD23" id="5OpYk6foWvj" role="34pjIZ">
          <node concept="3wbn4H" id="5OpYk6foWvk" role="6EW52">
            <node concept="1rvuUm" id="5OpYk6foWvl" role="qlm4T">
              <node concept="2v$HdM" id="5OpYk6foWvo" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6foWvf" resolve="text" />
              </node>
              <node concept="33xXhr" id="5OpYk6foWvp" role="GyX5B">
                <property role="3b_9E9" value="!" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Gxli7" id="5OpYk6foWvq" role="1JIkAo">
      <property role="TrG5h" value="applyTwice" />
      <node concept="SCM_e" id="5OpYk6foWvs" role="3qLSqq">
        <property role="TrG5h" value="operation" />
        <node concept="3MZLnu" id="5OpYk6foWvu" role="2xFk6U">
          <node concept="2Fu235" id="5OpYk6foWvw" role="2thRFd">
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="5OpYk6foWvy" role="3cr0mA" />
          </node>
          <node concept="1ku6r5" id="5OpYk6foWvz" role="19PnrX" />
        </node>
      </node>
      <node concept="SCM_e" id="5OpYk6foWv$" role="3qLSqq">
        <property role="TrG5h" value="start" />
        <node concept="1ku6r5" id="5OpYk6foWvA" role="2xFk6U" />
      </node>
      <node concept="1ku6r5" id="5OpYk6foWvB" role="jrNXk" />
      <node concept="qYD23" id="5OpYk6foWvC" role="1PAOym">
        <node concept="3wbn4H" id="5OpYk6foWvD" role="6EW52">
          <node concept="2R1OvL" id="5OpYk6foWvE" role="qlm4T">
            <node concept="2v$HdM" id="5OpYk6foWvG" role="3yUXHQ">
              <ref role="2oxrr9" node="5OpYk6foWvs" resolve="operation" />
            </node>
            <node concept="2R1OvL" id="5OpYk6foWvH" role="DTHKp">
              <node concept="2v$HdM" id="5OpYk6foWvJ" role="3yUXHQ">
                <ref role="2oxrr9" node="5OpYk6foWvs" resolve="operation" />
              </node>
              <node concept="2v$HdM" id="5OpYk6foWvK" role="DTHKp">
                <ref role="2oxrr9" node="5OpYk6foWv$" resolve="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6foWvL" role="1JIkAo">
      <node concept="hjOgg" id="5OpYk6foWvN" role="$a3P1">
        <node concept="3JZgZa" id="5OpYk6foWvQ" role="3DwI$f" />
        <node concept="2hi8J1" id="5OpYk6foWvR" role="CABlD">
          <node concept="2R1OvL" id="5OpYk6foWvS" role="3gGa23">
            <node concept="2v$HdM" id="5OpYk6foWvU" role="3yUXHQ">
              <ref role="2oxrr9" node="5OpYk6foWuT" resolve="double" />
            </node>
            <node concept="24BhzH" id="5OpYk6foWvV" role="DTHKp">
              <property role="2Hr5CV" value="21" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6foWvW" role="1JIkAo">
      <node concept="hjOgg" id="5OpYk6foWvY" role="$a3P1">
        <node concept="3JZgZa" id="5OpYk6foWw1" role="3DwI$f" />
        <node concept="2hi8J1" id="5OpYk6foWw2" role="CABlD">
          <node concept="2R1OvL" id="5OpYk6foWw3" role="3gGa23">
            <node concept="2v$HdM" id="5OpYk6foWw5" role="3yUXHQ">
              <ref role="2oxrr9" node="5OpYk6foWvc" resolve="shout" />
            </node>
            <node concept="33xXhr" id="5OpYk6foWw6" role="DTHKp">
              <property role="3b_9E9" value="hey" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6foWw7" role="1JIkAo">
      <node concept="hjOgg" id="5OpYk6foWw9" role="$a3P1">
        <node concept="3JZgZa" id="5OpYk6foWwc" role="3DwI$f" />
        <node concept="2hi8J1" id="5OpYk6foWwd" role="CABlD">
          <node concept="2R1OvL" id="5OpYk6foWwe" role="3gGa23">
            <node concept="2v$HdM" id="5OpYk6foWwg" role="3yUXHQ">
              <ref role="2oxrr9" node="5OpYk6foWvq" resolve="applyTwice" />
            </node>
            <node concept="1b$XOi" id="5OpYk6foWwh" role="DTHKp">
              <node concept="SCM_e" id="5OpYk6foWwj" role="3qLSqq">
                <property role="TrG5h" value="n" />
                <node concept="1ku6r5" id="5OpYk6foWwl" role="2xFk6U" />
              </node>
              <node concept="bMiiA" id="5OpYk6foWwm" role="34pjIZ">
                <node concept="1rvuUm" id="5OpYk6foWwo" role="QAdmJ">
                  <node concept="2v$HdM" id="5OpYk6foWwr" role="33kRt2">
                    <ref role="2oxrr9" node="5OpYk6foWwj" resolve="n" />
                  </node>
                  <node concept="24BhzH" id="5OpYk6foWws" role="GyX5B">
                    <property role="2Hr5CV" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="5OpYk6foWwt" role="DTHKp">
              <property role="2Hr5CV" value="40" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5OpYk6fzXth">
    <property role="TrG5h" value="compound" />
    <node concept="2swglJ" id="5OpYk6fzXti" role="1JIkAo">
      <property role="TrG5h" value="total" />
      <node concept="1ku6r5" id="5OpYk6fzXtj" role="19IeeE" />
      <node concept="24BhzH" id="5OpYk6fzXtk" role="1bGQZ8">
        <property role="2Hr5CV" value="10" />
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXtl" role="1JIkAo">
      <node concept="3iFsGD" id="5OpYk6fzXtn" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtq" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXtr" role="GyX5B">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXts" role="1JIkAo">
      <node concept="3bMN1T" id="5OpYk6fzXtu" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtx" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXty" role="GyX5B">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXtz" role="1JIkAo">
      <node concept="22FROQ" id="5OpYk6fzXt_" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtC" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXtD" role="GyX5B">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXtE" role="1JIkAo">
      <node concept="qYJAT" id="5OpYk6fzXtG" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtJ" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXtK" role="GyX5B">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXtL" role="1JIkAo">
      <node concept="1i3mww" id="5OpYk6fzXtN" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtQ" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXtR" role="GyX5B">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXtS" role="1JIkAo">
      <node concept="3d9ja" id="5OpYk6fzXtU" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXtX" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXtY" role="GyX5B">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fzXtZ" role="1JIkAo">
      <property role="TrG5h" value="bits" />
      <node concept="1ku6r5" id="5OpYk6fzXu0" role="19IeeE" />
      <node concept="24BhzH" id="5OpYk6fzXu1" role="1bGQZ8">
        <property role="2Hr5CV" value="12" />
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXu2" role="1JIkAo">
      <node concept="2NVYov" id="5OpYk6fzXu4" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXu7" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXu8" role="GyX5B">
          <property role="2Hr5CV" value="10" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXu9" role="1JIkAo">
      <node concept="1bETeD" id="5OpYk6fzXub" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXue" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXuf" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXug" role="1JIkAo">
      <node concept="1dqbpN" id="5OpYk6fzXui" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXul" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXum" role="GyX5B">
          <property role="2Hr5CV" value="6" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXun" role="1JIkAo">
      <node concept="l84A7" id="5OpYk6fzXup" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXus" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXut" role="GyX5B">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXuu" role="1JIkAo">
      <node concept="1pLGL4" id="5OpYk6fzXuw" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXuz" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXu$" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXu_" role="1JIkAo">
      <node concept="yXCfo" id="5OpYk6fzXuB" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXuE" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXtZ" resolve="bits" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXuF" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fzXuG" role="1JIkAo">
      <property role="TrG5h" value="text" />
      <node concept="2Kh4GC" id="5OpYk6fzXuH" role="19IeeE" />
      <node concept="33xXhr" id="5OpYk6fzXuI" role="1bGQZ8">
        <property role="3b_9E9" value="a" />
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXuJ" role="1JIkAo">
      <node concept="3iFsGD" id="5OpYk6fzXuL" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXuO" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXuG" resolve="text" />
        </node>
        <node concept="33xXhr" id="5OpYk6fzXuP" role="GyX5B">
          <property role="3b_9E9" value="b" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXuQ" role="1JIkAo">
      <node concept="3iFsGD" id="5OpYk6fzXuS" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXuV" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXuG" resolve="text" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXuW" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fzXuX" role="1JIkAo">
      <property role="TrG5h" value="flag" />
      <node concept="3$6BPE" id="5OpYk6fzXuY" role="19IeeE" />
      <node concept="27A9uT" id="5OpYk6fzXuZ" role="1bGQZ8">
        <node concept="2v$HdM" id="5OpYk6fzXv2" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXti" resolve="total" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXv3" role="GyX5B">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXv4" role="1JIkAo">
      <node concept="$iRRg" id="5OpYk6fzXv6" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXv9" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXuX" resolve="flag" />
        </node>
        <node concept="3JGNCe" id="5OpYk6fzXva" role="GyX5B" />
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXvb" role="1JIkAo">
      <node concept="36m03P" id="5OpYk6fzXvd" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXvg" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXuX" resolve="flag" />
        </node>
        <node concept="1tXIsk" id="5OpYk6fzXvh" role="GyX5B" />
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fzXvi" role="1JIkAo">
      <property role="TrG5h" value="maybe" />
      <node concept="3pfgAg" id="5OpYk6fzXvj" role="19IeeE">
        <node concept="2UUy$f" id="5OpYk6fzXvk" role="3KvU$C" />
        <node concept="1ku6r5" id="5OpYk6fzXvl" role="3KvU$C" />
      </node>
      <node concept="C5IwR" id="5OpYk6fzXvm" role="1bGQZ8" />
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXvn" role="1JIkAo">
      <node concept="IRftP" id="5OpYk6fzXvp" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fzXvs" role="33kRt2">
          <ref role="2oxrr9" node="5OpYk6fzXvi" resolve="maybe" />
        </node>
        <node concept="24BhzH" id="5OpYk6fzXvt" role="GyX5B">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fzXvu" role="1JIkAo">
      <node concept="hjOgg" id="5OpYk6fzXvw" role="$a3P1">
        <node concept="3JZgZa" id="5OpYk6fzXvz" role="3DwI$f" />
        <node concept="2hi8J1" id="5OpYk6fzXv$" role="CABlD">
          <node concept="2v$HdM" id="5OpYk6fzXv_" role="3gGa23">
            <ref role="2oxrr9" node="5OpYk6fzXvi" resolve="maybe" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5OpYk6fEEBq">
    <property role="TrG5h" value="increments" />
    <node concept="2swglJ" id="5OpYk6fEEBr" role="1JIkAo">
      <property role="TrG5h" value="i" />
      <node concept="1ku6r5" id="5OpYk6fEEBs" role="19IeeE" />
      <node concept="24BhzH" id="5OpYk6fEEBt" role="1bGQZ8">
        <property role="2Hr5CV" value="0" />
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fEEBu" role="1JIkAo">
      <node concept="2joTMQ" id="5OpYk6fEEBw" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fEEBy" role="3CQlky">
          <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fEEBz" role="1JIkAo">
      <node concept="10p$M9" id="5OpYk6fEEB_" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fEEBB" role="2Psk$b">
          <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fEEBC" role="1JIkAo">
      <node concept="3LUO1K" id="5OpYk6fEEBE" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fEEBG" role="3CQlky">
          <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fEEBH" role="1JIkAo">
      <node concept="34OzTH" id="5OpYk6fEEBJ" role="$a3P1">
        <node concept="2v$HdM" id="5OpYk6fEEBL" role="2Psk$b">
          <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fEEBM" role="1JIkAo">
      <property role="TrG5h" value="spaced" />
      <node concept="1ku6r5" id="5OpYk6fEEBN" role="19IeeE" />
      <node concept="2t6vHR" id="5OpYk6fEEBO" role="1bGQZ8">
        <node concept="3LUO1K" id="5OpYk6fEEBQ" role="3CQlky">
          <node concept="2v$HdM" id="5OpYk6fEEBS" role="3CQlky">
            <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fEEBT" role="1JIkAo">
      <property role="TrG5h" value="tighter" />
      <node concept="1ku6r5" id="5OpYk6fEEBU" role="19IeeE" />
      <node concept="2t6vHR" id="5OpYk6fEEBV" role="1bGQZ8">
        <node concept="10p$M9" id="5OpYk6fEEBX" role="3CQlky">
          <node concept="2v$HdM" id="5OpYk6fEEBZ" role="2Psk$b">
            <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fEEC0" role="1JIkAo">
      <property role="TrG5h" value="sum" />
      <node concept="1ku6r5" id="5OpYk6fEEC1" role="19IeeE" />
      <node concept="1rvuUm" id="5OpYk6fEEC2" role="1bGQZ8">
        <node concept="10p$M9" id="5OpYk6fEEC5" role="33kRt2">
          <node concept="2v$HdM" id="5OpYk6fEEC7" role="2Psk$b">
            <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
          </node>
        </node>
        <node concept="2joTMQ" id="5OpYk6fEEC8" role="GyX5B">
          <node concept="2v$HdM" id="5OpYk6fEECa" role="3CQlky">
            <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2swglJ" id="5OpYk6fEECb" role="1JIkAo">
      <property role="TrG5h" value="grouped" />
      <node concept="1ku6r5" id="5OpYk6fEECc" role="19IeeE" />
      <node concept="10p$M9" id="5OpYk6fEECd" role="1bGQZ8">
        <node concept="pJsIj" id="5OpYk6fEECf" role="2Psk$b">
          <node concept="2v$HdM" id="5OpYk6fEECh" role="3tJ$EF">
            <ref role="2oxrr9" node="5OpYk6fEEBr" resolve="i" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3ja7nU" id="5OpYk6fEECi" role="1JIkAo">
      <node concept="hjOgg" id="5OpYk6fEECk" role="$a3P1">
        <node concept="3JZgZa" id="5OpYk6fEECn" role="3DwI$f" />
        <node concept="2hi8J1" id="5OpYk6fEECo" role="CABlD">
          <node concept="2v$HdM" id="5OpYk6fEECp" role="3gGa23">
            <ref role="2oxrr9" node="5OpYk6fEEC0" resolve="sum" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5OpYk6fMSDo">
    <property role="TrG5h" value="objects" />
    <node concept="2MuU66" id="5OpYk6fMSDp" role="1JIkAo">
      <property role="TrG5h" value="point" />
      <node concept="3n0$7x" id="5OpYk6fMSDq" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fMSDr" role="2XfbTT">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="5OpYk6fMSDt" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="5OpYk6fMSDu" role="2XfbTT">
          <property role="TrG5h" value="y" />
          <node concept="1ku6r5" id="5OpYk6fMSDw" role="ahpXF" />
        </node>
      </node>
      <node concept="2R1HYX" id="5OpYk6fMSDx" role="1bGQZ8">
        <node concept="17ea8W" id="5OpYk6fMSDy" role="1hgjXh">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="5OpYk6fMSD$" role="hsbV_">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="17ea8W" id="5OpYk6fMSD_" role="1hgjXh">
          <property role="TrG5h" value="y" />
          <node concept="24BhzH" id="5OpYk6fMSDB" role="hsbV_">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fMSDC" role="1JIkAo">
      <property role="TrG5h" value="labelled" />
      <node concept="2R1HYX" id="5OpYk6fMSDD" role="1bGQZ8">
        <node concept="17ea8W" id="5OpYk6fMSDE" role="1hgjXh">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="5OpYk6fMSDG" role="hsbV_">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="17ea8W" id="5OpYk6fMSDH" role="1hgjXh">
          <property role="TrG5h" value="y" />
          <node concept="24BhzH" id="5OpYk6fMSDJ" role="hsbV_">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="17ea8W" id="5OpYk6fMSDK" role="1hgjXh">
          <property role="TrG5h" value="label" />
          <node concept="33xXhr" id="5OpYk6fMSDM" role="hsbV_">
            <property role="3b_9E9" value="here" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fMSDN" role="1JIkAo">
      <property role="TrG5h" value="wider" />
      <node concept="3n0$7x" id="5OpYk6fMSDO" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fMSDP" role="2XfbTT">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="5OpYk6fMSDR" role="ahpXF" />
        </node>
      </node>
      <node concept="2v$HdM" id="5OpYk6fMSDS" role="1bGQZ8">
        <ref role="2oxrr9" node="5OpYk6fMSDC" resolve="labelled" />
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fMSDT" role="1JIkAo">
      <property role="TrG5h" value="optionalMember" />
      <node concept="3n0$7x" id="5OpYk6fMSDU" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fMSDV" role="2XfbTT">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="5OpYk6fMSDX" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="5OpYk6fMSDY" role="2XfbTT">
          <property role="TrG5h" value="note" />
          <property role="Cc4jk" value="true" />
          <node concept="2Kh4GC" id="5OpYk6fMSE0" role="ahpXF" />
        </node>
      </node>
      <node concept="2v$HdM" id="5OpYk6fMSE1" role="1bGQZ8">
        <ref role="2oxrr9" node="5OpYk6fMSDp" resolve="point" />
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fMSE2" role="1JIkAo">
      <property role="TrG5h" value="nested" />
      <node concept="3n0$7x" id="5OpYk6fMSE3" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fMSE4" role="2XfbTT">
          <property role="TrG5h" value="origin" />
          <node concept="3n0$7x" id="5OpYk6fMSE6" role="ahpXF">
            <node concept="1D9KjG" id="5OpYk6fMSE7" role="2XfbTT">
              <property role="TrG5h" value="x" />
              <node concept="1ku6r5" id="5OpYk6fMSE9" role="ahpXF" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2R1HYX" id="5OpYk6fMSEa" role="1bGQZ8">
        <node concept="17ea8W" id="5OpYk6fMSEb" role="1hgjXh">
          <property role="TrG5h" value="origin" />
          <node concept="2v$HdM" id="5OpYk6fMSEd" role="hsbV_">
            <ref role="2oxrr9" node="5OpYk6fMSDp" resolve="point" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fMSEe" role="1JIkAo">
      <property role="TrG5h" value="empty" />
      <node concept="3n0$7x" id="5OpYk6fMSEf" role="19IeeE" />
      <node concept="2R1HYX" id="5OpYk6fMSEg" role="1bGQZ8" />
    </node>
    <node concept="2swglJ" id="5OpYk6fMSEh" role="1JIkAo">
      <property role="TrG5h" value="callbacks" />
      <node concept="3n0$7x" id="5OpYk6fMSEi" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fMSEj" role="2XfbTT">
          <property role="TrG5h" value="onDone" />
          <node concept="3MZLnu" id="5OpYk6fMSEl" role="ahpXF">
            <node concept="2Fu235" id="5OpYk6fMSEn" role="2thRFd">
              <property role="TrG5h" value="value" />
              <node concept="1ku6r5" id="5OpYk6fMSEp" role="3cr0mA" />
            </node>
            <node concept="qIwln" id="5OpYk6fMSEq" role="19PnrX" />
          </node>
        </node>
      </node>
      <node concept="2R1HYX" id="5OpYk6fMSEr" role="1bGQZ8">
        <node concept="17ea8W" id="5OpYk6fMSEs" role="1hgjXh">
          <property role="TrG5h" value="onDone" />
          <node concept="1b$XOi" id="5OpYk6fMSEu" role="hsbV_">
            <node concept="SCM_e" id="5OpYk6fMSEx" role="3qLSqq">
              <property role="TrG5h" value="v" />
              <node concept="1ku6r5" id="5OpYk6fMSEy" role="2xFk6U" />
            </node>
            <node concept="bMiiA" id="5OpYk6fMSEz" role="34pjIZ">
              <node concept="2v$HdM" id="5OpYk6fMSE_" role="QAdmJ">
                <ref role="2oxrr9" node="5OpYk6fMSEx" resolve="v" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24Z7zp" id="5OpYk6fTUYn">
    <property role="TrG5h" value="members" />
    <node concept="2MuU66" id="5OpYk6fTUYo" role="1JIkAo">
      <property role="TrG5h" value="point" />
      <node concept="3n0$7x" id="5OpYk6fTUYp" role="19IeeE">
        <node concept="1D9KjG" id="5OpYk6fTUYq" role="2XfbTT">
          <property role="TrG5h" value="x" />
          <node concept="1ku6r5" id="5OpYk6fTUYs" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="5OpYk6fTUYt" role="2XfbTT">
          <property role="TrG5h" value="label" />
          <property role="Cc4jk" value="true" />
          <node concept="2Kh4GC" id="5OpYk6fTUYv" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="5OpYk6fTUYw" role="2XfbTT">
          <property role="TrG5h" value="shift" />
          <node concept="3MZLnu" id="5OpYk6fTUYy" role="ahpXF">
            <node concept="2Fu235" id="5OpYk6fTUY$" role="2thRFd">
              <property role="TrG5h" value="by" />
              <node concept="1ku6r5" id="5OpYk6fTUYA" role="3cr0mA" />
            </node>
            <node concept="1ku6r5" id="5OpYk6fTUYB" role="19PnrX" />
          </node>
        </node>
      </node>
      <node concept="2R1HYX" id="5OpYk6fTUYC" role="1bGQZ8">
        <node concept="17ea8W" id="5OpYk6fTUYD" role="1hgjXh">
          <property role="TrG5h" value="x" />
          <node concept="24BhzH" id="5OpYk6fTUYF" role="hsbV_">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="17ea8W" id="5OpYk6fTUYG" role="1hgjXh">
          <property role="TrG5h" value="shift" />
          <node concept="1b$XOi" id="5OpYk6fTUYI" role="hsbV_">
            <node concept="SCM_e" id="5OpYk6fTUYL" role="3qLSqq">
              <property role="TrG5h" value="by" />
              <node concept="1ku6r5" id="5OpYk6fTUYM" role="2xFk6U" />
            </node>
            <node concept="bMiiA" id="5OpYk6fTUYN" role="34pjIZ">
              <node concept="2v$HdM" id="5OpYk6fTUYP" role="QAdmJ">
                <ref role="2oxrr9" node="5OpYk6fTUYL" resolve="by" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fTUYQ" role="1JIkAo">
      <property role="TrG5h" value="sum" />
      <node concept="1ku6r5" id="5OpYk6fTUYR" role="19IeeE" />
      <node concept="1rvuUm" id="5OpYk6fTUYS" role="1bGQZ8">
        <node concept="SU78L" id="5OpYk6fTUYV" role="33kRt2">
          <property role="2nSurL" value="x" />
          <node concept="2v$HdM" id="5OpYk6fTUYX" role="2Bgfcn">
            <ref role="2oxrr9" node="5OpYk6fTUYo" resolve="point" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTUYY" role="GyX5B">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fTUYZ" role="1JIkAo">
      <property role="TrG5h" value="maybeLabel" />
      <node concept="3pfgAg" id="5OpYk6fTUZ0" role="19IeeE">
        <node concept="2Kh4GC" id="5OpYk6fTUZ1" role="3KvU$C" />
        <node concept="3OJVyd" id="5OpYk6fTUZ2" role="3KvU$C" />
      </node>
      <node concept="SU78L" id="5OpYk6fTUZ3" role="1bGQZ8">
        <property role="2nSurL" value="label" />
        <node concept="2v$HdM" id="5OpYk6fTUZ5" role="2Bgfcn">
          <ref role="2oxrr9" node="5OpYk6fTUYo" resolve="point" />
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fTUZ6" role="1JIkAo">
      <property role="TrG5h" value="shifted" />
      <node concept="1ku6r5" id="5OpYk6fTUZ7" role="19IeeE" />
      <node concept="2R1OvL" id="5OpYk6fTUZ8" role="1bGQZ8">
        <node concept="SU78L" id="5OpYk6fTUZa" role="3yUXHQ">
          <property role="2nSurL" value="shift" />
          <node concept="2v$HdM" id="5OpYk6fTUZc" role="2Bgfcn">
            <ref role="2oxrr9" node="5OpYk6fTUYo" resolve="point" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTUZd" role="DTHKp">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="2MuU66" id="5OpYk6fTUZe" role="1JIkAo">
      <property role="TrG5h" value="chained" />
      <node concept="1ku6r5" id="5OpYk6fTUZf" role="19IeeE" />
      <node concept="SU78L" id="5OpYk6fTUZg" role="1bGQZ8">
        <property role="2nSurL" value="x" />
        <node concept="SU78L" id="5OpYk6fTUZi" role="2Bgfcn">
          <property role="2nSurL" value="origin" />
          <node concept="2R1HYX" id="5OpYk6fTUZk" role="2Bgfcn">
            <node concept="17ea8W" id="5OpYk6fTUZl" role="1hgjXh">
              <property role="TrG5h" value="origin" />
              <node concept="2v$HdM" id="5OpYk6fTUZn" role="hsbV_">
                <ref role="2oxrr9" node="5OpYk6fTUYo" resolve="point" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

