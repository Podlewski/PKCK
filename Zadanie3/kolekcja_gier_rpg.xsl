<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
			<xsl:element name="Zestawienie_gier_rpg">
                <xsl:apply-templates select="kolekcja_gier_rpg/nasza_kolekcja"/>
				
				<xsl:element name="Podsumowanie_kolekcji">
				
					<xsl:element name="Liczba_systemów_gry">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry)"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_dark_fantasy">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat02'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_fantasy">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat04'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_science_fiction">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat07'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_steampunk">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat08'])"/>
					</xsl:element>
					
					<xsl:variable name="Cena_za_wszystkie_podręczniki" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/cena_podręcznika)"/>					
					
					<xsl:variable name="Suma_wszystkich_ocen_podręczników" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/ocena_podręcznika)"/>
					
					<xsl:variable name="Liczba_wszystkich_podręczników" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik)"/>
					
					<xsl:variable name="Liczba_wszystkich_podstawek" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ01'])"/>
					
					<xsl:variable name="Liczba_wszystkich_bestiariuszy" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ02'])"/>
					
					<xsl:variable name="Liczba_wszystkich_kampanii" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ03'])"/>
					
					<xsl:variable name="Liczba_wszystkich_przygód" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ04'])"/>
					
					<xsl:variable name="Liczba_wszystkich_rozszerzeń" select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ05'])"/>
					
					<xsl:variable name="Cena_za_podręczniki" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/cena_podręcznika)"/>
					
					<xsl:variable name="Cena_za_podstawkę" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ01']/cena_podręcznika)"/>
					
					<xsl:variable name="Cena_za_bestiariusz" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ02']/cena_podręcznika)"/>
					
					<xsl:variable name="Cena_za_kampanię" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ03']/cena_podręcznika)"/>
					
					<xsl:variable name="Cena_za_przygodę" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ04']/cena_podręcznika)"/>
					
					<xsl:variable name="Cena_za_rozszerzenie" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik[@typ_id='typ05']/cena_podręcznika)"/>
					
					<xsl:element name="Cena_za_całą_kolekcję">
						<xsl:value-of select="concat(round($Cena_za_wszystkie_podręczniki * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="VAT_od_wszystkich_podręczników">
                        <xsl:value-of select="concat(round(($Cena_za_wszystkie_podręczniki * 23)div 100),'zł')"/>
                    </xsl:element>
					
					<xsl:element name="Średnia_cena_za_podstawkę">
						<xsl:value-of select="concat(round($Cena_za_podstawkę div $Liczba_wszystkich_podstawek * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="Średnia_cena_za_bestiariusz">
						<xsl:value-of select="concat(round($Cena_za_bestiariusz div $Liczba_wszystkich_bestiariuszy * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="Średnia_cena_za_kampanię">
						<xsl:value-of select="concat(round($Cena_za_kampanię div $Liczba_wszystkich_kampanii * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="Średnia_cena_za_przygodę">
						<xsl:value-of select="concat(round($Cena_za_przygodę div $Liczba_wszystkich_przygód * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="Średnia_cena_za_rozszerzenie">
						<xsl:value-of select="concat(round($Cena_za_rozszerzenie div $Liczba_wszystkich_rozszerzeń * 100) div 100,'zł')"/>
					</xsl:element>
					
					<xsl:element name="Najwyższa_ocena_za_podręcznik">
						<xsl:value-of select="max(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/ocena_podręcznika)"/>
					</xsl:element>
					
					<xsl:element name="Średnia_ocena_podręcznika">
						<xsl:value-of select="round(sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/ocena_podręcznika) div $Suma_wszystkich_ocen_podręczników * 100) div 100"/>
					</xsl:element>
										
					<xsl:element name="Data_podsumowania">
                        <xsl:value-of select="format-dateTime(current-dateTime(),'[D01]-[M01]-[Y0001]')" />
                    </xsl:element>
					
			</xsl:element>
		</xsl:element>
	</xsl:template>
		
		<xsl:template match="kolekcja_gier_rpg/nasza_kolekcja">
		<xsl:element name="Posortowane_systemy_według_popularności">
			<xsl:for-each select="system_gry">
				<xsl:sort select="popularność" order="descending"/>
				<xsl:element name="System_gry">
				
					<xsl:attribute name="nazwa">
						<xsl:value-of select="nazwa"/>
					</xsl:attribute>
					
					<xsl:choose>
						<xsl:when test="string(@gatunek_id) = 'gat02'">
							<xsl:attribute name="Gatunek">Dark_Fantasy</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@gatunek_id) = 'gat04'">
							<xsl:attribute name="Gatunek">Fantasy</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@gatunek_id) = 'gat07'">
							<xsl:attribute name="Gatunek">Science_Fiction</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@gatunek_id) = 'gat08'">
							<xsl:attribute name="Gatunek">Steampunk</xsl:attribute>
						</xsl:when>
						
						<xsl:when test="string(@typ_id) = 'typ01'">
							<xsl:attribute name="Typ">Podstawka</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@typ_id) = 'typ02'">
							<xsl:attribute name="Typ">Bestiariusz</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@typ_id) = 'typ03'">
							<xsl:attribute name="Typ">Kampania</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@typ_id) = 'typ04'">
							<xsl:attribute name="Typ">Przygoda</xsl:attribute>
						</xsl:when>
						<xsl:when test="string(@typ_id) = 'typ05'">
							<xsl:attribute name="Typ">Rozszerzenie</xsl:attribute>
						</xsl:when>
					</xsl:choose>
					
					<xsl:attribute name="Popularność">
						<xsl:value-of select="concat(popularność,'%')" />
					</xsl:attribute>
					
					<xsl:attribute name="Format">
						<xsl:value-of select="format" />
					</xsl:attribute>
					
					<xsl:element name="Podręczniki">
						<xsl:for-each select="podręczniki/podręcznik">
							<xsl:element name="Tytuł">
								<xsl:value-of select="tytuł"/>
							</xsl:element>
							<xsl:element name="Tytuł_oryginalny">
								<xsl:value-of select="tytuł_oryginalny"/>
							</xsl:element>
							<xsl:element name="Data_wydania">
								<xsl:value-of select="data_wydania"/>
							</xsl:element>
							<xsl:element name="Liczba_stron">
								<xsl:value-of select="liczba_stron"/>
							</xsl:element>
							<xsl:element name="Ocena_podręcznika">
								<xsl:value-of select="ocena_podręcznika"/>
							</xsl:element>
							<xsl:element name="Cena_podręcznika">
								<xsl:value-of select="cena_podręcznika"/>
							</xsl:element>
						</xsl:for-each>
					</xsl:element>
					
				</xsl:element>
			</xsl:for-each>
		</xsl:element>
    </xsl:template>	

</xsl:stylesheet>