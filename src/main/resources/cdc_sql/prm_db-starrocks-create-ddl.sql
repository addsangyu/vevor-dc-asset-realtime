CREATE TABLE IF NOT EXISTS `prm_db`.`model_basic` (
  `id` INT(11) NOT NULL  COMMENT "主键",
  `serial_number` STRING NOT NULL  COMMENT "序号",
  `template_id` INT(11) NOT NULL DEFAULT "0" COMMENT "模板id",
  `sku` STRING NOT NULL  COMMENT "sku",
  `sku_voltage` STRING NOT NULL  COMMENT "sku电压",
  `sku_without_voltage` STRING NOT NULL  COMMENT "不带电压的sku",
  `store_account_id` INT(11) NOT NULL DEFAULT "0" COMMENT "店铺账号id",
  `platform` STRING NOT NULL  COMMENT "平台",
  `site` STRING NOT NULL  COMMENT "站点",
  `cover_picture_id` INT(11) NOT NULL DEFAULT "1" COMMENT "封面图id",
  `first_grounding_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "首次上架时间(刊登时间)",
  `lately_grounding_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近上架时间",
  `lately_undercarriage_time` DATETIME NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近下架时间",
  `lately_halt_sales_time` DATETIME NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近停售时间",
  `is_a` tinyint(2) NOT NULL DEFAULT "0" COMMENT "是否为A+模板(0-非A+,1-A+)",
  `update_fail` tinyint(1) NOT NULL DEFAULT "0" COMMENT "更新失败(0\"否\",1\"是\")",
  `fail_reason` STRING NOT NULL DEFAULT """" COMMENT "失败原因",
  `halt_sales_reason` STRING NOT NULL  COMMENT "停售原因",
  `picture_error` STRING NOT NULL  COMMENT "更新图片错误原因",
  `original_category` INT(11) NOT NULL DEFAULT "0" COMMENT "范本原始类目",
  `chinese_name` STRING NOT NULL  COMMENT "产品中文名称",
  `group_id` INT(11) NOT NULL DEFAULT "0" COMMENT "小组id",
  `spu` STRING NULL  COMMENT "spu_en_name",
  `spu_code` STRING NOT NULL  COMMENT "spu_code",
  `weight` DECIMAL(15, 6) NOT NULL DEFAULT "0.000000" COMMENT "sku重量(单位:kg)",
  `goods_length` DECIMAL(15, 6) NOT NULL DEFAULT "0.000000" COMMENT "sku长(单位:cm)",
  `goods_width` DECIMAL(15, 6) NOT NULL DEFAULT "0.000000" COMMENT "sku宽(单位:cm)",
  `goods_height` DECIMAL(15, 6) NOT NULL DEFAULT "0.000000" COMMENT "sku高(单位:cm)",
  `model_number` STRING NOT NULL  COMMENT "型号",
  `size` STRING NOT NULL  COMMENT "尺寸",
  `colour` STRING NULL  COMMENT "颜色",
  `alt_label` STRING NOT NULL  COMMENT "alt标签",
  `create_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_time` DATETIME NULL  COMMENT "更新时间",
  `update_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0未删除 1已删除",
  `lately_edit_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近修改时间",
  `lately_synch_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近同步时间",
  `lately_error_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "最近报错时间"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "listing范本基本信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`model_platform_mall` (
  `id` INT(11) NOT NULL  COMMENT "主键id",
  `listing_model_id` INT(11) NOT NULL DEFAULT "0" COMMENT "listing范本id",
  `spu_chinese_name` STRING NOT NULL  COMMENT "spu中文名",
  `category_id` LARGEINT(18) NOT NULL DEFAULT "0" COMMENT "类目id",
  `publication_type` tinyint(2) NOT NULL DEFAULT "1" COMMENT "刊登类型(1\"单品\",2\"组合\")",
  `mall_product_id` STRING NOT NULL  COMMENT "平台范本id",
  `url_link` STRING NOT NULL  COMMENT "url链接",
  `status` INT(2)  NOT NULL DEFAULT "1" COMMENT "状态(1\"待刊登\",2\"处理中\",3\"已上线\",4\"已下架\")",
  `title` STRING NOT NULL  COMMENT "标题",
  `subtitle` STRING NOT NULL  COMMENT "副标题",
  `brand` STRING NOT NULL DEFAULT "VEVOR" COMMENT "品牌",
  `price` DECIMAL(16, 6) NOT NULL DEFAULT "0.000000" COMMENT "价格",
  `selling_price` DECIMAL(16, 6) NOT NULL DEFAULT "0.000000" COMMENT "本地售价",
  `stock` LARGEINT(12) NOT NULL DEFAULT "0" COMMENT "库存",
  `upc` STRING NULL  COMMENT "upc",
  `combine_sku` STRING NULL  COMMENT "绑定的组合sku",
  `sales_attributes` STRING NULL  COMMENT "销售属性",
  `custom_properties` STRING NULL  COMMENT "自定义属性",
  `packing_weight` DECIMAL(16, 6) NULL  COMMENT "包装重量",
  `packing_length` DECIMAL(16, 6) NULL  COMMENT "包装长",
  `packing_width` DECIMAL(16, 6) NULL  COMMENT "包装宽",
  `packing_height` DECIMAL(16, 6) NULL  COMMENT "包装高",
  `delivery_day_min` INT(11) NULL  COMMENT "最小发货期",
  `delivery_day_max` INT(11) NULL  COMMENT "最大发货期",
  `is_synch_line` tinyint(2) NOT NULL DEFAULT "0" COMMENT "是否更新线上(0否,1是)",
  `keyword` STRING NULL  COMMENT "搜索关键字",
  `body` STRING NULL  COMMENT "body",
  `promotion_picture_id` INT(11) NOT NULL DEFAULT "0" COMMENT "推广图id",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `created_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `updated_time` DATETIME NULL  COMMENT "更新时间",
  `updated_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0未删除 1已删除"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "范本独立商城平台信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 39
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`model_platform_walmart` (
  `id` INT(11) NOT NULL  COMMENT "主键ID",
  `status` INT(2) NOT NULL DEFAULT "0" COMMENT "状态（1：待刊登，2：处理中，3：错误，4：已上线，5：已下线）",
  `error_type` INT(2) NULL DEFAULT "0" COMMENT "错误类型（1：刊登失败，2：更新失败，3：异常下线，4：手动下线）",
  `model_id` INT(11) NOT NULL DEFAULT "0" COMMENT "范本ID",
  `item_id` STRING NULL  COMMENT "平台ID（刊登后唯一标识）",
  `wp_id` STRING NULL  COMMENT "WPID（刊登后唯一标识）",
  `url_link` STRING NULL  COMMENT "销售链接",
  `shipping_type` tinyint(1) NULL  COMMENT "发货类型（默认为：1：SELLER FULFILLED ITEMS）",
  `walmart_sku` STRING NOT NULL  COMMENT "沃尔玛sku",
  `republish` tinyint(1) NULL DEFAULT "0" COMMENT "是否重新刊登（0：不是，1：是）",
  `id_type` STRING NOT NULL  COMMENT "productIdentifiers Type",
  `upc` STRING NOT NULL  COMMENT "upc码",
  `brand` STRING NOT NULL  COMMENT "品牌",
  `shipping_weight` DECIMAL(8, 2) NOT NULL DEFAULT "0.00" COMMENT "产品重量（单位：lbs）",
  `price_type` tinyint(1) NOT NULL DEFAULT "0" COMMENT "价格类型（0：自动改价，1：固价）",
  `selling_price` DECIMAL(11, 2) NOT NULL DEFAULT "0.00" COMMENT "产品定价",
  `floor_price` DECIMAL(11, 2) NULL DEFAULT "000000000.00" COMMENT "最低下限价格",
  `peak_price` DECIMAL(11, 2) NULL DEFAULT "000000000.00" COMMENT "最高上限价格",
  `net_profit_rate` DECIMAL(11, 2) NULL DEFAULT "0.00" COMMENT "净利润率",
  `cost` DECIMAL(11, 2) NULL  COMMENT "成本",
  `product_name` STRING NOT NULL  COMMENT "产品标题",
  `publication_type` tinyint(1) NOT NULL DEFAULT "0" COMMENT "刊登类型（0：单品，1：多属性)",
  `warning_text` STRING NULL  COMMENT "危险提示（California Prop 65 Warning Text）",
  `small_parts_warning_code` tinyint(2) NULL DEFAULT "0" COMMENT "窒息警告",
  `country_of_origin` STRING NOT NULL DEFAULT "Imported" COMMENT "产品来源地",
  `manufacturer` STRING NOT NULL DEFAULT "VEVOR" COMMENT "制造商",
  `manufacturer_part_number` STRING NOT NULL  COMMENT "带电压sku",
  `material` STRING NULL  COMMENT "材质",
  `finish` STRING NULL  COMMENT "产品外观处理",
  `recommended_use` STRING NULL  COMMENT "推荐使用（feature6的介绍）",
  `assembled_product_length` DECIMAL(8, 2) NULL DEFAULT "0.00" COMMENT "长",
  `length_unit` STRING NULL DEFAULT "in" COMMENT "长度单位",
  `assembled_product_width` DECIMAL(8, 2) NULL DEFAULT "0.00" COMMENT "宽",
  `width_unit` STRING NULL DEFAULT "in" COMMENT "宽度单位",
  `assembled_product_height` DECIMAL(8, 2) NULL DEFAULT "0.00" COMMENT "高",
  `height_unit` STRING NULL DEFAULT "in" COMMENT "高度单位",
  `assembled_product_weight` DECIMAL(8, 2) NULL DEFAULT "0.00" COMMENT "重量（单位：lbs）",
  `weight_unit` STRING NULL DEFAULT "lb" COMMENT "重量单位",
  `warranty_text` STRING NOT NULL DEFAULT "one year" COMMENT "保质期（默认：one year）",
  `product_tax_code` STRING NOT NULL DEFAULT "2038711" COMMENT "税码（默认：2038711）",
  `site_description` STRING NOT NULL  COMMENT "产品描述HTML格式(最大4000)",
  `keywords` STRING NULL  COMMENT "根据Subcategory 决定是否展示，关键词（最大4000个字符）",
  `lag_time` tinyint(2) NULL DEFAULT "1" COMMENT "发货时间，默认值是1，最小值是0，最大值是10，只能为整数。",
  `color` STRING NULL  COMMENT "颜色",
  `color_category` STRING NULL  COMMENT "色板",
  `size` STRING NULL  COMMENT "尺寸（根据Category加载此属性）",
  `age_group` STRING NULL  COMMENT "适用年龄层",
  `gender` STRING NULL  COMMENT "适用性别",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `created_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `updated_time` DATETIME NULL  COMMENT "更新时间",
  `updated_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_delete` tinyint(1) NULL DEFAULT "0" COMMENT "是否删除（0：未删除，1：已删除）"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "范本walmart平台信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`model_platform_walmart_dsv` (
  `id` INT(11) NOT NULL  COMMENT "主键ID",
  `status` INT(2) NOT NULL DEFAULT "0" COMMENT "状态（1：待刊登，2：处理中，3：错误，4：已上线，5：已下线）",
  `error_type` INT(2) NULL DEFAULT "0" COMMENT "错误类型（1：刊登失败，2：更新失败，3：异常下线，4：手动下线）",
  `published_status` STRING NULL  COMMENT "沃尔玛返回的刊登状态",
  `lifecycle_status` STRING NULL  COMMENT "沃尔玛返回的二级状态",
  `model_id` INT(11) NOT NULL DEFAULT "0" COMMENT "范本ID",
  `item_id` STRING NULL  COMMENT "平台ID（刊登后唯一标识）",
  `wp_id` STRING NULL  COMMENT "WPID（刊登后唯一标识）",
  `url_link` STRING NULL  COMMENT "销售链接",
  `shipping_type` tinyint(1) NULL DEFAULT "2" COMMENT "发货类型（默认为：2：DSV ITEMS）",
  `sales_platform` STRING NOT NULL  COMMENT "销售平台",
  `walmart_sku` STRING NOT NULL  COMMENT "沃尔玛sku",
  `id_type` STRING NOT NULL  COMMENT "productIdentifiers Type",
  `upc` STRING NOT NULL  COMMENT "upc码",
  `shipping_weight` DECIMAL(8, 2) NOT NULL DEFAULT "0.00" COMMENT "产品重量",
  `shipping_weight_unit` STRING NOT NULL  COMMENT "产品重量单位）",
  `main_image_url` STRING NOT NULL  COMMENT "产品主图链接",
  `publication_type` tinyint(1) NOT NULL DEFAULT "0" COMMENT "刊登类型（0：单品，1：多属性)",
  `product_name` STRING NOT NULL  COMMENT "产品标题",
  `selling_price` DECIMAL(11, 2) NOT NULL DEFAULT "0.00" COMMENT "售价",
  `cost` DECIMAL(11, 2) NOT NULL DEFAULT "0.00" COMMENT "成本",
  `primary_cat_path` STRING NOT NULL  COMMENT "沃尔玛前台类目",
  `short_description` STRING NOT NULL  COMMENT "短描述",
  `long_description` STRING NOT NULL  COMMENT "长描述",
  `last_updated_time` STRING NOT NULL  COMMENT "最后更新时间",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `created_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `updated_time` DATETIME NULL  COMMENT "更新时间",
  `updated_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_delete` tinyint(1) NULL DEFAULT "0" COMMENT "是否删除（0：未删除，1：已删除）"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "范本walmart平台信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);



CREATE TABLE IF NOT EXISTS `prm_db`.`model_platform_aliexpress` (
  `id` INT(11) NOT NULL  COMMENT "主键id",
  `model_id` INT(11) NOT NULL DEFAULT "0" COMMENT "范本主表id",
  `product_code` STRING NOT NULL  COMMENT "商品编码",
  `title` STRING NULL  COMMENT "标题(英/法/德/意/西)",
  `brand_id` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "品牌id",
  `brand` STRING NOT NULL DEFAULT "none" COMMENT "品牌",
  `brand_value_id` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "品牌值id",
  `category_id` LARGEINT(12) NOT NULL DEFAULT "0" COMMENT "类目id",
  `freight_template` STRING NOT NULL  COMMENT "运费模板",
  `service_template` STRING NOT NULL  COMMENT "服务模板",
  `freight_template_id` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "运费模板id",
  `service_template_id` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "服务模板id",
  `product_id` LARGEINT(20) NOT NULL DEFAULT "0" COMMENT "商品平台id",
  `url_link` STRING NOT NULL  COMMENT "速卖通链接",
  `aliexpress_group_id` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "速卖通分组id",
  `group_name` STRING NULL  COMMENT "",
  `language` STRING NOT NULL  COMMENT "语言",
  `is_synch_line` tinyint(2) NOT NULL DEFAULT "0" COMMENT "是否同步线上(0不是,1是)",
  `undercarriage_reason` tinyint(2) NOT NULL DEFAULT "0" COMMENT "下架原因(1用户下架,2过期下架,3违规下架,4交易违规下架,5降级下架)",
  `status` INT(2) NOT NULL DEFAULT "1" COMMENT "状态(1待刊登,2刊登错误,3审核未通过,4处理中,5已上架,6已下架)",
  `goods_type` tinyint(2) NOT NULL DEFAULT "1" COMMENT "商品类型(0单品,1多属性)",
  `stock_deduction_method` tinyint(2) NOT NULL DEFAULT "0" COMMENT "库存扣减方式(0付款减库存，1下单减库存)",
  `delivery_date` INT(4)  NOT NULL DEFAULT "0" COMMENT "发货期",
  `multi_attribute_name` STRING NOT NULL  COMMENT "多属性名称",
  `multiattr_title` STRING NULL  COMMENT "多属性表头数据",
  `wholesale_minimum` INT(11) NOT NULL DEFAULT "0" COMMENT "起批量 (0：没有批发价)",
  `derate` INT(5) NOT NULL DEFAULT "0" COMMENT "减免折扣（单位：%）",
  `web_sales_attributes` STRING NULL  COMMENT "前端需要的销售属性",
  `product_attribute` STRING NULL  COMMENT "产品属性",
  `sales_attributes` STRING NULL  COMMENT "销售属性",
  `package_type` tinyint(2) NOT NULL DEFAULT "0" COMMENT "打包方式 0：false 1：true",
  `product_unit` LARGEINT(19) NOT NULL DEFAULT "0" COMMENT "最小计量单位",
  `goods_group` STRING NOT NULL  COMMENT "商品分组",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `create_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `update_time` DATETIME NULL  COMMENT "更新时间",
  `update_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_deleted` tinyint(2) NOT NULL DEFAULT "0" COMMENT "是否删除(0未,1已删除)",
  `discount_rate` DECIMAL(15, 2) NULL DEFAULT "0.00" COMMENT "折扣率"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT ""
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`multiattr_model_aliexpress` (
  `id` INT(11) NOT NULL  COMMENT "多属性主键Id",
  `model_id` INT(11) NOT NULL DEFAULT "0" COMMENT "范本ID",
  `sku` STRING NOT NULL  COMMENT "系统sku",
  `commodity_code` STRING NOT NULL  COMMENT "商品编码",
  `multi_attribute` STRING NULL  COMMENT "属性集合key-value形式保存",
  `property_value` STRING NULL  COMMENT "属性值",
  `place_dispatch` STRING NOT NULL  COMMENT "发货地",
  `stock` LARGEINT(15) NOT NULL DEFAULT "0" COMMENT "库存",
  `retail_price` DECIMAL(16, 3) NOT NULL DEFAULT "0.000" COMMENT "零售价",
  `trade_price` DECIMAL(16, 3) NOT NULL DEFAULT "0.000" COMMENT "批发价",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `updated_time` DATETIME NULL  COMMENT "更新时间",
  `created_by` STRING NOT NULL DEFAULT "system" COMMENT "创建人",
  `update_by` STRING NOT NULL DEFAULT "system" COMMENT "更新人",
  `is_delete` tinyint(2) NOT NULL DEFAULT "0" COMMENT "0:未删除，1:已删除",
  `host_sku` INT(11) NULL DEFAULT "0" COMMENT "主sku",
  `sku_without_voltage` STRING NULL  COMMENT "不带电压sku"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "aliexpress范本多属性表"
DISTRIBUTED BY HASH(`id`) BUCKETS 2
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`combine_sku` (
  `id` INT(11) NOT NULL  COMMENT "主键",
  `combine_sku_code` STRING NOT NULL DEFAULT "0" COMMENT "组合sku编码",
  `combine_spu_code` STRING NOT NULL DEFAULT "0" COMMENT "组合spu编码",
  `combine_sku_name` STRING NOT NULL  COMMENT "组合SKU名称",
  `combine_spu_name` STRING NOT NULL  COMMENT "组合SPU名称",
  `erp_combine_sku` STRING NOT NULL  COMMENT "erp组合sku",
  `group_id` INT(11) NOT NULL DEFAULT "0" COMMENT "小组Id",
  `main_product` STRING NOT NULL  COMMENT "主商品",
  `upc` STRING NOT NULL  COMMENT "upc码",
  `combine_info` STRING NOT NULL  COMMENT "组合信息",
  `weight` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "总重量(单位：kg)",
  `length` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "长度(单位：cm)",
  `width` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "宽度(单位：cm)",
  `high` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "高度(单位：cm)",
  `remark` STRING NOT NULL  COMMENT "备注",
  `is_unpack` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否拆包 0否 1是",
  `create_by` STRING NOT NULL DEFAULT """" COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_by` STRING NOT NULL DEFAULT """" COMMENT "更新人",
  `update_time` DATETIME NULL  COMMENT "更新时间",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0未删除 1已删除"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "组合sku(主表)"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`combine_sku_attachment` (
  `id` INT(11) NOT NULL  COMMENT "主键",
  `main_sku` STRING NOT NULL  COMMENT "主sku",
  `combine_sku_code` STRING NOT NULL DEFAULT "0" COMMENT "组合sku编码",
  `sku_name` STRING NOT NULL  COMMENT "SKU名称",
  `spu_chinese_name` STRING NOT NULL  COMMENT "SPU中文名称",
  `spu_en_name` STRING NOT NULL  COMMENT "SPU英文名称",
  `spu_code` STRING NOT NULL  COMMENT "spuCode",
  `group_id` INT(11) NOT NULL DEFAULT "0" COMMENT "小组Id",
  `count` INT(11) NOT NULL DEFAULT "0" COMMENT "数量",
  `weight` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "重量(单位：kg)",
  `length` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "长度(单位：cm)",
  `width` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "宽度(单位：cm)",
  `high` DECIMAL(16, 2) NOT NULL DEFAULT "0.00" COMMENT "高度(单位：cm)",
  `is_main_product` tinyint(1) NOT NULL DEFAULT "0" COMMENT "主商品 0否 1是",
  `create_by` STRING NOT NULL DEFAULT """" COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_by` STRING NOT NULL DEFAULT """" COMMENT "更新人",
  `update_time` DATETIME NULL  COMMENT "更新时间",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0未删除 1已删除"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "组合sku子商品信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm_db`.`combine_sku_history` (
  `id` INT(11) NOT NULL  COMMENT "主键",
  `combine_sku_code` STRING NOT NULL DEFAULT "0" COMMENT "组合sku编码",
  `erp_combine_sku` STRING NOT NULL  COMMENT "erp组合sku(good_sn)",
  `erp_combine_info` STRING NOT NULL  COMMENT "erp组合商品信息(goods_sncombine)",
  `is_unpack` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否拆包 0否 1是",
  `create_by` STRING NOT NULL DEFAULT """" COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_by` STRING NOT NULL DEFAULT """" COMMENT "更新人",
  `update_time` DATETIME NULL  COMMENT "更新时间",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0未删除 1已删除"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "组合sku历史迁移表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);














