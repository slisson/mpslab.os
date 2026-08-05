<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:49d1c915-2fce-453a-abe1-90dafd2e1fbc(de.q60.mps.lang.typescript.sandbox.stubs.path)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="af22c227-4f5d-4fad-af44-a5f5fe32d1ae" name="de.q60.mps.lang.typescript">
      <concept id="5991954684290791457" name="de.q60.mps.lang.typescript.structure.TSStringType" flags="ng" index="2Kh4GC" />
      <concept id="1940646736673164813" name="de.q60.mps.lang.typescript.structure.TSObjectType" flags="ng" index="3n0$7x">
        <child id="5485283431336319566" name="members" index="2XfbTT" />
      </concept>
      <concept id="3669866448792605535" name="de.q60.mps.lang.typescript.structure.TSTypeAlias" flags="ng" index="1nxqX8">
        <child id="6707524301942339210" name="aliasedType" index="3mxPXq" />
      </concept>
      <concept id="1470766081798713625" name="de.q60.mps.lang.typescript.structure.TSPropertySignature" flags="ng" index="1D9KjG">
        <property id="6065535284884101344" name="isOptional" index="Cc4jk" />
        <child id="905576507103305314" name="declaredType" index="ahpXF" />
      </concept>
      <concept id="3600262704481932991" name="de.q60.mps.lang.typescript.structure.TSDeclarationFile" flags="ng" index="3Zjil_">
        <child id="1378682086413470213" name="declarations" index="21Z9C8" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3Zjil_" id="1jfLtDTDj63">
    <property role="TrG5h" value="path" />
    <node concept="1nxqX8" id="1jfLtDTDj64" role="21Z9C8">
      <property role="TrG5h" value="ParsedPath" />
      <node concept="3n0$7x" id="1jfLtDTDj66" role="3mxPXq">
        <node concept="1D9KjG" id="1jfLtDTDj67" role="2XfbTT">
          <property role="TrG5h" value="root" />
          <node concept="2Kh4GC" id="1jfLtDTDj69" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6a" role="2XfbTT">
          <property role="TrG5h" value="dir" />
          <node concept="2Kh4GC" id="1jfLtDTDj6c" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6d" role="2XfbTT">
          <property role="TrG5h" value="base" />
          <node concept="2Kh4GC" id="1jfLtDTDj6f" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6g" role="2XfbTT">
          <property role="TrG5h" value="ext" />
          <node concept="2Kh4GC" id="1jfLtDTDj6i" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6j" role="2XfbTT">
          <property role="TrG5h" value="name" />
          <node concept="2Kh4GC" id="1jfLtDTDj6l" role="ahpXF" />
        </node>
      </node>
    </node>
    <node concept="1nxqX8" id="1jfLtDTDj6m" role="21Z9C8">
      <property role="TrG5h" value="FormatInputPathObject" />
      <node concept="3n0$7x" id="1jfLtDTDj6o" role="3mxPXq">
        <node concept="1D9KjG" id="1jfLtDTDj6p" role="2XfbTT">
          <property role="Cc4jk" value="true" />
          <property role="TrG5h" value="root" />
          <node concept="2Kh4GC" id="1jfLtDTDj6r" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6s" role="2XfbTT">
          <property role="Cc4jk" value="true" />
          <property role="TrG5h" value="dir" />
          <node concept="2Kh4GC" id="1jfLtDTDj6u" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6v" role="2XfbTT">
          <property role="Cc4jk" value="true" />
          <property role="TrG5h" value="base" />
          <node concept="2Kh4GC" id="1jfLtDTDj6x" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6y" role="2XfbTT">
          <property role="Cc4jk" value="true" />
          <property role="TrG5h" value="ext" />
          <node concept="2Kh4GC" id="1jfLtDTDj6$" role="ahpXF" />
        </node>
        <node concept="1D9KjG" id="1jfLtDTDj6_" role="2XfbTT">
          <property role="Cc4jk" value="true" />
          <property role="TrG5h" value="name" />
          <node concept="2Kh4GC" id="1jfLtDTDj6B" role="ahpXF" />
        </node>
      </node>
    </node>
  </node>
</model>

