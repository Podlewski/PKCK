<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                >
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="Nasza_kolekcja_gier_rpg" page-height="14in" page-width="14in" font-family="Arial">
                    <fo:region-body region-name="only_region" margin="1in" background-color="#ffffff"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Podręczniki" page-height="14in" page-width="14in" font-family="Arial">
                    <fo:region-body  region-name="only_region" margin="1in" background-color="#ffffff" />
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Podsumowanie" page-height="11in" page-width="11in" font-family="Arial">
                    <fo:region-body  region-name="only_region" margin="1in" background-color="#ffffff" />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="Nasza_kolekcja_gier_rpg">
                <fo:flow flow-name="only_region">
                    <fo:block text-align="center" font-weight="bold" font-family="Arial" font-size="30" color="#000000">
                        <xsl:value-of select="substring('Nasza kolekcja gier rpg', 1)"/>
                    </fo:block>
                    <fo:table border="3pt #000000" table-layout="fixed" width="100%" font-size="10">
                        <fo:table-header>
                            <fo:table-row>
                                <fo:table-cell width="150px">
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Nazwa systemu</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Gatunek</fo:block>
                                </fo:table-cell >
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Wydawca</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Popularnosc</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Format</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell >
                                        <fo:block color="#000000">
                                            <xsl:value-of select="@Nazwa"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#000000">
                                            <xsl:value-of select="@Gatunek"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#000000"> 
                                            <xsl:value-of select="@Wydawca"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#000000">
                                            <xsl:value-of select="@Popularność"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell >
                                        <fo:block color="#000000">
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
                    <fo:block text-align="center" font-weight="bold" font-family="Arial" font-size="30" color="#000000">
                        <xsl:value-of select="substring('Podręczniki', 1)"/>
                    </fo:block>
                    <fo:table border="3pt #000000" table-layout="fixed" width="100%" font-size="10">
                        <fo:table-header>
                            <fo:table-row>
                                <fo:table-cell width="150px">
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Nazwa systemu</fo:block>
                                </fo:table-cell>
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Podrecznik</fo:block>
                                </fo:table-cell >
                                <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Data wydania</fo:block>
                                </fo:table-cell>
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Liczba stron</fo:block>
                                </fo:table-cell >
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Ocena</fo:block>
                                </fo:table-cell >
								<fo:table-cell >
                                    <fo:block font-weight="bold" font-size="12" color="#000000">Cena</fo:block>
                                </fo:table-cell >
                            </fo:table-row>
                        </fo:table-header>
                        <xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell >
                                        <fo:block color="#000000">
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
												<fo:block color="#000000">
													<xsl:value-of select="@Tytuł"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#000000">
													<xsl:value-of select="@Data_Wydania"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#000000">
													<xsl:value-of select="@Liczba_Stron"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#000000">
													<xsl:value-of select="@Ocena_Podręcznika"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block color="#000000">
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
                    <fo:block text-align="center" font-weight="bold" font-family="Arial" font-size="30" color="#000000">Podsumowanie</fo:block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Liczba systemow: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_systemów_gry"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Liczba gier dark fantasy: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_dark_fantasy"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Liczba gier fantasy: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_fantasy"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Liczba gier science fiction:  </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_science_fiction"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Liczba gier steampunkowych:</fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_steampunk"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Laczna cena za nasza kolekcje: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Cena_za_całą_kolekcję"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">VAT od naszej kolekcji: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/VAT_od_wszystkich_podręczników"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia cena za podstawkę: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podstawkę"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia cena za bestiariusz: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_bestiariusz"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia cena za przygode: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_przygodę"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia cena za kampanie: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_kampanię"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia cena za rozszerzenie: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_rozszerzenie"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Najwyzsza ocena za podrecznik: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_ocena_za_podręcznik"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia ocena za podrecznik: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_ocena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Najmniejsza liczba stron podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najmniej_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
                    <fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Srednia liczba stron: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_liczba_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Najwieksza liczba stron: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwięcej_stron"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Najwyzsza cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Najnizsza cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najniższa_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Erednia cena podrecznika: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
                                    <xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_podręcznika"/>
                                </fo:block>
                            </fo:list-item-body>
                        </fo:list-item>
                    </fo:list-block>
					<fo:list-block>
                        <fo:list-item>
                            <fo:list-item-label>
                                <fo:block color="#000000">Data wygenerowania podsumowania: </fo:block>
                            </fo:list-item-label>
                            <fo:list-item-body>
                                <fo:block margin-left="20em" color="#000000">
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