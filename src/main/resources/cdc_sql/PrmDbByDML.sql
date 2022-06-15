INSERT INTO model_basic_sink
SELECT
    id
     ,serial_number
     ,template_id
     ,sku
     ,sku_voltage
     ,sku_without_voltage
     ,store_account_id
     ,platform
     ,site
     ,cover_picture_id
     ,first_grounding_time
     ,lately_grounding_time
     ,lately_undercarriage_time
     ,lately_halt_sales_time
     ,is_a
     ,update_fail
     ,fail_reason
     ,halt_sales_reason
     ,picture_error
     ,original_category
     ,chinese_name
     ,group_id
     ,spu
     ,spu_code
     ,weight
     ,goods_length
     ,goods_width
     ,goods_height
     ,model_number
     ,`size`
     ,colour
     ,alt_label
     ,create_by
     ,create_time
     ,update_time
     ,update_by
     ,is_delete
     ,lately_edit_time
     ,lately_synch_time
     ,lately_error_time
FROM model_basic_src

INSERT INTO model_platform_mall_sink
SELECT
    id
     ,listing_model_id
     ,spu_chinese_name
     ,category_id
     ,publication_type
     ,mall_product_id
     ,url_link
     ,status
     ,title
     ,subtitle
     ,brand
     ,price
     ,selling_price
     ,stock
     ,upc
     ,combine_sku
     ,sales_attributes
     ,custom_properties
     ,packing_weight
     ,packing_length
     ,packing_width
     ,packing_height
     ,delivery_day_min
     ,delivery_day_max
     ,is_synch_line
     ,keyword
     ,body
     ,promotion_picture_id
     ,created_time
     ,created_by
     ,updated_time
     ,updated_by
     ,is_delete
FROM model_platform_mall_src

INSERT INTO model_platform_walmart_sink
SELECT
    id
     ,status
     ,error_type
     ,model_id
     ,item_id
     ,wp_id
     ,url_link
     ,shipping_type
     ,walmart_sku
     ,republish
     ,id_type
     ,upc
     ,brand
     ,shipping_weight
     ,price_type
     ,selling_price
     ,floor_price
     ,peak_price
     ,net_profit_rate
     ,cost
     ,product_name
     ,publication_type
     ,warning_text
     ,small_parts_warning_code
     ,country_of_origin
     ,manufacturer
     ,manufacturer_part_number
     ,material
     ,finish
     ,recommended_use
     ,assembled_product_length
     ,length_unit
     ,assembled_product_width
     ,width_unit
     ,assembled_product_height
     ,height_unit
     ,assembled_product_weight
     ,weight_unit
     ,warranty_text
     ,product_tax_code
     ,site_description
     ,keywords
     ,lag_time
     ,color
     ,color_category
     ,`size`
     ,age_group
     ,gender
     ,created_time
     ,created_by
     ,updated_time
     ,updated_by
     ,is_delete
FROM model_platform_walmart_src

INSERT INTO model_platform_walmart_dsv_sink
SELECT
    id
     ,status
     ,error_type
     ,published_status
     ,lifecycle_status
     ,model_id
     ,item_id
     ,wp_id
     ,url_link
     ,shipping_type
     ,sales_platform
     ,walmart_sku
     ,id_type
     ,upc
     ,shipping_weight
     ,shipping_weight_unit
     ,main_image_url
     ,publication_type
     ,product_name
     ,selling_price
     ,cost
     ,primary_cat_path
     ,short_description
     ,long_description
     ,last_updated_time
     ,created_time
     ,created_by
     ,updated_time
     ,updated_by
     ,is_delete
FROM model_platform_walmart_dsv_src


INSERT INTO model_platform_aliexpress_sink
SELECT
    id
     ,model_id
     ,product_code
     ,title
     ,brand_id
     ,brand
     ,brand_value_id
     ,category_id
     ,freight_template
     ,service_template
     ,freight_template_id
     ,service_template_id
     ,product_id
     ,url_link
     ,aliexpress_group_id
     ,group_name
     ,`language`
     ,is_synch_line
     ,undercarriage_reason
     ,status
     ,goods_type
     ,stock_deduction_method
     ,delivery_date
     ,multi_attribute_name
     ,multiattr_title
     ,wholesale_minimum
     ,derate
     ,web_sales_attributes
     ,product_attribute
     ,sales_attributes
     ,package_type
     ,product_unit
     ,goods_group
     ,create_time
     ,create_by
     ,update_time
     ,update_by
     ,is_deleted
     ,discount_rate
FROM model_platform_aliexpress_src

INSERT INTO multiattr_model_aliexpress_sink
SELECT
    id
     ,model_id
     ,sku
     ,commodity_code
     ,multi_attribute
     ,property_value
     ,place_dispatch
     ,stock
     ,retail_price
     ,trade_price
     ,created_time
     ,updated_time
     ,created_by
     ,update_by
     ,is_delete
     ,host_sku
     ,sku_without_voltage
FROM multiattr_model_aliexpress_src


INSERT INTO combine_sku_sink
SELECT
    id
     ,combine_sku_code
     ,combine_spu_code
     ,combine_sku_name
     ,combine_spu_name
     ,erp_combine_sku
     ,group_id
     ,main_product
     ,upc
     ,combine_info
     ,weight
     ,`length`
     ,width
     ,high
     ,remark
     ,is_unpack
     ,create_by
     ,create_time
     ,update_by
     ,update_time
     ,is_delete
FROM combine_sku_src


INSERT INTO combine_sku_attachment_sink
SELECT
    id
     ,main_sku
     ,combine_sku_code
     ,sku_name
     ,spu_chinese_name
     ,spu_en_name
     ,spu_code
     ,group_id
     ,`count`
     ,weight
     ,`length`
     ,width
     ,high
     ,is_main_product
     ,create_by
     ,create_time
     ,update_by
     ,update_time
     ,is_delete
FROM combine_sku_attachment_src


INSERT INTO combine_sku_history_sink
SELECT
    id
     ,combine_sku_code
     ,erp_combine_sku
     ,erp_combine_info
     ,is_unpack
     ,create_by
     ,create_time
     ,update_by
     ,update_time
     ,is_delete
FROM combine_sku_history_src