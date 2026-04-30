<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>

<!-- 1. Llista HTML (ul) amb el títol de tots els llibres -->
  <ul>
    <xsl:for-each select="/biblioteca/llibre">
      <li><xsl:value-of select="titol"/></li>
    </xsl:for-each>
  </ul>

<!-- 2. Llista HTML amb títol - autor per a cada llibre -->
  <ul>
    <xsl:for-each select="/biblioteca/llibre">
      <li>
        <xsl:value-of select="titol"/>
        —
        <xsl:value-of select="autor"/>
      </li>
    </xsl:for-each>
  </ul>

<!-- 3. Taula HTML amb tres columnes: Títol, Autor i Any -->
  <table border="1">
  <tr>
    <th>Títol</th><th>Autor</th><th>Any</th>
  </tr>
      <xsl:for-each select="/biblioteca/llibre">
  <tr>
    <td><xsl:value-of select="titol"/></td>
      <td><xsl:value-of select="autor"/></td>
      <td><xsl:value-of select="any"/></td>
  </tr>
  </xsl:for-each>
  </table>

<!-- 4. Taula amb quarta columna: Preu -->
  <table border="1">
    <tr>
      <th>Títol</th><th>Autor</th><th>Any</th><th>Preu</th>
    </tr>
      <xsl:for-each select="/biblioteca/llibre">
      <tr>
        <td><xsl:value-of select="titol"/></td>
        <td><xsl:value-of select="autor"/></td>
        <td><xsl:value-of select="any"/></td>
        <td><xsl:value-of select="preu"/></td>
      </tr>
      </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>