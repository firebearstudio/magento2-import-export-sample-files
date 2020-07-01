# Magento2 import / export sample files

<p>In this repository we have gathered all sample files for Magento 2 import and export procedures. Every file has been tested with the different Magento 2 versions and latest release of <b><a href="https://firebearstudio.com/the-improved-import.html">Improved Import and Export extension</a></b>.</p>
<p align="center" />If you are new to the import process - start by reading <b><a href="https://firebearstudio.com/blog/the-complete-guide-to-magento-2-product-import-export.html">FireBear Studio Magento 2 import guide</a></b>.</p>
</p>The latest release of Magento 2 Improved Import and Export extension added support of <a href="https://firebearstudio.com/blog/magento-2-b2b-commercecloud-how-to-import-and-export-companies-requisition-lists-shared-catalogs-and-negotiable-quotes.html" ><b>B2B Add-On</b></a>. The add-on allows to import and export all Magento 2 B2B entities: companies, shared catalogs, requisition lists and quotes and negotiable quotes. All B2B sample files can be found here with b2b prefix.</p>
<h2>List of Magento 2 sample import files</h2>
<b><a href="https://github.com/firebearstudio/magento2-import-export-sample-files/tree/master/Improved%20Import%20:%20Export%20-%20Sample%20Files" />/Improved Import : Export - Sample Files</a></b>
<h3>B2B Add-on entities</h3>
<ul>
  <li><b>b2b_companies.csv .xml .xlsx .ods</b> - companies are a Magento 2 Commerce B2B entity. In this file you will find all company attribues and will be able to import companies with the B2B Add-On to Improved Import and Export extension.</li>
  <li><b>b2b_shared_catalogs.csv .xml .xlsx .ods</b> - shared catalogs are product catalogs available for companies and different customer groups. The catalog format is pretty simple. If you are importing NEW shared catalogs and the assigned customer group doesn't exist - it will be created automatically. Requires B2B Add-On to Improved Import and Export extension.</li>
  <li><b>b2b_requisition_lists.csv .xml .xlsx .ods</b> - requisition lists allow customers to order products on a recurring basis in the most convenient way. Requisition lists can only be managed by customers or via import. Requires B2B Add-On to Improved Import and Export extension.</li>
  <li><b>b2b_quotes.csv .xml .xlsx</b> - quotes are basically abandoned carts of the customers. In this sample file you will find minimum set of attributes required to import products to the customer's carts. Quotes are a part of the negotiable quote - a B2B entity - they share a single import entity with them. Requires B2B Add-On to Improved Import and Export extension.</li>
  <li><b>b2b_negotiable_quotes.csv .xml .xlsx</b> - negotiable quotes are company requests for a discounted price per cart. Negotiable quotes contain 'quote' entity - products in the cart - and require additional attribute to be loaded to make sure the negotiable quotes are properly displayed in the backend. Requires B2B Add-On to Improved Import and Export extension.</li>
</ul>
<h3>MSI Add-on entities</h3>
<ul>
  <li><b>msi_stock_source.csv .xml. .xlsx .ods</b> - a sample file with the stock sources (warehouses), allows creating/addin new warehouses to the Magento 2 store and updatig existing warehouses.</li>
  <li><b>msi_source_qty.csv .xml .xlsx .ods</b> - product quantity per stock source (warehouse), allows updating product quantity per warehouse. Products are referenced by SKU and warehouses by source_code attributes.</li>
</ul>
<h3>Improved Import and Export extension general Magento 2 entities</h3>
<ul>
  <li><b>attributes.csv .xml .xlsx</b> - a file with product attributes and attribute sets and groups. With its help you can create new attributes and attribute sets.</li>
  <li><b>advanced_pricing.csv .xml .xlsx .json</b> - a native Magento 2 file composition for importing tier prices. Comes with only product SKUs and tier price attributes: <i>tier_price_website, tier_price_customer_group, tier_price_qty, tier_price, tier_price_value_type</i>. These composition is enough to update advanced pricing for existing Magento 2 products.</li>
  <li><b>cart_price_rules.csv .xml .ods .xlsx .json</b> - a sample file for importing cart price rules to Magento 2 with Improved Import and Export extension. If the file you will find three price rules with different sample coupon codes, discountss and other attributes.</li>
  <li><b>categories.csv .xml .xlsx .json</b> - a sample file for importing Categories to Magento 2 with Improved Import and Export extension. There are three sample categories you can quickly identify. Each category comes with different settings to show you possible attribute values.</li>
  <li><b>cms_blocks.csv .xml .xlsx .ods</b> - a sample file with CMS static blocks that can be imported to Magento 2 with Improved Import and Export extension. Useful when migrating from an old store. Two sample CMS blocks help you understand how to import different settings and attributes and which values Magento 2 accepts.</li>
  <li><b>cms_pages.csv .xml .xlsx .json</b> - a sample file with CMS blocks that can be imported to Magento 2 with Improved Import and Export extension. Useful when migrating from an old store. Two sample CMS pages help you understand how to import different settings and attributes and which values Magento 2 accepts.</li>
  <li><b>customer_addresses.csv .xml .json</b> - a native Magento 2 file composition for importing customer addresses. First of three customer import files with the same sample customers for clarity. In this file you can find sample data on which address values can be accepted by Magento 2.</li>
  <li><b>customers_and_addresses.csv .xml .xlsx .json</b> - a native Magento 2 file composition for importing customers and addresses. Second customer file. Here you can get idea how to import both, customer data and addresses with different attribute values for every customer.</li>
  <li><b>customers_main.csv .xml .xlsx .json</b> - a native Magento 2 file composition for importing customers. Third customer file. It helps you get the idea of main customer attributes, how to fill them and what is the file composition accepted by Magento 2.</li>
  <li><b>customer_finance.csv .xml .xlsx</b> - a Magento 2 Cloud and Commerce file with store credit and reward point balance updates. The file is only viable for Magento 2 Cloud and Commerce versions.</li>
  <li><b>fixed_product_tax.csv .xml .json</b> - a native Magento 2 file for importing products. The main difference is the Magento 2 Fixed Product Tax attribute that allows you to add tax per product for different countries. In this file you can see which fixed product tax values can be imported.</li>
  <li><b>orders.csv .xml</b> - a sample file with order import to Magento 2. We constantly improve order import and export making it simple and available for manual edits. This version of the order import file features dedicated rows for products in the order.</li>
  <li><b>products_all_types.csv .xml .xlsx .json</b> - a sample file which lists ALL product types for Magento 2 import. In this file you can find products of every possible type: configuable, bundle, grouped, downloadable etc. You can learn which attributes are required to import every product type and what values are expected in these attributes.</li>
  <li><b>products_and_advanced_pricing.csv .xml .json</b> - a sample file which allows to import products along with tier prices using Improved Import and Export Magento 2 extension. Default Magento 2 import only allows to import tier prices and products in separate files. With this file you get a sample of new attribute <i>tier_priceS</i> only available for Improved Import. Use this file with entity 'Products' to import tier prices.</li>
  <li><b>products_bundle.csv .xml .xlsx .json</b> - a sample file with Magento 2 bundle product import. Here you can find bundle products and learn what attributes and values are required to import bundle products. The file can be imported with default Magento 2 import.</li>
  <li><b>products_configurable_improved.csv .xml .xlsx .json</b> - a sample file for importing Magento 2 configurable products in a new, straightforward, way. Only for Improved Import extension. In this file we use custom attribute column 'group' where we list parent product dependency for simple products. Using Improved Import extension you only need to specify this 'group' attribute, and the extension will assign simple products automatically.</li>
  <li><b>products_configurable_native.csv .xml .xlsx .json</b> - a native Magento 2 file for importing configurable products. In this file you can find default Magento 2 table composition for importing configurable products using attributes <i>configurable_variations</i> and <i>additional_attributes</i>.</li>
  <li><b>products_grouped.csv .xml .xlsx .json</b> - a sample file with Magento 2 grouped product import. Here you can find grouped products and learn what attributes and values are required to import grouped products. The file can be imporeted with default Magento 2 import.</li>
  <li><b>products_downloadable.csv .xml .xlsx</b> - a sample file with Magento 2 downloadable product import. Here you will learn how to compose and add downloadable links and define which files are sold with downloadable product.</li>
  <li><b>tax_rates.csv</b> - a sample file for importing Magento 2 taxes. Only available in CSV as default Magento 2 import process is used. In this file you will learn table composition for importing taxes applied to different stores and store views. To import taxes proceed to <b>System > Import and Export Tax Rates</b> in your Magento 2 admin panel.</li>
  <li><b>update_price_stock.csv .xml .json</b> - a sample file for updating Magento 2 product stock and price. Use with Improved Import. In this file we share an example of how you can quickly compose a file for updating stock and price. You only need to specify product SKU, Price and Qty attributes. This way if your supplier provides you with the updates, you can apply them quickly.</li>
  <li><b>products_multiple_store_view.csv</b> - a sample file for importing products per store views. Can be used with Improved Import and native Magento 2 import.</li>
  <li><b>products_swatches_import.csv</b> - allows importing color swatches for products. The swatches can be imported with color HEX code or using the URL to the swatch image.</li>
  <li><b>search_synonyms.csv .xml .ods .xlsx</b> - allows importing search synonyms for Magento 2. Make sure you are not using the same word for different synonym groups to avoid errors.</li>
  <li><b>search_terms.csv .xml .ods .xlsx</b> - allows importing search terms for Magento 2. The search terms defines any URL redirects for customer search queries.</li>
  <li><b>product_position_in_category.csv</b> - this file features 'products' entity with custom 'categories_position' attribute which allows to import product position inside of a category.</li>
  <li><b>page_hierarchy.csv .xml .ods .xlsx</b> - this file features 'page hierarchy' entity which will let you import your CMS pages menu linking.</li>
  <li><b>url_rewrite.csv .xml .ods .xlsx</b> - this file features 'url rewrites' entity which will let you import your Magento 2 URL rewrites, redirects, and other url linking.</li>
  <li><b>review.csv .xml .ods .xlsx</b> - this file features 'product reviews' entity which will let you import your Magento 2 product reviews, rating, and customer thoughs of your products.</li>
  <li><b>gift_card.csv .xml .ods .xlsx</b> - this file features 'products' entity, specifically gift card products, which will let you import your Magento 2 Commerce gift cards. Note, that you need to use 'Products' entity for import and export, as gift cards count as additional product type.</li>
</ul>
<p align="center" />Up to date default <a href="https://github.com/magento/magento2/">Magento 2 Open Source (CE) & Commerce (EE, Cloud) import</a> / export CSV files &amp; sample files for <a href="https://firebearstudio.com/the-improved-import.html" title="Magento 2 Import & Export">Firebear Improved Import / Export extension</a> (CSV, XML, Json)</p>

<h2><a href="https://firebearstudio.com/the-improved-import.html">Imroved Import and Export extension for Magento 2</a></h2>
<ul>
  <li>If you are looking for the way to automate import and export procedures</li>
  <li>If you want to import from XML, CSV, Json, XLSX, ODS files</li>
  <li>If you need to map attributes and categories</li>
  <li>If you require order, category, cart price rule, product attribute and sets import</li>
  <li>If you require Rest or Soap API connection to your CRM, ERP and other systems</li>
</ul>
<a href="https://firebearstudio.com/the-improved-import.html" title="Magento 2 Import Guide"><img src="https://firebearstudio.com/media/catalog/product/cache/1/small_image/040ec09b1e35df139433887a97daa66f/m/a/magento2importflowrestapi.png" /></a>

<h3>What is the extension</h3>
<ul>
  <li><b>Improved Import and Export is a Magento 2 extension</b> - meaning all the management process takes place in the administrator panel. You are not tied to the third party applications and don't have to run anything in the background.</li>
  <li><b>The extension is open code</b> - meaning that you can make necessary code adjustments and even improve existing functionality the way you like.</li>
  <li><b>Customization endpoints</b> - FireBear team have composed a dedicated customization module for Improved Import and Export extension you can use to enhance the extension's functionality.</li>
  <li><b>Json file support</b> - a single point of the Rest and Soap API integration with any software you are using for customer or sales management. Try integrating your CRM, ERP or POS systems to the extension.</li>
</ul>
<p align="center" /><a href="https://firebearstudio.com/blog/the-complete-guide-to-magento-2-product-import-export.html" title="Magento 2 Import Guide">Magento 2 Ultimate Import & Export guide</a></p>


<h3>Magento 2 Google Sheets import</h3>

<p>Improved Import and Export extension for Magento 2 allows importing CSV files directly from the Google Sheets. You can edit the file with your colleagues or supplier, paste it into the import job and schedule it to run automatically.</p>
<p align="center" /><a href="https://firebearstudio.com/blog/magento-2-google-sheet-import.html" title="Magento 2 Google Sheet Import
">Read more about Magento 2 Google Sheet Import</a></p>
<p>We have also composed a Master Google Sheet table for Magento 2 where gathered all possible import entities. Every attribute comes with a description and samples. Feel free adding it to your Google Drive and using for your store.</p>
<p align="center" /><a href="https://docs.google.com/spreadsheets/d/13FemIzzexF5koAdQYjbcKscqoCfXyknYWkQkbSZGPsk/edit#gid=1164219475" title="Google Sheet Master Table for Magento 2 Import">Google Sheet Master Table for Magento 2 Import</a></p>

<a href="https://docs.google.com/spreadsheets/d/13FemIzzexF5koAdQYjbcKscqoCfXyknYWkQkbSZGPsk/edit#gid=1164219475" title="Magento 2 Google Sheet Import
"><img src="https://i.imgur.com/hxXZrKf.png" /></a>

<h2>Magento 2 Improved Import and Export Roadmap</h2>
<ul>
<li>Import and export events and job queue and restrictions - build flexible conditions for running import and export jobs after any Magento 2 update, queue jobs, automatically block jobs that depend on any system event or process. For example: order placed, new product or customer created, attribute modified. </li>
<li>Magento 2 product image processing settings and configuration - crop and scale, adjust size and files name, convert to different format, compression and performance optimization.</li>
<li>Email, WhatsApp, Telegram and other notification possibilities for jobs - send status and debug information about import and export processes.</li>
<li>Import diff system – a smart algorithm for comparing the current state of Magento 2 and data in the specified import source. Save time and resources by updating only relevant data.</li>
<li>Imports job filtering - flexible rules and conditions for updating and importing specific data from any source.</li>
<li>FireBear Composer repository - for extension installation and upgrade with Composer package manager.</li>
<li>Simplified and improved import of bundle and grouped products – import and create on the fly complex products by the fields of the child products.</li>
<li>Full support of Magento 2 Multiple Source Inventory extension and its workflow.</li>
<li>Full support and compatibility with Magento 2 B2B and Omnichannel.</li>
<li>Price and currency formatting.</li>
<li>Get raw SQL query of import & export job to run and adjust directly to Mageto 2 MySQL server.</li>
<li>Dry Run (Test import) - preview and test imported data without actual import. Useful for debugging and catching issues before import.</li>
<li>Full circle Magento 2 integration and synchronization of products and orders with top drop-shipping providers (Doba, Dropship Direct, Wholesale2b, Aliexpress, Taobao, Alibaba etc. more details at <a href=”https://firebearstudio.com/blog/ultimate-list-of-drop-shipping-platforms-and-integrations.html” />Ultimate List Of Drop Shipping Platforms And Integrations</a>). </li>
</ul>

<h2>Partner with Firebear and fire up your business</h2>
Get special discounts, participate in adjusting the development roadmap and more. Firebear Studio is looking forward to partner with development agencies and anyone interested in cooperating with the most popular Magento blog on web.
<p align="center" /><a href="https://firebearstudio.com/blog/introducing-firebear-partner-loyalty-program.html" ><b>Read more about Firebear partner program</b></a></p>
