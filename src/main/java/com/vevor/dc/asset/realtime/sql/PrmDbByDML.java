package com.vevor.dc.asset.realtime.sql;

/**
 * @Author: sangyu
 * @Date: 2022/4/12 20:15
 */
public class PrmDbByDML {
    public static final String model_basic_dml = "INSERT INTO model_basic_sink \n" +
            "SELECT \n" +
            "    id                       \n" +
            "    ,serial_number            \n" +
            "    ,template_id              \n" +
            "    ,sku                      \n" +
            "    ,sku_voltage              \n" +
            "    ,sku_without_voltage      \n" +
            "    ,store_account_id         \n" +
            "    ,platform                 \n" +
            "    ,site                     \n" +
            "    ,cover_picture_id         \n" +
            "    ,first_grounding_time     \n" +
            "    ,lately_grounding_time    \n" +
            "    ,lately_undercarriage_time\n" +
            "    ,lately_halt_sales_time   \n" +
            "    ,is_a                     \n" +
            "    ,update_fail              \n" +
            "    ,fail_reason              \n" +
            "    ,halt_sales_reason        \n" +
            "    ,picture_error            \n" +
            "    ,original_category        \n" +
            "    ,chinese_name             \n" +
            "    ,group_id                 \n" +
            "    ,spu                      \n" +
            "    ,spu_code                 \n" +
            "    ,weight                   \n" +
            "    ,goods_length             \n" +
            "    ,goods_width              \n" +
            "    ,goods_height             \n" +
            "    ,model_number             \n" +
            "    ,`size`                   \n" +
            "    ,colour                   \n" +
            "    ,alt_label                \n" +
            "    ,create_by                \n" +
            "    ,create_time              \n" +
            "    ,update_time              \n" +
            "    ,update_by                \n" +
            "    ,is_delete                \n" +
            "    ,lately_edit_time         \n" +
            "    ,lately_synch_time        \n" +
            "    ,lately_error_time        \n" +
            "FROM model_basic_src";

    public static final String model_platform_mall_dml = "INSERT INTO model_platform_mall_sink \n" +
            "SELECT \n" +
            "    id                    \n" +
            "    ,listing_model_id      \n" +
            "    ,spu_chinese_name      \n" +
            "    ,category_id           \n" +
            "    ,publication_type      \n" +
            "    ,mall_product_id       \n" +
            "    ,url_link              \n" +
            "    ,status                \n" +
            "    ,title                 \n" +
            "    ,subtitle              \n" +
            "    ,brand                 \n" +
            "    ,price                 \n" +
            "    ,selling_price         \n" +
            "    ,stock                 \n" +
            "    ,upc                   \n" +
            "    ,combine_sku           \n" +
            "    ,sales_attributes      \n" +
            "    ,custom_properties     \n" +
            "    ,packing_weight        \n" +
            "    ,packing_length        \n" +
            "    ,packing_width         \n" +
            "    ,packing_height        \n" +
            "    ,delivery_day_min      \n" +
            "    ,delivery_day_max      \n" +
            "    ,is_synch_line         \n" +
            "    ,keyword               \n" +
            "    ,body                  \n" +
            "    ,promotion_picture_id  \n" +
            "    ,created_time          \n" +
            "    ,created_by            \n" +
            "    ,updated_time          \n" +
            "    ,updated_by            \n" +
            "    ,is_delete             \n" +
            " FROM model_platform_mall_src";

    public static final String model_platform_walmart_dml = "INSERT INTO model_platform_walmart_sink SELECT\n" +
            "    id                          \n" +
            "    ,status                      \n" +
            "    ,error_type                  \n" +
            "    ,model_id                    \n" +
            "    ,item_id                     \n" +
            "    ,wp_id                       \n" +
            "    ,url_link                    \n" +
            "    ,shipping_type               \n" +
            "    ,walmart_sku                 \n" +
            "    ,republish                   \n" +
            "    ,id_type                     \n" +
            "    ,upc                         \n" +
            "    ,brand                       \n" +
            "    ,shipping_weight             \n" +
            "    ,price_type                  \n" +
            "    ,selling_price               \n" +
            "    ,floor_price                 \n" +
            "    ,peak_price                  \n" +
            "    ,net_profit_rate             \n" +
            "    ,cost                        \n" +
            "    ,product_name                \n" +
            "    ,publication_type            \n" +
            "    ,warning_text                \n" +
            "    ,small_parts_warning_code    \n" +
            "    ,country_of_origin           \n" +
            "    ,manufacturer                \n" +
            "    ,manufacturer_part_number    \n" +
            "    ,material                    \n" +
            "    ,finish                      \n" +
            "    ,recommended_use             \n" +
            "    ,assembled_product_length    \n" +
            "    ,length_unit                 \n" +
            "    ,assembled_product_width     \n" +
            "    ,width_unit                  \n" +
            "    ,assembled_product_height    \n" +
            "    ,height_unit                 \n" +
            "    ,assembled_product_weight    \n" +
            "    ,weight_unit                 \n" +
            "    ,warranty_text               \n" +
            "    ,product_tax_code            \n" +
            "    ,site_description            \n" +
            "    ,keywords                    \n" +
            "    ,lag_time                    \n" +
            "    ,color                       \n" +
            "    ,color_category              \n" +
            "    ,`size`                      \n" +
            "    ,age_group                   \n" +
            "    ,gender                      \n" +
            "    ,created_time                \n" +
            "    ,created_by                  \n" +
            "    ,updated_time                \n" +
            "    ,updated_by                  \n" +
            "    ,is_delete                   \n" +
            " FROM model_platform_walmart_src";

    public static final String model_platform_walmart_dsv_dml = "INSERT INTO model_platform_walmart_dsv_sink \n" +
            "SELECT \n" +
            "    id                    \n" +
            "    ,status                \n" +
            "    ,error_type            \n" +
            "    ,published_status      \n" +
            "    ,lifecycle_status      \n" +
            "    ,model_id              \n" +
            "    ,item_id               \n" +
            "    ,wp_id                 \n" +
            "    ,url_link              \n" +
            "    ,shipping_type         \n" +
            "    ,sales_platform        \n" +
            "    ,walmart_sku           \n" +
            "    ,id_type               \n" +
            "    ,upc                   \n" +
            "    ,shipping_weight       \n" +
            "    ,shipping_weight_unit  \n" +
            "    ,main_image_url        \n" +
            "    ,publication_type      \n" +
            "    ,product_name          \n" +
            "    ,selling_price         \n" +
            "    ,cost                  \n" +
            "    ,primary_cat_path      \n" +
            "    ,short_description     \n" +
            "    ,long_description      \n" +
            "    ,last_updated_time     \n" +
            "    ,created_time          \n" +
            "    ,created_by            \n" +
            "    ,updated_time          \n" +
            "    ,updated_by            \n" +
            "    ,is_delete             \n" +
            " FROM model_platform_walmart_dsv_src";

    public static final String model_platform_aliexpress_dml = "INSERT INTO model_platform_aliexpress_sink \n" +
            "SELECT \n" +
            "    id                          \n" +
            "    ,model_id                    \n" +
            "    ,product_code                \n" +
            "    ,title                       \n" +
            "    ,brand_id                    \n" +
            "    ,brand                       \n" +
            "    ,brand_value_id              \n" +
            "    ,category_id                 \n" +
            "    ,freight_template            \n" +
            "    ,service_template            \n" +
            "    ,freight_template_id         \n" +
            "    ,service_template_id         \n" +
            "    ,product_id                  \n" +
            "    ,url_link                    \n" +
            "    ,aliexpress_group_id         \n" +
            "    ,group_name                  \n" +
            "    ,`language`                  \n" +
            "    ,is_synch_line               \n" +
            "    ,undercarriage_reason        \n" +
            "    ,status                      \n" +
            "    ,goods_type                  \n" +
            "    ,stock_deduction_method      \n" +
            "    ,delivery_date               \n" +
            "    ,multi_attribute_name        \n" +
            "    ,multiattr_title             \n" +
            "    ,wholesale_minimum           \n" +
            "    ,derate                      \n" +
            "    ,web_sales_attributes        \n" +
            "    ,product_attribute           \n" +
            "    ,sales_attributes            \n" +
            "    ,package_type                \n" +
            "    ,product_unit                \n" +
            "    ,goods_group                 \n" +
            "    ,create_time                 \n" +
            "    ,create_by                   \n" +
            "    ,update_time                 \n" +
            "    ,update_by                   \n" +
            "    ,is_deleted                  \n" +
            "    ,discount_rate               \n" +
            " FROM model_platform_aliexpress_src";

    public static final String multiattr_model_aliexpress_dml = "INSERT INTO multiattr_model_aliexpress_sink \n" +
            "SELECT \n" +
            "    id                    \n" +
            "    ,model_id              \n" +
            "    ,sku                   \n" +
            "    ,commodity_code        \n" +
            "    ,multi_attribute       \n" +
            "    ,property_value        \n" +
            "    ,place_dispatch        \n" +
            "    ,stock                 \n" +
            "    ,retail_price          \n" +
            "    ,trade_price           \n" +
            "    ,created_time          \n" +
            "    ,updated_time          \n" +
            "    ,created_by            \n" +
            "    ,update_by             \n" +
            "    ,is_delete             \n" +
            "    ,host_sku              \n" +
            "    ,sku_without_voltage   \n" +
            " FROM multiattr_model_aliexpress_src";

    public static final String combine_sku_dml = "INSERT INTO combine_sku_sink \n" +
            "SELECT \n" +
            "    id                \n" +
            "    ,combine_sku_code  \n" +
            "    ,combine_spu_code  \n" +
            "    ,combine_sku_name  \n" +
            "    ,combine_spu_name  \n" +
            "    ,erp_combine_sku   \n" +
            "    ,group_id          \n" +
            "    ,main_product      \n" +
            "    ,upc               \n" +
            "    ,combine_info      \n" +
            "    ,weight            \n" +
            "    ,`length`          \n" +
            "    ,width             \n" +
            "    ,high              \n" +
            "    ,remark            \n" +
            "    ,is_unpack         \n" +
            "    ,create_by         \n" +
            "    ,create_time       \n" +
            "    ,update_by         \n" +
            "    ,update_time       \n" +
            "    ,is_delete     \n" +
            " FROM combine_sku_src";

    public static final String combine_sku_attachment_dml = "INSERT INTO combine_sku_attachment_sink \n" +
            "SELECT \n" +
            "    id                 \n" +
            "    ,main_sku           \n" +
            "    ,combine_sku_code   \n" +
            "    ,sku_name           \n" +
            "    ,spu_chinese_name   \n" +
            "    ,spu_en_name        \n" +
            "    ,spu_code           \n" +
            "    ,group_id           \n" +
            "    ,`count`            \n" +
            "    ,weight             \n" +
            "    ,`length`           \n" +
            "    ,width              \n" +
            "    ,high               \n" +
            "    ,is_main_product    \n" +
            "    ,create_by          \n" +
            "    ,create_time        \n" +
            "    ,update_by          \n" +
            "    ,update_time        \n" +
            "    ,is_delete          \n" +
            " FROM combine_sku_attachment_src";

    public static final String combine_sku_history_dml = "INSERT INTO combine_sku_history_sink \n" +
            "SELECT \n" +
            "    id               \n" +
            "    ,combine_sku_code \n" +
            "    ,erp_combine_sku  \n" +
            "    ,erp_combine_info \n" +
            "    ,is_unpack        \n" +
            "    ,create_by        \n" +
            "    ,create_time      \n" +
            "    ,update_by        \n" +
            "    ,update_time      \n" +
            "    ,is_delete        \n" +
            " FROM combine_sku_history_src";


}
