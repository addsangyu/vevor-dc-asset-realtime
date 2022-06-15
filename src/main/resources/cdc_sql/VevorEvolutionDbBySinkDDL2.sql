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
  PRIMARY KEY(`id`)
 NOT ENFORCED
) with (
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_sku_basic_info',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_sku_basic_info_main',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_package_info',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_custom_clearance_info',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'auth_goods_group',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_upc_info',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'conf_spu',
  'connector' = 'jdbc'
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
  'url' = 'jdbc:mysql://106.15.3.235:3306/vevor_evolution',
  'username' = 'root',
  'password' = '123456',
  'table-name' = 'view_goods_unpacking_info',
  'connector' = 'jdbc'
)