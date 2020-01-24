1.5.0
=============
* Fixed bugs:
    * Fixed an issue where strategy validation did not work with value "skip on entries"
* Restructured code for form of Import Jobs:
    * Form at style of Accordeon
* Add features:
    * Add inline edit for field Cron in Grid
    * Add validate of file after entered data for file
* Add Export Jobs:
    * Add grid
    * Add form
    * Add commands
    * Add crontab
    
2.0.0
=============
- general refactoring
- add export jobs similar to import jobs with mapping
- refactoring and improvements for import mapping
- hardcoded values / default values on mapping export 
- Magento 1 pre set for import jobs
- export orders jobs with mapping and filters
- add file validation on import job
- advanced pricing import performance issue
- filtering for export for all entities by attributes
- interaction for default values when should be unique , x1, x2 etc. 
- default / hardcoded value suffix & prefix 
- detailed logging 
- sample files included to extension pack & download from manual 
- unzip / untar file before import 
- upload CSV directly to import job on import form (in web browser)

2.1.0
==============
* Import and Export Fixed Product Tax
* Fix bugs:
   - Hardvalue for field of Entity
   - Load page add Job in Export
   - Import and Export in Admin
   - Correct values for fields of bundle product
   - Check Area Code in Console
   - Delete element in Map
   - Off Logs to Console via Admin
* Add rules for new variations of Configurables Products
* Support Language in console
* Support Language in Cron
* Add Behaviour "Only Update" for Entity of Products
* Add fields for Export's Filter: product_type, attribute_set_code
* Unset special price
* Run re-index command line automatically after import processed
* Import category by Ids and Path of Ids instead of category name
* Generate unique url
* Divide Additional Attributes

2.1.1
==============
* Add Mapping of Categories
* Export Categories
* Load images via HTTP Auth
* Fix bugs:
   - Cannot set zero value for Default Column in Map Attributes table of Import Job
   - Column of Mapping is Empty after load
   - Cannot change Attribute Set
   - Cannot load file via url
   - Cannot minify js files
   - Cannot load image for Configurable product
   - Cannot open page of Export job fast
   - Cannot export bundles and grouped products
   - Cannot add some identicaly fields in mapping
   - Cannot load page of Export job fastly
   - Cannot category url if duplicate
   - Cannot update price and qty
   - Cannot set value for some attributes im mapping
   

2.1.2
==============
* Add presets of Shopify  
* Add price rules feature:
    - Change import price according to price rules
    - Set fixed or percent price margin
* Add Import of Coupons
* Add Import of Cms Pages
* Fix bugs:
   - Cannot create value of attribute from configurable_variations
   - Cannot set values for different stores
   - Cannot import product from Magento1 if empty lines

2.1.3
==============
* Fix core bug if create bundle item
* Fix bugs:
   - Cannot add category in Price rules
   - Duplicates Attributes in Price rules
   - Cannot create categories of different levels
   - Cannot correct import CMS Pages
   - Cannot change delimiter for Categories
   - Cannot create some values of attribute for type of multiselect
   - Cannot changes values of attributes of Categories if different stores

2.1.4
==============
* Fix bugs:
   - Cannot change mapping categories
   - Cannot add new values for attribute
   
2.1.5
==============
* Fix bugs:
   - Cannot import conditions for CartPriceRules
   - Cannot add categories in mapping
   - Cannot add Tier prices
   - Cannot change name of Category for different stores
   - Change CSV for Export Orders
   
2.1.6
==============
Add XSLT For Xml for Import

2.1.7
==============
Add XSLT For Xml for Export

2.1.8
==============
Add Custom field for mapping
Add reset mapping


2.2.0
==============
Add Import of Orders
Add import JSON

2.2.1
==============
* Fix bugs:
   - Cannot load additional images

2.2.2
==============
* Add buttons "Duplicate"

2.2.3
==============
* Fix bugs:
   - Export CMS Blocks and Pages
* Add REST API
* Order export new file format
* Add support ods, xlsx and xls

3.0.0
==============
* Added support of Excel XLSX file format
* Added support of OpenOffice ODS file format
* Added support of REST API  – XML files with XSLT templates and custom Json files
* Added support of SOAP API – XML files with XSLT templates and custom Json files
* Added improved Json file compatibility
* Added new entity Product Attributes – now all attributes, attribute sets and groups can be imported to Magento 2
* Added consecutive export procedure – the export jobs can now remember already exported entities and export only NEW entities added since the last run
* Export date and time can now be added automatically to the file name
* All files from the specified folder can now be imported in a single job
* Swatch attribute values, both color and image, can now be imported along with products
* Default product variations of Improved Configurable Product extension can now be imported
* Added compatibility with the following third-party extensions:
    - MageWorx Advanced Product Options
    - MageStore Inventory Management
    - Wyomind Advanced Inventory
    - MageDelight Price per Customer
* Add presets of Magmi

3.1.0
==============
* Features:
    * Map Attributes – Apply Default Values to – decide if default value should be applied to empty or all rows
    * Attribute value mapping – decide which exact attribute values you want to update, paste them and the new value
    * Root Category – select root category to reference category paths in the import file
    * Round prices and special prices – automatically adjust prices to .99 or .49 whichever is closer
    * Export job event system – whenever the Magento 2 event happens the job is automatically executed
    * Attribute set update – an additional product attribute which defines if the existing product’s attribute set should or should not be updated
    * Configurable product custom logic – copy simple product attributes for configurable – now you can copy selected attribute values of the simple products to configurable product
    * Not remove current mappings for using same mapping for different file upload. 
* Bugfixes:
    * Simple custom options are not imported properly
    * Issue with ‘Category Levels separated by’ setting
    * additional_attributes attribute missing in the attribute mapping column
    * Issue with Only Update behavior importing stock values
    * Issue with text swatch attribute displaying as a dropdown
    * Fixed Product Tax issue with updating existing products
    * Job page loading speed improved
    * Imported configurable products are no longer automatically put in stock after import
    * Configurable products are no longer created if there are no variations or a single variation
    * Issue with importing products with the same URL key creating multiple products
    * Updated links to the sample files inside import jobs
    * Issue with product export missing bundle and downloadable attributes
    * Issue with downloadable product links not being updated on import
    * Issue with filter conditions
    * Issue with checking for existing SKUs in the database
    * Issue with customer composite entity type import
    * Issue with exporting products with ‘Divide Additional Attribute’s option enabled
    * Url key duplicate issue when the file contains several products with the same url_key
    * Undefined index issue during update not existing bundle product
    * The issue with EntityLinkField during product update 
    * Product attributes replace import issue 
    * Link to download sample files in import job issue
    * Price Rules tab issues. When a customer selects a category condition or an attribute which have options

3.1.1
==============
* Features:
    * Changed the default display of section 'Store filter'
* Bugfixes:
    * Catalog product links import issue. When a file contains several rows for the same product
    * Bundle option products import issue. When a file contains several rows for the same product
    * Custom option products import issue. When a file contains one rows with a not null store_view_code value
    * Fix for configurable product when the configurable product is already created and the visibility of newly added simple products are not update.
    * Magento 2.3 compatibility issue(Import Products)
    * Product custom options import issue
    * Product custom options import issue
    * Importing products issue when the php version below 7.1
    * Issue with importing a product that contains an multi-select attribute
    * Incorrect display of fields in 'Map attributes' block
    * The issue with address duplicate during customer address import
    * The issue with default address attributes during customer address import

3.1.2
==============
* Features:
    * Magento 2.3 support added.
* Bugfixes:
    * Fix issue when importing empty attributes 'available_sort_by' and 'default_sort_by' (magento 2.3).
    * Fix issue with duplicated options (magento 2.3).
    * Fix issue when importing orders with empty country_id (magento 2.3).
    * Fix problem with "Clear Attribute Values" option (magento 2.3).
    * Fix import of customers and addresses (magento 2.3).
    * Fix error when replacing products: Invalid value for Attribute Set column (set doesn't exist?) (magento 2.3).
    * Fix error when simple products are not attached to configurable (magento 2.3).
    * Fix compilation error: Incompatible argument type. Magento compiler allow only one parent::__construct() calls.

3.1.3
==============
* Bugfixes:
    * Issue with cron expression is not set
    * Issue when the row does not contain complete information about custom options
    * Custom columns were added to the System Attribute drop-down in ‘Map attributes’ block
    * Remove extra whitespaces from xml import form definition
    * Issue with bundle product attributes: price_type, sku_type, weight_type
    * Added validation of the field “custom_layout_update”
    
3.1.4
==============
* Features:
    * Remove existing categories from imported products and assign only the categories from the imported file
    * Remove existing store views from imported products and assign only the store views from the imported file
    * Import product categories by IDs with categories_id attribute (categories should already exist at the store)
    * Only add import behavior
    * Added checking attribute presence in attribute set, when importing products
* Bugfixes:
    * Added support of increment_id for importing customer addresses, which gives the ability to update existing addresses
    * Added support for query type image URLs
    * Added UrlKey Manager to check existing product URLs
    * Removed extra whitespaces from REST api for JSON options
    * Issue with Magento 2.2.7 History Model defined as private in parent class
    * Issue when the row does not contain complete information about product custom options
    * Issue with mapping same attribute with different system attributes
    * Issue with additional images multivalue separator. Added a condition to check for the previous version
    * Foreign key issue when using ProxySQL
    * Issue with absolute path of хml file (magento 2.1.8)
    * Issue with ‘category’ and ‘product_websites’ attributes for products not exporting when multiple store_views are selected
    * Issue with fresh installation of the extension
    * Issue with importing a single product in several bunches
    * Issue with swatch option update during product import procedure
    * Issue with importing bundle products in Magento 2.1
    * Issue with the stop on error option during the import process
    * Issue with directory separator in the export file path
    * Issue with visibility store filter on export job
    * Issue with undefined product_type and set positionRows for linking related,cross sell,up sell products.
    * Resolved Issue with Category url_key.
    * Issue with export category. When an category has a wrong attribute (magento version < 2.3)
    * Issue with import of customers with less than Magento 2.2.5.
    * Issue with sorting on the history page
    * Issue where a multiple value separator is not used when exporting products
    * Issue with Magento1 file check for illegal string and give error.
    * Added a check of illegal string to Product __saveValidatedBunches
    * Issue with attribute group import. When a default group name is changed
    * Issue with attribute label import
    * Issue with setting value of selection_can_change_qty 1 or 0.
    * Issue with customers export when an attribute mapping is specified
    * Issue with attribute label update
    * Issue due to wrong namespace in di.xml
    * Issue with undefined array index during import product. When import behavior is set to Only Add
    * Issue with undefined array index during product export process
    * Issue with the import of orders when all the "Tax items" are selected (EE/B2B)

3.1.7
==============
* Features:
    * Huge incredible improvements of import product speed: memory overflow was fixed, custom options import was refactored
    * Feature to remove Images for both simple and configurable products.
    * Rework of extension backend menu
    * Rest API option was added to the export source
    * Added input of a range of values for the filter by price. Range added with a hyphen (eg 10-60 or 0-25)
    * Implemented unification of filter values for a fixed price and a percentage discount.
    * Support of remove old categories for config products created on the fly.
    * Added the ability to add related, cross-sells or up-sells products to "Custom logic for creation of configurable products"
    * Solved product export performance issue (only required attributes are selected from collection)
* Bugfixes:
    * Fixed issue when only first custom option was validated while product import
    * Customer address import issue. When a file format is ODS
    * Issue with import xlsx file. When a file contains empty cells for the last column
    * Issue with Allowed Errors Count option. When Validation Strategy is Stop on Error
    * Fixed issue show map fields of advanced pricing
    * Fixed issue show filter fields of advanced pricing
    * Empty user agent parameter issue during export an image from CDN
    * Issue with custom options import. When the Map Attributes feature is used
    * Fixed issue with export filters for cms blocks, cms pages, attributes
    * Fixed issue add validation for incorrect product_type value
    * Resolved potential bugs and issues with the only update remove product website when turned on and also with categories showing fatal error.
    * Issue with bundle type attribute import
    * Issue with undefined index https://github.com/magento/magento2/pull/20916
    * Fixed issue import/export mapping - broken design
    * Issue with advanced pricing export filters section has product attributes
    * Show missing "map attribute" option
    * Show missing form elements when conflicting with other extension.
    * Improve export speed. Avoid load extra data.
    * Added valuesForOptions for all entities. 
    * Issue with category url_key.
    * Resolved issue with catalog_product_relation
    * Issue with category use_default getting removed on category update.
    * Changed the algorithm for generating a request for a sample of data in accordance with the set values of the selected filters.
    * Fix issue with SOAP options not being accept while making the call.
    * Fix issue when validate import file in standard import feature of Magento Core
    * Fixed errors when importing orders.
    * Issue with the save_rewrites_history product attribute saving after import
    * Fix empty values for Virtual Swatch and Text Swatch options
    * Fixed issue with XLSX file having empty rows.
    * Issue with replacing orders during import
    * Fixed a bug in the preparation of the data write request custom product options
    * Improved Remove of Categories instead of Interface class.
    * Resolved filename issue with URL.
    * To display error messages on the export job run on a console.
    * Issue with tier price import. When a tire_prices column has extra spaces
    * JSON parsing to find first array.
    * Apply "Multiple Value Separator" setting in Import Job when import GROUPED product using "associated_skus" column.
    * Improve import speed.
    * Fieldset visibility issue on the import job form.
    * Attribute values mapping issue when API returns an array.
    * Fix typo error in source_types.xml
    * Solved issue with setTimeout in JS
    * Resolved issue with undefined JS index.
    * Scurri Alert about JS.
    * Fixed the problem of incorrect messages in the console when importing (deleting) attributes.
    * Fixed the Root Catalog category issue when importing categories.
    * Fix bug resetting the quantity of goods in stock when updating other parameters
    * Fixed bug the value of the text code in the text_swatch attribute is exported only from the admin column, the remaining stores are not exported.
    * Exclude Magento 2 from platform list.
    * Changed the code for obtaining a collection of products when exporting products
    * Fixed category filter issue on product export
    * Fixed very slow Job form load due to heavy category collection
    * Import products with the same url-key find and delete duplicate url-key
    * Fixed unknown entity model exception
    * Avoid fatal error of url_key duplicate.
    * Trim rowData for removing any whitespaces.
    * Fixed problem cannot add more than one filter for export job
    * Fixed import behavior Delete does not work
    * Fixed issue with export filter.
    * Fixed missing 'The import was successful.' message
    * Fixed typeof verification does not work.
    * Add track to shipment use shipment increment id
    * Add track to shipment use order increment id
    * Add sending email when adding a news tracks
    * Minimizing count fields for import credit memo
    * Fixed issue with swatch option.

3.1.8
==============
* Features:
    * Add url rewrites import export
    * Add widgets import export
    * Add reviews import export
    * Wyomind Advanced inventory export of stock to warehouse and import stock qty for particular warehouse id.
    * Added feature to delete attribute option value
    * Add a feature to translate text using Google Translator for particular store and attribute code.
    * Improve "Custom logic for creation of configurable products" feature: Only show super attributes for "Product attributes for variations" instead of all product attributes
    * We can use **Images File Directory** to import image from url.
    * Added position of product in category import & export.
    * Translator can now use both paid and free api.
    * Implemented Catalog Search Terms Import & Export
    * Disable product which are not in the source file. You can select supplier for that job to disable. Supplier attribute code can be selected from the configuration.
    * Implemented Search Synonyms Import & Export
    * Added Import/Export categories by store view.
    * Swatch attribute import/export was added.
    * XLSX select sheet while import.
    * Remove Upsell and Crosssell products on update.
    * Add new cron group to register import or export cron's in the same group.
    * Import/Export product attributes by specified store
    * Export Only admin storeview for products.
    * Change cron group for dynamic cron handling.

* Bugfixes:
    * Fixed import products error.
    * Fixed an issue with default value and storeValue
    * Fixed image issue with upload of same filename.
    * Fixed attribute options are not imported.
    * Resolve Undefined issue while order export.
    * Fixed product import exception generate_url
    * Platform support for files CSV/XLSX/ODS.
    * Fixed change format curl-request in dropbox.
    * add 2.3 stock item interface
    * avoid delete of default value
    * display console message if image file not found.
    * Fixed unserialize error in job form
    * Add filter to children entities
    * Fixed product import issue with downloadable type via console
    * Fixed error whether name is allowed
    * Fix error: Price rules are not applied for existing products (add categories to price rule's condition)
    * Fix error: Cannot edit job after saving job if XSLT code is too long.
    * Hide unavailable options when choose other entities in Import Job (not catalog_product)
    * Fixed issue when all validation error cleared
    * Fixed advanced pricing export undefined index issue
    * Fixed the export customer address issue when _website attribute has an incorrect value
    * Fixed wyomind integration class definition
    * Changed validation errors when importing attributes
    * Longblob column type definition issue was fixed
    * Display update_attribute_set to system mapping list.
    * Fixed issue with pipe separator for varchar attribute changes to comma separated
    * Fix issue with on the fly config product with only 1 variation.
    * Fixed error run export jobs 
    * Fix issue with Textswatch import, if there is change in description it adds new value.
    * Fix export of text swatch to export admin value instead of admin description.
    * Fixed issue with categories import. When an import file has a non default level separator.
    * Issue with uk date format when order import.
    * Fix attribute import with value 0
    * Fix store filter section is displayed on all entities.
    * Fix our sample import file doens't work for import for XML.
    * Fixed issue with pipe separator for text type attribute changes to comma separated.
    * Fix issue with Export Job: cannot set default value to zero
    * Fix tier price is not importing correctly.
    * Fixed the undefined data provider js issue on the import and export job pages.
    * Fixed the issue with the empty dropdown Import Source on the import job page.
    * Fix issue with Export: Remove "additional_attributes" column when turn on "Divide Additional Attributes" option
    * If configurable product not created already. undefined variable found.
    * Fix issue with payment import from Magento1 convert serialize data to json.
    * Fix import product - grouped product - simple products are not attached
    * Fix import product(replace) - console error.
    * Fix import product - console message "url is not unique."
    * Fix with SOAP api validation.
    * Fix an issue with the export of product attached attribute code, even if the value is not assigned. It will export with the default value from the export job form. 
    * Parse additional_attribtues for swatches.
    * Fixed export advanced pricing - not all prices are exported.
    * Refactoring export config, merged config from config.xml and di_export.xml.
    * Added implement EntityInterface into entity export models.
    * Allow translator to send html tags.
    * Allow export of orders if in from-to if to is not specified.
    * Implemented retry functionality when deadlock mysql error are occurring
    * MOM compatible.
    * Fixed export empty fields (custom_options product_websites categories categories_position) if Store Filter is selected.
    * **setFinishedAt** function to be called after the process is complete.
    * Fix bug export products using the export and mapping feature then base_image and product_online or status is not exported when mapping is enabled.
    * Fix problem with line break support when exporting text areas.
    * Create Config product for Magmi products.
    * Fix export filter by datetime attributes.
    * Fixed deleting wrong row issue on attribute mapping tab.
    * If sku is empty show a mistake in console for import job.
    * Fixed mapping attribute type issue on the export job form
    * Product status not exported when select only sku and product_online.
    * Fixed Url Rewrite export: delete metadata filter. Added yes/no select for is_autogenerated filter. 
    * Long import of products issue was fixed
    * productEntityJoinField issue when products export in Magento EE.
    * Fix import category(replace). Behavior replace don't must nothing to add, only replace existing entities
    * Fix import customer(replace). Behavior replace don't must nothing to add, only replace existing customers.
    * Export products page by page to CSV file was added to solve the timeout issue.
    * Fix issue of Extension use Default Category Level Separator.
    * Improve export map fields for order.
    * Filter JS added validation.
    * JSON convert issue on migration.
    * Multi website value replace on admin store view every time even if imported to specific store view separately.
    * Review system_attribute drop load fix.
    * **custom_options** system attribute in Attribute mappings.
    * Retrieve Attribute Id issue was fixed. When attribute code contains point symbol.
    * Attribute options duplicate issue was fixed
    * Fix error during setup:upgrade when making upgrade from importexportfree module
    * Import cart price rules - no cart price rules after import
    * Import cms blocks/pages - ods - not imported by import source Url and not validate
    * Box spout error when not installed.

3.2.0
==============
* Features:
    * Timestamp added to each log entry.
* Bugfixes:
    * Fixed all filters for export review.
    * Fixed Search Terms export: delete Is Active, Is Processed filters. Fixed Display in Teams, Num Result filters.
    * Fix Map Attributes Default value for all rows and empty rows.
    * Added custom Search terms mapping.
    * Added custom Search synonyms mapping.
    * Fix Form break when category id not found.
    * Fixed import remote images issue.
    * Fixed import attributes import issue to General group.
    * Fix replace import category.
    * Fix import review(replace). Behavior replace don't must nothing to add, only replace existing reviews.
    * Added Remove all address association checkbox for Customer addresses import. Firstly remove all addresses when customer addresses import.
    * Fix import product. Fix error for magento 2.3.2-p1.
    * Integration for import and export refactor.
    * Export folders are not created on some system.
    * Fix import product. Fix error for magento 2.3.2-p1.
    * Fix issue with widget export.
    * Improvement in select Root Category.
    * Move configurableProducts custom logic to function based.
    * Extension details link was removed from the firebear menu.
    * Remove the images from the server. (To free up space).
    * Fixed permission denied for export if folder is new creating.
    * Fix issue with category position for configurable product when using custom logic.
    * Fix downloadable products import.
    * Fixed sftp creating a new folder if the folder not exist already.
    * Fixed Search terms import if mapping default value is empty.
    * Fix ftp export recursive creates a directory.
    * Fix cart price rules when edit job.
    * Defined variable for uploader.
    * Fix View History - when open two or more job tabs.
    * Occur duplicates for dropdown attributes.
    * Fixed Search synonyms import if mapping default value is empty.
    * Fix issue with HTTPS type image url.
    * Fixed Error on import build address information based on customer information if missing.
    * Fix if isset category_position now will be correctly adding products in category for import products.

3.2.1
==============
* Bugfixes:
    * php7.3.11 breaks on using continue in switch statement

3.2.2
==============
* Features:
    * Add catalog rule import export.
* Bugfixes:
    * Improvements to excel file to fetch sheet through other sources.
    * Export category store_name if changed.
    * Change the format of import and export widgets.
    * Correct saving attribute_set_id for eav_attribute_group table.
    * Fix issue of category name not export store view level.
    * Fixed file path extinction for import job.
    * URL key gets cleared on only update.
    * Issue with configurable product with values like 0 or 00.

3.2.3
==============
* Features:
    * Upload images for swatches through Attribute Entity.
    * Resize Image after Import.
    * Import and export Youtube/Vimeo video.
* Bugfixes:
    * Resolved issue with JS showing feature on wrong entity select.
    * Improve migration add-on functionality
    * Fix Gid Break on Export page.
    * Resolve compilation issue with Magento2.2.x.
    * media path issue if / is not give behind the filename.
    * Entity Id fix.
    * Resolve an issue with create configurableProduct and image copy.
    * Fixed empty import source issue. When any platform is used for import.
    * Fixed issue with decode transaction additional_information in json format.
    * Numeric validation for attribute code was added to attribute import.

3.2.4
==============
* Bugfixes:
    * Fixed a number of items was different after re-exporting.
    * Improvement to URL key generate feature.
    * Fixed a download export file issue. When selected Rest Api export source.
    * Improve Image upload and instead of repetitive upload.
    * Fixed Dynamic price for bundle product.
    * Added attribute set and 'group:name' filter for export attribute.
    * Dynamic rows item delete issue was fixed.
    * Added url key generated for category.
    * Added if store view code field is empty store code is admin.
    * Validation fix for custom URL rewrite entry.
    * Added correct reset data for filter.
    * Added filter by store id for export attributes.
    * Fixed generate url key for category if another entity has the same url key.
    
3.3.0
==============
* Features:
    * Add newsletter subscriber import export.
* Bugfixes:
    * Fixed issue with deleting mapping attribute values
