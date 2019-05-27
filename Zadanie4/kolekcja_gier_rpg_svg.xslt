<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="Zestawienie_gier_rpg">
		
		<svg width="80cm" height="45cm"  xmlns="http://www.w3.org/2000/svg">
		
		<rect width="100%" height="100%" fill="#303030"/>

	<script type="text/javascript">
                <xsl:text>
                    function changeColour(evt) {
                        var obj = evt.target;
						var attr = obj.getAttribute("fill");
						
						if (attr=="#202020") 
						{ obj.setAttribute("fill", "#404040"); }
						
						if (attr=="#404040") 
						{ obj.setAttribute("fill", "#202020"); }
                    }                 
                </xsl:text>
	</script>

		<text x="055" y="055" font-family="georgia" fill="#ffffff" font-size="50" allign ="center">
			Nasza kolekcja gier rpg:
		</text>
    	<xsl:for-each select="Posortowane_systemy_według_popularności/System_gry">
    		<xsl:variable name="pos" select="(position()-1) * 600"/>
    		<xsl:variable name="nazwa" select="@Nazwa"/>
    		<xsl:variable name="ocena" select="number(substring(@Popularność,0,3))"/>
			<rect x="{$pos + 100}" y="100" height="1270" width="580" fill="#202020" stroke="white" stroke-width="10" onclick="changeColour(evt)"/>
							 <text writing-mode="horizontal-tb"  x="{$pos + 115}" y="145" font-family="sans-serif" font-size="30" fill="#ffffff">
							  <xsl:value-of select="$nazwa"/>
							</text>
							<text writing-mode="vertical-rl"  x="{$pos + 635}" y="375" font-family="sans-serif" font-size="20" fill="#ffffff">
							  <xsl:value-of select="@Wydawca"/>
							</text>
							<text x="{$pos + 350}" y="195" font-family="sans-serif" font-size="25" fill="#ffffff">
							Popularność: 
							  <xsl:value-of select="@Popularność"/>
							</text>

							<rect x="{$pos + 115}" y="170" height="30" width="0" fill="#282828" 
							stroke="black" stroke-width="2">
							<animate attributeType="XML" attributeName="width" from="0" to="{200}" 
							dur="1s" fill="freeze"/>
							</rect>
							<rect x="{$pos + 115}" y="170" height="30" width="0" fill="#B8B8B8" 
							stroke="black" stroke-width="2">
							<animate attributeType="XML" attributeName="width" from="0" to="{$ocena*2}"
							dur="3s" fill="freeze"/>
							</rect>
								<xsl:for-each select="Podręczniki/Podręcznik">
									<xsl:variable name="pos2" select="(position()-1) * 115"/>
									<text x="{115 + $pos}" y="{230 + $pos2 - 8}" font-family="sans-serif" font-size="20" fill="#abcdef">
									<xsl:value-of select="@Tytuł"/>
									</text>
									
									<rect x="{115 + $pos}" y="{230 + $pos2}" height="17" width="0" fill="#484848" stroke-width="5" >
									<animate attributeType="XML" attributeName="width" from="0" to="{@Liczba_Stron}" dur="1s" fill="freeze"/>
									</rect>
									
									<text x="{115 + $pos}" y="{230 + $pos2 + 16}" font-family="sans-serif" font-size="15" fill="#C0C0C0">
									 Liczba stron: 
									<xsl:value-of select="@Liczba_Stron"/>
									</text>
									
									<rect x="{115 + $pos}" y="{230 + $pos2 + 27}" height="17" width="0" fill="#000033" stroke-width="5" >
									<animate attributeType="XML" attributeName="width" from="0" to="{@Ocena_Podręcznika * 10}" dur="1s" fill="freeze"/>
									</rect>
									
									<text x="{115 + $pos}" y="{230 + $pos2 + 43}" font-family="sans-serif" font-size="15" fill="#C0C0C0">
									Ocena podręcznika: 
									<xsl:value-of select="@Ocena_Podręcznika"/>
									</text>
									
									<rect x="{115 + $pos}" y="{230 + $pos2 + 54}" height="17" width="0" fill="#4c0000" stroke-width="5" >
									<animate attributeType="XML" attributeName="width" from="0" to="{@Cena_Podręcznika }" dur="1s" fill="freeze"/>
									</rect>
									
									<text x="{115 + $pos}" y="{230 + $pos2 + 70}" font-family="sans-serif" font-size="15" fill="#C0C0C0">
									Cena podręcznika: 
									<xsl:value-of select="@Cena_Podręcznika"/>
									
									</text>
								
								</xsl:for-each>
								
																				
    	</xsl:for-each>  
		
	</svg>
	
  </xsl:template>	
</xsl:stylesheet>