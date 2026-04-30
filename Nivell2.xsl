<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
<html>
  <body>


    <p>
      <xsl:value-of select="/biblioteca/llibre[1]/titol"/><!-- 1. Mostra en HTML el títol del primer llibre -->

    </p>

<!-- 2. Mostra en HTML el títol i l'autor del primer llibre -->

    <p>
      <xsl:value-of select="/biblioteca/llibre[1]/titol"/>
          —
      <xsl:value-of select="/biblioteca/llibre[1]/autor"/>
    </p>

    <p>
        <xsl:value-of select="/biblioteca/revista/@codi"/><!-- 3. Mostra el codi de la revista -->

        </p>

</body>
</html>
</xsl:template>
</xsl:stylesheet>