<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 1. Document XSLT mínim amb declaració XML, xsl:stylesheet i plantilla principal match="/" -->
<xsl:template match="/">

<!-- 2. La plantilla principal genera HTML bàsic: html, body i títol Biblioteca -->

<html>
    <body>
      <h1>Biblioteca</h1>
      <p>Llista de documents disponibles</p> <!-- 3. Paràgraf amb el text: Llista de documents disponibles -->
  </body>

</html>

</xsl:template>
</xsl:stylesheet>