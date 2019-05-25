<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:text>____________________________________________________________________________________________________________________________________&#xA;</xsl:text>
        <xsl:text>|                  Nazwa systemu                   |      Gatunek      |         Wydawca         |   Popularność    |    Format    |</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>|__________________________________________________|___________________|_________________________|__________________|______________|</xsl:text>
        <xsl:text>&#xA;</xsl:text>    
    
        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
            <xsl:value-of
                    select="concat('  ', @Nazwa, substring('                                                   ',1,51-string-length(@Nazwa)), @Gatunek, substring('                    ',1,20-string-length(@Gatunek)), @Wydawca, substring('                          ',1,26-string-length(@Wydawca)), @Popularność, substring('                   ',1,19-string-length(@Popularność)), @Format)"/>
            <xsl:text>&#xA;</xsl:text>
			
			<xsl:text>&#xA;</xsl:text>
            <xsl:text>   Tytuł                                                      Data Wydania    Liczba Stron    Ocena Podręcznika    Cena Podręcznika</xsl:text>
            <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="Podręczniki/Podręcznik">
                <xsl:value-of select="concat('    ', @Tytuł, substring('                                                           ',1,59-string-length(@Tytuł)), @Data_Wydania, '      ', @Liczba_Stron, substring('                ',1,16-string-length(@Liczba_Stron)), @Ocena_Podręcznika, substring('                     ',1,21-string-length(@Ocena_Podręcznika)), @Cena_Podręcznika, substring('       ',1,7-string-length(@Cena_Podręcznika)) ,'zł')"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:text>____________________________________________________________________________________________________________________________________</xsl:text>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>

        <xsl:text>&#xA;</xsl:text>
        <xsl:text>____________________________________________________________________________________________________________________________________</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>|                                                           Podsumowanie                                                           |</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>|__________________________________________________________________________________________________________________________________|</xsl:text>
        <xsl:text>&#xA;</xsl:text>

        <xsl:text>  Liczba systemów gry: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_systemów_gry"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Liczba gier dark fantasy: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_dark_fantasy"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Liczba gier fantasy: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_fantasy"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Liczba gier science fiction: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_science_fiction"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Liczba gier steampunk: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_steampunk"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Cena za całą kolekcję: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Cena_za_całą_kolekcję"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  VAT od wszystkich podręczników: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/VAT_od_wszystkich_podręczników"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia cena za podstawkę: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podstawkę"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia cena za bestiariusz: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_bestiariusz"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia cena za kampanię: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_kampanię"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia cena za przygodę: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_przygodę"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia cena za rozszerzenie: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_rozszerzenie"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Najwyższa ocena podręcznika: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_ocena_za_podręcznik"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia ocena podręcznika: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_ocena_podręcznika"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Najmniej stron: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najmniej_stron"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>  Średnia liczba stron: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_liczba_stron"/><xsl:text>&#xA;</xsl:text> 
        <xsl:text>  Najwięcej stron: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwięcej_stron"/><xsl:text>&#xA;</xsl:text> 
        <xsl:text>  Najwyższa cena podręcznika: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_cena_podręcznika"/><xsl:text>&#xA;</xsl:text> 
        <xsl:text>  Najniższa cena podręcznika: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najniższa_cena_podręcznika"/><xsl:text>&#xA;</xsl:text> 
        <xsl:text>  Średnia cena podręcznika: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_podręcznika"/><xsl:text>&#xA;</xsl:text>    
        <xsl:text>  Data wygenerowania podsumowania: </xsl:text><xsl:value-of
            select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Data_podsumowania"/><xsl:text>&#xA;</xsl:text>    

    </xsl:template>
</xsl:stylesheet>
