<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
			<xsl:element name="Zestawienie_gier_rpg">
                <xsl:apply-templates select="kolekcja_gier_rpg/nasza_kolekcja"/>
				
				<xsl:element name="Podsumowanie_kolekcji">
					<xsl:element name="Liczba_system_gryów">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry)"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_akcji">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat01'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_dark_fantasy">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat02'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_detektywistycznych">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat03'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_fantasy">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@gatunek_id='gat04'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_z_Kuźni_Gier">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@wydawca_id='wyd05'])"/>
					</xsl:element>
					
					<xsl:element name="Liczba_gier_z_Rebel">
						<xsl:value-of select="count(kolekcja_gier_rpg/nasza_kolekcja/system_gry[@wydawca_id='wyd01'])"/>
					</xsl:element>
					
					<xsl:variable name="Vat" select="sum(kolekcja_gier_rpg/nasza_kolekcja/system_gry/podręczniki/podręcznik/cena_podręcznika)"/>
					
					<xsl:element name="VAT_od_zamówienia">
                        <xsl:value-of select="concat(round(($Vat * 23)div 100),' zł')"/>
                    </xsl:element>
					
					<!-- <xsl:element name="Data_Raportu"> -->
                        <!-- <xsl:value-of select="format-dateTime(current-dateTime(),'[D01]-[M01]-[Y0001]')" /> -->
                    <!-- </xsl:element> -->
					
				</xsl:element>
			</xsl:element>
        </xsl:template>
		
		<xsl:template match="kolekcja_gier_rpg/nasza_kolekcja">
        <xsl:for-each select="system_gry">
            <xsl:sort select="popularność" order="descending"/>
            <xsl:element name="Podręcznik">
                <xsl:attribute name="Tytuł">
                    <xsl:value-of select="nazwa"/>
                </xsl:attribute>
                <xsl:choose>
                    <xsl:when test="string(@gatunek_id) = 'gat01'">
                        <xsl:attribute name="Gatunek">Akcja</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@gatunek_id) = 'gat02'">
                        <xsl:attribute name="Gatunek">Dark_Fantasy</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@gatunek_id) = 'gat03'">
                        <xsl:attribute name="Gatunek">Detektywistyczna</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@gatunek_id) = 'gat04'">
                        <xsl:attribute name="Gatunek">Fantasy</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@wydawca_id) = 'wyd05'">
                        <xsl:attribute name="Wydawca">Kuźnia_Gier</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@wydawca_id) = 'wyd06'">
                        <xsl:attribute name="Wydawca">Rebel</xsl:attribute>
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
							<xsl:element name="Tytuł"><xsl:value-of select="tytuł"/></xsl:element>
							<xsl:element name="Tytuł_oryginalny"><xsl:value-of select="tytuł_oryginalny"/></xsl:element>
							<xsl:element name="Data_wydania"><xsl:value-of select="data_wydania"/></xsl:element>
							<xsl:element name="Liczba_stron"><xsl:value-of select="liczba_stron"/></xsl:element>
							<xsl:element name="Ocena_podręcznika"><xsl:value-of select="ocena_podręcznika"/></xsl:element>
							<xsl:element name="Cena_podręcznika"><xsl:value-of select="cena_podręcznika"/></xsl:element>
					</xsl:for-each>
                </xsl:element>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>	

</xsl:stylesheet>