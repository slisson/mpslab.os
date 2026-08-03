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
      <concept id="1507547570108522935" name="de.q60.mps.lang.typescript.structure.TSMinusExpression" flags="ng" index="2IocK" />
      <concept id="8373526123298530633" name="de.q60.mps.lang.typescript.structure.TSNumberLiteral" flags="ng" index="24BhzH">
        <property id="7606013538328487736" name="value" index="2Hr5CV" />
      </concept>
      <concept id="2596016207932595749" name="de.q60.mps.lang.typescript.structure.TSModule" flags="ng" index="24Z7zp">
        <child id="906924707476882095" name="statements" index="1JIkAo" />
      </concept>
      <concept id="5273689272520536483" name="de.q60.mps.lang.typescript.structure.TSArrayType" flags="ng" index="29s1Bg">
        <child id="8144558156267705696" name="elementType" index="2XRTOt" />
      </concept>
      <concept id="1856649162453200722" name="de.q60.mps.lang.typescript.structure.TSConsoleOp_Log" flags="ng" index="2hi8J1">
        <child id="2591751422752546988" name="argument" index="3gGa23" />
      </concept>
      <concept id="8391732534571575383" name="de.q60.mps.lang.typescript.structure.TSDotExpression" flags="ng" index="hjOgg">
        <child id="439023831131999408" name="operation" index="CABlD" />
        <child id="7381226927831223239" name="operand" index="3DwI$f" />
      </concept>
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="1148579228915497614" name="de.q60.mps.lang.typescript.structure.TSNullLiteral" flags="ng" index="C5IwR" />
      <concept id="4042126980422580726" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingExpression" flags="ng" index="2H1bN$" />
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
      <concept id="8023700100379537636" name="de.q60.mps.lang.typescript.structure.TSUndefinedLiteral" flags="ng" index="2OeDxu" />
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="value" index="3b_9E9" />
      </concept>
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="7259284324402748763" name="de.q60.mps.lang.typescript.structure.TSExpressionStatement" flags="ng" index="3ja7nU">
        <child id="3951472244529450579" name="expression" index="$a3P1" />
      </concept>
      <concept id="7106926194277792125" name="de.q60.mps.lang.typescript.structure.TSNumberType" flags="ng" index="1ku6r5" />
      <concept id="902545861387718385" name="de.q60.mps.lang.typescript.structure.TSAssignmentStatement" flags="ng" index="3p1v9s">
        <child id="488639419388104298" name="target" index="219B2s" />
        <child id="834448770786422024" name="expression" index="1IqeeO" />
      </concept>
      <concept id="4523838444874165896" name="de.q60.mps.lang.typescript.structure.TSUnionType" flags="ng" index="3pfgAg">
        <child id="4870825102337838263" name="types" index="3KvU$C" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="6275768358144507624" name="de.q60.mps.lang.typescript.structure.TSEqualsExpression" flags="ng" index="1CNJNU" />
      <concept id="2676595144476088988" name="de.q60.mps.lang.typescript.structure.TSVariableDeclaration" flags="ng" index="1Jbnu6">
        <child id="7603193039132759139" name="declaredType" index="19IeeE" />
        <child id="8956598854396892412" name="initializer" index="1bGQZ8" />
      </concept>
      <concept id="3145181163763065424" name="de.q60.mps.lang.typescript.structure.TSConsole" flags="ng" index="3JZgZa" />
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
            <property role="3b_9E9" value="a &quot;quote&quot;, a \backslash and a&#10;newline" />
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
    <node concept="3p1v9s" id="6WKYICFNrp2" role="1JIkAo">
      <node concept="2v$HdM" id="6WKYICFNrp5" role="219B2s">
        <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
      </node>
      <node concept="1rvuUm" id="6WKYICFNrp6" role="1IqeeO">
        <node concept="2v$HdM" id="6WKYICFNrp9" role="33kRt2">
          <ref role="2oxrr9" node="6WKYICFNrp0" resolve="counter" />
        </node>
        <node concept="24BhzH" id="6WKYICFNrpa" role="GyX5B">
          <property role="2Hr5CV" value="1" />
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
    <node concept="3p1v9s" id="5TZAFSUwUpB" role="1JIkAo">
      <node concept="2v$HdM" id="5TZAFSUwUpE" role="219B2s">
        <ref role="2oxrr9" node="5TZAFSUwUpy" resolve="nullable" />
      </node>
      <node concept="24BhzH" id="5TZAFSUwUpF" role="1IqeeO">
        <property role="2Hr5CV" value="42" />
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
</model>

