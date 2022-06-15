CREATE TABLE IF NOT EXISTS `view_goods_sku_basic_info_sink` (
  `id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  `temporary_name` STRING NOT NULL,
  `product_name` STRING NOT NULL,
  `item_id` STRING NOT NULL,
  `sku_code` STRING NOT NULL,
  `sku_code_with_voltage` STRING NOT NULL,
  `sku_code_of_second_sale` STRING NOT NULL,
  `spu_id` INT NULL,
  `category_id` INT NULL,
  `first_category_id` INT NOT NULL,
  `second_category_id` INT NOT NULL,
  `voltage` STRING NULL,
  `voltage_plug` INT NULL,
  `current_status_number` INT NOT NULL,
  `international_brand` STRING NOT NULL,
  `developer_group` INT NULL,
  `developer` INT NULL,
  `buyer_id` INT NULL,
  `buyer` STRING NOT NULL,
  `is_reject` INT NOT NULL,
  `reject_before_status` STRING NOT NULL,
  `reject_reason` STRING NOT NULL,
  `is_time_out` INT NOT NULL,
  `time_out_deadline_time` TIMESTAMP NOT NULL,
  `audit_time` TIMESTAMP NOT NULL,
  `deferred_days` INT NULL,
  `is_invalid` INT NOT NULL,
  `invalid_category` STRING NOT NULL,
  `remark` STRING NOT NULL,
  `boss_remark` STRING NOT NULL,
  `developer_remark` STRING NOT NULL,
  `is_sold_separate` INT NOT NULL,
  `is_purchase_sample` INT NOT NULL,
  `is_second_sale` INT NOT NULL,
  `version` DECIMAL(11, 1) NOT NULL,
  `user_id` INT NULL,
  `user_name` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `updated_by` STRING NOT NULL,
  `erp_develop_id` INT NOT NULL,
  `erp_goods_id` INT NOT NULL,
  `images` STRING NOT NULL,
  `is_informal` INT NOT NULL,
  `is_show_in_information` INT NOT NULL,
  `is_old` INT NOT NULL,
  `shelf_time` TIMESTAMP NULL,
  `is_arrival` INT NOT NULL,
  `is_brand` INT NOT NULL,
  `main_sku_id` INT NOT NULL,
  `main_sku_code` STRING NOT NULL,
  `sub_sku_code` STRING NOT NULL,
  `voltage_id` INT NOT NULL,
  `plug_id` INT NOT NULL,
  `supplier` STRING NULL,
  `supplier_version` STRING NOT NULL,
  `is_tax_refund` INT NULL,
  `purchase_price_including_tax` DECIMAL(20, 6) NULL,
  `is_have_foot_support` INT NOT NULL,
  `is_marking` INT NOT NULL,
  `generate_type` INT NOT NULL,
  `old_skucode` STRING NULL,
  `is_normal_goods` INT NULL,
  `marking_reason` STRING NULL,
  `level` INT NULL,
  `purchase_sample_time` TIMESTAMP NULL,
  `estimated_arrival_time` TIMESTAMP NULL,
  `actual_shelves_time` TIMESTAMP NULL,
  `profit_audit_notes` STRING NULL,
  `product_specificity` INT NULL,
  `is_forecast_complete` INT NULL,
  `product_research_report` STRING NULL,
  `product_research_report_name` STRING NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'database-name' = 'vevor_evolution',
  'table-name' = 'view_goods_sku_basic_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000'
)

CREATE TABLE IF NOT EXISTS `view_goods_sku_basic_info_main_sink` (
  `id` INT NOT NULL,
  `main_sku_code` STRING NOT NULL,
  `temporary_name` STRING NOT NULL,
  `main_sku_name` STRING NOT NULL,
  `old_sku_code` STRING NOT NULL,
  `spu_id` INT NULL,
  `category_id` INT NULL,
  `group_id` INT NULL,
  `is_brand` INT NOT NULL,
  `international_brand` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_full_binding` INT NOT NULL,
  `is_old` INT NOT NULL,
  `is_have_foot_support` INT NOT NULL,
  `is_marking` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'view_goods_sku_basic_info_main',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000'
)

CREATE TABLE IF NOT EXISTS `view_goods_package_info_sink` (
  `id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  `package_length` DECIMAL(20, 6) NOT NULL,
  `package_wide` DECIMAL(20, 6) NOT NULL,
  `package_high` DECIMAL(20, 6) NOT NULL,
  `package_weight` DECIMAL(20, 6) NOT NULL,
  `bubble_weight_lb` DECIMAL(20, 6) NULL,
  `bubble_weight_kg` DECIMAL(20, 6) NULL,
  `item_length` DECIMAL(20, 6) NULL,
  `item_wide` DECIMAL(20, 6) NULL,
  `item_high` DECIMAL(20, 6) NULL,
  `full_weight` DECIMAL(20, 6) NULL,
  `package_volume` DECIMAL(20, 6) NULL,
  `perimeter_cm` DECIMAL(20, 6) NULL,
  `perimeter_inch` DECIMAL(20, 6) NULL,
  `charged_weight` DECIMAL(20, 6) NULL,
  `package_texture` INT NULL,
  `is_cylinder` INT NULL,
  `is_package_merger` INT NULL,
  `is_split_package` INT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  `separate_warehouse` INT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'view_goods_package_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true'
)

CREATE TABLE IF NOT EXISTS `view_goods_custom_clearance_info_sink` (
  `id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  `goods_type` STRING NOT NULL,
  `work_protype` STRING NOT NULL,
  `product_use` STRING NOT NULL,
  `product_texture` STRING NOT NULL,
  `product_description` STRING NOT NULL,
  `product_color` STRING NOT NULL,
  `product_brand` STRING NOT NULL,
  `product_invoice_name` STRING NOT NULL,
  `computing_unit` INT NULL,
  `created_time` TIMESTAMP NOT NULL,
  `updated_time` TIMESTAMP NOT NULL,
  `created_by` STRING NOT NULL,
  `updated_by` STRING NOT NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000',
  'table-name' = 'view_goods_custom_clearance_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution'
)

CREATE TABLE IF NOT EXISTS `auth_goods_group_sink` (
  `id` INT NOT NULL,
  `group_name` STRING NOT NULL,
  `group_number` STRING NOT NULL,
  `status` INT NOT NULL,
  `create_by` STRING NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_by` STRING NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `is_delete` INT NOT NULL,
  `erp_group_id` INT NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'auth_goods_group',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000'
)

CREATE TABLE IF NOT EXISTS `view_goods_upc_info_sink` (
  `id` INT NOT NULL,
  `upc_code` STRING NOT NULL,
  `sku_voltage` STRING NULL,
  `is_able` INT NULL,
  `create_by` STRING NULL,
  `create_time` TIMESTAMP NULL,
  `update_by` STRING NULL,
  `update_time` TIMESTAMP NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000',
  'table-name' = 'view_goods_upc_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution'
)

CREATE TABLE IF NOT EXISTS `conf_spu_sink` (
  `id` INT NOT NULL,
  `pic` STRING NULL,
  `spu_code` STRING NOT NULL,
  `name` STRING NOT NULL,
  `english_name` STRING NULL,
  `p_category_id` INT NULL,
  `develop_group_id` INT NULL,
  `remark` STRING NULL,
  `is_active` INT NOT NULL,
  `create_by` STRING NULL,
  `update_by` STRING NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `product_development_leader_id` INT NOT NULL,
  `product_development_leader` STRING NOT NULL,
  `product_management_leader_id` INT NOT NULL,
  `product_management_leader` STRING NOT NULL,
  `parent_id` INT NULL,
  `spu_num` STRING NOT NULL,
  `french_name` STRING NULL,
  `german_name` STRING NULL,
  `italian_name` STRING NULL,
  `spanish_name` STRING NULL,
  `level` INT NULL,
  `application_scenarios_id` STRING NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'conf_spu',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.buffer-flush.interval-ms' = '15000'
)

CREATE TABLE IF NOT EXISTS `view_goods_unpacking_info_sink` (
  `id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  `goods_name` STRING NOT NULL,
  `goods_code` STRING NOT NULL,
  `goods_level` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `create_by` STRING NULL,
  `update_by` STRING NULL,
  `is_delete` INT NOT NULL
) with (
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'view_goods_unpacking_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10'
)

--源mysql表非主键表
CREATE TABLE IF NOT EXISTS `view_goods_unpacking_info_sink` (
  `id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  `goods_name` STRING NOT NULL,
  `goods_code` STRING NOT NULL,
  `goods_level` INT NOT NULL,
  `create_time` TIMESTAMP NOT NULL,
  `update_time` TIMESTAMP NOT NULL,
  `create_by` STRING NULL,
  `update_by` STRING NULL,
  `is_delete` INT NOT NULL,
  PRIMARY KEY(`id`, `goods_id`, `goods_name`,`goods_code`)
 NOT ENFORCED
) with (
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'sink.properties.format' = 'json',
  'sink.properties.strip_outer_array' = 'true',
  'password' = '1BlVI3xdViMsxSnr',
  'username' = 'root',
  'connector' = 'starrocks',
  'database-name' = 'vevor_evolution',
  'table-name' = 'view_goods_unpacking_info',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.max-retries' = '10'
)






























--prm
CREATE TABLE IF NOT EXISTS `product_listing_sink` (
  `listing_id` INT NOT NULL,
  `listing_name` STRING NOT NULL,
  `discription_id` INT NOT NULL,
  `template_id` INT NOT NULL,
  `ebay_account_id` INT NOT NULL,
  `site_id` INT NOT NULL,
  `listing_type` INT NOT NULL,
  `goods_sku` STRING NOT NULL,
  `listing_title1` STRING NOT NULL,
  `listing_title2` STRING NOT NULL,
  `templets_id` INT NOT NULL,
  `listing_category1` STRING NOT NULL,
  `listing_category2` STRING NOT NULL,
  `shop_category1` STRING NOT NULL,
  `shop_category2` STRING NOT NULL,
  `mark_down_id` INT NOT NULL,
  `listing_days` STRING NOT NULL,
  `non_line` INT NOT NULL,
  `listing_price` DECIMAL(10, 2) NOT NULL,
  `hode_price` DECIMAL(10, 2) NOT NULL,
  `fix_price` DECIMAL(10, 2) NOT NULL,
  `currency` STRING NOT NULL,
  `listing_qty` INT NOT NULL,
  `two_transaction` STRING NOT NULL,
  `two_transaction_price` DECIMAL(10, 2) NOT NULL,
  `two_transaction_days` STRING NOT NULL,
  `two_transaction_information` STRING NOT NULL,
  `accept_bargaining` STRING NOT NULL,
  `accept_max` STRING NOT NULL,
  `accept_max_value` DECIMAL(10, 2) NOT NULL,
  `refuse_min` STRING NOT NULL,
  `refuse_min_value` DECIMAL(10, 2) NOT NULL,
  `payment_id` INT NOT NULL,
  `return_id` INT NOT NULL,
  `location_id` INT NOT NULL,
  `shipping_id` INT NOT NULL,
  `gallery` INT NOT NULL,
  `gallery_plus` INT NOT NULL,
  `international_site_visibility` INT NOT NULL,
  `blod` INT NOT NULL,
  `listing_startime` INT NOT NULL,
  `create_time` INT NOT NULL,
  `cover_picture` STRING NOT NULL,
  `online` STRING NOT NULL,
  `handling_time` STRING NULL,
  `item_id` STRING NULL,
  `sold_qty` INT NULL,
  `item_specifics` STRING NOT NULL,
  `custom_specifics` STRING NOT NULL,
  `compatibilitiy_specifics` STRING NULL,
  `ebay_upic` STRING NOT NULL,
  `old_listing` INT NOT NULL,
  `ebay_sku` STRING NOT NULL,
  `end_time` INT NOT NULL,
  `new_tem_id` INT NOT NULL,
  `cxy` INT NULL,
  `links` STRING NULL,
  `locktitle` INT NULL,
  `internal_fare` DECIMAL(10, 2) NULL,
  `goods_more_name` STRING NULL,
  `goods_more_title_key` STRING NULL,
  `goods_more_title_prefix` STRING NULL,
  `alterstock` INT NULL,
  `listing_first_startime` INT NULL,
  `goods_sku_voltage` STRING NULL,
  `update_time` INT NULL,
  `update_log` STRING NULL,
  `upc` STRING NULL,
  `ean` STRING NULL,
  `is_discount` INT NULL,
  `use_other_compatible` INT NULL,
  `other_compatible_list` STRING NULL,
  `other_compatible_list_md5` STRING NULL,
  `brand_val` STRING NULL,
  `mpn_val` STRING NULL,
  `is_up_price` INT NULL,
  `before_up_price` DECIMAL(10, 2) NULL,
  `ratetable_start` INT NULL,
  `ratetable_name` STRING NULL,
  `alterprice` INT NULL,
  `power_sku` INT NOT NULL,
  `listing_epid` STRING NULL,
  `cata_group` STRING NOT NULL,
  `ship_excl_id` INT NOT NULL,
  `itm_location` STRING NOT NULL,
  `damaged` INT NOT NULL,
  `upc_type` INT NOT NULL,
  PRIMARY KEY(`listing_id`)
 NOT ENFORCED
) with (
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'sink.properties.format' = 'json',
  'username' = 'root',
  'password' = '1BlVI3xdViMsxSnr',
  'database-name' = 'prm',
  'sink.properties.strip_outer_array' = 'true',
  'sink.max-retries' = '10',
  'sink.buffer-flush.interval-ms' = '15000',
  'connector' = 'starrocks',
  'table-name' = 'product_listing'
)


CREATE TABLE IF NOT EXISTS `product_listing_attribute_sink` (
  `id` INT NOT NULL,
  `listing_id` INT NOT NULL,
  `attribute_sku` STRING NOT NULL,
  `listing_price` DECIMAL(10, 2) NOT NULL,
  `listing_qty` INT NOT NULL,
  `attribute` STRING NOT NULL,
  `attribute_picture` STRING NOT NULL,
  `desc` INT NOT NULL,
  `source_sku` STRING NULL,
  `goods_sku_voltage` STRING NULL,
  `site_id` INT NULL,
  `httpspic` INT NULL,
  `sub_day7` INT NOT NULL,
  `sub_day30` INT NOT NULL,
  `sub_sum` INT NOT NULL,
  `sub_status` INT NOT NULL,
  `attr_main_sku_code` STRING NOT NULL,
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'table-name' = 'product_listing_attribute',
  'sink.max-retries' = '10',
  'sink.properties.format' = 'json',
  'password' = '1BlVI3xdViMsxSnr',
  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',
  'database-name' = 'prm',
  'sink.buffer-flush.interval-ms' = '15000',
  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',
  'username' = 'root',
  'sink.properties.strip_outer_array' = 'true',
  'connector' = 'starrocks'
)



