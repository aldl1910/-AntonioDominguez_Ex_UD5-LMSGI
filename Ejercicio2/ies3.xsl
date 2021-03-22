<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <p>Antonio Luis Domínguez Lebrón</p>
            <xsl:for-each select="ies/ciclos/ciclo">
                <ul>
                    <li>
                        <xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>)
                    </li>
                </ul>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>
