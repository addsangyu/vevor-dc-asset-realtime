package com.vevor.dc.asset.realtime.sql;

/**
 * @Author: sangyu
 * @Date: 2022/4/12 20:15
 */
public class PrmDbBySourceDDL {
    public static final String model_basic_src="CREATE TABLE IF NOT EXISTS `model_basic_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `serial_number` STRING NOT NULL,\n" +
            "  `template_id` INT NOT NULL,\n" +
            "  `sku` STRING NOT NULL,\n" +
            "  `sku_voltage` STRING NOT NULL,\n" +
            "  `sku_without_voltage` STRING NOT NULL,\n" +
            "  `store_account_id` INT NOT NULL,\n" +
            "  `platform` STRING NOT NULL,\n" +
            "  `site` STRING NOT NULL,\n" +
            "  `cover_picture_id` INT NOT NULL,\n" +
            "  `first_grounding_time` TIMESTAMP NOT NULL,\n" +
            "  `lately_grounding_time` TIMESTAMP NOT NULL,\n" +
            "  `lately_undercarriage_time` TIMESTAMP NULL,\n" +
            "  `lately_halt_sales_time` TIMESTAMP NULL,\n" +
            "  `is_a` INT NOT NULL,\n" +
            "  `update_fail` INT NOT NULL,\n" +
            "  `fail_reason` STRING NOT NULL,\n" +
            "  `halt_sales_reason` STRING NOT NULL,\n" +
            "  `picture_error` STRING NOT NULL,\n" +
            "  `original_category` INT NOT NULL,\n" +
            "  `chinese_name` STRING NOT NULL,\n" +
            "  `group_id` INT NOT NULL,\n" +
            "  `spu` STRING NULL,\n" +
            "  `spu_code` STRING NOT NULL,\n" +
            "  `weight` DECIMAL(15, 6) NOT NULL,\n" +
            "  `goods_length` DECIMAL(15, 6) NOT NULL,\n" +
            "  `goods_width` DECIMAL(15, 6) NOT NULL,\n" +
            "  `goods_height` DECIMAL(15, 6) NOT NULL,\n" +
            "  `model_number` STRING NOT NULL,\n" +
            "  `size` STRING NOT NULL,\n" +
            "  `colour` STRING NULL,\n" +
            "  `alt_label` STRING NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_time` TIMESTAMP NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `lately_edit_time` TIMESTAMP NOT NULL,\n" +
            "  `lately_synch_time` TIMESTAMP NOT NULL,\n" +
            "  `lately_error_time` TIMESTAMP NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'model_basic',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ'\n" +
            ")";
    public static final String model_platform_mall_src="CREATE TABLE IF NOT EXISTS `model_platform_mall_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `listing_model_id` INT NOT NULL,\n" +
            "  `spu_chinese_name` STRING NOT NULL,\n" +
            "  `category_id` BIGINT NOT NULL,\n" +
            "  `publication_type` INT NOT NULL,\n" +
            "  `mall_product_id` STRING NOT NULL,\n" +
            "  `url_link` STRING NOT NULL,\n" +
            "  `status` INT NOT NULL,\n" +
            "  `title` STRING NOT NULL,\n" +
            "  `subtitle` STRING NOT NULL,\n" +
            "  `brand` STRING NOT NULL,\n" +
            "  `price` DECIMAL(16, 6) NOT NULL,\n" +
            "  `selling_price` DECIMAL(16, 6) NOT NULL,\n" +
            "  `stock` BIGINT NOT NULL,\n" +
            "  `upc` STRING NULL,\n" +
            "  `combine_sku` STRING NULL,\n" +
            "  `sales_attributes` STRING NULL,\n" +
            "  `custom_properties` STRING NULL,\n" +
            "  `packing_weight` DECIMAL(16, 6) NULL,\n" +
            "  `packing_length` DECIMAL(16, 6) NULL,\n" +
            "  `packing_width` DECIMAL(16, 6) NULL,\n" +
            "  `packing_height` DECIMAL(16, 6) NULL,\n" +
            "  `delivery_day_min` INT NULL,\n" +
            "  `delivery_day_max` INT NULL,\n" +
            "  `is_synch_line` INT NOT NULL,\n" +
            "  `keyword` STRING NULL,\n" +
            "  `body` STRING NULL,\n" +
            "  `promotion_picture_id` INT NOT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'model_platform_mall',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306'\n" +
            ")";
    public static final String model_platform_walmart_src="CREATE TABLE IF NOT EXISTS `model_platform_walmart_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `status` INT NOT NULL,\n" +
            "  `error_type` INT NULL,\n" +
            "  `model_id` INT NOT NULL,\n" +
            "  `item_id` STRING NULL,\n" +
            "  `wp_id` STRING NULL,\n" +
            "  `url_link` STRING NULL,\n" +
            "  `shipping_type` INT NULL,\n" +
            "  `walmart_sku` STRING NOT NULL,\n" +
            "  `republish` INT NULL,\n" +
            "  `id_type` STRING NOT NULL,\n" +
            "  `upc` STRING NOT NULL,\n" +
            "  `brand` STRING NOT NULL,\n" +
            "  `shipping_weight` DECIMAL(8, 2) NOT NULL,\n" +
            "  `price_type` INT NOT NULL,\n" +
            "  `selling_price` DECIMAL(11, 2) NOT NULL,\n" +
            "  `floor_price` DECIMAL(11, 2) NULL,\n" +
            "  `peak_price` DECIMAL(11, 2) NULL,\n" +
            "  `net_profit_rate` DECIMAL(11, 2) NULL,\n" +
            "  `cost` DECIMAL(11, 2) NULL,\n" +
            "  `product_name` STRING NOT NULL,\n" +
            "  `publication_type` INT NOT NULL,\n" +
            "  `warning_text` STRING NULL,\n" +
            "  `small_parts_warning_code` INT NULL,\n" +
            "  `country_of_origin` STRING NOT NULL,\n" +
            "  `manufacturer` STRING NOT NULL,\n" +
            "  `manufacturer_part_number` STRING NOT NULL,\n" +
            "  `material` STRING NULL,\n" +
            "  `finish` STRING NULL,\n" +
            "  `recommended_use` STRING NULL,\n" +
            "  `assembled_product_length` DECIMAL(8, 2) NULL,\n" +
            "  `length_unit` STRING NULL,\n" +
            "  `assembled_product_width` DECIMAL(8, 2) NULL,\n" +
            "  `width_unit` STRING NULL,\n" +
            "  `assembled_product_height` DECIMAL(8, 2) NULL,\n" +
            "  `height_unit` STRING NULL,\n" +
            "  `assembled_product_weight` DECIMAL(8, 2) NULL,\n" +
            "  `weight_unit` STRING NULL,\n" +
            "  `warranty_text` STRING NOT NULL,\n" +
            "  `product_tax_code` STRING NOT NULL,\n" +
            "  `site_description` STRING NOT NULL,\n" +
            "  `keywords` STRING NULL,\n" +
            "  `lag_time` INT NULL,\n" +
            "  `color` STRING NULL,\n" +
            "  `color_category` STRING NULL,\n" +
            "  `size` STRING NULL,\n" +
            "  `age_group` STRING NULL,\n" +
            "  `gender` STRING NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'model_platform_walmart',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly'\n" +
            ")";
    public static final String model_platform_walmart_dsv_src="CREATE TABLE IF NOT EXISTS `model_platform_walmart_dsv_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `status` INT NOT NULL,\n" +
            "  `error_type` INT NULL,\n" +
            "  `published_status` STRING NULL,\n" +
            "  `lifecycle_status` STRING NULL,\n" +
            "  `model_id` INT NOT NULL,\n" +
            "  `item_id` STRING NULL,\n" +
            "  `wp_id` STRING NULL,\n" +
            "  `url_link` STRING NULL,\n" +
            "  `shipping_type` INT NULL,\n" +
            "  `sales_platform` STRING NOT NULL,\n" +
            "  `walmart_sku` STRING NOT NULL,\n" +
            "  `id_type` STRING NOT NULL,\n" +
            "  `upc` STRING NOT NULL,\n" +
            "  `shipping_weight` DECIMAL(8, 2) NOT NULL,\n" +
            "  `shipping_weight_unit` STRING NOT NULL,\n" +
            "  `main_image_url` STRING NOT NULL,\n" +
            "  `publication_type` INT NOT NULL,\n" +
            "  `product_name` STRING NOT NULL,\n" +
            "  `selling_price` DECIMAL(11, 2) NOT NULL,\n" +
            "  `cost` DECIMAL(11, 2) NOT NULL,\n" +
            "  `primary_cat_path` STRING NOT NULL,\n" +
            "  `short_description` STRING NOT NULL,\n" +
            "  `long_description` STRING NOT NULL,\n" +
            "  `last_updated_time` STRING NOT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'model_platform_walmart_dsv',\n" +
            "  'connector' = 'mysql-cdc'\n" +
            ")";
    public static final String model_platform_aliexpress_src="CREATE TABLE IF NOT EXISTS `model_platform_aliexpress_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `model_id` INT NOT NULL,\n" +
            "  `product_code` STRING NOT NULL,\n" +
            "  `title` STRING NULL,\n" +
            "  `brand_id` BIGINT NOT NULL,\n" +
            "  `brand` STRING NOT NULL,\n" +
            "  `brand_value_id` BIGINT NOT NULL,\n" +
            "  `category_id` BIGINT NOT NULL,\n" +
            "  `freight_template` STRING NOT NULL,\n" +
            "  `service_template` STRING NOT NULL,\n" +
            "  `freight_template_id` BIGINT NOT NULL,\n" +
            "  `service_template_id` BIGINT NOT NULL,\n" +
            "  `product_id` BIGINT NOT NULL,\n" +
            "  `url_link` STRING NOT NULL,\n" +
            "  `aliexpress_group_id` BIGINT NOT NULL,\n" +
            "  `group_name` STRING NULL,\n" +
            "  `language` STRING NOT NULL,\n" +
            "  `is_synch_line` INT NOT NULL,\n" +
            "  `undercarriage_reason` INT NOT NULL,\n" +
            "  `status` INT NOT NULL,\n" +
            "  `goods_type` INT NOT NULL,\n" +
            "  `stock_deduction_method` INT NOT NULL,\n" +
            "  `delivery_date` INT NOT NULL,\n" +
            "  `multi_attribute_name` STRING NOT NULL,\n" +
            "  `multiattr_title` STRING NULL,\n" +
            "  `wholesale_minimum` INT NOT NULL,\n" +
            "  `derate` INT NOT NULL,\n" +
            "  `web_sales_attributes` STRING NULL,\n" +
            "  `product_attribute` STRING NULL,\n" +
            "  `sales_attributes` STRING NULL,\n" +
            "  `package_type` INT NOT NULL,\n" +
            "  `product_unit` BIGINT NOT NULL,\n" +
            "  `goods_group` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `is_deleted` INT NOT NULL,\n" +
            "  `discount_rate` DECIMAL(15, 2) NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'table-name' = 'model_platform_aliexpress',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db'\n" +
            ")";
    public static final String multiattr_model_aliexpress_src="CREATE TABLE IF NOT EXISTS `multiattr_model_aliexpress_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `model_id` INT NOT NULL,\n" +
            "  `sku` STRING NOT NULL,\n" +
            "  `commodity_code` STRING NOT NULL,\n" +
            "  `multi_attribute` STRING NULL,\n" +
            "  `property_value` STRING NULL,\n" +
            "  `place_dispatch` STRING NOT NULL,\n" +
            "  `stock` BIGINT NOT NULL,\n" +
            "  `retail_price` DECIMAL(16, 3) NOT NULL,\n" +
            "  `trade_price` DECIMAL(16, 3) NOT NULL,\n" +
            "  `created_time` TIMESTAMP NOT NULL,\n" +
            "  `updated_time` TIMESTAMP NOT NULL,\n" +
            "  `created_by` STRING NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  `host_sku` INT NULL,\n" +
            "  `sku_without_voltage` STRING NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'multiattr_model_aliexpress',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306'\n" +
            ")";
    public static final String combine_sku_src="CREATE TABLE IF NOT EXISTS `combine_sku_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `combine_sku_code` STRING NOT NULL,\n" +
            "  `combine_spu_code` STRING NOT NULL,\n" +
            "  `combine_sku_name` STRING NOT NULL,\n" +
            "  `combine_spu_name` STRING NOT NULL,\n" +
            "  `erp_combine_sku` STRING NOT NULL,\n" +
            "  `group_id` INT NOT NULL,\n" +
            "  `main_product` STRING NOT NULL,\n" +
            "  `upc` STRING NOT NULL,\n" +
            "  `combine_info` STRING NOT NULL,\n" +
            "  `weight` DECIMAL(16, 2) NOT NULL,\n" +
            "  `length` DECIMAL(16, 2) NOT NULL,\n" +
            "  `width` DECIMAL(16, 2) NOT NULL,\n" +
            "  `high` DECIMAL(16, 2) NOT NULL,\n" +
            "  `remark` STRING NOT NULL,\n" +
            "  `is_unpack` INT NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'combine_sku',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly'\n" +
            ")";

    public static final String combine_sku_attachment_src="CREATE TABLE IF NOT EXISTS `combine_sku_attachment_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `main_sku` STRING NOT NULL,\n" +
            "  `combine_sku_code` STRING NOT NULL,\n" +
            "  `sku_name` STRING NOT NULL,\n" +
            "  `spu_chinese_name` STRING NOT NULL,\n" +
            "  `spu_en_name` STRING NOT NULL,\n" +
            "  `spu_code` STRING NOT NULL,\n" +
            "  `group_id` INT NOT NULL,\n" +
            "  `count` INT NOT NULL,\n" +
            "  `weight` DECIMAL(16, 2) NOT NULL,\n" +
            "  `length` DECIMAL(16, 2) NOT NULL,\n" +
            "  `width` DECIMAL(16, 2) NOT NULL,\n" +
            "  `high` DECIMAL(16, 2) NOT NULL,\n" +
            "  `is_main_product` INT NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'combine_sku_attachment',\n" +
            "  'connector' = 'mysql-cdc',\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ'\n" +
            ")";

    public static final String combine_sku_history_src="CREATE TABLE IF NOT EXISTS `combine_sku_history_src` (\n" +
            "  `id` INT NOT NULL,\n" +
            "  `combine_sku_code` STRING NOT NULL,\n" +
            "  `erp_combine_sku` STRING NOT NULL,\n" +
            "  `erp_combine_info` STRING NOT NULL,\n" +
            "  `is_unpack` INT NOT NULL,\n" +
            "  `create_by` STRING NOT NULL,\n" +
            "  `create_time` TIMESTAMP NOT NULL,\n" +
            "  `update_by` STRING NOT NULL,\n" +
            "  `update_time` TIMESTAMP NOT NULL,\n" +
            "  `is_delete` INT NOT NULL,\n" +
            "  PRIMARY KEY(`id`)\n" +
            " NOT ENFORCED\n" +
            ") with (\n" +
            "  'hostname' = 'rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com',\n" +
            "  'port' = '3306',\n" +
            "  'username' = 'readonly',\n" +
            "  'password' = '7RNz8iz#PfRDz#ULnqIHRTNQ',\n" +
            "  'database-name' = 'prm_db',\n" +
            "  'table-name' = 'combine_sku_history',\n" +
            "  'connector' = 'mysql-cdc'\n" +
            ")";

}
