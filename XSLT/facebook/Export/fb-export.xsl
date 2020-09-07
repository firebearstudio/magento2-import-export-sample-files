<?xml version="1.0"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:g="http://base.google.com/ns/1.0"
	xmlns:php="http://php.net/xsl" 
	exclude-result-prefixes="php">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>

	<xsl:template match="Items">
		<rss version="2.0" xmlns:g="http://base.google.com/ns/1.0">
			<channel>
				<title>Name of data feed</title>
				<link>http://www.example.com/</link>
				<description>Description of data feed</description>
				<xsl:for-each select="item">
					<xsl:element name="item">
						<xsl:element name="g:id"><xsl:value-of select="sku"/></xsl:element> 
						<xsl:element name="g:title"><xsl:value-of select="name"/></xsl:element>
						<xsl:element name="g:description">
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:value-of select="substring(php:functionString('trim', php:functionString('strip_tags', php:functionString('html_entity_decode', description))), 1, 10000)"/><xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</xsl:element>
						<xsl:element name="g:google_product_category">
							<xsl:variable name="newtext" select="translate(categories,'\','>')"/>
							<xsl:value-of select="$newtext"/>
						</xsl:element> 
						<xsl:element name="g:product_type">
							<xsl:value-of select="product_type" />
						</xsl:element>
						<xsl:element name="g:link">
							<xsl:text>https://www.example.com/</xsl:text>
							<xsl:value-of select="url_key"/>
							<xsl:text>.html</xsl:text>
						</xsl:element> 
						<xsl:element name="g:image_link">
							<xsl:text>https://www.example.com/pub/media/catalog/product/</xsl:text>
							<xsl:value-of select="base_image"/>
						</xsl:element>
						<xsl:call-template name="split">
							<xsl:with-param name="list"      select="additional_images" />
							<xsl:with-param name="separator" select="','" />
						</xsl:call-template>

						<xsl:element name="g:condition"><xsl:text>new</xsl:text></xsl:element>


						<xsl:element name="g:availability">
							<xsl:choose>
								<xsl:when test="is_in_stock=0"><xsl:text>out of stock</xsl:text></xsl:when>
								<xsl:otherwise><xsl:text>in stock</xsl:text></xsl:otherwise>
							</xsl:choose>
						</xsl:element>

						<xsl:element name="g:price">
							<xsl:value-of select="php:functionString('number_format', price, 2, '.', '')"/>
							<xsl:text> EUR</xsl:text>
						</xsl:element>


						<xsl:if test="special_price &gt; 0">
							<xsl:element name="g:sale_price"><xsl:value-of select="php:functionString('number_format', special_price, 2, '.', '')"/></xsl:element>
							<xsl:if test="string(special_price_from_date) and string(special_price_to_date)">
								<xsl:element name="g:sale_price_effective_date">
									<xsl:value-of select="concat(php:functionString('substr',special_price_from_date,0,10),'T',php:functionString('substr',special_price_from_date,11,5),'+0100/',php:functionString('substr',special_price_to_date,0,10),'T',php:functionString('substr',special_price_to_date,11,5),'+0100')" />
								</xsl:element>
							</xsl:if>
						</xsl:if>

						<xsl:element    name="g:brand"><xsl:text>example</xsl:text></xsl:element>

						<xsl:element name="g:shipping"> <!-- can be inserted up to 100 times to cover every destination, if shipping prices differ localy-->
							<xsl:element name="g:country"><xsl:text>IT</xsl:text></xsl:element> <!-- ISO 3166- country code. Default value: destination country of the feed -->
							<xsl:element name="g:state"><xsl:text>*</xsl:text></xsl:element> 
							<xsl:element name="g:SHIPPING_TYPE"><xsl:text>Standard</xsl:text></xsl:element> 
							<xsl:element name="g:PRICE"><xsl:text>0</xsl:text></xsl:element> lement> 
						</xsl:element>

						<xsl:element name="shipping_weight"><xsl:value-of select="weight"/><xsl:text> kg</xsl:text></xsl:element> 

					</xsl:element>
				</xsl:for-each>
			</channel>
		</rss>
	</xsl:template>
	<xsl:template name="split">
		<xsl:param name="list"      select="''" />
		<xsl:param name="separator" select="','" />

		<xsl:if test="not($list = '' or $separator = '')">
			<xsl:variable name="head" select="substring-before($list, $separator)" />
			<xsl:variable name="tail" select="substring-after($list, $separator)" />
			<xsl:if test="not($head = '')">
				<g:additional_image_link>
					<xsl:text>https://www.example.com/pub/media/catalog/product/</xsl:text>
					<xsl:value-of select="$head"/>
				</g:additional_image_link>
			</xsl:if>
			<xsl:if test="not($tail = '')">
				<g:additional_image_link>
					<xsl:text>https://www.example.com/pub/media/catalog/product/</xsl:text>
					<xsl:value-of select="$tail"/>
				</g:additional_image_link>
			</xsl:if>
			<xsl:call-template name="split">
				<xsl:with-param name="list"      select="$tail" />
				<xsl:with-param name="separator" select="$separator" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
