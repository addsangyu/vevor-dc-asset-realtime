package com.vevor.dc.asset.realtime.sql;

/**
 * @Author: sangyu
 * @Date: 2022/4/12 20:15
 */
public class VevorEvolutionDbByDML {
    public static final String view_goods_sku_basic_info_dml = "" +
            "INSERT INTO view_goods_sku_basic_info_sink\n" +
            "SELECT\n" +
            "    id                                \n" +
            "    ,goods_id                          \n" +
            "    ,temporary_name                    \n" +
            "    ,product_name                      \n" +
            "    ,item_id                           \n" +
            "    ,sku_code                          \n" +
            "    ,sku_code_with_voltage             \n" +
            "    ,sku_code_of_second_sale           \n" +
            "    ,spu_id                            \n" +
            "    ,category_id                       \n" +
            "    ,first_category_id                 \n" +
            "    ,second_category_id                \n" +
            "    ,voltage                           \n" +
            "    ,voltage_plug                      \n" +
            "    ,current_status_number             \n" +
            "    ,international_brand               \n" +
            "    ,developer_group                   \n" +
            "    ,developer                         \n" +
            "    ,buyer_id                          \n" +
            "    ,buyer                             \n" +
            "    ,is_reject                         \n" +
            "    ,reject_before_status              \n" +
            "    ,reject_reason                     \n" +
            "    ,is_time_out                       \n" +
            "    ,time_out_deadline_time            \n" +
            "    ,audit_time                        \n" +
            "    ,deferred_days                     \n" +
            "    ,is_invalid                        \n" +
            "    ,invalid_category                  \n" +
            "    ,remark                            \n" +
            "    ,boss_remark                       \n" +
            "    ,developer_remark                  \n" +
            "    ,is_sold_separate                  \n" +
            "    ,is_purchase_sample                \n" +
            "    ,is_second_sale                    \n" +
            "    ,version                           \n" +
            "    ,user_id                           \n" +
            "    ,user_name                         \n" +
            "    ,is_delete                         \n" +
            "    ,created_time                      \n" +
            "    ,created_by                        \n" +
            "    ,updated_time                      \n" +
            "    ,updated_by                        \n" +
            "    ,erp_develop_id                    \n" +
            "    ,erp_goods_id                      \n" +
            "    ,images                            \n" +
            "    ,is_informal                       \n" +
            "    ,is_show_in_information            \n" +
            "    ,is_old                            \n" +
            "    ,shelf_time                        \n" +
            "    ,is_arrival                        \n" +
            "    ,is_brand                          \n" +
            "    ,main_sku_id                       \n" +
            "    ,main_sku_code                     \n" +
            "    ,sub_sku_code                      \n" +
            "    ,voltage_id                        \n" +
            "    ,plug_id                           \n" +
            "    ,supplier                          \n" +
            "    ,supplier_version                  \n" +
            "    ,is_tax_refund                     \n" +
            "    ,purchase_price_including_tax      \n" +
            "    ,is_have_foot_support              \n" +
            "    ,is_marking                        \n" +
            "    ,generate_type                     \n" +
            "    ,old_skucode                       \n" +
            "    ,is_normal_goods                   \n" +
            "    ,marking_reason                    \n" +
            "    ,`level`                            \n" +
            "    ,purchase_sample_time              \n" +
            "    ,estimated_arrival_time            \n" +
            "    ,actual_shelves_time               \n" +
            "    ,profit_audit_notes                \n" +
            "    ,product_specificity               \n" +
            "    ,is_forecast_complete              \n" +
            "FROM view_goods_sku_basic_info_src";

    public static final String view_goods_sku_basic_info_main_dml = "" +
            "INSERT INTO view_goods_sku_basic_info_main_sink\n" +
            "SELECT\n" +
            "    id                      \n" +
            "    ,main_sku_code           \n" +
            "    ,temporary_name          \n" +
            "    ,main_sku_name           \n" +
            "    ,old_sku_code            \n" +
            "    ,spu_id                  \n" +
            "    ,category_id             \n" +
            "    ,group_id                \n" +
            "    ,is_brand                \n" +
            "    ,international_brand     \n" +
            "    ,is_delete               \n" +
            "    ,created_time            \n" +
            "    ,created_by              \n" +
            "    ,updated_time            \n" +
            "    ,updated_by              \n" +
            "    ,is_full_binding         \n" +
            "    ,is_old                  \n" +
            "    ,is_have_foot_support    \n" +
            "    ,is_marking              \n" +
            "FROM view_goods_sku_basic_info_main_src\n";

    public static final String view_goods_package_info_dml = "INSERT INTO view_goods_package_info_sink\n" +
            "SELECT\n" +
            "    id                 \n" +
            "    ,goods_id           \n" +
            "    ,package_length     \n" +
            "    ,package_wide       \n" +
            "    ,package_high       \n" +
            "    ,package_weight     \n" +
            "    ,bubble_weight_lb   \n" +
            "    ,bubble_weight_kg   \n" +
            "    ,item_length        \n" +
            "    ,item_wide          \n" +
            "    ,item_high          \n" +
            "    ,full_weight        \n" +
            "    ,package_volume     \n" +
            "    ,perimeter_cm       \n" +
            "    ,perimeter_inch     \n" +
            "    ,charged_weight     \n" +
            "    ,package_texture    \n" +
            "    ,is_cylinder        \n" +
            "    ,is_package_merger  \n" +
            "    ,is_split_package   \n" +
            "    ,created_time       \n" +
            "    ,updated_time       \n" +
            "    ,created_by         \n" +
            "    ,updated_by         \n" +
            "    ,is_delete          \n" +
            "    ,separate_warehouse \n" +
            "FROM view_goods_package_info_src";

    public static final String view_goods_custom_clearance_info_dml = "INSERT INTO view_goods_custom_clearance_info_sink\n" +
            "SELECT\n" +
            "    id                   \n" +
            "    ,goods_id             \n" +
            "    ,goods_type           \n" +
            "    ,work_protype         \n" +
            "    ,product_use          \n" +
            "    ,product_texture      \n" +
            "    ,product_description  \n" +
            "    ,product_color        \n" +
            "    ,product_brand        \n" +
            "    ,product_invoice_name \n" +
            "    ,computing_unit       \n" +
            "    ,created_time         \n" +
            "    ,updated_time         \n" +
            "    ,created_by           \n" +
            "    ,updated_by           \n" +
            "    ,is_delete            \n" +
            "FROM view_goods_custom_clearance_info_src";

    public static final String auth_goods_group_dml = "INSERT INTO auth_goods_group_sink\n" +
            "SELECT\n" +
            "    id           \n" +
            "    ,group_name   \n" +
            "    ,group_number \n" +
            "    ,status       \n" +
            "    ,create_by    \n" +
            "    ,create_time  \n" +
            "    ,update_by    \n" +
            "    ,update_time  \n" +
            "    ,is_delete    \n" +
            "    ,erp_group_id \n" +
            "FROM auth_goods_group_src";

    public static final String view_goods_upc_info_dml = "INSERT INTO view_goods_upc_info_sink\n" +
            "SELECT\n" +
            "    id          \n" +
            "    ,upc_code    \n" +
            "    ,sku_voltage \n" +
            "    ,is_able     \n" +
            "    ,create_by   \n" +
            "    ,create_time \n" +
            "    ,update_by   \n" +
            "    ,update_time \n" +
            "FROM view_goods_upc_info_src";

    public static final String conf_spu_dml = "INSERT INTO conf_spu_sink\n" +
            "SELECT\n" +
            "    id                           \n" +
            "    ,pic                          \n" +
            "    ,spu_code                     \n" +
            "    ,name                         \n" +
            "    ,english_name                 \n" +
            "    ,p_category_id                \n" +
            "    ,develop_group_id             \n" +
            "    ,remark                       \n" +
            "    ,is_active                    \n" +
            "    ,create_by                    \n" +
            "    ,update_by                    \n" +
            "    ,create_time                  \n" +
            "    ,update_time                  \n" +
            "    ,product_development_leader_id\n" +
            "    ,product_development_leader   \n" +
            "    ,product_management_leader_id \n" +
            "    ,product_management_leader    \n" +
            "    ,parent_id                    \n" +
            "    ,spu_num                      \n" +
            "    ,french_name                  \n" +
            "    ,german_name                  \n" +
            "    ,italian_name                 \n" +
            "    ,spanish_name                 \n" +
            "    ,`level`                        \n" +
            "    ,application_scenarios_id     \n" +
            "FROM conf_spu_src";

    public static final String view_goods_unpacking_info_dml = "" +
            "INSERT INTO view_goods_unpacking_info_sink\n" +
            "SELECT\n" +
            "    id         \n" +
            "    ,goods_id   \n" +
            "    ,goods_name \n" +
            "    ,goods_code \n" +
            "    ,goods_level\n" +
            "    ,create_time\n" +
            "    ,update_time\n" +
            "    ,create_by  \n" +
            "    ,update_by  \n" +
            "    ,is_delete  \n" +
            "FROM view_goods_unpacking_info_src";



    //prm
    public static final String product_listing_dml = "INSERT INTO product_listing_sink\n" +
            "SELECT\n" +
            "    listing_id                            \n" +
            "    ,listing_name                          \n" +
            "    ,discription_id                        \n" +
            "    ,template_id                           \n" +
            "    ,ebay_account_id                       \n" +
            "    ,site_id                               \n" +
            "    ,listing_type                          \n" +
            "    ,goods_sku                             \n" +
            "    ,listing_title1                        \n" +
            "    ,listing_title2                        \n" +
            "    ,templets_id                           \n" +
            "    ,listing_category1                     \n" +
            "    ,listing_category2                     \n" +
            "    ,shop_category1                        \n" +
            "    ,shop_category2                        \n" +
            "    ,mark_down_id                          \n" +
            "    ,listing_days                          \n" +
            "    ,non_line                              \n" +
            "    ,listing_price                         \n" +
            "    ,hode_price                            \n" +
            "    ,fix_price                             \n" +
            "    ,currency                              \n" +
            "    ,listing_qty                           \n" +
            "    ,two_transaction                       \n" +
            "    ,two_transaction_price                 \n" +
            "    ,two_transaction_days                  \n" +
            "    ,two_transaction_information           \n" +
            "    ,accept_bargaining                     \n" +
            "    ,accept_max                            \n" +
            "    ,accept_max_value                      \n" +
            "    ,refuse_min                            \n" +
            "    ,refuse_min_value                      \n" +
            "    ,payment_id                            \n" +
            "    ,return_id                             \n" +
            "    ,location_id                           \n" +
            "    ,shipping_id                           \n" +
            "    ,gallery                               \n" +
            "    ,gallery_plus                          \n" +
            "    ,international_site_visibility         \n" +
            "    ,blod                                  \n" +
            "    ,listing_startime                      \n" +
            "    ,create_time                           \n" +
            "    ,cover_picture                         \n" +
            "    ,online                                \n" +
            "    ,handling_time                         \n" +
            "    ,item_id                               \n" +
            "    ,sold_qty                              \n" +
            "    ,item_specifics                        \n" +
            "    ,custom_specifics                      \n" +
            "    ,compatibilitiy_specifics              \n" +
            "    ,ebay_upic                             \n" +
            "    ,old_listing                           \n" +
            "    ,ebay_sku                              \n" +
            "    ,end_time                              \n" +
            "    ,new_tem_id                            \n" +
            "    ,cxy                                   \n" +
            "    ,links                                 \n" +
            "    ,locktitle                             \n" +
            "    ,internal_fare                         \n" +
            "    ,goods_more_name                       \n" +
            "    ,goods_more_title_key                  \n" +
            "    ,goods_more_title_prefix               \n" +
            "    ,alterstock                            \n" +
            "    ,listing_first_startime                \n" +
            "    ,goods_sku_voltage                     \n" +
            "    ,update_time                           \n" +
            "    ,update_log                            \n" +
            "    ,upc                                   \n" +
            "    ,ean                                   \n" +
            "    ,is_discount                           \n" +
            "    ,use_other_compatible                  \n" +
            "    ,other_compatible_list                 \n" +
            "    ,other_compatible_list_md5             \n" +
            "    ,brand_val                             \n" +
            "    ,mpn_val                               \n" +
            "    ,is_up_price                           \n" +
            "    ,before_up_price                       \n" +
            "    ,ratetable_start                       \n" +
            "    ,ratetable_name                        \n" +
            "    ,alterprice                            \n" +
            "    ,power_sku                             \n" +
            "    ,listing_epid                          \n" +
            "    ,cata_group                            \n" +
            "    ,ship_excl_id                          \n" +
            "    ,itm_location                          \n" +
            "    ,damaged                               \n" +
            "    ,upc_type\n" +
            "FROM\n" +
            "  product_listing_src\n" +
            "WHERE\n" +
            "  listing_type = 3 \n" +
            "  AND `online` = 'Y' \n" +
            "  AND damaged = 0";

    public static final String product_listing_attribute_dml = "INSERT INTO product_listing_attribute_sink\n" +
            "SELECT\n" +
            "    a.id                 \n" +
            "    ,a.listing_id         \n" +
            "    ,a.attribute_sku      \n" +
            "    ,a.listing_price      \n" +
            "    ,a.listing_qty        \n" +
            "    ,a.attribute          \n" +
            "    ,a.attribute_picture  \n" +
            "    ,a.desc               \n" +
            "    ,a.source_sku         \n" +
            "    ,a.goods_sku_voltage  \n" +
            "    ,a.site_id            \n" +
            "    ,a.httpspic           \n" +
            "    ,a.sub_day7           \n" +
            "    ,a.sub_day30          \n" +
            "    ,a.sub_sum            \n" +
            "    ,a.sub_status         \n" +
            "    ,a.attr_main_sku_code \n" +
            "FROM\n" +
            "  `product_listing_src` AS l\n" +
            "  LEFT JOIN `product_listing_attribute_src` AS a \n" +
            "ON l.listing_id = a.listing_id \n" +
            "WHERE\n" +
            "  l.listing_type = 3 \n" +
            "  AND l.`online` = 'Y' \n" +
            "  AND l.damaged = 0 ";

}
