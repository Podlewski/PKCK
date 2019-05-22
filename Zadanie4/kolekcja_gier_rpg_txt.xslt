<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
            <xsl:text>__________________________________________________________________________________&#xA;</xsl:text>
            <xsl:text>| Systemy | Gatunek | Wydawca | Popularność | Format |</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>|_________|_________|_________|_____________|________|____________________________</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:value-of
                    select="concat('      ',@Nazwa,substring('                  ',1,15-string-length(@Nazwa)),'  ',@Gatunek,substring('              ',1,17-string-length(@Gatunek)),' ',@Wydawca,'          ',@Popularność,substring('    ',1,11-string-length(@Format)))"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>**********************************************************************************</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>      Podręczniki                            Dlugosc</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="Podręczniki/Podręcznik">
                <xsl:value-of select="concat('    ',@Tytuł,substring('                                  ',1,36-string-length(@Tytuł)),'  ',@Tytuł_Oryginalny)"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>

            <xsl:text>&#xA;</xsl:text>
            <xsl:text>**********************************************************************************</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>



       

    </xsl:template>
</xsl:stylesheet>
