<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>

<!-- 1 Ordena els llibres per any de publicació -->
    <ul>
        <xsl:for-each select="/biblioteca/llibre">
         <xsl:sort select="any" data-type="number" order="ascending"/>
         <li><xsl:value-of select="titol"/></li>
      </xsl:for-each>
    </ul>

<!-- 2. Ordena els llibres per títol alfabèticament -->
  <ul>
        <xsl:for-each select="/biblioteca/llibre">
         <xsl:sort select="titol" data-type="text" order="ascending"/>
         <li><xsl:value-of select="titol"/></li>
      </xsl:for-each>
  </ul>


<!-- 3. Ordena els llibres per preu de més car a més barat -->

        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <xsl:sort select="preu" data-type="number" order="descending"/>
            <li>
              <xsl:value-of select="titol"/>
              — <xsl:value-of select="preu"/>
            </li>
          </xsl:for-each>
        </ul>


<!-- 4. Taula HTML amb els llibres ordenats per any -->
    <table border="1">
      <tr>
        <th>Any</th><th>Títol</th><th>Autor</th>
      </tr>
      <xsl:for-each select="/biblioteca/llibre">
         <xsl:sort select="any" data-type="number" order="ascending"/>
         <tr>
          <td><xsl:value-of select="any"/></td>
          <td><xsl:value-of select="titol"/></td>
          <td><xsl:value-of select="autor"/></td>
        </tr>
      </xsl:for-each>
    </table>



<!-- 5. Mostra només els llibres disponibles i ordena'ls per títol -->

      <ul>
        <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
          <xsl:sort select="titol" data-type="text" order="ascending"/>
          <li><xsl:value-of select="titol"/></li>
        </xsl:for-each>
      </ul>

      </body>
    </html>
</xsl:template>
</xsl:stylesheet>