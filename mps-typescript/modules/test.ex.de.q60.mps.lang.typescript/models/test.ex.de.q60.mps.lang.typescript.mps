<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1f63df8-2f97-4afe-aab5-5d1cb10edbe3(test.ex.de.q60.mps.lang.typescript)">
  <persistence version="9" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
    <use id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest" version="0" />
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
      <concept id="885131696144140641" name="de.q60.mps.lang.typescript.structure.TSCommaExpression" flags="ng" index="24ldvR" />
      <concept id="168856877714170834" name="de.q60.mps.lang.typescript.structure.TSBitwiseAndExpression" flags="ng" index="24nKmX" />
      <concept id="8373526123298530633" name="de.q60.mps.lang.typescript.structure.TSNumberLiteral" flags="ng" index="24BhzH">
        <property id="7606013538328487736" name="value" index="2Hr5CV" />
      </concept>
      <concept id="2363935850608653464" name="de.q60.mps.lang.typescript.structure.TSGreaterThanExpression" flags="ng" index="27A9uT" />
      <concept id="5273689272520536483" name="de.q60.mps.lang.typescript.structure.TSArrayType" flags="ng" index="29s1Bg">
        <child id="8144558156267705696" name="elementType" index="2XRTOt" />
      </concept>
      <concept id="3625690808891259473" name="de.q60.mps.lang.typescript.structure.TSForStatement" flags="ng" index="2b3r35">
        <child id="6594990606590003271" name="incrementor" index="29kXl4" />
        <child id="2735800563764813271" name="condition" index="et5B9" />
        <child id="3805913402361037029" name="initializer" index="tspbQ" />
      </concept>
      <concept id="1571062397014420555" name="de.q60.mps.lang.typescript.structure.TSExpressionBody" flags="ng" index="bMiiA">
        <child id="7669103814434551014" name="expression" index="QAdmJ" />
      </concept>
      <concept id="8935702142937456039" name="de.q60.mps.lang.typescript.structure.TSModExpression" flags="ng" index="cuy1A" />
      <concept id="7661040975551884702" name="de.q60.mps.lang.typescript.structure.TSWhileStatement" flags="ng" index="fax6N">
        <child id="8176306495002123692" name="condition" index="20awV3" />
      </concept>
      <concept id="2450593264803086893" name="de.q60.mps.lang.typescript.structure.TSNotExpression" flags="ng" index="fzWeU" />
      <concept id="7893345815834438480" name="de.q60.mps.lang.typescript.structure.TSStrictEqualsExpression" flags="ng" index="2fEAty" />
      <concept id="1686735314819989884" name="de.q60.mps.lang.typescript.structure.TSStrictNotEqualsExpression" flags="ng" index="iAVQD" />
      <concept id="519210219420976711" name="de.q60.mps.lang.typescript.structure.TSPrefixIncrementExpression" flags="ng" index="2joTMQ" />
      <concept id="5318128150707536103" name="de.q60.mps.lang.typescript.structure.TSLeftShiftAssignExpression" flags="ng" index="l84A7" />
      <concept id="317735058024221081" name="de.q60.mps.lang.typescript.structure.TSMulExpression" flags="ng" index="mk1J3" />
      <concept id="4892061089786907168" name="de.q60.mps.lang.typescript.structure.TSRightShiftExpression" flags="ng" index="nD_Q4" />
      <concept id="6812379895036577066" name="de.q60.mps.lang.typescript.structure.TSDivExpression" flags="ng" index="2o8mD1" />
      <concept id="83412354109643915" name="de.q60.mps.lang.typescript.structure.TSParenthesizedExpression" flags="ng" index="pJsIj">
        <child id="7350906890408026229" name="expression" index="3tJ$EF" />
      </concept>
      <concept id="7021042242623486884" name="de.q60.mps.lang.typescript.structure.TSTemplateLiteral" flags="ng" index="pYBGs">
        <property id="1331468974520002934" name="head" index="15NrEc" />
        <child id="912235450054412245" name="spans" index="cEYUq" />
      </concept>
      <concept id="8753009674359597755" name="de.q60.mps.lang.typescript.structure.TSVoidType" flags="ng" index="qIwln" />
      <concept id="8640047791204011315" name="de.q60.mps.lang.typescript.structure.TSBlock" flags="ng" index="qYD23">
        <child id="7935308623531745380" name="statements" index="6EW52" />
      </concept>
      <concept id="4951537840020102359" name="de.q60.mps.lang.typescript.structure.TSDivAssignExpression" flags="ng" index="qYJAT" />
      <concept id="4004210842016756869" name="de.q60.mps.lang.typescript.structure.TSDoWhileStatement" flags="ng" index="2rJege">
        <child id="2022861889023822418" name="condition" index="2SSALT" />
      </concept>
      <concept id="3676654959372615760" name="de.q60.mps.lang.typescript.structure.TSLogicalAndExpression" flags="ng" index="2s4PD$" />
      <concept id="4306270926879848440" name="de.q60.mps.lang.typescript.structure.TSLetDeclaration" flags="ng" index="2swglJ" />
      <concept id="9182737273483795847" name="de.q60.mps.lang.typescript.structure.TSDefaultClause" flags="ng" index="2sOzXy" />
      <concept id="5261423696657887118" name="de.q60.mps.lang.typescript.structure.TSUnaryMinusExpression" flags="ng" index="2t6vHR" />
      <concept id="8057680275657749238" name="de.q60.mps.lang.typescript.structure.TSIdentifier" flags="ng" index="2v$HdM">
        <reference id="7745766023969360865" name="declaration" index="2oxrr9" />
      </concept>
      <concept id="9011752434925346572" name="de.q60.mps.lang.typescript.structure.TSSwitchStatement" flags="ng" index="2yrb8r">
        <child id="6299422987900026855" name="expression" index="2WQvgN" />
        <child id="7921438235492334414" name="clauses" index="1_mi5l" />
      </concept>
      <concept id="6653327715734904214" name="de.q60.mps.lang.typescript.structure.TSUnsignedRightShiftAssignExpression" flags="ng" index="yXCfo" />
      <concept id="6852763229296375794" name="de.q60.mps.lang.typescript.structure.TSBitwiseXorExpression" flags="ng" index="z250F" />
      <concept id="1336511613465215979" name="de.q60.mps.lang.typescript.structure.TSLogicalAndAssignExpression" flags="ng" index="$iRRg" />
      <concept id="1148579228915497614" name="de.q60.mps.lang.typescript.structure.TSNullLiteral" flags="ng" index="C5IwR" />
      <concept id="4043624921075319313" name="de.q60.mps.lang.typescript.structure.TSForInStatement" flags="ng" index="Dwllw" />
      <concept id="6957642462239564337" name="de.q60.mps.lang.typescript.structure.TSFunctionTypeParameter" flags="ng" index="2Fu235">
        <child id="5089302120831439094" name="declaredType" index="3cr0mA" />
      </concept>
      <concept id="4042126980422580726" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingExpression" flags="ng" index="2H1bN$" />
      <concept id="4387831483603896369" name="de.q60.mps.lang.typescript.structure.TSVoidExpression" flags="ng" index="2IAfPd" />
      <concept id="3720627991746027321" name="de.q60.mps.lang.typescript.structure.TSElseIfClause" flags="ng" index="ILWLb">
        <child id="4391307923817728188" name="condition" index="1usCvQ" />
        <child id="1792031550624269005" name="block" index="1TBx7Y" />
      </concept>
      <concept id="229562936135476531" name="de.q60.mps.lang.typescript.structure.TSNullishCoalescingAssignExpression" flags="ng" index="IRftP" />
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="3620359941814459762" name="de.q60.mps.lang.typescript.structure.TSBitwiseNotExpression" flags="ng" index="2KQott" />
      <concept id="1113920793110829741" name="de.q60.mps.lang.typescript.structure.TSILoop" flags="ngI" index="MfUIy">
        <child id="462024174991291677" name="body" index="d_Gmn" />
      </concept>
      <concept id="4715308568151819694" name="de.q60.mps.lang.typescript.structure.TSConstDeclaration" flags="ng" index="2MuU66" />
      <concept id="1480981823278437632" name="de.q60.mps.lang.typescript.structure.TSBitwiseOrExpression" flags="ng" index="NRXgv" />
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
      <concept id="255943911805286420" name="de.q60.mps.lang.typescript.structure.TSISwitchClause" flags="ngI" index="2U7FeP">
        <child id="5295775359691522895" name="statements" index="3HO5NI" />
      </concept>
      <concept id="2894647882240095206" name="de.q60.mps.lang.typescript.structure.TSNullType" flags="ng" index="2UUy$f" />
      <concept id="5203292047127445673" name="de.q60.mps.lang.typescript.structure.TSUnaryOperation" flags="ng" index="V$4S_">
        <child id="1920165562965334341" name="expression" index="3CQlky" />
      </concept>
      <concept id="4852639209182938254" name="de.q60.mps.lang.typescript.structure.TSCatchParameter" flags="ng" index="X8OOC" />
      <concept id="3854543600690315319" name="de.q60.mps.lang.typescript.structure.TSLessThanOrEqualsExpression" flags="ng" index="2Z6drc" />
      <concept id="7767684701842828021" name="de.q60.mps.lang.typescript.structure.TSBreakStatement" flags="ng" index="2ZnVrx" />
      <concept id="8230984297125240977" name="de.q60.mps.lang.typescript.structure.TSIForEachLoop" flags="ngI" index="2ZNrga">
        <child id="5572694192943756872" name="expression" index="2p7lAv" />
        <child id="7086253282184478317" name="declaration" index="2Fm_eX" />
      </concept>
      <concept id="7113081857034482378" name="de.q60.mps.lang.typescript.structure.TSPostfixIncrementExpression" flags="ng" index="10p$M9" />
      <concept id="5386741445896491392" name="de.q60.mps.lang.typescript.structure.TSPostfixOperation" flags="ng" index="11ilPe">
        <child id="3230647348629920174" name="expression" index="2Psk$b" />
      </concept>
      <concept id="3854180306267379657" name="de.q60.mps.lang.typescript.structure.TSTypeofExpression" flags="ng" index="128PHo" />
      <concept id="8939379926891817692" name="de.q60.mps.lang.typescript.structure.TSLeftShiftExpression" flags="ng" index="12EYhM" />
      <concept id="3369613353357185318" name="de.q60.mps.lang.typescript.structure.TSStringLiteral" flags="ng" index="33xXhr">
        <property id="7217799321058434228" name="escapedValue" index="3b_9E9" />
      </concept>
      <concept id="6837294514292652218" name="de.q60.mps.lang.typescript.structure.TSContinueStatement" flags="ng" index="33KgIo" />
      <concept id="3431481493934648401" name="de.q60.mps.lang.typescript.structure.TSPostfixDecrementExpression" flags="ng" index="34OzTH" />
      <concept id="3355733505089403539" name="de.q60.mps.lang.typescript.structure.TSAssignmentExpression" flags="ng" index="35aKX4" />
      <concept id="4112825962079110083" name="de.q60.mps.lang.typescript.structure.TSExponentExpression" flags="ng" index="35EnaC" />
      <concept id="7168794925149236725" name="de.q60.mps.lang.typescript.structure.TSLogicalOrAssignExpression" flags="ng" index="36m03P" />
      <concept id="2552176483587294401" name="de.q60.mps.lang.typescript.structure.TSPropertyAssignment" flags="ng" index="17ea8W">
        <child id="5678931280796787468" name="initializer" index="hsbV_" />
      </concept>
      <concept id="1105819224358179769" name="de.q60.mps.lang.typescript.structure.TSCaseClause" flags="ng" index="3aWBG0">
        <child id="113394964859828794" name="expression" index="2AmQo$" />
      </concept>
      <concept id="9916445101189094" name="de.q60.mps.lang.typescript.structure.TSArrowFunction" flags="ng" index="1b$XOi">
        <child id="4933867365879096709" name="body" index="34pjIZ" />
      </concept>
      <concept id="5232066951734860421" name="de.q60.mps.lang.typescript.structure.TSBitwiseOrAssignExpression" flags="ng" index="1bETeD" />
      <concept id="8473436592292004310" name="de.q60.mps.lang.typescript.structure.TSMinusAssignExpression" flags="ng" index="3bMN1T" />
      <concept id="7026554582782322030" name="de.q60.mps.lang.typescript.structure.TSTryStatement" flags="ng" index="1c8nd4">
        <child id="7910050254052730252" name="catchClause" index="2hyK57" />
        <child id="4854415673904191394" name="tryBlock" index="2CuSVR" />
        <child id="5449485796123857302" name="finallyBlock" index="PRUvz" />
      </concept>
      <concept id="7652281983549135489" name="de.q60.mps.lang.typescript.structure.TSLessThanExpression" flags="ng" index="3cCKtE" />
      <concept id="7517680150159072311" name="de.q60.mps.lang.typescript.structure.TSBitwiseXorAssignExpression" flags="ng" index="1dqbpN" />
      <concept id="3894583660651454994" name="de.q60.mps.lang.typescript.structure.TSBinaryOperation" flags="ng" index="1f9ZkA">
        <child id="7602522883118221103" name="rightExpression" index="GyX5B" />
        <child id="5707686448369938903" name="leftExpression" index="33kRt2" />
      </concept>
      <concept id="1623722890794836876" name="de.q60.mps.lang.typescript.structure.TSThrowStatement" flags="ng" index="3hXVNh">
        <child id="87263482773472484" name="expression" index="3tDo58" />
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
      <concept id="4462294479766427379" name="de.q60.mps.lang.typescript.structure.TSUnsignedRightShiftExpression" flags="ng" index="3ohPvs" />
      <concept id="4523838444874165896" name="de.q60.mps.lang.typescript.structure.TSUnionType" flags="ng" index="3pfgAg">
        <child id="4870825102337838263" name="types" index="3KvU$C" />
      </concept>
      <concept id="5495870994482695625" name="de.q60.mps.lang.typescript.structure.TSRightShiftAssignExpression" flags="ng" index="1pLGL4" />
      <concept id="1480635482070849035" name="de.q60.mps.lang.typescript.structure.TSTemplateSpan" flags="ng" index="1q850F">
        <property id="6377797546063508848" name="tail" index="3AYOxz" />
        <child id="954812604092234846" name="expression" index="wIT5v" />
      </concept>
      <concept id="6704462043861673507" name="de.q60.mps.lang.typescript.structure.TSPlusExpression" flags="ng" index="1rvuUm" />
      <concept id="9084056344319210901" name="de.q60.mps.lang.typescript.structure.TSUnaryPlusExpression" flags="ng" index="3sPFy8" />
      <concept id="2766191210374331012" name="de.q60.mps.lang.typescript.structure.TSIFunctionLike" flags="ngI" index="3ti0qV">
        <child id="2122589399313796228" name="returnType" index="jrNXk" />
        <child id="6735212671840276135" name="parameters" index="3qLSqq" />
      </concept>
      <concept id="6260345984398119061" name="de.q60.mps.lang.typescript.structure.TSTrueLiteral" flags="ng" index="1tXIsk" />
      <concept id="3372963032200918088" name="de.q60.mps.lang.typescript.structure.TSLogicalOrExpression" flags="ng" index="3w4Lx9" />
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
      <concept id="6335351762904969106" name="de.q60.mps.lang.typescript.structure.TSArrayLiteral" flags="ng" index="3GWXXe">
        <child id="3540710438080071319" name="elements" index="1VpevP" />
      </concept>
      <concept id="2676595144476088988" name="de.q60.mps.lang.typescript.structure.TSVariableDeclaration" flags="ng" index="1Jbnu6">
        <child id="7603193039132759139" name="declaredType" index="19IeeE" />
        <child id="8956598854396892412" name="initializer" index="1bGQZ8" />
      </concept>
      <concept id="3734210923514724782" name="de.q60.mps.lang.typescript.structure.TSPropertyAccess" flags="ng" index="3JE1iy">
        <reference id="4100792456998222033" name="property" index="1S4wBi" />
        <child id="3196331518598436027" name="operand" index="3yaB8J" />
      </concept>
      <concept id="3284552453049428227" name="de.q60.mps.lang.typescript.structure.TSFalseLiteral" flags="ng" index="3JGNCe" />
      <concept id="6275493024567124969" name="de.q60.mps.lang.typescript.structure.TSForOfStatement" flags="ng" index="1KPeh1" />
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
      <concept id="3149544303132428410" name="de.q60.mps.lang.typescript.structure.TSNotEqualsExpression" flags="ng" index="1V9imx" />
      <concept id="1249726736402875518" name="de.q60.mps.lang.typescript.structure.TSGreaterThanOrEqualsExpression" flags="ng" index="1WNuYA" />
      <concept id="6380736331902577846" name="de.q60.mps.lang.typescript.structure.TSCatchClause" flags="ng" index="1WXS5l">
        <child id="5205009883105838996" name="binding" index="6O2XX" />
        <child id="5251133188521413811" name="block" index="1UMC_z" />
      </concept>
    </language>
    <language id="7af3fcbd-9a15-43d7-84c7-2139553841f8" name="de.q60.mps.lang.typescript.unitTest">
      <concept id="5324903807302792343" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertFalse" flags="ng" index="2gzqXr">
        <child id="1719658372091490261" name="condition" index="2OlPJS" />
      </concept>
      <concept id="7474925316805868297" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertTrue" flags="ng" index="2xtvZL">
        <child id="923496749372008960" name="condition" index="2tmK5A" />
      </concept>
      <concept id="2893403391783031051" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestMethod" flags="ng" index="B13S5">
        <child id="3423858813637018076" name="body" index="1OrNMJ" />
      </concept>
      <concept id="2540675105150896836" name="de.q60.mps.lang.typescript.unitTest.structure.TSTestCase" flags="ng" index="Jsc18">
        <child id="3377630177900161387" name="testMethods" index="1QJMAF" />
      </concept>
      <concept id="9159215323861021911" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertEquals" flags="ng" index="174eko">
        <child id="4433563903700617020" name="actual" index="1s_IBt" />
        <child id="4065307100039490071" name="expected" index="3SOflj" />
      </concept>
      <concept id="7158842254919711510" name="de.q60.mps.lang.typescript.unitTest.structure.TSAssertNotEquals" flags="ng" index="1$OICc">
        <child id="3663594992465210637" name="expected" index="s7_$L" />
        <child id="6572111961859092722" name="actual" index="1_w2nK" />
      </concept>
      <concept id="1671337506811517318" name="de.q60.mps.lang.typescript.unitTest.structure.TSFail" flags="ng" index="1Iu54t">
        <child id="1832419353059037549" name="message" index="1NN9Vs" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Jsc18" id="6WKYICFB5QI">
    <property role="TrG5h" value="arithmetic" />
    <node concept="B13S5" id="6WKYICFB5QJ" role="1QJMAF">
      <property role="TrG5h" value="multiplication binds tighter than addition" />
      <node concept="174eko" id="6WKYICFB5QK" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFB5QN" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICFB5QQ" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="mk1J3" id="6WKYICFB5QR" role="GyX5B">
            <node concept="24BhzH" id="6WKYICFB5QU" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5QV" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5QW" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5QX" role="1QJMAF">
      <property role="TrG5h" value="parentheses override the operator priority" />
      <node concept="174eko" id="6WKYICFB5QY" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICFB5R1" role="1s_IBt">
          <node concept="pJsIj" id="6WKYICFB5R4" role="33kRt2">
            <node concept="1rvuUm" id="6WKYICFB5R6" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICFB5R9" role="33kRt2">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="24BhzH" id="6WKYICFB5Ra" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5Rb" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Rc" role="3SOflj">
          <property role="2Hr5CV" value="9" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Rd" role="1QJMAF">
      <property role="TrG5h" value="division and subtraction" />
      <node concept="174eko" id="6WKYICFB5Re" role="1OrNMJ">
        <node concept="2o8mD1" id="6WKYICFB5Rh" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICFB5Rk" role="33kRt2">
            <property role="2Hr5CV" value="10" />
          </node>
          <node concept="pJsIj" id="6WKYICFB5Rl" role="GyX5B">
            <node concept="2IocK" id="6WKYICFB5Rn" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICFB5Rq" role="33kRt2">
                <property role="2Hr5CV" value="4" />
              </node>
              <node concept="24BhzH" id="6WKYICFB5Rr" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Rs" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPW3" role="1QJMAF">
      <property role="TrG5h" value="the remainder keeps the sign of the dividend" />
      <node concept="174eko" id="1dYSrZvpPW4" role="1OrNMJ">
        <node concept="cuy1A" id="1dYSrZvpPW7" role="1s_IBt">
          <node concept="24BhzH" id="1dYSrZvpPWa" role="33kRt2">
            <property role="2Hr5CV" value="7" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPWb" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPWc" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPWd" role="1OrNMJ">
        <node concept="cuy1A" id="1dYSrZvpPWg" role="1s_IBt">
          <node concept="2t6vHR" id="1dYSrZvpPWj" role="33kRt2">
            <node concept="24BhzH" id="1dYSrZvpPWl" role="3CQlky">
              <property role="2Hr5CV" value="7" />
            </node>
          </node>
          <node concept="24BhzH" id="1dYSrZvpPWm" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="2t6vHR" id="1dYSrZvpPWn" role="3SOflj">
          <node concept="24BhzH" id="1dYSrZvpPWp" role="3CQlky">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPWq" role="1OrNMJ">
        <node concept="mk1J3" id="1dYSrZvpPWt" role="1s_IBt">
          <node concept="cuy1A" id="1dYSrZvpPWw" role="33kRt2">
            <node concept="24BhzH" id="1dYSrZvpPWz" role="33kRt2">
              <property role="2Hr5CV" value="7" />
            </node>
            <node concept="24BhzH" id="1dYSrZvpPW$" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
          <node concept="24BhzH" id="1dYSrZvpPW_" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPWA" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICG5KBp" role="1QJMAF">
      <property role="TrG5h" value="floating point literals" />
      <node concept="174eko" id="6WKYICG5KBq" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICG5KBt" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBw" role="33kRt2">
            <property role="2Hr5CV" value="1.5" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBx" role="GyX5B">
            <property role="2Hr5CV" value="2.25" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBy" role="3SOflj">
          <property role="2Hr5CV" value="3.75" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICG5KBz" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICG5KBA" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBD" role="33kRt2">
            <property role="2Hr5CV" value="1.5e3" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBE" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBF" role="3SOflj">
          <property role="2Hr5CV" value="3000" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICG5KBG" role="1OrNMJ">
        <node concept="2o8mD1" id="6WKYICG5KBJ" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICG5KBM" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="6WKYICG5KBN" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICG5KBO" role="3SOflj">
          <property role="2Hr5CV" value=".25" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzOz" role="1QJMAF">
      <property role="TrG5h" value="exponentiation is right associative" />
      <node concept="174eko" id="6WKYICGJzO$" role="1OrNMJ">
        <node concept="35EnaC" id="6WKYICGJzOB" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzOE" role="33kRt2">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="35EnaC" id="6WKYICGJzOF" role="GyX5B">
            <node concept="24BhzH" id="6WKYICGJzOI" role="33kRt2">
              <property role="2Hr5CV" value="3" />
            </node>
            <node concept="24BhzH" id="6WKYICGJzOJ" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzOK" role="3SOflj">
          <property role="2Hr5CV" value="512" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICGJzOL" role="1OrNMJ">
        <node concept="35EnaC" id="6WKYICGJzOO" role="1s_IBt">
          <node concept="pJsIj" id="6WKYICGJzOR" role="33kRt2">
            <node concept="35EnaC" id="6WKYICGJzOT" role="3tJ$EF">
              <node concept="24BhzH" id="6WKYICGJzOW" role="33kRt2">
                <property role="2Hr5CV" value="2" />
              </node>
              <node concept="24BhzH" id="6WKYICGJzOX" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICGJzOY" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzOZ" role="3SOflj">
          <property role="2Hr5CV" value="64" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzP0" role="1QJMAF">
      <property role="TrG5h" value="exponentiation binds tighter than multiplication" />
      <node concept="174eko" id="6WKYICGJzP1" role="1OrNMJ">
        <node concept="mk1J3" id="6WKYICGJzP4" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzP7" role="33kRt2">
            <property role="2Hr5CV" value="3" />
          </node>
          <node concept="35EnaC" id="6WKYICGJzP8" role="GyX5B">
            <node concept="24BhzH" id="6WKYICGJzPb" role="33kRt2">
              <property role="2Hr5CV" value="2" />
            </node>
            <node concept="24BhzH" id="6WKYICGJzPc" role="GyX5B">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzPd" role="3SOflj">
          <property role="2Hr5CV" value="24" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFB5UU">
    <property role="TrG5h" value="comparison" />
    <node concept="B13S5" id="6WKYICFB5UV" role="1QJMAF">
      <property role="TrG5h" value="numbers compare by value" />
      <node concept="2xtvZL" id="6WKYICFB5UW" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFB5UY" role="2tmK5A">
          <node concept="mk1J3" id="6WKYICFB5V1" role="33kRt2">
            <node concept="24BhzH" id="6WKYICFB5V4" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5V5" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5V6" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5V7" role="1QJMAF">
      <property role="TrG5h" value="different numbers are not equal" />
      <node concept="2gzqXr" id="6WKYICFB5V8" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFB5Va" role="2OlPJS">
          <node concept="mk1J3" id="6WKYICFB5Vd" role="33kRt2">
            <node concept="24BhzH" id="6WKYICFB5Vg" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5Vh" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5Vi" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
      </node>
      <node concept="1$OICc" id="6WKYICFB5Vj" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFB5Vm" role="1_w2nK">
          <node concept="24BhzH" id="6WKYICFB5Vp" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="6WKYICFB5Vq" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5Vr" role="s7_$L">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Vs" role="1QJMAF">
      <property role="TrG5h" value="strings compare by value" />
      <node concept="174eko" id="6WKYICFB5Vt" role="1OrNMJ">
        <node concept="33xXhr" id="6WKYICFB5Vw" role="1s_IBt">
          <property role="3b_9E9" value="a \&quot;quoted\&quot; word" />
        </node>
        <node concept="33xXhr" id="6WKYICFB5Vx" role="3SOflj">
          <property role="3b_9E9" value="a \&quot;quoted\&quot; word" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFB5Vy" role="1QJMAF">
      <property role="TrG5h" value="a ternary evaluates the branch its condition selects" />
      <node concept="174eko" id="6WKYICFB5Vz" role="1OrNMJ">
        <node concept="0o88v" id="6WKYICFB5VA" role="1s_IBt">
          <node concept="1CNJNU" id="6WKYICFB5VE" role="3y1SWh">
            <node concept="24BhzH" id="6WKYICFB5VH" role="33kRt2">
              <property role="2Hr5CV" value="1" />
            </node>
            <node concept="24BhzH" id="6WKYICFB5VI" role="GyX5B">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICFB5VJ" role="10ubTB">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="6WKYICFB5VK" role="3nuTyc">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFB5VL" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFTeMp">
    <property role="TrG5h" value="declarations" />
    <node concept="B13S5" id="6WKYICFTeMq" role="1QJMAF">
      <property role="TrG5h" value="a const keeps the value it was initialized with" />
      <node concept="2MuU66" id="6WKYICFTeMr" role="1OrNMJ">
        <property role="TrG5h" value="answer" />
        <node concept="1ku6r5" id="6WKYICFTeMs" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeMt" role="1bGQZ8">
          <property role="2Hr5CV" value="40" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMu" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICFTeMx" role="1s_IBt">
          <node concept="2v$HdM" id="6WKYICFTeM$" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeMr" resolve="answer" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeM_" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICFTeMA" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeMB" role="1QJMAF">
      <property role="TrG5h" value="a let can be reassigned" />
      <node concept="2swglJ" id="6WKYICFTeMC" role="1OrNMJ">
        <property role="TrG5h" value="counter" />
        <node concept="1ku6r5" id="6WKYICFTeMD" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeME" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3ja7nU" id="1dYSrZvz99Z" role="1OrNMJ">
        <node concept="35aKX4" id="1dYSrZvz99Y" role="$a3P1">
          <node concept="2v$HdM" id="6WKYICFTeMI" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
          </node>
          <node concept="mk1J3" id="6WKYICFTeMJ" role="GyX5B">
            <node concept="2v$HdM" id="6WKYICFTeMM" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
            </node>
            <node concept="24BhzH" id="6WKYICFTeMN" role="GyX5B">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMO" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeMR" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeMC" resolve="counter" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeMS" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvzRwm" role="1QJMAF">
      <property role="TrG5h" value="an assignment is an expression, and it chains to the right" />
      <node concept="2swglJ" id="1dYSrZvzRwn" role="1OrNMJ">
        <property role="TrG5h" value="first" />
        <node concept="1ku6r5" id="1dYSrZvzRwo" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvzRwp" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2swglJ" id="1dYSrZvzRwq" role="1OrNMJ">
        <property role="TrG5h" value="second" />
        <node concept="1ku6r5" id="1dYSrZvzRwr" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvzRws" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="3ja7nU" id="1dYSrZvzRwt" role="1OrNMJ">
        <node concept="35aKX4" id="1dYSrZvzRwv" role="$a3P1">
          <node concept="2v$HdM" id="1dYSrZvzRwy" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvzRwn" resolve="first" />
          </node>
          <node concept="35aKX4" id="1dYSrZvzRwz" role="GyX5B">
            <node concept="2v$HdM" id="1dYSrZvzRwA" role="33kRt2">
              <ref role="2oxrr9" node="1dYSrZvzRwq" resolve="second" />
            </node>
            <node concept="24BhzH" id="1dYSrZvzRwB" role="GyX5B">
              <property role="2Hr5CV" value="7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvzRwC" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvzRwF" role="1s_IBt">
          <ref role="2oxrr9" node="1dYSrZvzRwn" resolve="first" />
        </node>
        <node concept="24BhzH" id="1dYSrZvzRwG" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvzRwH" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvzRwK" role="1s_IBt">
          <ref role="2oxrr9" node="1dYSrZvzRwq" resolve="second" />
        </node>
        <node concept="24BhzH" id="1dYSrZvzRwL" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
      <node concept="2swglJ" id="1dYSrZvzRwM" role="1OrNMJ">
        <property role="TrG5h" value="third" />
        <node concept="1ku6r5" id="1dYSrZvzRwN" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvzRwO" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvzRwP" role="1OrNMJ">
        <node concept="35aKX4" id="1dYSrZvzRwS" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvzRwV" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvzRwM" resolve="third" />
          </node>
          <node concept="24BhzH" id="1dYSrZvzRwW" role="GyX5B">
            <property role="2Hr5CV" value="9" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvzRwX" role="3SOflj">
          <property role="2Hr5CV" value="9" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeMT" role="1QJMAF">
      <property role="TrG5h" value="a declaration without an annotation takes the type of its initializer" />
      <node concept="2MuU66" id="6WKYICFTeMU" role="1OrNMJ">
        <property role="TrG5h" value="word" />
        <node concept="33xXhr" id="6WKYICFTeMV" role="1bGQZ8">
          <property role="3b_9E9" value="hello" />
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeMW" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeMZ" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeMU" resolve="word" />
        </node>
        <node concept="33xXhr" id="6WKYICFTeN0" role="3SOflj">
          <property role="3b_9E9" value="hello" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICFTeVV">
    <property role="TrG5h" value="control_flow" />
    <node concept="B13S5" id="6WKYICFTeVW" role="1QJMAF">
      <property role="TrG5h" value="an if runs the then branch when its condition holds" />
      <node concept="2swglJ" id="6WKYICFTeVX" role="1OrNMJ">
        <property role="TrG5h" value="flow" />
        <node concept="2Kh4GC" id="6WKYICFTeVY" role="19IeeE" />
        <node concept="33xXhr" id="6WKYICFTeVZ" role="1bGQZ8">
          <property role="3b_9E9" value="none" />
        </node>
      </node>
      <node concept="2MuU66" id="6WKYICFTeW0" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="6WKYICFTeW1" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeW2" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeW3" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeW6" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeW9" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeW0" resolve="one" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeWa" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWb" role="12avcn">
          <node concept="3ja7nU" id="1dYSrZvz9a1" role="6EW52">
            <node concept="35aKX4" id="1dYSrZvz9a0" role="$a3P1">
              <node concept="2v$HdM" id="6WKYICFTeWf" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
              </node>
              <node concept="33xXhr" id="6WKYICFTeWg" role="GyX5B">
                <property role="3b_9E9" value="then" />
              </node>
            </node>
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWh" role="2uaaIR">
          <node concept="3ja7nU" id="1dYSrZvz9a3" role="6EW52">
            <node concept="35aKX4" id="1dYSrZvz9a2" role="$a3P1">
              <node concept="2v$HdM" id="6WKYICFTeWl" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
              </node>
              <node concept="33xXhr" id="6WKYICFTeWm" role="GyX5B">
                <property role="3b_9E9" value="else" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeWn" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeWq" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeVX" resolve="flow" />
        </node>
        <node concept="33xXhr" id="6WKYICFTeWr" role="3SOflj">
          <property role="3b_9E9" value="then" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeWs" role="1QJMAF">
      <property role="TrG5h" value="an else-if branch runs when the first condition does not hold" />
      <node concept="2swglJ" id="6WKYICFTeWt" role="1OrNMJ">
        <property role="TrG5h" value="chosen" />
        <node concept="1ku6r5" id="6WKYICFTeWu" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeWv" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2MuU66" id="6WKYICFTeWw" role="1OrNMJ">
        <property role="TrG5h" value="two" />
        <node concept="1ku6r5" id="6WKYICFTeWx" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeWy" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeWz" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeWA" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeWD" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeWw" resolve="two" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeWE" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWF" role="12avcn">
          <node concept="3ja7nU" id="1dYSrZvz9a5" role="6EW52">
            <node concept="35aKX4" id="1dYSrZvz9a4" role="$a3P1">
              <node concept="2v$HdM" id="6WKYICFTeWJ" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
              </node>
              <node concept="24BhzH" id="6WKYICFTeWK" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="ILWLb" id="6WKYICFTeWL" role="1X4dzr">
          <node concept="1CNJNU" id="6WKYICFTeWO" role="1usCvQ">
            <node concept="2v$HdM" id="6WKYICFTeWR" role="33kRt2">
              <ref role="2oxrr9" node="6WKYICFTeWw" resolve="two" />
            </node>
            <node concept="24BhzH" id="6WKYICFTeWS" role="GyX5B">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
          <node concept="qYD23" id="6WKYICFTeWT" role="1TBx7Y">
            <node concept="3ja7nU" id="1dYSrZvz9a7" role="6EW52">
              <node concept="35aKX4" id="1dYSrZvz9a6" role="$a3P1">
                <node concept="2v$HdM" id="6WKYICFTeWX" role="33kRt2">
                  <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
                </node>
                <node concept="24BhzH" id="6WKYICFTeWY" role="GyX5B">
                  <property role="2Hr5CV" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeWZ" role="2uaaIR">
          <node concept="3ja7nU" id="1dYSrZvz9a9" role="6EW52">
            <node concept="35aKX4" id="1dYSrZvz9a8" role="$a3P1">
              <node concept="2v$HdM" id="6WKYICFTeX3" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
              </node>
              <node concept="24BhzH" id="6WKYICFTeX4" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeX5" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeX8" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeWt" resolve="chosen" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeX9" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICFTeXa" role="1QJMAF">
      <property role="TrG5h" value="a branch that must not be taken fails the test if it is" />
      <node concept="2MuU66" id="6WKYICFTeXb" role="1OrNMJ">
        <property role="TrG5h" value="guarded" />
        <node concept="1ku6r5" id="6WKYICFTeXc" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICFTeXd" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3Oct9B" id="6WKYICFTeXe" role="1OrNMJ">
        <node concept="1CNJNU" id="6WKYICFTeXh" role="18F3B4">
          <node concept="2v$HdM" id="6WKYICFTeXk" role="33kRt2">
            <ref role="2oxrr9" node="6WKYICFTeXb" resolve="guarded" />
          </node>
          <node concept="24BhzH" id="6WKYICFTeXl" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="qYD23" id="6WKYICFTeXm" role="12avcn">
          <node concept="1Iu54t" id="6WKYICFTeXn" role="6EW52">
            <node concept="33xXhr" id="6WKYICFTeXp" role="1NN9Vs">
              <property role="3b_9E9" value="1 is not 2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="6WKYICFTeXq" role="1OrNMJ">
        <node concept="2v$HdM" id="6WKYICFTeXt" role="1s_IBt">
          <ref role="2oxrr9" node="6WKYICFTeXb" resolve="guarded" />
        </node>
        <node concept="24BhzH" id="6WKYICFTeXu" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="6WKYICGJzWI">
    <property role="TrG5h" value="unary" />
    <node concept="B13S5" id="6WKYICGJzWJ" role="1QJMAF">
      <property role="TrG5h" value="logical not" />
      <node concept="2MuU66" id="6WKYICGK9jh" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="6WKYICGK9ji" role="19IeeE" />
        <node concept="24BhzH" id="6WKYICGK9jj" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="2xtvZL" id="6WKYICGK9jk" role="1OrNMJ">
        <node concept="fzWeU" id="6WKYICGK9jm" role="2tmK5A">
          <node concept="pJsIj" id="6WKYICGK9jo" role="3CQlky">
            <node concept="1CNJNU" id="6WKYICGK9jq" role="3tJ$EF">
              <node concept="2v$HdM" id="6WKYICGK9jt" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICGK9jh" resolve="one" />
              </node>
              <node concept="24BhzH" id="6WKYICGK9ju" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="6WKYICGK9jv" role="1OrNMJ">
        <node concept="fzWeU" id="6WKYICGK9jx" role="2OlPJS">
          <node concept="pJsIj" id="6WKYICGK9jz" role="3CQlky">
            <node concept="1CNJNU" id="6WKYICGK9j_" role="3tJ$EF">
              <node concept="2v$HdM" id="6WKYICGK9jC" role="33kRt2">
                <ref role="2oxrr9" node="6WKYICGK9jh" resolve="one" />
              </node>
              <node concept="24BhzH" id="6WKYICGK9jD" role="GyX5B">
                <property role="2Hr5CV" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzX6" role="1QJMAF">
      <property role="TrG5h" value="unary minus binds tighter than addition" />
      <node concept="174eko" id="6WKYICGJzX7" role="1OrNMJ">
        <node concept="1rvuUm" id="6WKYICGJzXa" role="1s_IBt">
          <node concept="2t6vHR" id="6WKYICGJzXd" role="33kRt2">
            <node concept="24BhzH" id="6WKYICGJzXf" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
          <node concept="24BhzH" id="6WKYICGJzXg" role="GyX5B">
            <property role="2Hr5CV" value="8" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXh" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzXi" role="1QJMAF">
      <property role="TrG5h" value="nested unary minus is not the decrement operator" />
      <node concept="174eko" id="6WKYICGJzXj" role="1OrNMJ">
        <node concept="2t6vHR" id="6WKYICGJzXm" role="1s_IBt">
          <node concept="2t6vHR" id="6WKYICGJzXo" role="3CQlky">
            <node concept="24BhzH" id="6WKYICGJzXq" role="3CQlky">
              <property role="2Hr5CV" value="5" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXr" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="6WKYICGJzXs" role="1QJMAF">
      <property role="TrG5h" value="unary plus" />
      <node concept="174eko" id="6WKYICGJzXt" role="1OrNMJ">
        <node concept="3sPFy8" id="6WKYICGJzXw" role="1s_IBt">
          <node concept="24BhzH" id="6WKYICGJzXy" role="3CQlky">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
        <node concept="24BhzH" id="6WKYICGJzXz" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpQgk" role="1QJMAF">
      <property role="TrG5h" value="typeof names the runtime type, and needs the space its alias asks for" />
      <node concept="2MuU66" id="1dYSrZvpQgl" role="1OrNMJ">
        <property role="TrG5h" value="count" />
        <node concept="1ku6r5" id="1dYSrZvpQgm" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpQgn" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQgo" role="1OrNMJ">
        <node concept="128PHo" id="1dYSrZvpQgr" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpQgt" role="3CQlky">
            <ref role="2oxrr9" node="1dYSrZvpQgl" resolve="count" />
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpQgu" role="3SOflj">
          <property role="3b_9E9" value="number" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpQgv" role="1OrNMJ">
        <property role="TrG5h" value="label" />
        <node concept="2Kh4GC" id="1dYSrZvpQgw" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpQgx" role="1bGQZ8">
          <property role="3b_9E9" value="x" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQgy" role="1OrNMJ">
        <node concept="128PHo" id="1dYSrZvpQg_" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpQgB" role="3CQlky">
            <ref role="2oxrr9" node="1dYSrZvpQgv" resolve="label" />
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpQgC" role="3SOflj">
          <property role="3b_9E9" value="string" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpQgD" role="1QJMAF">
      <property role="TrG5h" value="void discards its operand and yields undefined" />
      <node concept="174eko" id="1dYSrZvpQgE" role="1OrNMJ">
        <node concept="2IAfPd" id="1dYSrZvpQgH" role="1s_IBt">
          <node concept="24BhzH" id="1dYSrZvpQgJ" role="3CQlky">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="2OeDxu" id="1dYSrZvpQgK" role="3SOflj" />
      </node>
      <node concept="2MuU66" id="1dYSrZvpQgL" role="1OrNMJ">
        <property role="TrG5h" value="discarded" />
        <node concept="1ku6r5" id="1dYSrZvpQgM" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpQgN" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQgO" role="1OrNMJ">
        <node concept="2IAfPd" id="1dYSrZvpQgR" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpQgT" role="3CQlky">
            <ref role="2oxrr9" node="1dYSrZvpQgL" resolve="discarded" />
          </node>
        </node>
        <node concept="2OeDxu" id="1dYSrZvpQgU" role="3SOflj" />
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5TZAFSUv0Ky">
    <property role="TrG5h" value="unions_and_nullish" />
    <node concept="B13S5" id="5TZAFSUv0Kz" role="1QJMAF">
      <property role="TrG5h" value="a union typed variable holds either member" />
      <node concept="2swglJ" id="5TZAFSUv0K$" role="1OrNMJ">
        <property role="TrG5h" value="value" />
        <node concept="3pfgAg" id="5TZAFSUv0K_" role="19IeeE">
          <node concept="2Kh4GC" id="5TZAFSUv0KA" role="3KvU$C" />
          <node concept="1ku6r5" id="5TZAFSUv0KB" role="3KvU$C" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0KC" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0KD" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0KG" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0KH" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="3ja7nU" id="1dYSrZvz9ab" role="1OrNMJ">
        <node concept="35aKX4" id="1dYSrZvz9aa" role="$a3P1">
          <node concept="2v$HdM" id="5TZAFSUv0KL" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
          </node>
          <node concept="33xXhr" id="5TZAFSUv0KM" role="GyX5B">
            <property role="3b_9E9" value="text" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0KN" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0KQ" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0K$" resolve="value" />
        </node>
        <node concept="33xXhr" id="5TZAFSUv0KR" role="3SOflj">
          <property role="3b_9E9" value="text" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5TZAFSUv0KS" role="1QJMAF">
      <property role="TrG5h" value="null and undefined are values of their own" />
      <node concept="2MuU66" id="5TZAFSUv0KT" role="1OrNMJ">
        <property role="TrG5h" value="nothing" />
        <node concept="2UUy$f" id="5TZAFSUv0KU" role="19IeeE" />
        <node concept="C5IwR" id="5TZAFSUv0KV" role="1bGQZ8" />
      </node>
      <node concept="2xtvZL" id="5TZAFSUv0KW" role="1OrNMJ">
        <node concept="2fEAty" id="5TZAFSUv0KY" role="2tmK5A">
          <node concept="2v$HdM" id="5TZAFSUv0L1" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0KT" resolve="nothing" />
          </node>
          <node concept="C5IwR" id="5TZAFSUv0L2" role="GyX5B" />
        </node>
      </node>
      <node concept="2MuU66" id="5TZAFSUv0L3" role="1OrNMJ">
        <property role="TrG5h" value="missing" />
        <node concept="3OJVyd" id="5TZAFSUv0L4" role="19IeeE" />
        <node concept="2OeDxu" id="5TZAFSUv0L5" role="1bGQZ8" />
      </node>
      <node concept="2xtvZL" id="5TZAFSUv0L6" role="1OrNMJ">
        <node concept="2fEAty" id="5TZAFSUv0L8" role="2tmK5A">
          <node concept="2v$HdM" id="5TZAFSUv0Lb" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0L3" resolve="missing" />
          </node>
          <node concept="2OeDxu" id="5TZAFSUv0Lc" role="GyX5B" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5TZAFSUv0Ld" role="1QJMAF">
      <property role="TrG5h" value="a nullable variable holds the null literal or a number" />
      <node concept="2swglJ" id="5TZAFSUv0Le" role="1OrNMJ">
        <property role="TrG5h" value="maybe" />
        <node concept="3pfgAg" id="5TZAFSUv0Lf" role="19IeeE">
          <node concept="2UUy$f" id="5TZAFSUv0Lg" role="3KvU$C" />
          <node concept="1ku6r5" id="5TZAFSUv0Lh" role="3KvU$C" />
        </node>
        <node concept="C5IwR" id="5TZAFSUv0Li" role="1bGQZ8" />
      </node>
      <node concept="174eko" id="5TZAFSUv0Lj" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0Lm" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
        </node>
        <node concept="C5IwR" id="5TZAFSUv0Ln" role="3SOflj" />
      </node>
      <node concept="3ja7nU" id="1dYSrZvz9ad" role="1OrNMJ">
        <node concept="35aKX4" id="1dYSrZvz9ac" role="$a3P1">
          <node concept="2v$HdM" id="5TZAFSUv0Lr" role="33kRt2">
            <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
          </node>
          <node concept="24BhzH" id="5TZAFSUv0Ls" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5TZAFSUv0Lt" role="1OrNMJ">
        <node concept="2v$HdM" id="5TZAFSUv0Lw" role="1s_IBt">
          <ref role="2oxrr9" node="5TZAFSUv0Le" resolve="maybe" />
        </node>
        <node concept="24BhzH" id="5TZAFSUv0Lx" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpOKc">
    <property role="TrG5h" value="relational" />
    <node concept="B13S5" id="1dYSrZvpOKd" role="1QJMAF">
      <property role="TrG5h" value="numbers compare by order" />
      <node concept="2MuU66" id="1dYSrZvpOKe" role="1OrNMJ">
        <property role="TrG5h" value="lower" />
        <node concept="1ku6r5" id="1dYSrZvpOKf" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOKg" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpOKh" role="1OrNMJ">
        <property role="TrG5h" value="higher" />
        <node concept="1ku6r5" id="1dYSrZvpOKi" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOKj" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOKk" role="1OrNMJ">
        <node concept="3cCKtE" id="1dYSrZvpOKm" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOKp" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKe" resolve="lower" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOKq" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOKh" resolve="higher" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOKr" role="1OrNMJ">
        <node concept="3cCKtE" id="1dYSrZvpOKt" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOKw" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKh" resolve="higher" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOKx" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOKe" resolve="lower" />
          </node>
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOKy" role="1OrNMJ">
        <node concept="27A9uT" id="1dYSrZvpOK$" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOKB" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKh" resolve="higher" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOKC" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOKe" resolve="lower" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOKD" role="1OrNMJ">
        <node concept="27A9uT" id="1dYSrZvpOKF" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOKI" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKe" resolve="lower" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOKJ" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOKh" resolve="higher" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpOKK" role="1QJMAF">
      <property role="TrG5h" value="the or-equal variants include the boundary" />
      <node concept="2MuU66" id="1dYSrZvpOKL" role="1OrNMJ">
        <property role="TrG5h" value="bound" />
        <node concept="1ku6r5" id="1dYSrZvpOKM" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOKN" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOKO" role="1OrNMJ">
        <node concept="2Z6drc" id="1dYSrZvpOKQ" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOKT" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKL" resolve="bound" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOKU" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOKV" role="1OrNMJ">
        <node concept="1WNuYA" id="1dYSrZvpOKX" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOL0" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKL" resolve="bound" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOL1" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOL2" role="1OrNMJ">
        <node concept="3cCKtE" id="1dYSrZvpOL4" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOL7" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKL" resolve="bound" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOL8" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOL9" role="1OrNMJ">
        <node concept="27A9uT" id="1dYSrZvpOLb" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOLe" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOKL" resolve="bound" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOLf" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpOLg" role="1QJMAF">
      <property role="TrG5h" value="strings compare lexicographically" />
      <node concept="2MuU66" id="1dYSrZvpOLh" role="1OrNMJ">
        <property role="TrG5h" value="earlier" />
        <node concept="2Kh4GC" id="1dYSrZvpOLi" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpOLj" role="1bGQZ8">
          <property role="3b_9E9" value="abc" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpOLk" role="1OrNMJ">
        <property role="TrG5h" value="later" />
        <node concept="2Kh4GC" id="1dYSrZvpOLl" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpOLm" role="1bGQZ8">
          <property role="3b_9E9" value="abd" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOLn" role="1OrNMJ">
        <node concept="3cCKtE" id="1dYSrZvpOLp" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOLs" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOLh" resolve="earlier" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOLt" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOLk" resolve="later" />
          </node>
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOLu" role="1OrNMJ">
        <node concept="27A9uT" id="1dYSrZvpOLw" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOLz" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOLk" resolve="later" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOL$" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOLh" resolve="earlier" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOL_" role="1OrNMJ">
        <node concept="1WNuYA" id="1dYSrZvpOLB" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOLE" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOLh" resolve="earlier" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOLF" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOLk" resolve="later" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpOXt">
    <property role="TrG5h" value="equality" />
    <node concept="B13S5" id="1dYSrZvpOXu" role="1QJMAF">
      <property role="TrG5h" value="numbers are unequal loosely and strictly" />
      <node concept="2MuU66" id="1dYSrZvpOXv" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="1dYSrZvpOXw" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOXx" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpOXy" role="1OrNMJ">
        <property role="TrG5h" value="two" />
        <node concept="1ku6r5" id="1dYSrZvpOXz" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOX$" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOX_" role="1OrNMJ">
        <node concept="1V9imx" id="1dYSrZvpOXB" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOXE" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOXv" resolve="one" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOXF" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOXy" resolve="two" />
          </node>
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOXG" role="1OrNMJ">
        <node concept="iAVQD" id="1dYSrZvpOXI" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOXL" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOXv" resolve="one" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOXM" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOXy" resolve="two" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOXN" role="1OrNMJ">
        <node concept="1V9imx" id="1dYSrZvpOXP" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOXS" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOXv" resolve="one" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOXT" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOXU" role="1OrNMJ">
        <node concept="iAVQD" id="1dYSrZvpOXW" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOXZ" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOXv" resolve="one" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpOY0" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpOY1" role="1QJMAF">
      <property role="TrG5h" value="strings are equal by their characters" />
      <node concept="2MuU66" id="1dYSrZvpOY2" role="1OrNMJ">
        <property role="TrG5h" value="alpha" />
        <node concept="2Kh4GC" id="1dYSrZvpOY3" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpOY4" role="1bGQZ8">
          <property role="3b_9E9" value="a" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpOY5" role="1OrNMJ">
        <property role="TrG5h" value="beta" />
        <node concept="2Kh4GC" id="1dYSrZvpOY6" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpOY7" role="1bGQZ8">
          <property role="3b_9E9" value="b" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOY8" role="1OrNMJ">
        <node concept="iAVQD" id="1dYSrZvpOYa" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOYd" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOY2" resolve="alpha" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOYe" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOY5" resolve="beta" />
          </node>
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpOYf" role="1OrNMJ">
        <node concept="2fEAty" id="1dYSrZvpOYh" role="2OlPJS">
          <node concept="2v$HdM" id="1dYSrZvpOYk" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOY2" resolve="alpha" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpOYl" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpOY5" resolve="beta" />
          </node>
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOYm" role="1OrNMJ">
        <node concept="2fEAty" id="1dYSrZvpOYo" role="2tmK5A">
          <node concept="2v$HdM" id="1dYSrZvpOYr" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpOY2" resolve="alpha" />
          </node>
          <node concept="33xXhr" id="1dYSrZvpOYs" role="GyX5B">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpOYt" role="1QJMAF">
      <property role="TrG5h" value="an equality and its negation never agree" />
      <node concept="2MuU66" id="1dYSrZvpOYu" role="1OrNMJ">
        <property role="TrG5h" value="three" />
        <node concept="1ku6r5" id="1dYSrZvpOYv" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpOYw" role="1bGQZ8">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
      <node concept="2xtvZL" id="1dYSrZvpOYx" role="1OrNMJ">
        <node concept="iAVQD" id="1dYSrZvpOYz" role="2tmK5A">
          <node concept="pJsIj" id="1dYSrZvpOYA" role="33kRt2">
            <node concept="2fEAty" id="1dYSrZvpOYC" role="3tJ$EF">
              <node concept="2v$HdM" id="1dYSrZvpOYF" role="33kRt2">
                <ref role="2oxrr9" node="1dYSrZvpOYu" resolve="three" />
              </node>
              <node concept="24BhzH" id="1dYSrZvpOYG" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
          <node concept="pJsIj" id="1dYSrZvpOYH" role="GyX5B">
            <node concept="iAVQD" id="1dYSrZvpOYJ" role="3tJ$EF">
              <node concept="2v$HdM" id="1dYSrZvpOYM" role="33kRt2">
                <ref role="2oxrr9" node="1dYSrZvpOYu" resolve="three" />
              </node>
              <node concept="24BhzH" id="1dYSrZvpOYN" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpPe8">
    <property role="TrG5h" value="logical" />
    <node concept="B13S5" id="1dYSrZvpPe9" role="1QJMAF">
      <property role="TrG5h" value="or yields the first truthy operand" />
      <node concept="2MuU66" id="1dYSrZvpPea" role="1OrNMJ">
        <property role="TrG5h" value="zero" />
        <node concept="1ku6r5" id="1dYSrZvpPeb" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPec" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpPed" role="1OrNMJ">
        <property role="TrG5h" value="five" />
        <node concept="1ku6r5" id="1dYSrZvpPee" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPef" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPeg" role="1OrNMJ">
        <node concept="3w4Lx9" id="1dYSrZvpPej" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPem" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPea" resolve="zero" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPen" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPed" resolve="five" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPeo" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPep" role="1OrNMJ">
        <node concept="3w4Lx9" id="1dYSrZvpPes" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPev" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPed" resolve="five" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPew" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPea" resolve="zero" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPex" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPey" role="1QJMAF">
      <property role="TrG5h" value="and yields the first falsy operand" />
      <node concept="2MuU66" id="1dYSrZvpPez" role="1OrNMJ">
        <property role="TrG5h" value="zero" />
        <node concept="1ku6r5" id="1dYSrZvpPe$" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPe_" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpPeA" role="1OrNMJ">
        <property role="TrG5h" value="five" />
        <node concept="1ku6r5" id="1dYSrZvpPeB" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPeC" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPeD" role="1OrNMJ">
        <node concept="2s4PD$" id="1dYSrZvpPeG" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPeJ" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPez" resolve="zero" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPeK" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPeA" resolve="five" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPeL" role="3SOflj">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPeM" role="1OrNMJ">
        <node concept="2s4PD$" id="1dYSrZvpPeP" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPeS" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPeA" resolve="five" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPeT" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPez" resolve="zero" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPeU" role="3SOflj">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPeV" role="1OrNMJ">
        <node concept="2s4PD$" id="1dYSrZvpPeY" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPf1" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPeA" resolve="five" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPf2" role="GyX5B">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPf3" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPf4" role="1QJMAF">
      <property role="TrG5h" value="nullish coalescing falls back only on null" />
      <node concept="2MuU66" id="1dYSrZvpPf5" role="1OrNMJ">
        <property role="TrG5h" value="missing" />
        <node concept="3pfgAg" id="1dYSrZvpPf6" role="19IeeE">
          <node concept="2UUy$f" id="1dYSrZvpPf7" role="3KvU$C" />
          <node concept="1ku6r5" id="1dYSrZvpPf8" role="3KvU$C" />
        </node>
        <node concept="C5IwR" id="1dYSrZvpPf9" role="1bGQZ8" />
      </node>
      <node concept="2MuU66" id="1dYSrZvpPfa" role="1OrNMJ">
        <property role="TrG5h" value="present" />
        <node concept="3pfgAg" id="1dYSrZvpPfb" role="19IeeE">
          <node concept="2UUy$f" id="1dYSrZvpPfc" role="3KvU$C" />
          <node concept="1ku6r5" id="1dYSrZvpPfd" role="3KvU$C" />
        </node>
        <node concept="24BhzH" id="1dYSrZvpPfe" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPff" role="1OrNMJ">
        <node concept="2H1bN$" id="1dYSrZvpPfi" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPfl" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPf5" resolve="missing" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPfm" role="GyX5B">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPfn" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPfo" role="1OrNMJ">
        <node concept="2H1bN$" id="1dYSrZvpPfr" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPfu" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPfa" resolve="present" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPfv" role="GyX5B">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPfw" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPfx" role="1QJMAF">
      <property role="TrG5h" value="an empty string is falsy but it is not nullish" />
      <node concept="2MuU66" id="1dYSrZvpPfy" role="1OrNMJ">
        <property role="TrG5h" value="empty" />
        <node concept="3pfgAg" id="1dYSrZvpPfz" role="19IeeE">
          <node concept="2UUy$f" id="1dYSrZvpPf$" role="3KvU$C" />
          <node concept="2Kh4GC" id="1dYSrZvpPf_" role="3KvU$C" />
        </node>
        <node concept="33xXhr" id="1dYSrZvpPfA" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpPfB" role="1OrNMJ">
        <property role="TrG5h" value="fallback" />
        <node concept="2Kh4GC" id="1dYSrZvpPfC" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpPfD" role="1bGQZ8">
          <property role="3b_9E9" value="fallback" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPfE" role="1OrNMJ">
        <node concept="3w4Lx9" id="1dYSrZvpPfH" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPfK" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPfy" resolve="empty" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPfL" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPfB" resolve="fallback" />
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpPfM" role="3SOflj">
          <property role="3b_9E9" value="fallback" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPfN" role="1OrNMJ">
        <node concept="2H1bN$" id="1dYSrZvpPfQ" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPfT" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPfy" resolve="empty" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPfU" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPfB" resolve="fallback" />
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpPfV" role="3SOflj">
          <property role="3b_9E9" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpPy4">
    <property role="TrG5h" value="bitwise" />
    <node concept="B13S5" id="1dYSrZvpPy5" role="1QJMAF">
      <property role="TrG5h" value="and, or and xor work bit by bit" />
      <node concept="2MuU66" id="1dYSrZvpPy6" role="1OrNMJ">
        <property role="TrG5h" value="twelve" />
        <node concept="1ku6r5" id="1dYSrZvpPy7" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPy8" role="1bGQZ8">
          <property role="2Hr5CV" value="12" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpPy9" role="1OrNMJ">
        <property role="TrG5h" value="ten" />
        <node concept="1ku6r5" id="1dYSrZvpPya" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPyb" role="1bGQZ8">
          <property role="2Hr5CV" value="10" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPyc" role="1OrNMJ">
        <node concept="24nKmX" id="1dYSrZvpPyf" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPyi" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPy6" resolve="twelve" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPyj" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPy9" resolve="ten" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPyk" role="3SOflj">
          <property role="2Hr5CV" value="8" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPyl" role="1OrNMJ">
        <node concept="NRXgv" id="1dYSrZvpPyo" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPyr" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPy6" resolve="twelve" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPys" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPy9" resolve="ten" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPyt" role="3SOflj">
          <property role="2Hr5CV" value="14" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPyu" role="1OrNMJ">
        <node concept="z250F" id="1dYSrZvpPyx" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPy$" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPy6" resolve="twelve" />
          </node>
          <node concept="2v$HdM" id="1dYSrZvpPy_" role="GyX5B">
            <ref role="2oxrr9" node="1dYSrZvpPy9" resolve="ten" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPyA" role="3SOflj">
          <property role="2Hr5CV" value="6" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPyB" role="1QJMAF">
      <property role="TrG5h" value="the three shifts differ on a negative operand" />
      <node concept="2MuU66" id="1dYSrZvpPyC" role="1OrNMJ">
        <property role="TrG5h" value="one" />
        <node concept="1ku6r5" id="1dYSrZvpPyD" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPyE" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPyF" role="1OrNMJ">
        <node concept="12EYhM" id="1dYSrZvpPyI" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPyL" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPyC" resolve="one" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPyM" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPyN" role="3SOflj">
          <property role="2Hr5CV" value="16" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpPyO" role="1OrNMJ">
        <property role="TrG5h" value="negative" />
        <node concept="1ku6r5" id="1dYSrZvpPyP" role="19IeeE" />
        <node concept="2t6vHR" id="1dYSrZvpPyQ" role="1bGQZ8">
          <node concept="24BhzH" id="1dYSrZvpPyS" role="3CQlky">
            <property role="2Hr5CV" value="16" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPyT" role="1OrNMJ">
        <node concept="nD_Q4" id="1dYSrZvpPyW" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPyZ" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPyO" resolve="negative" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPz0" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="2t6vHR" id="1dYSrZvpPz1" role="3SOflj">
          <node concept="24BhzH" id="1dYSrZvpPz3" role="3CQlky">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPz4" role="1OrNMJ">
        <node concept="3ohPvs" id="1dYSrZvpPz7" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPza" role="33kRt2">
            <ref role="2oxrr9" node="1dYSrZvpPyO" resolve="negative" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpPzb" role="GyX5B">
            <property role="2Hr5CV" value="28" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPzc" role="3SOflj">
          <property role="2Hr5CV" value="15" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPzd" role="1QJMAF">
      <property role="TrG5h" value="bitwise not flips every bit and is its own inverse" />
      <node concept="2MuU66" id="1dYSrZvpPze" role="1OrNMJ">
        <property role="TrG5h" value="five" />
        <node concept="1ku6r5" id="1dYSrZvpPzf" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPzg" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPzh" role="1OrNMJ">
        <node concept="2KQott" id="1dYSrZvpPzk" role="1s_IBt">
          <node concept="2v$HdM" id="1dYSrZvpPzm" role="3CQlky">
            <ref role="2oxrr9" node="1dYSrZvpPze" resolve="five" />
          </node>
        </node>
        <node concept="2t6vHR" id="1dYSrZvpPzn" role="3SOflj">
          <node concept="24BhzH" id="1dYSrZvpPzp" role="3CQlky">
            <property role="2Hr5CV" value="6" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPzq" role="1OrNMJ">
        <node concept="2KQott" id="1dYSrZvpPzt" role="1s_IBt">
          <node concept="2KQott" id="1dYSrZvpPzv" role="3CQlky">
            <node concept="2v$HdM" id="1dYSrZvpPzx" role="3CQlky">
              <ref role="2oxrr9" node="1dYSrZvpPze" resolve="five" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPzy" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpPzz" role="1QJMAF">
      <property role="TrG5h" value="not binds tighter than and, which binds tighter than or" />
      <node concept="2MuU66" id="1dYSrZvpPz$" role="1OrNMJ">
        <property role="TrG5h" value="twelve" />
        <node concept="1ku6r5" id="1dYSrZvpPz_" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpPzA" role="1bGQZ8">
          <property role="2Hr5CV" value="12" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPzB" role="1OrNMJ">
        <node concept="24nKmX" id="1dYSrZvpPzE" role="1s_IBt">
          <node concept="2KQott" id="1dYSrZvpPzH" role="33kRt2">
            <node concept="2v$HdM" id="1dYSrZvpPzJ" role="3CQlky">
              <ref role="2oxrr9" node="1dYSrZvpPz$" resolve="twelve" />
            </node>
          </node>
          <node concept="24BhzH" id="1dYSrZvpPzK" role="GyX5B">
            <property role="2Hr5CV" value="15" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPzL" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpPzM" role="1OrNMJ">
        <node concept="NRXgv" id="1dYSrZvpPzP" role="1s_IBt">
          <node concept="24BhzH" id="1dYSrZvpPzS" role="33kRt2">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24nKmX" id="1dYSrZvpPzT" role="GyX5B">
            <node concept="2v$HdM" id="1dYSrZvpPzW" role="33kRt2">
              <ref role="2oxrr9" node="1dYSrZvpPz$" resolve="twelve" />
            </node>
            <node concept="24BhzH" id="1dYSrZvpPzX" role="GyX5B">
              <property role="2Hr5CV" value="4" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpPzY" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpQww">
    <property role="TrG5h" value="literals" />
    <node concept="B13S5" id="1dYSrZvpQwx" role="1QJMAF">
      <property role="TrG5h" value="the two boolean literals are the two boolean values" />
      <node concept="2MuU66" id="1dYSrZvpQwy" role="1OrNMJ">
        <property role="TrG5h" value="yes" />
        <node concept="3$6BPE" id="1dYSrZvpQwz" role="19IeeE" />
        <node concept="1tXIsk" id="1dYSrZvpQw$" role="1bGQZ8" />
      </node>
      <node concept="2MuU66" id="1dYSrZvpQw_" role="1OrNMJ">
        <property role="TrG5h" value="no" />
        <node concept="3$6BPE" id="1dYSrZvpQwA" role="19IeeE" />
        <node concept="3JGNCe" id="1dYSrZvpQwB" role="1bGQZ8" />
      </node>
      <node concept="2xtvZL" id="1dYSrZvpQwC" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvpQwE" role="2tmK5A">
          <ref role="2oxrr9" node="1dYSrZvpQwy" resolve="yes" />
        </node>
      </node>
      <node concept="2gzqXr" id="1dYSrZvpQwF" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvpQwH" role="2OlPJS">
          <ref role="2oxrr9" node="1dYSrZvpQw_" resolve="no" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpR4l" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvpR4o" role="1s_IBt">
          <ref role="2oxrr9" node="1dYSrZvpQwy" resolve="yes" />
        </node>
        <node concept="1tXIsk" id="1dYSrZvpR4p" role="3SOflj" />
      </node>
      <node concept="174eko" id="1dYSrZvpR4q" role="1OrNMJ">
        <node concept="2v$HdM" id="1dYSrZvpR4t" role="1s_IBt">
          <ref role="2oxrr9" node="1dYSrZvpQw_" resolve="no" />
        </node>
        <node concept="3JGNCe" id="1dYSrZvpR4u" role="3SOflj" />
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpQwP" role="1QJMAF">
      <property role="TrG5h" value="a template literal interpolates every span it holds" />
      <node concept="2MuU66" id="1dYSrZvpQwQ" role="1OrNMJ">
        <property role="TrG5h" value="who" />
        <node concept="2Kh4GC" id="1dYSrZvpQwR" role="19IeeE" />
        <node concept="33xXhr" id="1dYSrZvpQwS" role="1bGQZ8">
          <property role="3b_9E9" value="world" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQwT" role="1OrNMJ">
        <node concept="pYBGs" id="1dYSrZvpQwW" role="1s_IBt">
          <property role="15NrEc" value="hello " />
          <node concept="1q850F" id="1dYSrZvpQwX" role="cEYUq">
            <property role="3AYOxz" value="!" />
            <node concept="2v$HdM" id="1dYSrZvpQwZ" role="wIT5v">
              <ref role="2oxrr9" node="1dYSrZvpQwQ" resolve="who" />
            </node>
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpQx0" role="3SOflj">
          <property role="3b_9E9" value="hello world!" />
        </node>
      </node>
      <node concept="2MuU66" id="1dYSrZvpQx1" role="1OrNMJ">
        <property role="TrG5h" value="two" />
        <node concept="1ku6r5" id="1dYSrZvpQx2" role="19IeeE" />
        <node concept="24BhzH" id="1dYSrZvpQx3" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQx4" role="1OrNMJ">
        <node concept="pYBGs" id="1dYSrZvpQx7" role="1s_IBt">
          <property role="15NrEc" value="" />
          <node concept="1q850F" id="1dYSrZvpQx8" role="cEYUq">
            <property role="3AYOxz" value=" + " />
            <node concept="2v$HdM" id="1dYSrZvpQxa" role="wIT5v">
              <ref role="2oxrr9" node="1dYSrZvpQx1" resolve="two" />
            </node>
          </node>
          <node concept="1q850F" id="1dYSrZvpQxb" role="cEYUq">
            <property role="3AYOxz" value=" = " />
            <node concept="2v$HdM" id="1dYSrZvpQxd" role="wIT5v">
              <ref role="2oxrr9" node="1dYSrZvpQx1" resolve="two" />
            </node>
          </node>
          <node concept="1q850F" id="1dYSrZvpQxe" role="cEYUq">
            <property role="3AYOxz" value="" />
            <node concept="1rvuUm" id="1dYSrZvpQxg" role="wIT5v">
              <node concept="2v$HdM" id="1dYSrZvpQxj" role="33kRt2">
                <ref role="2oxrr9" node="1dYSrZvpQx1" resolve="two" />
              </node>
              <node concept="2v$HdM" id="1dYSrZvpQxk" role="GyX5B">
                <ref role="2oxrr9" node="1dYSrZvpQx1" resolve="two" />
              </node>
            </node>
          </node>
        </node>
        <node concept="33xXhr" id="1dYSrZvpQxl" role="3SOflj">
          <property role="3b_9E9" value="2 + 2 = 4" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpQxm" role="1QJMAF">
      <property role="TrG5h" value="a number literal can be written in any of the four bases" />
      <node concept="174eko" id="1dYSrZvpQxn" role="1OrNMJ">
        <node concept="24BhzH" id="1dYSrZvpQxq" role="1s_IBt">
          <property role="2Hr5CV" value="0xff" />
        </node>
        <node concept="24BhzH" id="1dYSrZvpQxr" role="3SOflj">
          <property role="2Hr5CV" value="255" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQxs" role="1OrNMJ">
        <node concept="24BhzH" id="1dYSrZvpQxv" role="1s_IBt">
          <property role="2Hr5CV" value="0b1010" />
        </node>
        <node concept="24BhzH" id="1dYSrZvpQxw" role="3SOflj">
          <property role="2Hr5CV" value="10" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQxx" role="1OrNMJ">
        <node concept="24BhzH" id="1dYSrZvpQx$" role="1s_IBt">
          <property role="2Hr5CV" value="0o17" />
        </node>
        <node concept="24BhzH" id="1dYSrZvpQx_" role="3SOflj">
          <property role="2Hr5CV" value="15" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="1dYSrZvpQxA" role="1QJMAF">
      <property role="TrG5h" value="digit separators are not part of the value, and a bigint is exact where a number is not" />
      <node concept="174eko" id="1dYSrZvpQxB" role="1OrNMJ">
        <node concept="24BhzH" id="1dYSrZvpQxE" role="1s_IBt">
          <property role="2Hr5CV" value="1_000_000" />
        </node>
        <node concept="24BhzH" id="1dYSrZvpQxF" role="3SOflj">
          <property role="2Hr5CV" value="1000000" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQxG" role="1OrNMJ">
        <node concept="1rvuUm" id="1dYSrZvpQxJ" role="1s_IBt">
          <node concept="24BhzH" id="1dYSrZvpQxM" role="33kRt2">
            <property role="2Hr5CV" value="9007199254740992n" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpQxN" role="GyX5B">
            <property role="2Hr5CV" value="1n" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpQxO" role="3SOflj">
          <property role="2Hr5CV" value="9007199254740993n" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQxP" role="1OrNMJ">
        <node concept="1rvuUm" id="1dYSrZvpQxS" role="1s_IBt">
          <node concept="24BhzH" id="1dYSrZvpQxV" role="33kRt2">
            <property role="2Hr5CV" value="9007199254740992" />
          </node>
          <node concept="24BhzH" id="1dYSrZvpQxW" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpQxX" role="3SOflj">
          <property role="2Hr5CV" value="9007199254740992" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="1dYSrZvpQJR">
    <property role="TrG5h" value="sequence" />
    <node concept="B13S5" id="1dYSrZvpQJS" role="1QJMAF">
      <property role="TrG5h" value="the comma operator evaluates both operands and yields the right one" />
      <node concept="174eko" id="1dYSrZvpQJT" role="1OrNMJ">
        <node concept="pJsIj" id="1dYSrZvpQJW" role="1s_IBt">
          <node concept="24ldvR" id="1dYSrZvpQJY" role="3tJ$EF">
            <node concept="2IAfPd" id="1dYSrZvpQK1" role="33kRt2">
              <node concept="24BhzH" id="1dYSrZvpQK3" role="3CQlky">
                <property role="2Hr5CV" value="0" />
              </node>
            </node>
            <node concept="24BhzH" id="1dYSrZvpQK4" role="GyX5B">
              <property role="2Hr5CV" value="42" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpQK5" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
      <node concept="174eko" id="1dYSrZvpQK6" role="1OrNMJ">
        <node concept="pJsIj" id="1dYSrZvpQK9" role="1s_IBt">
          <node concept="24ldvR" id="1dYSrZvpQKb" role="3tJ$EF">
            <node concept="24ldvR" id="1dYSrZvpQKe" role="33kRt2">
              <node concept="2IAfPd" id="1dYSrZvpQKh" role="33kRt2">
                <node concept="24BhzH" id="1dYSrZvpQKj" role="3CQlky">
                  <property role="2Hr5CV" value="0" />
                </node>
              </node>
              <node concept="2IAfPd" id="1dYSrZvpQKk" role="GyX5B">
                <node concept="24BhzH" id="1dYSrZvpQKm" role="3CQlky">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
            <node concept="24BhzH" id="1dYSrZvpQKn" role="GyX5B">
              <property role="2Hr5CV" value="7" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="1dYSrZvpQKo" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="465JEkTAO$v">
    <property role="TrG5h" value="functions" />
    <node concept="B13S5" id="465JEkTAO$w" role="1QJMAF">
      <property role="TrG5h" value="a function returns what its body computes" />
      <node concept="3Gxli7" id="465JEkTAO$x" role="1OrNMJ">
        <property role="TrG5h" value="double" />
        <node concept="SCM_e" id="465JEkTAO$z" role="3qLSqq">
          <property role="TrG5h" value="value" />
          <node concept="1ku6r5" id="465JEkTAO$_" role="2xFk6U" />
        </node>
        <node concept="1ku6r5" id="465JEkTAO$A" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAO$B" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTAO$C" role="6EW52">
            <node concept="mk1J3" id="465JEkTAO$D" role="qlm4T">
              <node concept="2v$HdM" id="465JEkTAO$G" role="33kRt2">
                <ref role="2oxrr9" node="465JEkTAO$z" resolve="value" />
              </node>
              <node concept="24BhzH" id="465JEkTAO$H" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTAO$I" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAO$L" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTAO$N" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAO$x" resolve="double" />
          </node>
          <node concept="24BhzH" id="465JEkTAO$O" role="DTHKp">
            <property role="2Hr5CV" value="21" />
          </node>
        </node>
        <node concept="24BhzH" id="465JEkTAO$P" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTAO$Q" role="1QJMAF">
      <property role="TrG5h" value="a function can call itself" />
      <node concept="3Gxli7" id="465JEkTAO$R" role="1OrNMJ">
        <property role="TrG5h" value="factorial" />
        <node concept="SCM_e" id="465JEkTAO$T" role="3qLSqq">
          <property role="TrG5h" value="n" />
          <node concept="1ku6r5" id="465JEkTAO$V" role="2xFk6U" />
        </node>
        <node concept="1ku6r5" id="465JEkTAO$W" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAO$X" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTAO$Y" role="6EW52">
            <node concept="0o88v" id="465JEkTAO$Z" role="qlm4T">
              <node concept="2Z6drc" id="465JEkTAO_3" role="3y1SWh">
                <node concept="2v$HdM" id="465JEkTAO_6" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAO$T" resolve="n" />
                </node>
                <node concept="24BhzH" id="465JEkTAO_7" role="GyX5B">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
              <node concept="24BhzH" id="465JEkTAO_8" role="10ubTB">
                <property role="2Hr5CV" value="1" />
              </node>
              <node concept="mk1J3" id="465JEkTAO_9" role="3nuTyc">
                <node concept="2v$HdM" id="465JEkTAO_c" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAO$T" resolve="n" />
                </node>
                <node concept="2R1OvL" id="465JEkTAO_d" role="GyX5B">
                  <node concept="2v$HdM" id="465JEkTAO_f" role="3yUXHQ">
                    <ref role="2oxrr9" node="465JEkTAO$R" resolve="factorial" />
                  </node>
                  <node concept="2IocK" id="465JEkTAO_g" role="DTHKp">
                    <node concept="2v$HdM" id="465JEkTAO_j" role="33kRt2">
                      <ref role="2oxrr9" node="465JEkTAO$T" resolve="n" />
                    </node>
                    <node concept="24BhzH" id="465JEkTAO_k" role="GyX5B">
                      <property role="2Hr5CV" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTAO_l" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAO_o" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTAO_q" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAO$R" resolve="factorial" />
          </node>
          <node concept="24BhzH" id="465JEkTAO_r" role="DTHKp">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
        <node concept="24BhzH" id="465JEkTAO_s" role="3SOflj">
          <property role="2Hr5CV" value="120" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTAO_t" role="1QJMAF">
      <property role="TrG5h" value="a function declared later can be called earlier, because declarations hoist" />
      <node concept="174eko" id="465JEkTAO_u" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAO_x" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTAO_z" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAO__" resolve="first" />
          </node>
        </node>
        <node concept="24BhzH" id="465JEkTAO_$" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="3Gxli7" id="465JEkTAO__" role="1OrNMJ">
        <property role="TrG5h" value="first" />
        <node concept="1ku6r5" id="465JEkTAO_B" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAO_C" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTAO_D" role="6EW52">
            <node concept="2R1OvL" id="465JEkTAO_E" role="qlm4T">
              <node concept="2v$HdM" id="465JEkTAO_G" role="3yUXHQ">
                <ref role="2oxrr9" node="465JEkTAO_H" resolve="second" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Gxli7" id="465JEkTAO_H" role="1OrNMJ">
        <property role="TrG5h" value="second" />
        <node concept="1ku6r5" id="465JEkTAO_J" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAO_K" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTAO_L" role="6EW52">
            <node concept="24BhzH" id="465JEkTAO_M" role="qlm4T">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTAO_N" role="1QJMAF">
      <property role="TrG5h" value="a void function runs for its effect and yields nothing" />
      <node concept="2swglJ" id="465JEkTAO_O" role="1OrNMJ">
        <property role="TrG5h" value="seen" />
        <node concept="1ku6r5" id="465JEkTAO_P" role="19IeeE" />
        <node concept="24BhzH" id="465JEkTAO_Q" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="3Gxli7" id="465JEkTAO_R" role="1OrNMJ">
        <property role="TrG5h" value="bump" />
        <node concept="qIwln" id="465JEkTAO_T" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAO_U" role="1PAOym">
          <node concept="3ja7nU" id="465JEkTAO_V" role="6EW52">
            <node concept="35aKX4" id="465JEkTAO_X" role="$a3P1">
              <node concept="2v$HdM" id="465JEkTAOA0" role="33kRt2">
                <ref role="2oxrr9" node="465JEkTAO_O" resolve="seen" />
              </node>
              <node concept="1rvuUm" id="465JEkTAOA1" role="GyX5B">
                <node concept="2v$HdM" id="465JEkTAOA4" role="33kRt2">
                  <ref role="2oxrr9" node="465JEkTAO_O" resolve="seen" />
                </node>
                <node concept="24BhzH" id="465JEkTAOA5" role="GyX5B">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3ja7nU" id="465JEkTAOA6" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAOA8" role="$a3P1">
          <node concept="2v$HdM" id="465JEkTAOAa" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAO_R" resolve="bump" />
          </node>
        </node>
      </node>
      <node concept="3ja7nU" id="465JEkTAOAb" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAOAd" role="$a3P1">
          <node concept="2v$HdM" id="465JEkTAOAf" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAO_R" resolve="bump" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTAOAg" role="1OrNMJ">
        <node concept="2v$HdM" id="465JEkTAOAj" role="1s_IBt">
          <ref role="2oxrr9" node="465JEkTAO_O" resolve="seen" />
        </node>
        <node concept="24BhzH" id="465JEkTAOAk" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTAOAl" role="1QJMAF">
      <property role="TrG5h" value="a function can be held in a variable of its function type and called through it" />
      <node concept="3Gxli7" id="465JEkTAOAm" role="1OrNMJ">
        <property role="TrG5h" value="triple" />
        <node concept="SCM_e" id="465JEkTAOAo" role="3qLSqq">
          <property role="TrG5h" value="value" />
          <node concept="1ku6r5" id="465JEkTAOAq" role="2xFk6U" />
        </node>
        <node concept="1ku6r5" id="465JEkTAOAr" role="jrNXk" />
        <node concept="qYD23" id="465JEkTAOAs" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTAOAt" role="6EW52">
            <node concept="mk1J3" id="465JEkTAOAu" role="qlm4T">
              <node concept="2v$HdM" id="465JEkTAOAx" role="33kRt2">
                <ref role="2oxrr9" node="465JEkTAOAo" resolve="value" />
              </node>
              <node concept="24BhzH" id="465JEkTAOAy" role="GyX5B">
                <property role="2Hr5CV" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2MuU66" id="465JEkTAOAz" role="1OrNMJ">
        <property role="TrG5h" value="alias" />
        <node concept="3MZLnu" id="465JEkTAOA$" role="19IeeE">
          <node concept="2Fu235" id="465JEkTAOAA" role="2thRFd">
            <property role="TrG5h" value="anyNameAtAll" />
            <node concept="1ku6r5" id="465JEkTAOAC" role="3cr0mA" />
          </node>
          <node concept="1ku6r5" id="465JEkTAOAD" role="19PnrX" />
        </node>
        <node concept="2v$HdM" id="465JEkTAOAE" role="1bGQZ8">
          <ref role="2oxrr9" node="465JEkTAOAm" resolve="triple" />
        </node>
      </node>
      <node concept="174eko" id="465JEkTAOAF" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTAOAI" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTAOAK" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTAOAz" resolve="alias" />
          </node>
          <node concept="24BhzH" id="465JEkTAOAL" role="DTHKp">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
        <node concept="24BhzH" id="465JEkTAOAM" role="3SOflj">
          <property role="2Hr5CV" value="15" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="465JEkTIpxX">
    <property role="TrG5h" value="parameters" />
    <node concept="B13S5" id="465JEkTIpxY" role="1QJMAF">
      <property role="TrG5h" value="a default value is used only when the argument is left out" />
      <node concept="3Gxli7" id="465JEkTIpxZ" role="1OrNMJ">
        <property role="TrG5h" value="label" />
        <node concept="SCM_e" id="465JEkTIpy1" role="3qLSqq">
          <property role="TrG5h" value="text" />
          <node concept="2Kh4GC" id="465JEkTIpy3" role="2xFk6U" />
        </node>
        <node concept="SCM_e" id="465JEkTIpy4" role="3qLSqq">
          <property role="TrG5h" value="prefix" />
          <node concept="2Kh4GC" id="465JEkTIpy6" role="2xFk6U" />
          <node concept="33xXhr" id="465JEkTIpy7" role="1ciTpo">
            <property role="3b_9E9" value="&gt; " />
          </node>
        </node>
        <node concept="2Kh4GC" id="465JEkTIpy8" role="jrNXk" />
        <node concept="qYD23" id="465JEkTIpy9" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTIpya" role="6EW52">
            <node concept="1rvuUm" id="465JEkTIpyb" role="qlm4T">
              <node concept="2v$HdM" id="465JEkTIpye" role="33kRt2">
                <ref role="2oxrr9" node="465JEkTIpy4" resolve="prefix" />
              </node>
              <node concept="2v$HdM" id="465JEkTIpyf" role="GyX5B">
                <ref role="2oxrr9" node="465JEkTIpy1" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTIpyg" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpyj" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpyl" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpxZ" resolve="label" />
          </node>
          <node concept="33xXhr" id="465JEkTIpym" role="DTHKp">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
        <node concept="33xXhr" id="465JEkTIpyn" role="3SOflj">
          <property role="3b_9E9" value="&gt; a" />
        </node>
      </node>
      <node concept="174eko" id="465JEkTIpyo" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpyr" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpyt" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpxZ" resolve="label" />
          </node>
          <node concept="33xXhr" id="465JEkTIpyu" role="DTHKp">
            <property role="3b_9E9" value="a" />
          </node>
          <node concept="33xXhr" id="465JEkTIpyv" role="DTHKp">
            <property role="3b_9E9" value="* " />
          </node>
        </node>
        <node concept="33xXhr" id="465JEkTIpyw" role="3SOflj">
          <property role="3b_9E9" value="* a" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTIpyx" role="1QJMAF">
      <property role="TrG5h" value="an optional parameter is undefined when it is left out" />
      <node concept="3Gxli7" id="465JEkTIpyy" role="1OrNMJ">
        <property role="TrG5h" value="maybe" />
        <node concept="SCM_e" id="465JEkTIpy$" role="3qLSqq">
          <property role="35kMex" value="true" />
          <property role="TrG5h" value="value" />
          <node concept="2Kh4GC" id="465JEkTIpyA" role="2xFk6U" />
        </node>
        <node concept="3pfgAg" id="465JEkTIpyB" role="jrNXk">
          <node concept="2Kh4GC" id="465JEkTIpyC" role="3KvU$C" />
          <node concept="3OJVyd" id="465JEkTIpyD" role="3KvU$C" />
        </node>
        <node concept="qYD23" id="465JEkTIpyE" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTIpyF" role="6EW52">
            <node concept="2v$HdM" id="465JEkTIpyG" role="qlm4T">
              <ref role="2oxrr9" node="465JEkTIpy$" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTIpyH" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpyK" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpyM" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpyy" resolve="maybe" />
          </node>
        </node>
        <node concept="2OeDxu" id="465JEkTIpyN" role="3SOflj" />
      </node>
      <node concept="174eko" id="465JEkTIpyO" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpyR" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpyT" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpyy" resolve="maybe" />
          </node>
          <node concept="33xXhr" id="465JEkTIpyU" role="DTHKp">
            <property role="3b_9E9" value="here" />
          </node>
        </node>
        <node concept="33xXhr" id="465JEkTIpyV" role="3SOflj">
          <property role="3b_9E9" value="here" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="465JEkTIpyW" role="1QJMAF">
      <property role="TrG5h" value="a rest parameter takes any number of arguments, including none" />
      <node concept="3Gxli7" id="465JEkTIpyX" role="1OrNMJ">
        <property role="TrG5h" value="tally" />
        <node concept="SCM_e" id="465JEkTIpyZ" role="3qLSqq">
          <property role="TrG5h" value="label" />
          <node concept="2Kh4GC" id="465JEkTIpz1" role="2xFk6U" />
        </node>
        <node concept="SCM_e" id="465JEkTIpz2" role="3qLSqq">
          <property role="1d60j6" value="true" />
          <property role="TrG5h" value="values" />
          <node concept="29s1Bg" id="465JEkTIpz4" role="2xFk6U">
            <node concept="1ku6r5" id="465JEkTIpz6" role="2XRTOt" />
          </node>
        </node>
        <node concept="2Kh4GC" id="465JEkTIpz7" role="jrNXk" />
        <node concept="qYD23" id="465JEkTIpz8" role="1PAOym">
          <node concept="3wbn4H" id="465JEkTIpz9" role="6EW52">
            <node concept="2v$HdM" id="465JEkTIpza" role="qlm4T">
              <ref role="2oxrr9" node="465JEkTIpyZ" resolve="label" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="465JEkTIpzb" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpze" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpzg" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpyX" resolve="tally" />
          </node>
          <node concept="33xXhr" id="465JEkTIpzh" role="DTHKp">
            <property role="3b_9E9" value="none" />
          </node>
        </node>
        <node concept="33xXhr" id="465JEkTIpzi" role="3SOflj">
          <property role="3b_9E9" value="none" />
        </node>
      </node>
      <node concept="174eko" id="465JEkTIpzj" role="1OrNMJ">
        <node concept="2R1OvL" id="465JEkTIpzm" role="1s_IBt">
          <node concept="2v$HdM" id="465JEkTIpzo" role="3yUXHQ">
            <ref role="2oxrr9" node="465JEkTIpyX" resolve="tally" />
          </node>
          <node concept="33xXhr" id="465JEkTIpzp" role="DTHKp">
            <property role="3b_9E9" value="three" />
          </node>
          <node concept="24BhzH" id="465JEkTIpzq" role="DTHKp">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="465JEkTIpzr" role="DTHKp">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="465JEkTIpzs" role="DTHKp">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="33xXhr" id="465JEkTIpzt" role="3SOflj">
          <property role="3b_9E9" value="three" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6frVC3">
    <property role="TrG5h" value="arrows" />
    <node concept="B13S5" id="5OpYk6frVC4" role="1QJMAF">
      <property role="TrG5h" value="an arrow function with an expression body returns that expression" />
      <node concept="2MuU66" id="5OpYk6frVC5" role="1OrNMJ">
        <property role="TrG5h" value="double" />
        <node concept="3MZLnu" id="5OpYk6frVC6" role="19IeeE">
          <node concept="2Fu235" id="5OpYk6frVC8" role="2thRFd">
            <property role="TrG5h" value="a" />
            <node concept="1ku6r5" id="5OpYk6frVCa" role="3cr0mA" />
          </node>
          <node concept="1ku6r5" id="5OpYk6frVCb" role="19PnrX" />
        </node>
        <node concept="1b$XOi" id="5OpYk6frVCc" role="1bGQZ8">
          <node concept="SCM_e" id="5OpYk6frVCf" role="3qLSqq">
            <property role="TrG5h" value="value" />
            <node concept="1ku6r5" id="5OpYk6frVCh" role="2xFk6U" />
          </node>
          <node concept="bMiiA" id="5OpYk6frVCi" role="34pjIZ">
            <node concept="mk1J3" id="5OpYk6frVCk" role="QAdmJ">
              <node concept="2v$HdM" id="5OpYk6frVCn" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6frVCf" resolve="value" />
              </node>
              <node concept="24BhzH" id="5OpYk6frVCo" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6frVCp" role="1OrNMJ">
        <node concept="2R1OvL" id="5OpYk6frVCs" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6frVCu" role="3yUXHQ">
            <ref role="2oxrr9" node="5OpYk6frVC5" resolve="double" />
          </node>
          <node concept="24BhzH" id="5OpYk6frVCv" role="DTHKp">
            <property role="2Hr5CV" value="21" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6frVCw" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6frVCx" role="1QJMAF">
      <property role="TrG5h" value="an arrow function with a block body returns through a return statement" />
      <node concept="2MuU66" id="5OpYk6frVCy" role="1OrNMJ">
        <property role="TrG5h" value="shout" />
        <node concept="1b$XOi" id="5OpYk6frVCz" role="1bGQZ8">
          <node concept="SCM_e" id="5OpYk6frVCA" role="3qLSqq">
            <property role="TrG5h" value="text" />
            <node concept="2Kh4GC" id="5OpYk6frVCC" role="2xFk6U" />
          </node>
          <node concept="2Kh4GC" id="5OpYk6frVCD" role="jrNXk" />
          <node concept="qYD23" id="5OpYk6frVCE" role="34pjIZ">
            <node concept="3wbn4H" id="5OpYk6frVCF" role="6EW52">
              <node concept="1rvuUm" id="5OpYk6frVCG" role="qlm4T">
                <node concept="2v$HdM" id="5OpYk6frVCJ" role="33kRt2">
                  <ref role="2oxrr9" node="5OpYk6frVCA" resolve="text" />
                </node>
                <node concept="33xXhr" id="5OpYk6frVCK" role="GyX5B">
                  <property role="3b_9E9" value="!" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6frVCL" role="1OrNMJ">
        <node concept="2R1OvL" id="5OpYk6frVCO" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6frVCQ" role="3yUXHQ">
            <ref role="2oxrr9" node="5OpYk6frVCy" resolve="shout" />
          </node>
          <node concept="33xXhr" id="5OpYk6frVCR" role="DTHKp">
            <property role="3b_9E9" value="hey" />
          </node>
        </node>
        <node concept="33xXhr" id="5OpYk6frVCS" role="3SOflj">
          <property role="3b_9E9" value="hey!" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6frVCT" role="1QJMAF">
      <property role="TrG5h" value="an arrow function can be handed to a function that calls it" />
      <node concept="3Gxli7" id="5OpYk6frVCU" role="1OrNMJ">
        <property role="TrG5h" value="applyTwice" />
        <node concept="SCM_e" id="5OpYk6frVCW" role="3qLSqq">
          <property role="TrG5h" value="operation" />
          <node concept="3MZLnu" id="5OpYk6frVCY" role="2xFk6U">
            <node concept="2Fu235" id="5OpYk6frVD0" role="2thRFd">
              <property role="TrG5h" value="a" />
              <node concept="1ku6r5" id="5OpYk6frVD2" role="3cr0mA" />
            </node>
            <node concept="1ku6r5" id="5OpYk6frVD3" role="19PnrX" />
          </node>
        </node>
        <node concept="SCM_e" id="5OpYk6frVD4" role="3qLSqq">
          <property role="TrG5h" value="start" />
          <node concept="1ku6r5" id="5OpYk6frVD6" role="2xFk6U" />
        </node>
        <node concept="1ku6r5" id="5OpYk6frVD7" role="jrNXk" />
        <node concept="qYD23" id="5OpYk6frVD8" role="1PAOym">
          <node concept="3wbn4H" id="5OpYk6frVD9" role="6EW52">
            <node concept="2R1OvL" id="5OpYk6frVDa" role="qlm4T">
              <node concept="2v$HdM" id="5OpYk6frVDc" role="3yUXHQ">
                <ref role="2oxrr9" node="5OpYk6frVCW" resolve="operation" />
              </node>
              <node concept="2R1OvL" id="5OpYk6frVDd" role="DTHKp">
                <node concept="2v$HdM" id="5OpYk6frVDf" role="3yUXHQ">
                  <ref role="2oxrr9" node="5OpYk6frVCW" resolve="operation" />
                </node>
                <node concept="2v$HdM" id="5OpYk6frVDg" role="DTHKp">
                  <ref role="2oxrr9" node="5OpYk6frVD4" resolve="start" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6frVDh" role="1OrNMJ">
        <node concept="2R1OvL" id="5OpYk6frVDk" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6frVDm" role="3yUXHQ">
            <ref role="2oxrr9" node="5OpYk6frVCU" resolve="applyTwice" />
          </node>
          <node concept="1b$XOi" id="5OpYk6frVDn" role="DTHKp">
            <node concept="SCM_e" id="5OpYk6frVDq" role="3qLSqq">
              <property role="TrG5h" value="n" />
              <node concept="1ku6r5" id="5OpYk6frVDs" role="2xFk6U" />
            </node>
            <node concept="bMiiA" id="5OpYk6frVDt" role="34pjIZ">
              <node concept="1rvuUm" id="5OpYk6frVDv" role="QAdmJ">
                <node concept="2v$HdM" id="5OpYk6frVDy" role="33kRt2">
                  <ref role="2oxrr9" node="5OpYk6frVDq" resolve="n" />
                </node>
                <node concept="24BhzH" id="5OpYk6frVDz" role="GyX5B">
                  <property role="2Hr5CV" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="24BhzH" id="5OpYk6frVD$" role="DTHKp">
            <property role="2Hr5CV" value="40" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6frVD_" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6f$$4Z">
    <property role="TrG5h" value="compound_assignment" />
    <node concept="B13S5" id="5OpYk6f$$50" role="1QJMAF">
      <property role="TrG5h" value="the arithmetic compound operators fold the operator into the write" />
      <node concept="2swglJ" id="5OpYk6f$$51" role="1OrNMJ">
        <property role="TrG5h" value="n" />
        <node concept="1ku6r5" id="5OpYk6f$$52" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6f$$53" role="1bGQZ8">
          <property role="2Hr5CV" value="10" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$54" role="1OrNMJ">
        <node concept="3iFsGD" id="5OpYk6f$$56" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$59" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$5a" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$5b" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$5e" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$5f" role="3SOflj">
          <property role="2Hr5CV" value="15" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$5g" role="1OrNMJ">
        <node concept="3bMN1T" id="5OpYk6f$$5i" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$5l" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$5m" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$5n" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$5q" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$5r" role="3SOflj">
          <property role="2Hr5CV" value="12" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$5s" role="1OrNMJ">
        <node concept="22FROQ" id="5OpYk6f$$5u" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$5x" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$5y" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$5z" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$5A" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$5B" role="3SOflj">
          <property role="2Hr5CV" value="24" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$5C" role="1OrNMJ">
        <node concept="qYJAT" id="5OpYk6f$$5E" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$5H" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$5I" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$5J" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$5M" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$5N" role="3SOflj">
          <property role="2Hr5CV" value="6" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$5O" role="1OrNMJ">
        <node concept="1i3mww" id="5OpYk6f$$5Q" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$5T" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$5U" role="GyX5B">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$5V" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$5Y" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$5Z" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$60" role="1OrNMJ">
        <node concept="3d9ja" id="5OpYk6f$$62" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$65" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$66" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$67" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$6a" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$51" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$6b" role="3SOflj">
          <property role="2Hr5CV" value="8" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6f$$6c" role="1QJMAF">
      <property role="TrG5h" value="the bitwise compound operators fold the operator into the write" />
      <node concept="2swglJ" id="5OpYk6f$$6d" role="1OrNMJ">
        <property role="TrG5h" value="b" />
        <node concept="1ku6r5" id="5OpYk6f$$6e" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6f$$6f" role="1bGQZ8">
          <property role="2Hr5CV" value="12" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$6g" role="1OrNMJ">
        <node concept="2NVYov" id="5OpYk6f$$6i" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$6l" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$6m" role="GyX5B">
            <property role="2Hr5CV" value="10" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$6n" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$6q" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$6r" role="3SOflj">
          <property role="2Hr5CV" value="8" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$6s" role="1OrNMJ">
        <node concept="1bETeD" id="5OpYk6f$$6u" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$6x" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$6y" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$6z" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$6A" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$6B" role="3SOflj">
          <property role="2Hr5CV" value="9" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$6C" role="1OrNMJ">
        <node concept="1dqbpN" id="5OpYk6f$$6E" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$6H" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$6I" role="GyX5B">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$6J" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$6M" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$6N" role="3SOflj">
          <property role="2Hr5CV" value="10" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$6O" role="1OrNMJ">
        <node concept="l84A7" id="5OpYk6f$$6Q" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$6T" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$6U" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$6V" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$6Y" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$6Z" role="3SOflj">
          <property role="2Hr5CV" value="40" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$70" role="1OrNMJ">
        <node concept="1pLGL4" id="5OpYk6f$$72" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$75" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$76" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$77" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$7a" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$7b" role="3SOflj">
          <property role="2Hr5CV" value="20" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$7c" role="1OrNMJ">
        <node concept="yXCfo" id="5OpYk6f$$7e" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$7h" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$7i" role="GyX5B">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$7j" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$7m" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$6d" resolve="b" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$7n" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6f$$7o" role="1QJMAF">
      <property role="TrG5h" value="plus equals concatenates, and takes a number on its right" />
      <node concept="2swglJ" id="5OpYk6f$$7p" role="1OrNMJ">
        <property role="TrG5h" value="s" />
        <node concept="2Kh4GC" id="5OpYk6f$$7q" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6f$$7r" role="1bGQZ8">
          <property role="3b_9E9" value="a" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$7s" role="1OrNMJ">
        <node concept="3iFsGD" id="5OpYk6f$$7u" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$7x" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$7p" resolve="s" />
          </node>
          <node concept="33xXhr" id="5OpYk6f$$7y" role="GyX5B">
            <property role="3b_9E9" value="b" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$7z" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$7A" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$7p" resolve="s" />
        </node>
        <node concept="33xXhr" id="5OpYk6f$$7B" role="3SOflj">
          <property role="3b_9E9" value="ab" />
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$7C" role="1OrNMJ">
        <node concept="3iFsGD" id="5OpYk6f$$7E" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$7H" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$7p" resolve="s" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$7I" role="GyX5B">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$7J" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$7M" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$7p" resolve="s" />
        </node>
        <node concept="33xXhr" id="5OpYk6f$$7N" role="3SOflj">
          <property role="3b_9E9" value="ab1" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6f$$7O" role="1QJMAF">
      <property role="TrG5h" value="the logical compound operators write only when the left operand lets them" />
      <node concept="2swglJ" id="5OpYk6f$$7P" role="1OrNMJ">
        <property role="TrG5h" value="t" />
        <node concept="3$6BPE" id="5OpYk6f$$7Q" role="19IeeE" />
        <node concept="1tXIsk" id="5OpYk6f$$7R" role="1bGQZ8" />
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$7S" role="1OrNMJ">
        <node concept="$iRRg" id="5OpYk6f$$7U" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$7X" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
          </node>
          <node concept="3JGNCe" id="5OpYk6f$$7Y" role="GyX5B" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$7Z" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$82" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
        </node>
        <node concept="3JGNCe" id="5OpYk6f$$83" role="3SOflj" />
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$84" role="1OrNMJ">
        <node concept="$iRRg" id="5OpYk6f$$86" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$89" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
          </node>
          <node concept="1tXIsk" id="5OpYk6f$$8a" role="GyX5B" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$8b" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$8e" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
        </node>
        <node concept="3JGNCe" id="5OpYk6f$$8f" role="3SOflj" />
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$8g" role="1OrNMJ">
        <node concept="36m03P" id="5OpYk6f$$8i" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$8l" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
          </node>
          <node concept="1tXIsk" id="5OpYk6f$$8m" role="GyX5B" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$8n" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$8q" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$7P" resolve="t" />
        </node>
        <node concept="1tXIsk" id="5OpYk6f$$8r" role="3SOflj" />
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6f$$8s" role="1QJMAF">
      <property role="TrG5h" value="nullish assignment writes only over null and undefined" />
      <node concept="3Gxli7" id="5OpYk6f$$8t" role="1OrNMJ">
        <property role="TrG5h" value="maybeThree" />
        <node concept="3pfgAg" id="5OpYk6f$$8v" role="jrNXk">
          <node concept="2UUy$f" id="5OpYk6f$$8w" role="3KvU$C" />
          <node concept="1ku6r5" id="5OpYk6f$$8x" role="3KvU$C" />
        </node>
        <node concept="qYD23" id="5OpYk6f$$8y" role="1PAOym">
          <node concept="3wbn4H" id="5OpYk6f$$8z" role="6EW52">
            <node concept="24BhzH" id="5OpYk6f$$8$" role="qlm4T">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6f$$8_" role="1OrNMJ">
        <property role="TrG5h" value="empty" />
        <node concept="3pfgAg" id="5OpYk6f$$8A" role="19IeeE">
          <node concept="2UUy$f" id="5OpYk6f$$8B" role="3KvU$C" />
          <node concept="1ku6r5" id="5OpYk6f$$8C" role="3KvU$C" />
        </node>
        <node concept="C5IwR" id="5OpYk6f$$8D" role="1bGQZ8" />
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$8E" role="1OrNMJ">
        <node concept="IRftP" id="5OpYk6f$$8G" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$8J" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$8_" resolve="empty" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$8K" role="GyX5B">
            <property role="2Hr5CV" value="7" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$8L" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$8O" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$8_" resolve="empty" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$8P" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6f$$8Q" role="1OrNMJ">
        <property role="TrG5h" value="filled" />
        <node concept="3pfgAg" id="5OpYk6f$$8R" role="19IeeE">
          <node concept="2UUy$f" id="5OpYk6f$$8S" role="3KvU$C" />
          <node concept="1ku6r5" id="5OpYk6f$$8T" role="3KvU$C" />
        </node>
        <node concept="2R1OvL" id="5OpYk6f$$8U" role="1bGQZ8">
          <node concept="2v$HdM" id="5OpYk6f$$8W" role="3yUXHQ">
            <ref role="2oxrr9" node="5OpYk6f$$8t" resolve="maybeThree" />
          </node>
        </node>
      </node>
      <node concept="3ja7nU" id="5OpYk6f$$8X" role="1OrNMJ">
        <node concept="IRftP" id="5OpYk6f$$8Z" role="$a3P1">
          <node concept="2v$HdM" id="5OpYk6f$$92" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6f$$8Q" resolve="filled" />
          </node>
          <node concept="24BhzH" id="5OpYk6f$$93" role="GyX5B">
            <property role="2Hr5CV" value="9" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6f$$94" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6f$$97" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6f$$8Q" resolve="filled" />
        </node>
        <node concept="24BhzH" id="5OpYk6f$$98" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6fENnE">
    <property role="TrG5h" value="increment_and_decrement" />
    <node concept="B13S5" id="5OpYk6fENnF" role="1QJMAF">
      <property role="TrG5h" value="a prefix increment yields the value it wrote" />
      <node concept="2swglJ" id="5OpYk6fENnG" role="1OrNMJ">
        <property role="TrG5h" value="i" />
        <node concept="1ku6r5" id="5OpYk6fENnH" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENnI" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENnJ" role="1OrNMJ">
        <node concept="2joTMQ" id="5OpYk6fENnM" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6fENnO" role="3CQlky">
            <ref role="2oxrr9" node="5OpYk6fENnG" resolve="i" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fENnP" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENnQ" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6fENnT" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6fENnG" resolve="i" />
        </node>
        <node concept="24BhzH" id="5OpYk6fENnU" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fENnV" role="1QJMAF">
      <property role="TrG5h" value="a postfix increment yields the value it replaced" />
      <node concept="2swglJ" id="5OpYk6fENnW" role="1OrNMJ">
        <property role="TrG5h" value="i" />
        <node concept="1ku6r5" id="5OpYk6fENnX" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENnY" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENnZ" role="1OrNMJ">
        <node concept="10p$M9" id="5OpYk6fENo2" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6fENo4" role="2Psk$b">
            <ref role="2oxrr9" node="5OpYk6fENnW" resolve="i" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fENo5" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENo6" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6fENo9" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6fENnW" resolve="i" />
        </node>
        <node concept="24BhzH" id="5OpYk6fENoa" role="3SOflj">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fENob" role="1QJMAF">
      <property role="TrG5h" value="the decrements are the same two in the other direction" />
      <node concept="2swglJ" id="5OpYk6fENoc" role="1OrNMJ">
        <property role="TrG5h" value="i" />
        <node concept="1ku6r5" id="5OpYk6fENod" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENoe" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENof" role="1OrNMJ">
        <node concept="3LUO1K" id="5OpYk6fENoi" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6fENok" role="3CQlky">
            <ref role="2oxrr9" node="5OpYk6fENoc" resolve="i" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fENol" role="3SOflj">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENom" role="1OrNMJ">
        <node concept="34OzTH" id="5OpYk6fENop" role="1s_IBt">
          <node concept="2v$HdM" id="5OpYk6fENor" role="2Psk$b">
            <ref role="2oxrr9" node="5OpYk6fENoc" resolve="i" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fENos" role="3SOflj">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENot" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6fENow" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6fENoc" resolve="i" />
        </node>
        <node concept="24BhzH" id="5OpYk6fENox" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fENoy" role="1QJMAF">
      <property role="TrG5h" value="postfix binds tighter than a prefix operator, and both tighter than the binary ones" />
      <node concept="2swglJ" id="5OpYk6fENoz" role="1OrNMJ">
        <property role="TrG5h" value="i" />
        <node concept="1ku6r5" id="5OpYk6fENo$" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENo_" role="1bGQZ8">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENoA" role="1OrNMJ">
        <node concept="2t6vHR" id="5OpYk6fENoD" role="1s_IBt">
          <node concept="10p$M9" id="5OpYk6fENoF" role="3CQlky">
            <node concept="2v$HdM" id="5OpYk6fENoH" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fENoz" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="2t6vHR" id="5OpYk6fENoI" role="3SOflj">
          <node concept="24BhzH" id="5OpYk6fENoK" role="3CQlky">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6fENoL" role="1OrNMJ">
        <property role="TrG5h" value="j" />
        <node concept="1ku6r5" id="5OpYk6fENoM" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENoN" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENoO" role="1OrNMJ">
        <node concept="1rvuUm" id="5OpYk6fENoR" role="1s_IBt">
          <node concept="10p$M9" id="5OpYk6fENoU" role="33kRt2">
            <node concept="2v$HdM" id="5OpYk6fENoW" role="2Psk$b">
              <ref role="2oxrr9" node="5OpYk6fENoL" resolve="j" />
            </node>
          </node>
          <node concept="2joTMQ" id="5OpYk6fENoX" role="GyX5B">
            <node concept="2v$HdM" id="5OpYk6fENoZ" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fENoL" resolve="j" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fENp0" role="3SOflj">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fENp1" role="1QJMAF">
      <property role="TrG5h" value="a prefix decrement is spelled apart from the minus in front of it" />
      <node concept="2swglJ" id="5OpYk6fENp2" role="1OrNMJ">
        <property role="TrG5h" value="i" />
        <node concept="1ku6r5" id="5OpYk6fENp3" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6fENp4" role="1bGQZ8">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENp5" role="1OrNMJ">
        <node concept="2t6vHR" id="5OpYk6fENp8" role="1s_IBt">
          <node concept="3LUO1K" id="5OpYk6fENpa" role="3CQlky">
            <node concept="2v$HdM" id="5OpYk6fENpc" role="3CQlky">
              <ref role="2oxrr9" node="5OpYk6fENp2" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="2t6vHR" id="5OpYk6fENpd" role="3SOflj">
          <node concept="24BhzH" id="5OpYk6fENpf" role="3CQlky">
            <property role="2Hr5CV" value="4" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fENpg" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6fENpj" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6fENp2" resolve="i" />
        </node>
        <node concept="24BhzH" id="5OpYk6fENpk" role="3SOflj">
          <property role="2Hr5CV" value="4" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6fTVOP">
    <property role="TrG5h" value="objects" />
    <node concept="B13S5" id="5OpYk6fTVOQ" role="1QJMAF">
      <property role="TrG5h" value="a property can be read back off the literal that set it" />
      <node concept="2MuU66" id="5OpYk6fTVOR" role="1OrNMJ">
        <property role="TrG5h" value="point" />
        <node concept="3n0$7x" id="5OpYk6fTVOS" role="19IeeE">
          <node concept="1D9KjG" id="5OpYk6fTVOT" role="2XfbTT">
            <property role="TrG5h" value="x" />
            <node concept="1ku6r5" id="5OpYk6fTVOV" role="ahpXF" />
          </node>
          <node concept="1D9KjG" id="5OpYk6fTVOW" role="2XfbTT">
            <property role="TrG5h" value="y" />
            <node concept="1ku6r5" id="5OpYk6fTVOY" role="ahpXF" />
          </node>
        </node>
        <node concept="2R1HYX" id="5OpYk6fTVOZ" role="1bGQZ8">
          <node concept="17ea8W" id="5OpYk6fTVP0" role="1hgjXh">
            <property role="TrG5h" value="x" />
            <node concept="24BhzH" id="5OpYk6fTVP2" role="hsbV_">
              <property role="2Hr5CV" value="3" />
            </node>
          </node>
          <node concept="17ea8W" id="5OpYk6fTVP3" role="1hgjXh">
            <property role="TrG5h" value="y" />
            <node concept="24BhzH" id="5OpYk6fTVP5" role="hsbV_">
              <property role="2Hr5CV" value="4" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVP6" role="1OrNMJ">
        <node concept="3JE1iy" id="5OpYk6hsWCL" role="1s_IBt">
          <ref role="1S4wBi" node="5OpYk6fTVOT" resolve="x" />
          <node concept="2v$HdM" id="5OpYk6hsWCM" role="3yaB8J">
            <ref role="2oxrr9" node="5OpYk6fTVOR" resolve="point" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTVPc" role="3SOflj">
          <property role="2Hr5CV" value="3" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVPd" role="1OrNMJ">
        <node concept="1rvuUm" id="5OpYk6fTVPg" role="1s_IBt">
          <node concept="3JE1iy" id="5OpYk6hsWCN" role="33kRt2">
            <ref role="1S4wBi" node="5OpYk6fTVOT" resolve="x" />
            <node concept="2v$HdM" id="5OpYk6hsWCO" role="3yaB8J">
              <ref role="2oxrr9" node="5OpYk6fTVOR" resolve="point" />
            </node>
          </node>
          <node concept="3JE1iy" id="5OpYk6hsWCP" role="GyX5B">
            <ref role="1S4wBi" node="5OpYk6fTVOW" resolve="y" />
            <node concept="2v$HdM" id="5OpYk6hsWCQ" role="3yaB8J">
              <ref role="2oxrr9" node="5OpYk6fTVOR" resolve="point" />
            </node>
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTVPp" role="3SOflj">
          <property role="2Hr5CV" value="7" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fTVPq" role="1QJMAF">
      <property role="TrG5h" value="a wider object stands where a narrower type is wanted, and keeps what it had" />
      <node concept="2MuU66" id="5OpYk6fTVPr" role="1OrNMJ">
        <property role="TrG5h" value="labelled" />
        <node concept="2R1HYX" id="5OpYk6fTVPs" role="1bGQZ8">
          <node concept="17ea8W" id="5OpYk6fTVPt" role="1hgjXh">
            <property role="TrG5h" value="x" />
            <node concept="24BhzH" id="5OpYk6fTVPv" role="hsbV_">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="17ea8W" id="5OpYk6fTVPw" role="1hgjXh">
            <property role="TrG5h" value="label" />
            <node concept="33xXhr" id="5OpYk6fTVPy" role="hsbV_">
              <property role="3b_9E9" value="here" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2MuU66" id="5OpYk6fTVPz" role="1OrNMJ">
        <property role="TrG5h" value="narrowed" />
        <node concept="3n0$7x" id="5OpYk6fTVP$" role="19IeeE">
          <node concept="1D9KjG" id="5OpYk6fTVP_" role="2XfbTT">
            <property role="TrG5h" value="x" />
            <node concept="1ku6r5" id="5OpYk6fTVPB" role="ahpXF" />
          </node>
        </node>
        <node concept="2v$HdM" id="5OpYk6fTVPC" role="1bGQZ8">
          <ref role="2oxrr9" node="5OpYk6fTVPr" resolve="labelled" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVPD" role="1OrNMJ">
        <node concept="3JE1iy" id="5OpYk6hsWCR" role="1s_IBt">
          <ref role="1S4wBi" node="5OpYk6fTVP_" resolve="x" />
          <node concept="2v$HdM" id="5OpYk6hsWCS" role="3yaB8J">
            <ref role="2oxrr9" node="5OpYk6fTVPz" resolve="narrowed" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTVPJ" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVPK" role="1OrNMJ">
        <node concept="SU78L" id="5OpYk6fTVPN" role="1s_IBt">
          <property role="2nSurL" value="label" />
          <node concept="2v$HdM" id="5OpYk6fTVPP" role="2Bgfcn">
            <ref role="2oxrr9" node="5OpYk6fTVPr" resolve="labelled" />
          </node>
        </node>
        <node concept="33xXhr" id="5OpYk6fTVPQ" role="3SOflj">
          <property role="3b_9E9" value="here" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fTVPR" role="1QJMAF">
      <property role="TrG5h" value="an optional member that was never set reads as undefined" />
      <node concept="2MuU66" id="5OpYk6fTVPS" role="1OrNMJ">
        <property role="TrG5h" value="sparse" />
        <node concept="3n0$7x" id="5OpYk6fTVPT" role="19IeeE">
          <node concept="1D9KjG" id="5OpYk6fTVPU" role="2XfbTT">
            <property role="TrG5h" value="x" />
            <node concept="1ku6r5" id="5OpYk6fTVPW" role="ahpXF" />
          </node>
          <node concept="1D9KjG" id="5OpYk6fTVPX" role="2XfbTT">
            <property role="TrG5h" value="note" />
            <property role="Cc4jk" value="true" />
            <node concept="2Kh4GC" id="5OpYk6fTVPZ" role="ahpXF" />
          </node>
        </node>
        <node concept="2R1HYX" id="5OpYk6fTVQ0" role="1bGQZ8">
          <node concept="17ea8W" id="5OpYk6fTVQ1" role="1hgjXh">
            <property role="TrG5h" value="x" />
            <node concept="24BhzH" id="5OpYk6fTVQ3" role="hsbV_">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVQ4" role="1OrNMJ">
        <node concept="3JE1iy" id="5OpYk6hsWCT" role="1s_IBt">
          <ref role="1S4wBi" node="5OpYk6fTVPX" resolve="note" />
          <node concept="2v$HdM" id="5OpYk6hsWCU" role="3yaB8J">
            <ref role="2oxrr9" node="5OpYk6fTVPS" resolve="sparse" />
          </node>
        </node>
        <node concept="2OeDxu" id="5OpYk6fTVQa" role="3SOflj" />
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fTVQb" role="1QJMAF">
      <property role="TrG5h" value="a function held in a property is called through the member access" />
      <node concept="2MuU66" id="5OpYk6fTVQc" role="1OrNMJ">
        <property role="TrG5h" value="maths" />
        <node concept="3n0$7x" id="5OpYk6fTVQd" role="19IeeE">
          <node concept="1D9KjG" id="5OpYk6fTVQe" role="2XfbTT">
            <property role="TrG5h" value="double" />
            <node concept="3MZLnu" id="5OpYk6fTVQg" role="ahpXF">
              <node concept="2Fu235" id="5OpYk6fTVQi" role="2thRFd">
                <property role="TrG5h" value="value" />
                <node concept="1ku6r5" id="5OpYk6fTVQk" role="3cr0mA" />
              </node>
              <node concept="1ku6r5" id="5OpYk6fTVQl" role="19PnrX" />
            </node>
          </node>
        </node>
        <node concept="2R1HYX" id="5OpYk6fTVQm" role="1bGQZ8">
          <node concept="17ea8W" id="5OpYk6fTVQn" role="1hgjXh">
            <property role="TrG5h" value="double" />
            <node concept="1b$XOi" id="5OpYk6fTVQp" role="hsbV_">
              <node concept="SCM_e" id="5OpYk6fTVQs" role="3qLSqq">
                <property role="TrG5h" value="value" />
                <node concept="1ku6r5" id="5OpYk6fTVQt" role="2xFk6U" />
              </node>
              <node concept="bMiiA" id="5OpYk6fTVQu" role="34pjIZ">
                <node concept="mk1J3" id="5OpYk6fTVQw" role="QAdmJ">
                  <node concept="2v$HdM" id="5OpYk6fTVQz" role="33kRt2">
                    <ref role="2oxrr9" node="5OpYk6fTVQs" resolve="value" />
                  </node>
                  <node concept="24BhzH" id="5OpYk6fTVQ$" role="GyX5B">
                    <property role="2Hr5CV" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVQ_" role="1OrNMJ">
        <node concept="2R1OvL" id="5OpYk6fTVQC" role="1s_IBt">
          <node concept="3JE1iy" id="5OpYk6hsWCV" role="3yUXHQ">
            <ref role="1S4wBi" node="5OpYk6fTVQe" resolve="double" />
            <node concept="2v$HdM" id="5OpYk6hsWCW" role="3yaB8J">
              <ref role="2oxrr9" node="5OpYk6fTVQc" resolve="maths" />
            </node>
          </node>
          <node concept="24BhzH" id="5OpYk6fTVQH" role="DTHKp">
            <property role="2Hr5CV" value="21" />
          </node>
        </node>
        <node concept="24BhzH" id="5OpYk6fTVQI" role="3SOflj">
          <property role="2Hr5CV" value="42" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6fTVQJ" role="1QJMAF">
      <property role="TrG5h" value="a nested object is read one dot at a time" />
      <node concept="2MuU66" id="5OpYk6fTVQK" role="1OrNMJ">
        <property role="TrG5h" value="outer" />
        <node concept="3n0$7x" id="5OpYk6fTVQL" role="19IeeE">
          <node concept="1D9KjG" id="5OpYk6fTVQM" role="2XfbTT">
            <property role="TrG5h" value="inner" />
            <node concept="3n0$7x" id="5OpYk6fTVQO" role="ahpXF">
              <node concept="1D9KjG" id="5OpYk6fTVQP" role="2XfbTT">
                <property role="TrG5h" value="value" />
                <node concept="2Kh4GC" id="5OpYk6fTVQR" role="ahpXF" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2R1HYX" id="5OpYk6fTVQS" role="1bGQZ8">
          <node concept="17ea8W" id="5OpYk6fTVQT" role="1hgjXh">
            <property role="TrG5h" value="inner" />
            <node concept="2R1HYX" id="5OpYk6fTVQV" role="hsbV_">
              <node concept="17ea8W" id="5OpYk6fTVQW" role="1hgjXh">
                <property role="TrG5h" value="value" />
                <node concept="33xXhr" id="5OpYk6fTVQY" role="hsbV_">
                  <property role="3b_9E9" value="deep" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6fTVQZ" role="1OrNMJ">
        <node concept="SU78L" id="5OpYk6fTVR2" role="1s_IBt">
          <property role="2nSurL" value="value" />
          <node concept="3JE1iy" id="5OpYk6hsWCX" role="2Bgfcn">
            <ref role="1S4wBi" node="5OpYk6fTVQM" resolve="inner" />
            <node concept="2v$HdM" id="5OpYk6hsWCY" role="3yaB8J">
              <ref role="2oxrr9" node="5OpYk6fTVQK" resolve="outer" />
            </node>
          </node>
        </node>
        <node concept="33xXhr" id="5OpYk6fTVR7" role="3SOflj">
          <property role="3b_9E9" value="deep" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6gq8J1">
    <property role="TrG5h" value="arrays" />
    <node concept="B13S5" id="5OpYk6gq8J2" role="1QJMAF">
      <property role="TrG5h" value="an array literal is compared by its elements" />
      <node concept="174eko" id="5OpYk6gq8J3" role="1OrNMJ">
        <node concept="3GWXXe" id="5OpYk6gq8J6" role="1s_IBt">
          <node concept="24BhzH" id="5OpYk6gq8J7" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8J8" role="1VpevP">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8J9" role="1VpevP">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8Ja" role="3SOflj">
          <node concept="24BhzH" id="5OpYk6gq8Jb" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8Jc" role="1VpevP">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8Jd" role="1VpevP">
            <property role="2Hr5CV" value="3" />
          </node>
        </node>
      </node>
      <node concept="1$OICc" id="5OpYk6gq8Je" role="1OrNMJ">
        <node concept="3GWXXe" id="5OpYk6gq8Jh" role="1_w2nK">
          <node concept="24BhzH" id="5OpYk6gq8Ji" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8Jj" role="1VpevP">
            <property role="2Hr5CV" value="2" />
          </node>
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8Jk" role="s7_$L">
          <node concept="24BhzH" id="5OpYk6gq8Jl" role="1VpevP">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="24BhzH" id="5OpYk6gq8Jm" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gq8Jn" role="1QJMAF">
      <property role="TrG5h" value="the empty literal is an array of nothing, and is not an array of something" />
      <node concept="174eko" id="5OpYk6gq8Jo" role="1OrNMJ">
        <node concept="3GWXXe" id="5OpYk6gq8Jr" role="1s_IBt" />
        <node concept="3GWXXe" id="5OpYk6gq8Js" role="3SOflj" />
      </node>
      <node concept="1$OICc" id="5OpYk6gq8Jt" role="1OrNMJ">
        <node concept="3GWXXe" id="5OpYk6gq8Jw" role="1_w2nK" />
        <node concept="3GWXXe" id="5OpYk6gq8Jx" role="s7_$L">
          <node concept="24BhzH" id="5OpYk6gq8Jy" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gq8Jz" role="1QJMAF">
      <property role="TrG5h" value="an empty literal fills a declaration of any element type" />
      <node concept="2swglJ" id="5OpYk6gq8J$" role="1OrNMJ">
        <property role="TrG5h" value="numbers" />
        <node concept="29s1Bg" id="5OpYk6gq8J_" role="19IeeE">
          <node concept="1ku6r5" id="5OpYk6gq8JB" role="2XRTOt" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8JC" role="1bGQZ8" />
      </node>
      <node concept="2swglJ" id="5OpYk6gq8JD" role="1OrNMJ">
        <property role="TrG5h" value="strings" />
        <node concept="29s1Bg" id="5OpYk6gq8JE" role="19IeeE">
          <node concept="2Kh4GC" id="5OpYk6gq8JG" role="2XRTOt" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8JH" role="1bGQZ8" />
      </node>
      <node concept="174eko" id="5OpYk6gq8JI" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gq8JL" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gq8J$" resolve="numbers" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gqfHt" role="3SOflj" />
      </node>
      <node concept="174eko" id="5OpYk6gqfHu" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gqfHx" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gq8JD" resolve="strings" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gqfHy" role="3SOflj" />
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gq8JN" role="1QJMAF">
      <property role="TrG5h" value="a mixed literal holds both kinds side by side" />
      <node concept="2swglJ" id="5OpYk6gq8JO" role="1OrNMJ">
        <property role="TrG5h" value="mixed" />
        <node concept="29s1Bg" id="5OpYk6gq8JP" role="19IeeE">
          <node concept="3pfgAg" id="5OpYk6gq8JR" role="2XRTOt">
            <node concept="1ku6r5" id="5OpYk6gq8JS" role="3KvU$C" />
            <node concept="2Kh4GC" id="5OpYk6gq8JT" role="3KvU$C" />
          </node>
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8JU" role="1bGQZ8">
          <node concept="24BhzH" id="5OpYk6gq8JV" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="33xXhr" id="5OpYk6gq8JW" role="1VpevP">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gq8JX" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gq8K0" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gq8JO" resolve="mixed" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8K1" role="3SOflj">
          <node concept="24BhzH" id="5OpYk6gq8K2" role="1VpevP">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="33xXhr" id="5OpYk6gq8K3" role="1VpevP">
            <property role="3b_9E9" value="a" />
          </node>
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gq8K4" role="1QJMAF">
      <property role="TrG5h" value="an array of arrays nests" />
      <node concept="174eko" id="5OpYk6gq8K5" role="1OrNMJ">
        <node concept="3GWXXe" id="5OpYk6gq8K8" role="1s_IBt">
          <node concept="3GWXXe" id="5OpYk6gq8K9" role="1VpevP">
            <node concept="24BhzH" id="5OpYk6gq8Ka" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq8Kb" role="1VpevP">
            <node concept="24BhzH" id="5OpYk6gq8Kc" role="1VpevP">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
        <node concept="3GWXXe" id="5OpYk6gq8Kd" role="3SOflj">
          <node concept="3GWXXe" id="5OpYk6gq8Ke" role="1VpevP">
            <node concept="24BhzH" id="5OpYk6gq8Kf" role="1VpevP">
              <property role="2Hr5CV" value="1" />
            </node>
          </node>
          <node concept="3GWXXe" id="5OpYk6gq8Kg" role="1VpevP">
            <node concept="24BhzH" id="5OpYk6gq8Kh" role="1VpevP">
              <property role="2Hr5CV" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6gClH1">
    <property role="TrG5h" value="loops" />
    <node concept="B13S5" id="5OpYk6gClH2" role="1QJMAF">
      <property role="TrG5h" value="a while loop runs until its condition goes false" />
      <node concept="2swglJ" id="5OpYk6gClH3" role="1OrNMJ">
        <property role="TrG5h" value="n" />
        <node concept="1ku6r5" id="5OpYk6gClH4" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6gClH5" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="fax6N" id="5OpYk6gClH6" role="1OrNMJ">
        <node concept="3cCKtE" id="5OpYk6gClH9" role="20awV3">
          <node concept="2v$HdM" id="5OpYk6gClHc" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6gClH3" resolve="n" />
          </node>
          <node concept="24BhzH" id="5OpYk6gClHd" role="GyX5B">
            <property role="2Hr5CV" value="5" />
          </node>
        </node>
        <node concept="qYD23" id="5OpYk6gClHe" role="d_Gmn">
          <node concept="3ja7nU" id="5OpYk6gClHf" role="6EW52">
            <node concept="10p$M9" id="5OpYk6gClHh" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gClHj" role="2Psk$b">
                <ref role="2oxrr9" node="5OpYk6gClH3" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gClHk" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gClHn" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gClH3" resolve="n" />
        </node>
        <node concept="24BhzH" id="5OpYk6gClHo" role="3SOflj">
          <property role="2Hr5CV" value="5" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gClHp" role="1QJMAF">
      <property role="TrG5h" value="a do-while loop runs its body before it tests anything" />
      <node concept="2swglJ" id="5OpYk6gClHq" role="1OrNMJ">
        <property role="TrG5h" value="runs" />
        <node concept="1ku6r5" id="5OpYk6gClHr" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6gClHs" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2rJege" id="5OpYk6gClHt" role="1OrNMJ">
        <node concept="qYD23" id="5OpYk6gClHw" role="d_Gmn">
          <node concept="3ja7nU" id="5OpYk6gClHx" role="6EW52">
            <node concept="10p$M9" id="5OpYk6gClHz" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gClH_" role="2Psk$b">
                <ref role="2oxrr9" node="5OpYk6gClHq" resolve="runs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3JGNCe" id="5OpYk6gClHA" role="2SSALT" />
      </node>
      <node concept="174eko" id="5OpYk6gClHB" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gClHE" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gClHq" resolve="runs" />
        </node>
        <node concept="24BhzH" id="5OpYk6gClHF" role="3SOflj">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gClHG" role="1QJMAF">
      <property role="TrG5h" value="a for loop counts, and break and continue steer it" />
      <node concept="2swglJ" id="5OpYk6gClHH" role="1OrNMJ">
        <property role="TrG5h" value="sum" />
        <node concept="1ku6r5" id="5OpYk6gClHI" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6gClHJ" role="1bGQZ8">
          <property role="2Hr5CV" value="0" />
        </node>
      </node>
      <node concept="2b3r35" id="5OpYk6gClHK" role="1OrNMJ">
        <node concept="2swglJ" id="5OpYk6gClHM" role="tspbQ">
          <property role="TrG5h" value="i" />
          <node concept="1ku6r5" id="5OpYk6gClHN" role="19IeeE" />
          <node concept="24BhzH" id="5OpYk6gClHO" role="1bGQZ8">
            <property role="2Hr5CV" value="0" />
          </node>
        </node>
        <node concept="3cCKtE" id="5OpYk6gClHP" role="et5B9">
          <node concept="2v$HdM" id="5OpYk6gClHS" role="33kRt2">
            <ref role="2oxrr9" node="5OpYk6gClHM" resolve="i" />
          </node>
          <node concept="24BhzH" id="5OpYk6gClHT" role="GyX5B">
            <property role="2Hr5CV" value="10" />
          </node>
        </node>
        <node concept="10p$M9" id="5OpYk6gClHU" role="29kXl4">
          <node concept="2v$HdM" id="5OpYk6gClHW" role="2Psk$b">
            <ref role="2oxrr9" node="5OpYk6gClHM" resolve="i" />
          </node>
        </node>
        <node concept="qYD23" id="5OpYk6gClHX" role="d_Gmn">
          <node concept="3Oct9B" id="5OpYk6gClHY" role="6EW52">
            <node concept="2fEAty" id="5OpYk6gClI1" role="18F3B4">
              <node concept="2v$HdM" id="5OpYk6gClI4" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gClHM" resolve="i" />
              </node>
              <node concept="24BhzH" id="5OpYk6gClI5" role="GyX5B">
                <property role="2Hr5CV" value="2" />
              </node>
            </node>
            <node concept="qYD23" id="5OpYk6gClI6" role="12avcn">
              <node concept="33KgIo" id="5OpYk6gClI7" role="6EW52" />
            </node>
          </node>
          <node concept="3Oct9B" id="5OpYk6gClI8" role="6EW52">
            <node concept="2fEAty" id="5OpYk6gClIb" role="18F3B4">
              <node concept="2v$HdM" id="5OpYk6gClIe" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gClHM" resolve="i" />
              </node>
              <node concept="24BhzH" id="5OpYk6gClIf" role="GyX5B">
                <property role="2Hr5CV" value="5" />
              </node>
            </node>
            <node concept="qYD23" id="5OpYk6gClIg" role="12avcn">
              <node concept="2ZnVrx" id="5OpYk6gClIh" role="6EW52" />
            </node>
          </node>
          <node concept="3ja7nU" id="5OpYk6gClIi" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gClIk" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gClIn" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gClHH" resolve="sum" />
              </node>
              <node concept="2v$HdM" id="5OpYk6gClIo" role="GyX5B">
                <ref role="2oxrr9" node="5OpYk6gClHM" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gClIp" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gClIs" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gClHH" resolve="sum" />
        </node>
        <node concept="24BhzH" id="5OpYk6gClIt" role="3SOflj">
          <property role="2Hr5CV" value="8" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gClIu" role="1QJMAF">
      <property role="TrG5h" value="a for-of loop walks the values and a for-in loop the keys" />
      <node concept="2MuU66" id="5OpYk6gClIv" role="1OrNMJ">
        <property role="TrG5h" value="words" />
        <node concept="29s1Bg" id="5OpYk6gClIw" role="19IeeE">
          <node concept="2Kh4GC" id="5OpYk6gClIy" role="2XRTOt" />
        </node>
        <node concept="3GWXXe" id="5OpYk6gClIz" role="1bGQZ8">
          <node concept="33xXhr" id="5OpYk6gClI$" role="1VpevP">
            <property role="3b_9E9" value="a" />
          </node>
          <node concept="33xXhr" id="5OpYk6gClI_" role="1VpevP">
            <property role="3b_9E9" value="b" />
          </node>
          <node concept="33xXhr" id="5OpYk6gClIA" role="1VpevP">
            <property role="3b_9E9" value="c" />
          </node>
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6gClIB" role="1OrNMJ">
        <property role="TrG5h" value="joined" />
        <node concept="2Kh4GC" id="5OpYk6gClIC" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gClID" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="1KPeh1" id="5OpYk6gClIE" role="1OrNMJ">
        <node concept="2MuU66" id="5OpYk6gClII" role="2Fm_eX">
          <property role="TrG5h" value="word" />
        </node>
        <node concept="2v$HdM" id="5OpYk6gClIJ" role="2p7lAv">
          <ref role="2oxrr9" node="5OpYk6gClIv" resolve="words" />
        </node>
        <node concept="qYD23" id="5OpYk6gClIK" role="d_Gmn">
          <node concept="3ja7nU" id="5OpYk6gClIL" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gClIN" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gClIQ" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gClIB" resolve="joined" />
              </node>
              <node concept="2v$HdM" id="5OpYk6gClIR" role="GyX5B">
                <ref role="2oxrr9" node="5OpYk6gClII" resolve="word" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gClIS" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gClIV" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gClIB" resolve="joined" />
        </node>
        <node concept="33xXhr" id="5OpYk6gClIW" role="3SOflj">
          <property role="3b_9E9" value="abc" />
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6gClIX" role="1OrNMJ">
        <property role="TrG5h" value="keys" />
        <node concept="2Kh4GC" id="5OpYk6gClIY" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gClIZ" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="Dwllw" id="5OpYk6gClJ0" role="1OrNMJ">
        <node concept="2MuU66" id="5OpYk6gClJ4" role="2Fm_eX">
          <property role="TrG5h" value="key" />
        </node>
        <node concept="2v$HdM" id="5OpYk6gClJ5" role="2p7lAv">
          <ref role="2oxrr9" node="5OpYk6gClIv" resolve="words" />
        </node>
        <node concept="qYD23" id="5OpYk6gClJ6" role="d_Gmn">
          <node concept="3ja7nU" id="5OpYk6gClJ7" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gClJ9" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gClJc" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gClIX" resolve="keys" />
              </node>
              <node concept="2v$HdM" id="5OpYk6gClJd" role="GyX5B">
                <ref role="2oxrr9" node="5OpYk6gClJ4" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gClJe" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gClJh" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gClIX" resolve="keys" />
        </node>
        <node concept="33xXhr" id="5OpYk6gClJi" role="3SOflj">
          <property role="3b_9E9" value="012" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Jsc18" id="5OpYk6gCmfQ">
    <property role="TrG5h" value="branching" />
    <node concept="B13S5" id="5OpYk6gCmfR" role="1QJMAF">
      <property role="TrG5h" value="a switch picks the matching case and stops at its break" />
      <node concept="2swglJ" id="5OpYk6gCqM4" role="1OrNMJ">
        <property role="TrG5h" value="subject" />
        <node concept="1ku6r5" id="5OpYk6gCqM5" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6gCqM6" role="1bGQZ8">
          <property role="2Hr5CV" value="2" />
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6gCmfS" role="1OrNMJ">
        <property role="TrG5h" value="label" />
        <node concept="2Kh4GC" id="5OpYk6gCmfT" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gCmfU" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="2yrb8r" id="5OpYk6gCmfV" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCqM7" role="2WQvgN">
          <ref role="2oxrr9" node="5OpYk6gCqM4" resolve="subject" />
        </node>
        <node concept="3aWBG0" id="5OpYk6gCmfY" role="1_mi5l">
          <node concept="24BhzH" id="5OpYk6gCmg0" role="2AmQo$">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="3ja7nU" id="5OpYk6gCmg1" role="3HO5NI">
            <node concept="35aKX4" id="5OpYk6gCmg3" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmg6" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmfS" resolve="label" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmg7" role="GyX5B">
                <property role="3b_9E9" value="one" />
              </node>
            </node>
          </node>
          <node concept="2ZnVrx" id="5OpYk6gCmg8" role="3HO5NI" />
        </node>
        <node concept="3aWBG0" id="5OpYk6gCmg9" role="1_mi5l">
          <node concept="24BhzH" id="5OpYk6gCmgb" role="2AmQo$">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="3ja7nU" id="5OpYk6gCmgc" role="3HO5NI">
            <node concept="35aKX4" id="5OpYk6gCmge" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmgh" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmfS" resolve="label" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmgi" role="GyX5B">
                <property role="3b_9E9" value="two" />
              </node>
            </node>
          </node>
          <node concept="2ZnVrx" id="5OpYk6gCmgj" role="3HO5NI" />
        </node>
        <node concept="2sOzXy" id="5OpYk6gCmgk" role="1_mi5l">
          <node concept="3ja7nU" id="5OpYk6gCmgl" role="3HO5NI">
            <node concept="35aKX4" id="5OpYk6gCmgn" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmgq" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmfS" resolve="label" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmgr" role="GyX5B">
                <property role="3b_9E9" value="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gCmgs" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCmgv" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gCmfS" resolve="label" />
        </node>
        <node concept="33xXhr" id="5OpYk6gCmgw" role="3SOflj">
          <property role="3b_9E9" value="two" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gCmgx" role="1QJMAF">
      <property role="TrG5h" value="a case without a break falls through to the next one" />
      <node concept="2swglJ" id="5OpYk6gCqM8" role="1OrNMJ">
        <property role="TrG5h" value="subject" />
        <node concept="1ku6r5" id="5OpYk6gCqM9" role="19IeeE" />
        <node concept="24BhzH" id="5OpYk6gCqMa" role="1bGQZ8">
          <property role="2Hr5CV" value="1" />
        </node>
      </node>
      <node concept="2swglJ" id="5OpYk6gCmgy" role="1OrNMJ">
        <property role="TrG5h" value="steps" />
        <node concept="2Kh4GC" id="5OpYk6gCmgz" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gCmg$" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="2yrb8r" id="5OpYk6gCmg_" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCqMb" role="2WQvgN">
          <ref role="2oxrr9" node="5OpYk6gCqM8" resolve="subject" />
        </node>
        <node concept="3aWBG0" id="5OpYk6gCmgC" role="1_mi5l">
          <node concept="24BhzH" id="5OpYk6gCmgE" role="2AmQo$">
            <property role="2Hr5CV" value="1" />
          </node>
          <node concept="3ja7nU" id="5OpYk6gCmgF" role="3HO5NI">
            <node concept="3iFsGD" id="5OpYk6gCmgH" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmgK" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmgy" resolve="steps" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmgL" role="GyX5B">
                <property role="3b_9E9" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3aWBG0" id="5OpYk6gCmgM" role="1_mi5l">
          <node concept="24BhzH" id="5OpYk6gCmgO" role="2AmQo$">
            <property role="2Hr5CV" value="2" />
          </node>
          <node concept="3ja7nU" id="5OpYk6gCmgP" role="3HO5NI">
            <node concept="3iFsGD" id="5OpYk6gCmgR" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmgU" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmgy" resolve="steps" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmgV" role="GyX5B">
                <property role="3b_9E9" value="b" />
              </node>
            </node>
          </node>
          <node concept="2ZnVrx" id="5OpYk6gCmgW" role="3HO5NI" />
        </node>
        <node concept="2sOzXy" id="5OpYk6gCmgX" role="1_mi5l">
          <node concept="3ja7nU" id="5OpYk6gCmgY" role="3HO5NI">
            <node concept="3iFsGD" id="5OpYk6gCmh0" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmh3" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmgy" resolve="steps" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmh4" role="GyX5B">
                <property role="3b_9E9" value="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gCmh5" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCmh8" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gCmgy" resolve="steps" />
        </node>
        <node concept="33xXhr" id="5OpYk6gCmh9" role="3SOflj">
          <property role="3b_9E9" value="ab" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gCmha" role="1QJMAF">
      <property role="TrG5h" value="a throw is caught, and finally runs either way" />
      <node concept="2swglJ" id="5OpYk6gCmhb" role="1OrNMJ">
        <property role="TrG5h" value="trace" />
        <node concept="2Kh4GC" id="5OpYk6gCmhc" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gCmhd" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="1c8nd4" id="5OpYk6gCmhe" role="1OrNMJ">
        <node concept="qYD23" id="5OpYk6gCmhg" role="2CuSVR">
          <node concept="3hXVNh" id="5OpYk6gCmhh" role="6EW52">
            <node concept="33xXhr" id="5OpYk6gCmhj" role="3tDo58">
              <property role="3b_9E9" value="boom" />
            </node>
          </node>
        </node>
        <node concept="1WXS5l" id="5OpYk6gCmhk" role="2hyK57">
          <node concept="X8OOC" id="5OpYk6gCmhm" role="6O2XX">
            <property role="TrG5h" value="problem" />
          </node>
          <node concept="qYD23" id="5OpYk6gCmhn" role="1UMC_z">
            <node concept="3ja7nU" id="5OpYk6gCmho" role="6EW52">
              <node concept="3iFsGD" id="5OpYk6gCmhq" role="$a3P1">
                <node concept="2v$HdM" id="5OpYk6gCmht" role="33kRt2">
                  <ref role="2oxrr9" node="5OpYk6gCmhb" resolve="trace" />
                </node>
                <node concept="33xXhr" id="5OpYk6gCmhu" role="GyX5B">
                  <property role="3b_9E9" value="caught" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="qYD23" id="5OpYk6gCmhv" role="PRUvz">
          <node concept="3ja7nU" id="5OpYk6gCmhw" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gCmhy" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmh_" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmhb" resolve="trace" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmhA" role="GyX5B">
                <property role="3b_9E9" value="+finally" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gCmhB" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCmhE" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gCmhb" resolve="trace" />
        </node>
        <node concept="33xXhr" id="5OpYk6gCmhF" role="3SOflj">
          <property role="3b_9E9" value="caught+finally" />
        </node>
      </node>
    </node>
    <node concept="B13S5" id="5OpYk6gCmhG" role="1QJMAF">
      <property role="TrG5h" value="finally runs when nothing was thrown at all" />
      <node concept="2swglJ" id="5OpYk6gCmhH" role="1OrNMJ">
        <property role="TrG5h" value="trace" />
        <node concept="2Kh4GC" id="5OpYk6gCmhI" role="19IeeE" />
        <node concept="33xXhr" id="5OpYk6gCmhJ" role="1bGQZ8">
          <property role="3b_9E9" value="" />
        </node>
      </node>
      <node concept="1c8nd4" id="5OpYk6gCmhK" role="1OrNMJ">
        <node concept="qYD23" id="5OpYk6gCmhM" role="2CuSVR">
          <node concept="3ja7nU" id="5OpYk6gCmhN" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gCmhP" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmhS" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmhH" resolve="trace" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmhT" role="GyX5B">
                <property role="3b_9E9" value="ok" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1WXS5l" id="5OpYk6gCmhU" role="2hyK57">
          <node concept="qYD23" id="5OpYk6gCmhW" role="1UMC_z">
            <node concept="3ja7nU" id="5OpYk6gCmhX" role="6EW52">
              <node concept="3iFsGD" id="5OpYk6gCmhZ" role="$a3P1">
                <node concept="2v$HdM" id="5OpYk6gCmi2" role="33kRt2">
                  <ref role="2oxrr9" node="5OpYk6gCmhH" resolve="trace" />
                </node>
                <node concept="33xXhr" id="5OpYk6gCmi3" role="GyX5B">
                  <property role="3b_9E9" value="+caught" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="qYD23" id="5OpYk6gCmi4" role="PRUvz">
          <node concept="3ja7nU" id="5OpYk6gCmi5" role="6EW52">
            <node concept="3iFsGD" id="5OpYk6gCmi7" role="$a3P1">
              <node concept="2v$HdM" id="5OpYk6gCmia" role="33kRt2">
                <ref role="2oxrr9" node="5OpYk6gCmhH" resolve="trace" />
              </node>
              <node concept="33xXhr" id="5OpYk6gCmib" role="GyX5B">
                <property role="3b_9E9" value="+finally" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="174eko" id="5OpYk6gCmic" role="1OrNMJ">
        <node concept="2v$HdM" id="5OpYk6gCmif" role="1s_IBt">
          <ref role="2oxrr9" node="5OpYk6gCmhH" resolve="trace" />
        </node>
        <node concept="33xXhr" id="5OpYk6gCmig" role="3SOflj">
          <property role="3b_9E9" value="ok+finally" />
        </node>
      </node>
    </node>
  </node>
</model>

