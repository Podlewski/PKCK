<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                >
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="Nasza_kolekcja_gier_rpg" page-height="14in" page-width="14in" font-family="sans-serif">
                    <fo:region-body region-name="only_region" margin="1in" background-color="#696969"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Podręczniki" page-height="14in" page-width="14in" font-family="sans-serif">
                    <fo:region-body  region-name="only_region" margin="1in" background-color="#696969" />
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Podsumowanie" page-height="11in" page-width="11in" font-family="sans-serif">
                    <fo:region-body  region-name="only_region" margin="1in" background-color="#696969" />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="Nasza_kolekcja_gier_rpg">
                <fo:flow flow-name="only_region">
                    <fo:block text-align="center" font-weight="bold" font-family="Georgia" font-size="20" color="#ffffff">
                        <xsl:value-of select="substring('Nasza kolekcja gier rpg', 1)"/>
                    </fo:block>
                    <fo:table border="3pt #ffffff" table-layout="fixed" width="100%" font-size="10">
                        <fo:table-header>
                            <fo:table-row>
                                <fo:table-cell width="150px">
                                    <fo:block font-weight="bold" color="#ffffff">Nazwa systemu</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" color="#ffffff">Gatunek</fo:block>
                                </fo:table-cell >
                                <fo:table-cell >
                                    <fo:block font-weight="bold" color="#ffffff">Wydawca</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" color="#ffffff">Popularnosc</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" color="#ffffff">Format</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell >
                                        <fo:block color="#ffffff">
                                            <xsl:value-of select="@Nazwa"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#ffffff">
                                            <xsl:value-of select="@Gatunek"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#ffffff"> 
                                            <xsl:value-of select="@Wydawca"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#ffffff">
                                            <xsl:value-of select="@Popularność"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#ffffff">
                                            <xsl:value-of select="@Format"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </xsl:for-each>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
            <fo:page-sequence master-reference="Podręczniki">
                <fo:flow flow-name="only_region">
                    <fo:block text-align="center" font-weight="bold" font-family="Georgia" font-size="20" color="#ffffff">
                        <xsl:value-of select="substring('Podręczniki', 1)"/>
                    </fo:block>
                    <fo:table border="3pt #ffffff" table-layout="fixed" width="100%" font-size="10">
                        <fo:table-header>
                            <fo:table-row>
                                <fo:table-cell width="150px">
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Nazwa systemu</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Podrecznik</fo:block>
                                </fo:table-cell >
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Data wydania</fo:block>
                                </fo:table-cell>
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Liczba stron</fo:block>
                                </fo:table-cell >
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Ocena</fo:block>
                                </fo:table-cell >
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="15" color="#ffffff">Cena</fo:block>
                                </fo:table-cell >
                            </fo:table-row>
                        </fo:table-header>
                        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell >
                                        <fo:block color="#ffffff">
                                            <xsl:value-of select="@Nazwa"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
									<xsl:for-each select="Podręczniki/Podręcznik">
											<fo:table-row>
											<fo:table-cell>
												<fo:block>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#ffffff">
													<xsl:value-of select="@Tytuł"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#ffffff">
													<xsl:value-of select="@Data_Wydania"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#ffffff">
													<xsl:value-of select="@Liczba_Stron"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#ffffff">
													<xsl:value-of select="@Ocena_Podręcznika"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#ffffff">
													<xsl:value-of select="@Cena_Podręcznika"/>
												</fo:block>
											</fo:table-cell>
											</fo:table-row>
									</xsl:for-each>
                            </fo:table-body>
                        </xsl:for-each>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
			
            <fo:page-sequence master-reference="Podsumowanie">
                <fo:flow flow-name="only_region">
                    <fo:block text-align="center" font-weight="bold" font-size="12" color="#ffffff">Podsumowanie</fo:block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Liczba systemow: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_systemów_gry"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Liczba gier dark fantasy: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_dark_fantasy"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Liczba gier fantasy: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_fantasy"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Liczba gier science fiction:  </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_science_fiction"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Liczba gier steampunkowych:</fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_steampunk"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Laczna cena za nasza kolekcje: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Cena_za_całą_kolekcję"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">VAT od naszej kolekcji: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/VAT_od_wszystkich_podręczników"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia cena za podstawkę: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podstawkę"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia cena za bestiariusz: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_bestiariusz"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia cena za przygode: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_przygodę"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia cena za kampanie: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_kampanię"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia cena za rozszerzenie: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_rozszerzenie"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Najwyzsza ocena za podrecznik: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_ocena_za_podręcznik"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia ocena za podrecznik: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_ocena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Najmniejsza liczba stron podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najmniej_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Srednia liczba stron: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_liczba_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Najwieksza liczba stron: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwięcej_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Najwyzsza cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Najnizsza cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najniższa_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Erednia cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#ffffff">Data wygenerowania podsumowania: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#ffffff">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Data_podsumowania"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
</xsl:stylesheet>