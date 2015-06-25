<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <xsl:call-template name="top_site_navigation"/>
  </xsl:template>

  <xsl:template name="top_site_navigation">
		<xsl:apply-templates select="//Properties/Data/Result/map/entry/navLevel[level='1'][hideFromNav='N']" mode="navigation">
			<xsl:sort select="orderWeight" data-type="number" order="ascending"/>
		</xsl:apply-templates>
		<xsl:apply-templates select="//Properties/Data/Result/map/entry/navLevel[level='1'][hideFromNav='N']" mode="flyouts">
			<xsl:sort select="orderWeight" data-type="number" order="ascending"/>
		</xsl:apply-templates>
 	</xsl:template>

	<xsl:template match="navLevel" mode="navigation"></xsl:template>

	<xsl:template match="navLevel" mode="flyouts">
		<xsl:variable name="id"><xsl:value-of select="id"/></xsl:variable>
		<xsl:attribute name="id">topperFlyout_<xsl:value-of select="$id" /></xsl:attribute>
  	<li>
			<h2><xsl:value-of select="navTitle"/></h2>

			<!--<img>
      	<xsl:apply-templates select="//Properties/Data/Result/map/entry/topDest[dataBelongsToNodeId = $id][themeImageUrl]" mode="themeImageUrl">
      		<xsl:with-param name="pId" select="$id"/>
      		<xsl:with-param name="navTitle" select="navTitle"/>
      	</xsl:apply-templates>
      </img>-->

      <ul class="menu list wrapper your classes here">
				<xsl:apply-templates select="//Properties/Data/Result/map/entry/navLevel[level='2'][hideFromNav='N']" mode="sectionLinks">
					<xsl:with-param name="pId" select="$id"/>
					<xsl:sort select="orderWeight" data-type="number" order="ascending"/>
				</xsl:apply-templates>
      </ul>
		</li>
	</xsl:template>

	<xsl:template match="navLevel" mode="sectionLinks">
		<xsl:param name="pId"></xsl:param>
		<xsl:variable name="id"><xsl:value-of select="id"/></xsl:variable>
		<xsl:if test="$pId = parentId">
	  	<li class="menu item your classes here">
      	<a class="links your classes here">
          <xsl:attribute name="href">http://www2.gov.bc.ca/gov/theme.page?id=<xsl:value-of select="$id"/></xsl:attribute>
        	<xsl:value-of select="navTitle"/>
        </a>
      </li>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
