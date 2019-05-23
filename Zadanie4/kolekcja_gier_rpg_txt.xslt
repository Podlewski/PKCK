<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

        <xsl:template match="/">
		   <xsl:text>___________________________________________________________________________________________________________________________________&#xA;</xsl:text>
        <xsl:text>|                  Nazwa systemu                   |      Gatunek      |         Wydawca         |   Popularność    |   Format    |</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>|__________________________________________________|___________________|_________________________|__________________|_____________|</xsl:text>
        <xsl:text>&#xA;</xsl:text>    
    
        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
            <xsl:value-of
                    select="concat('  ', @Nazwa, substring('                                ',1,51-string-length(@Nazwa)), @Gatunek, substring('              ',1,20-string-length(@Gatunek)), @Wydawca, substring('                ',1,26-string-length(@Wydawca)), @Popularność, substring('                 ',1,19-string-length(@Popularność)), @Format)"/>
            <xsl:text>&#xA;</xsl:text>
			
			<xsl:text>&#xA;</xsl:text>
            <xsl:text>   Tytuł                                                      Data Wydania    Liczba Stron    Ocena Podręcznika    Cena Podręcznika</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="Podręczniki/Podręcznik">
                <xsl:value-of select="concat('    ', @Tytuł, substring('                                             ',1,59-string-length(@Tytuł)), @Data_Wydania, '      ', @Liczba_Stron, substring('              ',1,16-string-length(@Liczba_Stron)), @Ocena_Podręcznika, substring('                   ',1,21-string-length(@Ocena_Podręcznika)), @Cena_Podręcznika, substring('  ',1,7-string-length(@Cena_Podręcznika)) ,'zł')"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:text>___________________________________________________________________________________________________________________________________</xsl:text>

            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>___________________________________________________________________________________________________________________________________</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
			
    </xsl:template>
</xsl:stylesheet>
