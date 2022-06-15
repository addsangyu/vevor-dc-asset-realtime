package com.vevor.dc.asset.realtime.sql;

/**
 * @Author: sangyu
 * @Date: 2022/4/12 20:15
 */
public class VevorEvolutionDbBySinkDDL {

    public static final String view_goods_sku_basic_info_sink = "CREATE TABLE IF NOT EXISTS `view_goods_sku_basic_info_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `goods_id` INT NOT NULL,\n" +
            "  `temporary_name` STRING NOT NULL,\n" +
            "  `product_name` STRING NOT NULL,\n" +
            "  `item_id` STRING NOT NULL,\n" +
            "  `sku_code` STRING NOT NULL,\n" +
            "  `sku_code_with_voltage` STRING NOT NULL,\n" +
            "  `sku_code_of_second_sale` STRING NOT NULL,\n" +
            "  `spu_id` INT NULL,\n" +
            "  `category_id` INT NULL,\n" +
            "  `first_category_id` INT NOT NULL,\n" +
            "  `second_category_id` INT NOT NULL,\n" +
            "  `voltage` STRING NULL,\n" +
            "  `voltage_plug` INT NULL,\n" +
            "  `current_status_number` INT NOT NULL,\n" +
            "  `international_brand` STRING NOT NULL,\n" +
            "  `developer_group` INT NULL,\n" +
            "  `developer` INT NULL,\n" +
            "  `buyer_id` INT NULL,\n" +
            "  `buyer` STRING NOT NULL,\n" +
            "  `is_reject` INT NOT NULL,\n" +
            "  `reject_before_status` STRING NOT NULL,\n" +
            "  `reject_reason` STRING NOT NULL,\n" +
            "  `is_time_out` INT NOT NULL,\n" +
            "  `time_out_deadline_time` TIMESTAMP NOT NULL,\n" +
            "  `audit_time` TIMESTAMP NOT NULL,\n" +
            "  `deferred_days` INT NULL,\n" +
            "  `is_invalid` INT NOT NULL,\n" +
            "  `invalid_category` STRING NOT NULL,\n" +
            "  `remark` STRING NOT NULL,\n" +
            "  `boss_remark` STRING NOT NULL,\n" +
            "  `developer_remark` STRING NOT NULL,\n" +
            "  `is_sold_separate` INT NOT NULL,\n" +
            "  `is_purchase_sample` INT NOT NULL,\n" +
            "  `is_second_sale` INT NOT NULL,\n" +
            "  `version` DECIMAL(11, 1) NOT NULL,\n" +
            "  `user_id` INT NULL,\n" +
            "  `user_name` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `erp_develop_id` INT NOT NULL,\n" +
            "  `erp_goods_id` INT NOT NULL,\n" +
            "  `images` STRING NOT NULL,\n" +
            "  `is_informal` INT NOT NULL,\n" +
            "  `is_show_in_information` INT NOT NULL,\n" +
            "  `is_old` INT NOT NULL,\n" +
            "  `shelf_time` TIMESTAMP NULL,\n" +
            "  `is_arrival` INT NOT NULL,\n" +
            "  `is_brand` INT NOT NULL,\n" +
            "  `main_sku_id` INT NOT NULL,\n" +
            "  `main_sku_code` STRING NOT NULL,\n" +
            "  `sub_sku_code` STRING NOT NULL,\n" +
            "  `voltage_id` INT NOT NULL,\n" +
            "  `plug_id` INT NOT NULL,\n" +
            "  `supplier` STRING NULL,\n" +
            "  `supplier_version` STRING NOT NULL,\n" +
            "  `is_tax_refund` INT NULL,\n" +
            "  `purchase_price_including_tax` DECIMAL(20, 6) NULL,\n" +
            "  `is_have_foot_support` INT NOT NULL,\n" +
            "  `is_marking` INT NOT NULL,\n" +
            "  `generate_type` INT NOT NULL,\n" +
            "  `old_skucode` STRING NULL,\n" +
            "  `is_normal_goods` INT NULL,\n" +
            "  `marking_reason` STRING NULL,\n" +
            "  `level` INT NULL,\n" +
            "  `purchase_sample_time` TIMESTAMP NULL,\n" +
            "  `estimated_arrival_time` TIMESTAMP NULL,\n" +
            "  `actual_shelves_time` TIMESTAMP NULL,\n" +
            "  `profit_audit_notes` STRING NULL,\n" +
            "  `product_specificity` INT NULL,\n" +
            "  `is_forecast_complete` INT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'view_goods_sku_basic_info',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000'\n" +
            ")";

    public static final String view_goods_sku_basic_info_main_sink = "CREATE TABLE IF NOT EXISTS `view_goods_sku_basic_info_main_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `main_sku_code` STRING NOT NULL,\n" +
            "  `temporary_name` STRING NOT NULL,\n" +
            "  `main_sku_name` STRING NOT NULL,\n" +
            "  `old_sku_code` STRING NOT NULL,\n" +
            "  `spu_id` INT NULL,\n" +
            "  `category_id` INT NULL,\n" +
            "  `group_id` INT NULL,\n" +
            "  `is_brand` INT NOT NULL,\n" +
            "  `international_brand` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_full_binding` INT NOT NULL,\n" +
            "  `is_old` INT NOT NULL,\n" +
            "  `is_have_foot_support` INT NOT NULL,\n" +
            "  `is_marking` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'view_goods_sku_basic_info_main',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000'\n" +
            ")";
    public static final String view_goods_package_info_sink = "CREATE TABLE IF NOT EXISTS `view_goods_package_info_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `goods_id` INT NOT NULL,\n" +
            "  `package_length` DECIMAL(20, 6) NOT NULL,\n" +
            "  `package_wide` DECIMAL(20, 6) NOT NULL,\n" +
            "  `package_high` DECIMAL(20, 6) NOT NULL,\n" +
            "  `package_weight` DECIMAL(20, 6) NOT NULL,\n" +
            "  `bubble_weight_lb` DECIMAL(20, 6) NULL,\n" +
            "  `bubble_weight_kg` DECIMAL(20, 6) NULL,\n" +
            "  `item_length` DECIMAL(20, 6) NULL,\n" +
            "  `item_wide` DECIMAL(20, 6) NULL,\n" +
            "  `item_high` DECIMAL(20, 6) NULL,\n" +
            "  `full_weight` DECIMAL(20, 6) NULL,\n" +
            "  `package_volume` DECIMAL(20, 6) NULL,\n" +
            "  `perimeter_cm` DECIMAL(20, 6) NULL,\n" +
            "  `perimeter_inch` DECIMAL(20, 6) NULL,\n" +
            "  `charged_weight` DECIMAL(20, 6) NULL,\n" +
            "  `package_texture` INT NULL,\n" +
            "  `is_cylinder` INT NULL,\n" +
            "  `is_package_merger` INT NULL,\n" +
            "  `is_split_package` INT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `separate_warehouse` INT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'view_goods_package_info',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true'\n" +
            ")";
    public static final String view_goods_custom_clearance_info_sink = "CREATE TABLE IF NOT EXISTS `view_goods_custom_clearance_info_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `goods_id` INT NOT NULL,\n" +
            "  `goods_type` STRING NOT NULL,\n" +
            "  `work_protype` STRING NOT NULL,\n" +
            "  `product_use` STRING NOT NULL,\n" +
            "  `product_texture` STRING NOT NULL,\n" +
            "  `product_description` STRING NOT NULL,\n" +
            "  `product_color` STRING NOT NULL,\n" +
            "  `product_brand` STRING NOT NULL,\n" +
            "  `product_invoice_name` STRING NOT NULL,\n" +
            "  `computing_unit` INT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'table-name' = 'view_goods_custom_clearance_info',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution'\n" +
            ")";
    public static final String auth_goods_group_sink = "CREATE TABLE IF NOT EXISTS `auth_goods_group_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `group_name` STRING NOT NULL,\n" +
            "  `group_number` STRING NOT NULL,\n" +
            "  `status` INT NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `erp_group_id` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'auth_goods_group',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000'\n" +
            ")";
    public static final String view_goods_upc_info_sink = "CREATE TABLE IF NOT EXISTS `view_goods_upc_info_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `upc_code` STRING NOT NULL,\n" +
            "  `sku_voltage` STRING NULL,\n" +
            "  `is_able` INT NULL,\n" +
            "  `create_by` STRING NULL,\n" +
            "  `create_time` TIMESTAMP NULL,\n" +
            "  `update_by` STRING NULL,\n" +
            "  `update_time` TIMESTAMP NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'table-name' = 'view_goods_upc_info',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution'\n" +
            ")";
    public static final String conf_spu_sink = "CREATE TABLE IF NOT EXISTS `conf_spu_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `pic` STRING NULL,\n" +
            "  `spu_code` STRING NOT NULL,\n" +
            "  `name` STRING NOT NULL,\n" +
            "  `english_name` STRING NULL,\n" +
            "  `p_category_id` INT NULL,\n" +
            "  `develop_group_id` INT NULL,\n" +
            "  `remark` STRING NULL,\n" +
            "  `is_active` INT NOT NULL,\n" +
            "  `create_by` STRING NULL,\n" +
            "  `update_by` STRING NULL,\n" +
            "  `create_time` TIMESTAMP NULL,\n" +
            "  `update_time` TIMESTAMP NULL,\n" +
            "  `product_development_leader_id` INT NOT NULL,\n" +
            "  `product_development_leader` STRING NOT NULL,\n" +
            "  `product_management_leader_id` INT NOT NULL,\n" +
            "  `product_management_leader` STRING NOT NULL,\n" +
            "  `parent_id` INT NULL,\n" +
            "  `spu_num` STRING NOT NULL,\n" +
            "  `french_name` STRING NULL,\n" +
            "  `german_name` STRING NULL,\n" +
            "  `italian_name` STRING NULL,\n" +
            "  `spanish_name` STRING NULL,\n" +
            "  `level` INT NULL,\n" +
            "  `application_scenarios_id` STRING NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'conf_spu',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000'\n" +
            ")";
    public static final String view_goods_unpacking_info_sink = "CREATE TABLE IF NOT EXISTS `view_goods_unpacking_info_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `goods_id` INT NOT NULL,\n" +
            "  `goods_name` STRING NOT NULL,\n" +
            "  `goods_code` STRING NOT NULL,\n" +
            "  `goods_level` INT NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `create_by` STRING NULL,\n" +
            "  `update_by` STRING NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`, `goods_id`, `goods_name`,`goods_code`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'username' = 'root',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'database-name' = 'vevor_evolution',\n" +
            "  'table-name' = 'view_goods_unpacking_info',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.max-retries' = '10'\n" +
            ")";


    //prm
    public static final String product_listing_sink = "CREATE TABLE IF NOT EXISTS `product_listing_sink` (\n" +
            "  `listing_id` INT NOT NULL,\n" +
            "  `listing_name` STRING NOT NULL,\n" +
            "  `discription_id` INT NOT NULL,\n" +
            "  `template_id` INT NOT NULL,\n" +
            "  `ebay_account_id` INT NOT NULL,\n" +
            "  `site_id` INT NOT NULL,\n" +
            "  `listing_type` INT NOT NULL,\n" +
            "  `goods_sku` STRING NOT NULL,\n" +
            "  `listing_title1` STRING NOT NULL,\n" +
            "  `listing_title2` STRING NOT NULL,\n" +
            "  `templets_id` INT NOT NULL,\n" +
            "  `listing_category1` STRING NOT NULL,\n" +
            "  `listing_category2` STRING NOT NULL,\n" +
            "  `shop_category1` STRING NOT NULL,\n" +
            "  `shop_category2` STRING NOT NULL,\n" +
            "  `mark_down_id` INT NOT NULL,\n" +
            "  `listing_days` STRING NOT NULL,\n" +
            "  `non_line` INT NOT NULL,\n" +
            "  `listing_price` DECIMAL(10, 2) NOT NULL,\n" +
            "  `hode_price` DECIMAL(10, 2) NOT NULL,\n" +
            "  `fix_price` DECIMAL(10, 2) NOT NULL,\n" +
            "  `currency` STRING NOT NULL,\n" +
            "  `listing_qty` INT NOT NULL,\n" +
            "  `two_transaction` STRING NOT NULL,\n" +
            "  `two_transaction_price` DECIMAL(10, 2) NOT NULL,\n" +
            "  `two_transaction_days` STRING NOT NULL,\n" +
            "  `two_transaction_information` STRING NOT NULL,\n" +
            "  `accept_bargaining` STRING NOT NULL,\n" +
            "  `accept_max` STRING NOT NULL,\n" +
            "  `accept_max_value` DECIMAL(10, 2) NOT NULL,\n" +
            "  `refuse_min` STRING NOT NULL,\n" +
            "  `refuse_min_value` DECIMAL(10, 2) NOT NULL,\n" +
            "  `payment_id` INT NOT NULL,\n" +
            "  `return_id` INT NOT NULL,\n" +
            "  `location_id` INT NOT NULL,\n" +
            "  `shipping_id` INT NOT NULL,\n" +
            "  `gallery` INT NOT NULL,\n" +
            "  `gallery_plus` INT NOT NULL,\n" +
            "  `international_site_visibility` INT NOT NULL,\n" +
            "  `blod` INT NOT NULL,\n" +
            "  `listing_startime` INT NOT NULL,\n" +
            "  `create_time` INT NOT NULL,\n" +
            "  `cover_picture` STRING NOT NULL,\n" +
            "  `online` STRING NOT NULL,\n" +
            "  `handling_time` STRING NULL,\n" +
            "  `item_id` STRING NULL,\n" +
            "  `sold_qty` INT NULL,\n" +
            "  `item_specifics` STRING NOT NULL,\n" +
            "  `custom_specifics` STRING NOT NULL,\n" +
            "  `compatibilitiy_specifics` STRING NULL,\n" +
            "  `ebay_upic` STRING NOT NULL,\n" +
            "  `old_listing` INT NOT NULL,\n" +
            "  `ebay_sku` STRING NOT NULL,\n" +
            "  `end_time` INT NOT NULL,\n" +
            "  `new_tem_id` INT NOT NULL,\n" +
            "  `cxy` INT NULL,\n" +
            "  `links` STRING NULL,\n" +
            "  `locktitle` INT NULL,\n" +
            "  `internal_fare` DECIMAL(10, 2) NULL,\n" +
            "  `goods_more_name` STRING NULL,\n" +
            "  `goods_more_title_key` STRING NULL,\n" +
            "  `goods_more_title_prefix` STRING NULL,\n" +
            "  `alterstock` INT NULL,\n" +
            "  `listing_first_startime` INT NULL,\n" +
            "  `goods_sku_voltage` STRING NULL,\n" +
            "  `update_time` INT NULL,\n" +
            "  `update_log` STRING NULL,\n" +
            "  `upc` STRING NULL,\n" +
            "  `ean` STRING NULL,\n" +
            "  `is_discount` INT NULL,\n" +
            "  `use_other_compatible` INT NULL,\n" +
            "  `other_compatible_list` STRING NULL,\n" +
            "  `other_compatible_list_md5` STRING NULL,\n" +
            "  `brand_val` STRING NULL,\n" +
            "  `mpn_val` STRING NULL,\n" +
            "  `is_up_price` INT NULL,\n" +
            "  `before_up_price` DECIMAL(10, 2) NULL,\n" +
            "  `ratetable_start` INT NULL,\n" +
            "  `ratetable_name` STRING NULL,\n" +
            "  `alterprice` INT NULL,\n" +
            "  `power_sku` INT NOT NULL,\n" +
            "  `listing_epid` STRING NULL,\n" +
            "  `cata_group` STRING NOT NULL,\n" +
            "  `ship_excl_id` INT NOT NULL,\n" +
            "  `itm_location` STRING NOT NULL,\n" +
            "  `damaged` INT NOT NULL,\n" +
            "  `upc_type` INT NOT NULL,\n" +
            "  PRIMARY KEY(`listing_id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'username' = 'root',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'database-name' = 'prm',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'connector' = 'starrocks',\n" +
            "  'table-name' = 'product_listing'\n" +
            ")";
    public static final String product_listing_attribute_sink = "CREATE TABLE IF NOT EXISTS `product_listing_attribute_sink` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `listing_id` INT NOT NULL,\n" +
            "  `attribute_sku` STRING NOT NULL,\n" +
            "  `listing_price` DECIMAL(10, 2) NOT NULL,\n" +
            "  `listing_qty` INT NOT NULL,\n" +
            "  `attribute` STRING NOT NULL,\n" +
            "  `attribute_picture` STRING NOT NULL,\n" +
            "  `desc` INT NOT NULL,\n" +
            "  `source_sku` STRING NULL,\n" +
            "  `goods_sku_voltage` STRING NULL,\n" +
            "  `site_id` INT NULL,\n" +
            "  `httpspic` INT NULL,\n" +
            "  `sub_day7` INT NOT NULL,\n" +
            "  `sub_day30` INT NOT NULL,\n" +
            "  `sub_sum` INT NOT NULL,\n" +
            "  `sub_status` INT NOT NULL,\n" +
            "  `attr_main_sku_code` STRING NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'table-name' = 'product_listing_attribute',\n" +
            "  'sink.max-retries' = '10',\n" +
            "  'sink.properties.format' = 'json',\n" +
            "  'password' = '1BlVI3xdViMsxSnr',\n" +
            "  'jdbc-url' = 'jdbc:mysql://47.100.48.105:9030',\n" +
            "  'database-name' = 'prm',\n" +
            "  'sink.buffer-flush.interval-ms' = '15000',\n" +
            "  'load-url' = '172.19.71.64:8030;172.19.162.32:8030;172.19.162.33:8030',\n" +
            "  'username' = 'root',\n" +
            "  'sink.properties.strip_outer_array' = 'true',\n" +
            "  'connector' = 'starrocks'\n" +
            ")";
}
