<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <p>Antonio Luis Domínguez Lebrón</p>
            <xsl:for-each select="ies/ciclos/ciclo">
                <p><xsl:value-of select="nombre"/></p>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>
