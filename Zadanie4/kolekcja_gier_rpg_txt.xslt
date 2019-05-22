<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

        <xsl:template match="/">
		   <xsl:text>_____________________________________________________________________________________________________________&#xA;</xsl:text>
        <xsl:text>|             Nazwa systemu             |     Gatunek     |    Wydawca    | Popularność  | Format  |</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>|***************************************|*****************|***************|**************|*********|</xsl:text>
        <xsl:text>&#xA;</xsl:text>    
    
        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
            <xsl:value-of
                    select="concat(' ',substring('                                 ',1,45-string-length(.)),' ',@Nazwa,substring('                 ',1,39-string-length(@Nazwa)),' ',@Gatunek,substring('    ',1,21-string-length(@Gatunek)), ' ',@Wydawca,substring('                 ',1,19-string-length(@Wydawca)))"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>**********************************************************************************</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>



       

    </xsl:template>
</xsl:stylesheet>
