<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:g="http://base.google.com/ns/1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="channel">
        <xsl:element name="Items">
            <xsl:for-each select="item">
                <xsl:element name="Item">
                    <xsl:element name="sku">
                        <xsl:value-of select="g:id"/>
                    </xsl:element>
                    <xsl:element name="name">
                        <xsl:value-of select="g:title"/>
                    </xsl:element>
                    <xsl:element name="categories">
                        <xsl:variable name="newtext" select="translate(g:google_product_category,'>','\')"/>
                        <xsl:value-of select="$newtext"/>
                    </xsl:element>
                    <xsl:element name="url_key">
                        <xsl:value-of select="translate(substring-after(g:link, 'http://'),'.html','')"/>
                    </xsl:element>
                    <xsl:element name="image">
                        <xsl:value-of select="g:image_link"/>
                    </xsl:element>
                    <xsl:element name="additional_images">
                        <xsl:for-each select="g:additional_image_link">
                            <xsl:variable name="count" select="position()"/>
                            <xsl:if test="$count &gt; 1">,</xsl:if>
                            <xsl:value-of select="string(.)"/>
                        </xsl:for-each>
                    </xsl:element>
                    <xsl:element name="is_in_stock">
                        <xsl:choose>
                            <xsl:when test="g:availability = 'in stock'">
                                <xsl:value-of select="1"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="0"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:element>
                    <xsl:element name="price">
                        <xsl:variable name="newtext" select="translate(g:price,' EUR','')"/>
                        <xsl:value-of select="$newtext"/>
                    </xsl:element>

                    <xsl:element name="manufacturer">
                        <xsl:value-of select="g:brand"/>
                    </xsl:element>
                    <xsl:element name="color">
                        <xsl:value-of select="g:color"/>
                    </xsl:element>
                    <xsl:element name="size">
                        <xsl:value-of select="g:size"/>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>