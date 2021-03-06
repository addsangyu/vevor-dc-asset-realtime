CREATE TABLE IF NOT EXISTS `model_basic_sink` (
  `id` INT NOT NULL,
  `serial_number` STRING NOT NULL,
  `template_id` INT NOT NULL,
  `sku` STRING NOT NULL,
  `sku_voltage` STRING NOT NULL,
  `sku_without_voltage` STRING NOT NULL,
  `store_account_id` INT NOT NULL,
  `platform` STRING NOT NULL,
  `site` STRING NOT NULL,
  `cover_picture_id` INT NOT NULL,
  `first_grounding_time` TIMESTAMP NOT NULL,
  `lately_grounding_time` TIMESTAMP NOT NULL,
  `lately_undercarriage_time` TIMESTAMP NULL,
  `lately_halt_sales_time` TIMESTAMP NULL,
  `is_a` INT NOT NULL,
  `update_fail` INT NOT NULL,
  `fail_reason` STRING NOT NULL,
  `halt_sales_reason` STRING NOT NULL,
  `picture_error` STRING NOT NULL,
  `original_category` INT NOT NULL,
  `chinese_name` STRING NOT NULL,
  `group_id` INT NOT NULL,
  `spu` STRING NULL,
  `spu_code` STRING NOT NULL,
  `weight` DECIMAL(15, 6) NOT NULL,
  `goods_length` DECIMAL(15, 6) NOT NULL,
  `goods_width` DECIMAL(15, 6) NOT NULL,
  `goods_height` DECIMAL(15, 6) NOT NULL,
  `model_number` STRING NOT NULL,
  `size` STRING NOT NULL,
  `colour` STRING NULL,
  `alt_label` STRING NOT NULL,
  `create_by` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_time` TIMESTAMP NULL,
  `update_by` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  `lately_edit_time` TIMESTAMP NOT NULL,
  `lately_synch_time` TIMESTAMP NOT NULL,
  `lately_error_time` TIMESTAMP NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'database-name' = 'prm_db',
  'table-name' = 'model_basic',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json'
)

CREATE TABLE IF NOT EXISTS `model_platform_mall_sink` (
  `id` INT NOT NULL,
  `listing_model_id` INT NOT NULL,
  `spu_chinese_name` STRING NOT NULL,
  `category_id` BIGINT NOT NULL,
  `publication_type` INT NOT NULL,
  `mall_product_id` STRING NOT NULL,
  `url_link` STRING NOT NULL,
  `status` INT NOT NULL,
  `title` STRING NOT NULL,
  `subtitle` STRING NOT NULL,
  `brand` STRING NOT NULL,
  `price` DECIMAL(16, 6) NOT NULL,
  `selling_price` DECIMAL(16, 6) NOT NULL,
  `stock` BIGINT NOT NULL,
  `upc` STRING NULL,
  `combine_sku` STRING NULL,
  `sales_attributes` STRING NULL,
  `custom_properties` STRING NULL,
  `packing_weight` DECIMAL(16, 6) NULL,
  `packing_length` DECIMAL(16, 6) NULL,
  `packing_width` DECIMAL(16, 6) NULL,
  `packing_height` DECIMAL(16, 6) NULL,
  `delivery_day_min` INT NULL,
  `delivery_day_max` INT NULL,
  `is_synch_line` INT NOT NULL,
  `keyword` STRING NULL,
  `body` STRING NULL,
  `promotion_picture_id` INT NOT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'database-name' = 'prm_db',
  'table-name' = 'model_platform_mall',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json'
)

CREATE TABLE IF NOT EXISTS `model_platform_walmart_sink` (
  `id` INT NOT NULL,
  `status` INT NOT NULL,
  `error_type` INT NULL,
  `model_id` INT NOT NULL,
  `item_id` STRING NULL,
  `wp_id` STRING NULL,
  `url_link` STRING NULL,
  `shipping_type` INT NULL,
  `walmart_sku` STRING NOT NULL,
  `republish` INT NULL,
  `id_type` STRING NOT NULL,
  `upc` STRING NOT NULL,
  `brand` STRING NOT NULL,
  `shipping_weight` DECIMAL(8, 2) NOT NULL,
  `price_type` INT NOT NULL,
  `selling_price` DECIMAL(11, 2) NOT NULL,
  `floor_price` DECIMAL(11, 2) NULL,
  `peak_price` DECIMAL(11, 2) NULL,
  `net_profit_rate` DECIMAL(11, 2) NULL,
  `cost` DECIMAL(11, 2) NULL,
  `product_name` STRING NOT NULL,
  `publication_type` INT NOT NULL,
  `warning_text` STRING NULL,
  `small_parts_warning_code` INT NULL,
  `country_of_origin` STRING NOT NULL,
  `manufacturer` STRING NOT NULL,
  `manufacturer_part_number` STRING NOT NULL,
  `material` STRING NULL,
  `finish` STRING NULL,
  `recommended_use` STRING NULL,
  `assembled_product_length` DECIMAL(8, 2) NULL,
  `length_unit` STRING NULL,
  `assembled_product_width` DECIMAL(8, 2) NULL,
  `width_unit` STRING NULL,
  `assembled_product_height` DECIMAL(8, 2) NULL,
  `height_unit` STRING NULL,
  `assembled_product_weight` DECIMAL(8, 2) NULL,
  `weight_unit` STRING NULL,
  `warranty_text` STRING NOT NULL,
  `product_tax_code` STRING NOT NULL,
  `site_description` STRING NOT NULL,
  `keywords` STRING NULL,
  `lag_time` INT NULL,
  `color` STRING NULL,
  `color_category` STRING NULL,
  `size` STRING NULL,
  `age_group` STRING NULL,
  `gender` STRING NULL,
  `created_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_delete` INT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'table-name' = 'model_platform_walmart',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json'
)

CREATE TABLE IF NOT EXISTS `model_platform_walmart_dsv_sink` (
  `id` INT NOT NULL,
  `status` INT NOT NULL,
  `error_type` INT NULL,
  `published_status` STRING NULL,
  `lifecycle_status` STRING NULL,
  `model_id` INT NOT NULL,
  `item_id` STRING NULL,
  `wp_id` STRING NULL,
  `url_link` STRING NULL,
  `shipping_type` INT NULL,
  `sales_platform` STRING NOT NULL,
  `walmart_sku` STRING NOT NULL,
  `id_type` STRING NOT NULL,
  `upc` STRING NOT NULL,
  `shipping_weight` DECIMAL(8, 2) NOT NULL,
  `shipping_weight_unit` STRING NOT NULL,
  `main_image_url` STRING NOT NULL,
  `publication_type` INT NOT NULL,
  `product_name` STRING NOT NULL,
  `selling_price` DECIMAL(11, 2) NOT NULL,
  `cost` DECIMAL(11, 2) NOT NULL,
  `primary_cat_path` STRING NOT NULL,
  `short_description` STRING NOT NULL,
  `long_description` STRING NOT NULL,
  `last_updated_time` STRING NOT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_delete` INT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'table-name' = 'model_platform_walmart_dsv',
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json'
)

CREATE TABLE IF NOT EXISTS `model_platform_aliexpress_sink` (
  `id` INT NOT NULL,
  `model_id` INT NOT NULL,
  `product_code` STRING NOT NULL,
  `title` STRING NULL,
  `brand_id` BIGINT NOT NULL,
  `brand` STRING NOT NULL,
  `brand_value_id` BIGINT NOT NULL,
  `category_id` BIGINT NOT NULL,
  `freight_template` STRING NOT NULL,
  `service_template` STRING NOT NULL,
  `freight_template_id` BIGINT NOT NULL,
  `service_template_id` BIGINT NOT NULL,
  `product_id` BIGINT NOT NULL,
  `url_link` STRING NOT NULL,
  `aliexpress_group_id` BIGINT NOT NULL,
  `group_name` STRING NULL,
  `language` STRING NOT NULL,
  `is_synch_line` INT NOT NULL,
  `undercarriage_reason` INT NOT NULL,
  `status` INT NOT NULL,
  `goods_type` INT NOT NULL,
  `stock_deduction_method` INT NOT NULL,
  `delivery_date` INT NOT NULL,
  `multi_attribute_name` STRING NOT NULL,
  `multiattr_title` STRING NULL,
  `wholesale_minimum` INT NOT NULL,
  `derate` INT NOT NULL,
  `web_sales_attributes` STRING NULL,
  `product_attribute` STRING NULL,
  `sales_attributes` STRING NULL,
  `package_type` INT NOT NULL,
  `product_unit` BIGINT NOT NULL,
  `goods_group` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `create_by` STRING NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `update_by` STRING NOT NULL,
  `is_deleted` INT NOT NULL,
  `discount_rate` DECIMAL(15, 2) NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'table-name' = 'model_platform_aliexpress',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true'
)

CREATE TABLE IF NOT EXISTS `multiattr_model_aliexpress_sink` (
  `id` INT NOT NULL,
  `model_id` INT NOT NULL,
  `sku` STRING NOT NULL,
  `commodity_code` STRING NOT NULL,
  `multi_attribute` STRING NULL,
  `property_value` STRING NULL,
  `place_dispatch` STRING NOT NULL,
  `stock` BIGINT NOT NULL,
  `retail_price` DECIMAL(16, 3) NOT NULL,
  `trade_price` DECIMAL(16, 3) NOT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `update_by` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  `host_sku` INT NULL,
  `sku_without_voltage` STRING NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'table-name' = 'multiattr_model_aliexpress',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json'
)

CREATE TABLE IF NOT EXISTS `combine_sku_sink` (
  `id` INT NOT NULL,
  `combine_sku_code` STRING NOT NULL,
  `combine_spu_code` STRING NOT NULL,
  `combine_sku_name` STRING NOT NULL,
  `combine_spu_name` STRING NOT NULL,
  `erp_combine_sku` STRING NOT NULL,
  `group_id` INT NOT NULL,
  `main_product` STRING NOT NULL,
  `upc` STRING NOT NULL,
  `combine_info` STRING NOT NULL,
  `weight` DECIMAL(16, 2) NOT NULL,
  `length` DECIMAL(16, 2) NOT NULL,
  `width` DECIMAL(16, 2) NOT NULL,
  `high` DECIMAL(16, 2) NOT NULL,
  `remark` STRING NOT NULL,
  `is_unpack` INT NOT NULL,
  `create_by` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_by` STRING NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'table-name' = 'combine_sku',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030'
)

CREATE TABLE IF NOT EXISTS `combine_sku_attachment_sink` (
  `id` INT NOT NULL,
  `main_sku` STRING NOT NULL,
  `combine_sku_code` STRING NOT NULL,
  `sku_name` STRING NOT NULL,
  `spu_chinese_name` STRING NOT NULL,
  `spu_en_name` STRING NOT NULL,
  `spu_code` STRING NOT NULL,
  `group_id` INT NOT NULL,
  `count` INT NOT NULL,
  `weight` DECIMAL(16, 2) NOT NULL,
  `length` DECIMAL(16, 2) NOT NULL,
  `width` DECIMAL(16, 2) NOT NULL,
  `high` DECIMAL(16, 2) NOT NULL,
  `is_main_product` INT NOT NULL,
  `create_by` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_by` STRING NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json',
  'table-name' = 'combine_sku_attachment',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db'
)

CREATE TABLE IF NOT EXISTS `combine_sku_history_sink` (
  `id` INT NOT NULL,
  `combine_sku_code` STRING NOT NULL,
  `erp_combine_sku` STRING NOT NULL,
  `erp_combine_info` STRING NOT NULL,
  `is_unpack` INT NOT NULL,
  `create_by` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_by` STRING NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks',
  'database-name' = 'prm_db',
  'table-name' = 'combine_sku_history',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'password' = '1BlVI3xdViMsxSnr'
)