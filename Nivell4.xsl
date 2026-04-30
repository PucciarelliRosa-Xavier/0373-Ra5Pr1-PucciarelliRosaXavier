<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>

<!-- 1. Mostra només els llibres disponibles -->
    <ul>
      <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
      <li><xsl:value-of select="titol"/></li>
      </xsl:for-each>
    </ul>

<!-- 2. Mostra només els llibres amb preu superior a 12 -->
    <ul>
      <xsl:for-each select="/biblioteca/llibre[preu &gt; 12]">
      <li><xsl:value-of select="titol"/></li>
      </xsl:for-each>
    </ul>

<!-- 3. Afegeix el text "Llibre antic" quan any < 1980 -->
    <ul>
      <xsl:for-each select="/biblioteca/llibre">
        <li>
          <xsl:value-of select="titol"/>
          <xsl:if test="any &lt; 1980">
           —llibre antic
          </xsl:if>
        </li>
      </xsl:for-each>
    </ul>

<!-- 4. Afegeix "En préstec" o "Disponible" segons l'atribut estat -->
    <ul>
        <xsl:for-each select="/biblioteca/llibre">
          <li>
            <xsl:value-of select="titol"/> —
            <xsl:choose>
            <xsl:when test="@estat='prestat'">En préstec</xsl:when>
            <xsl:otherwise>Disponible</xsl:otherwise>
          </xsl:choose>
        </li>
      </xsl:for-each>
    </ul>

<!-- 5. Mostra només els llibres del gènere fantasia o distopia -->
    <ul>
      <xsl:for-each select="/biblioteca/llibre[genere='fantasia' or genere='distopia']">
          <li><xsl:value-of select="titol"/></li>
      </xsl:for-each>
    </ul>

  </body>
</html>
</xsl:template>
</xsl:stylesheet>