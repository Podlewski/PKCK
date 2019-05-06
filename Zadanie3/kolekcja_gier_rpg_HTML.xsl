<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
                doctype-System_gry="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
			<head>
                <title>Kolekcja gier rpg</title>
            </head>
		
		<body style="background-color:#C0C0C0">
			<table border="1" bgcolor="#C0C0C0" align="center" style="text-align:center">
				<h1 align="center"><b>Systemy</b></h1>
				<tr>
					<th><i>Nazwa</i></th>
					<th><i>Gatunek</i></th>
					<th><i>Popularność</i></th>
					<th><i>Format</i></th>
					<th><i>Podręczniki</i></th>
				</tr>				
				
				<xsl:for-each select="Zestawienie_gier_rpg/Posortowane_systemy_według_popularności/System_gry">
					<tr>
						<td><xsl:value-of select="@nazwa"/></td>
						<td><xsl:value-of select="@Gatunek"/></td>
						<td><xsl:value-of select="@Popularność"/></td>
						<td><xsl:value-of select="@Format"/></td>
						<td><xsl:value-of select="Podręczniki"/></td>
					</tr>
				</xsl:for-each>				
			</table>
						
			<table border="1" style="text-align:center" width="100%">
                    <h1 align="center"><b>Podsumowanie kolekcji</b></h1>					
					
                    <tr>
                        <th><i>Liczba systemów gry</i></th>
                        <th><i>Liczba gier dark fantasy</i></th>
                        <th><i>Liczba gier fantasy</i></th>
                        <th><i>Liczba gier science fiction</i></th>
                        <th><i>Liczba gier steampunk</i></th>
                    </tr>
					
                    <tr>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_systemów_gry"/></td>        
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_dark_fantasy"/></td>
						<td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_fantasy"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_science_fiction"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Liczba_gier_steampunk"/></td>
                    </tr>
						
					<tr>
                        <th><i>Łączna cena za kolekcję</i></th>
                        <th><i>Vat od wszystkich podręczników</i></th>
                        <th><i>Średnia cena za podstawkę</i></th>
                        <th><i>Średnia cena za bestiariusz</i></th>
						<th><i>Średnia cena za kampanię</i></th>
                    </tr>
					
					<tr>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Cena_za_całą_kolekcję"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/VAT_od_wszystkich_podręczników"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_podstawkę"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_bestiariusz"/></td>
						<td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_kampanię"/></td>
					</tr>
					
					<tr>                    
                        <th><i>Średnia cena za przygodę</i></th>
                        <th><i>Średnia cena za rozszerzenie</i></th>
                        <th><i>Najwyższa ocena za podręcznik</i></th>
                        <th><i>Średnia ocena za podręcznik</i></th>					
                        <th><i>Data wygenerowania podsumowania</i></th>
                    </tr>
					
					<tr>       
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_przygodę"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_cena_za_rozszerzenie"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Najwyższa_ocena_za_podręcznik"/></td>
                        <td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Średnia_ocena_podręcznika"/></td>
						<td><xsl:value-of select="Zestawienie_gier_rpg/Podsumowanie_kolekcji/Data_podsumowania"/></td>
					</tr>					
                </table>			
			
		</body>		
		</html>
    </xsl:template>
</xsl:stylesheet>