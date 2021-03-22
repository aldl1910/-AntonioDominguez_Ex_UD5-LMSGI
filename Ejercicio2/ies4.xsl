<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <th>Antonio Luis Domínguez Lebrón</th>
                    <ol>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:sort select="nombre"  order="descending"/>                        
                        <li><xsl:for-each select="nombre">
                            <xsl:value-of select="."/> </xsl:for-each> ( <xsl:value-of select="grado"/> ) </li>
                    </xsl:for-each>
                    </ol>
        </xsl:template>
</xsl:stylesheet>
