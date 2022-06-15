CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_sku_basic_info` (
  `id` INT(11)   NOT NULL  COMMENT "自增主键（goods_id）",
  `goods_id` INT(11) NOT NULL DEFAULT "0" COMMENT "商品id",
  `temporary_name` STRING NOT NULL  COMMENT "临时名称",
  `product_name` STRING NOT NULL  COMMENT "产品名称",
  `item_id` STRING NOT NULL  COMMENT "项目唯一标识",
  `sku_code` STRING NOT NULL  COMMENT "sku编号",
  `sku_code_with_voltage` STRING NOT NULL  COMMENT "sku编号带电压",
  `sku_code_of_second_sale` STRING NOT NULL  COMMENT "二次销售新sku编码",
  `spu_id` INT(11) NULL  COMMENT "spuid",
  `category_id` INT(11) NULL  COMMENT "末级分类id",
  `first_category_id` INT(11) NOT NULL DEFAULT "0" COMMENT "一级类目id",
  `second_category_id` INT(11) NOT NULL DEFAULT "0" COMMENT "二级类目id",
  `voltage` STRING NULL  COMMENT "",
  `voltage_plug` INT(11) NULL  COMMENT "电压插头",
  `current_status_number` INT(11) NOT NULL DEFAULT "0" COMMENT "当前状态编码, 来自于view_goods_status表",
  `international_brand` STRING NOT NULL  COMMENT "国际品牌",
  `developer_group` INT(11) NULL  COMMENT "开发小组id",
  `developer` INT(11) NULL  COMMENT "开发人员id",
  `buyer_id` INT(11) NULL  COMMENT "买手id",
  `buyer` STRING NOT NULL  COMMENT "买手",
  `is_reject` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否驳回 0-否 1-是",
  `reject_before_status` STRING NOT NULL  COMMENT "驳回前状态",
  `reject_reason` STRING NOT NULL  COMMENT "驳回理由",
  `is_time_out` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否超时 0-否 1-是(目前暂时没有用到)",
  `time_out_deadline_time` DATETIME NULL  COMMENT "超时截止算时间",
  `audit_time` DATETIME NULL  COMMENT "审核时间",
  `deferred_days` INT(11) NULL  COMMENT "延期时间   单位: 天",
  `is_invalid` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否作废  0- 否,   1-是",
  `invalid_category` STRING NOT NULL  COMMENT "作废分类",
  `remark` STRING NOT NULL  COMMENT "备注信息",
  `boss_remark` STRING NOT NULL  COMMENT "总裁备注",
  `developer_remark` STRING NOT NULL  COMMENT "开发人员备注",
  `is_sold_separate` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否单独售卖，0-否，1-是",
  `is_purchase_sample` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否采样，0-否，1-是",
  `is_second_sale` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否二次销售，0-否，1-是",
  `version` DECIMAL(11, 1) NOT NULL DEFAULT "0.0" COMMENT "版本号",
  `user_id` INT(11) NULL  COMMENT "当前操作用户id",
  `user_name` STRING NOT NULL  COMMENT "当前操作用户名称",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0-否 1-删除",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `created_by` STRING NOT NULL  COMMENT "创建人",
  `updated_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `updated_by` STRING NOT NULL  COMMENT "修改人",
  `erp_develop_id` INT(11) NOT NULL DEFAULT "0" COMMENT "老数据字段 `sanvn_product_development`.`id`",
  `erp_goods_id` INT(11) NOT NULL DEFAULT "0" COMMENT "老数据字段 `ebay_goods`.`goods_id`",
  `images` STRING NOT NULL  COMMENT "图片",
  `is_informal` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否非正规产品",
  `is_show_in_information` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否在货品资料中展示，0-否，1-是",
  `is_old` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否老erp数据，0-否，1-是",
  `shelf_time` DATETIME NULL  COMMENT "预计上架时间",
  `is_arrival` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否到货，0-否，1-是",
  `is_brand` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否品牌，0-否，1-是",
  `main_sku_id` INT(11) NOT NULL DEFAULT "0" COMMENT "主sku的id",
  `main_sku_code` STRING NOT NULL  COMMENT "主sku编号",
  `sub_sku_code` STRING NOT NULL  COMMENT "子sku编号",
  `voltage_id` INT(2) NOT NULL DEFAULT "0" COMMENT "电压id",
  `plug_id` INT(2) NOT NULL DEFAULT "0" COMMENT "插头id",
  `supplier` STRING NULL  COMMENT "供应商",
  `supplier_version` STRING NOT NULL  COMMENT "供应商版本号",
  `is_tax_refund` tinyint(1) NULL  COMMENT "是否退税 0-否，1-是",
  `purchase_price_including_tax` DECIMAL(20, 6) NULL  COMMENT "采购信息中对应的含税采购价",
  `is_have_foot_support` tinyint(1) NOT NULL DEFAULT "2" COMMENT "是否有脚托，0-否，1-是, 请选择-2",
  `is_marking` tinyint(1) NOT NULL DEFAULT "2" COMMENT "是否打标，0-否，1-是, 请选择-2",
  `generate_type` tinyint(1) NOT NULL DEFAULT "0" COMMENT "子sku生成方式，0-spu管理生成，1-更换供应商，2-品质改善",
  `old_skucode` STRING NULL  COMMENT "原skucode",
  `is_normal_goods` tinyint(1) NULL  COMMENT "是否好货 1是/0否",
  `marking_reason` STRING NULL  COMMENT "不打标原因",
  `level` INT(11) NULL  COMMENT "等级",
  `purchase_sample_time` DATETIME NULL  COMMENT "采样时间：从erp系统获取",
  `estimated_arrival_time` DATETIME NULL  COMMENT "预计到港时间：从erp系统获取",
  `actual_shelves_time` DATETIME NULL  COMMENT "实际到货时间：从erp系统获取",
  `profit_audit_notes` STRING NULL  COMMENT "利润审核说明",
  `product_specificity` INT(11) NULL  COMMENT "产品类型",
  `is_forecast_complete` tinyint(1) NULL DEFAULT "0" COMMENT "是否预估完成 0 否 1 是",
  `product_research_report` STRING NULL  COMMENT "产品开发调研报告",
  `product_research_report_name` STRING NULL  COMMENT "产品开发调研报告名称"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "产品开发基本信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 15
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_sku_basic_info_main` (
  `id` INT(11)   NOT NULL  COMMENT "自增主键",
  `temporary_name` STRING NOT NULL  COMMENT "临时名称",
  `main_sku_name` STRING NOT NULL  COMMENT "产品名称",
  `main_sku_code` STRING NOT NULL  COMMENT "sku编号",
  `old_sku_code` STRING NOT NULL  COMMENT "老的不带电压sku编号",
  `spu_id` INT(11) NULL  COMMENT "spuid",
  `category_id` INT(11) NULL  COMMENT "末级分类id",
  `group_id` INT(11) NULL  COMMENT "开发小组id",
  `is_brand` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否品牌，0-否，1-是",
  `international_brand` STRING NOT NULL  COMMENT "国际品牌",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0-否 1-删除",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `created_by` STRING NOT NULL  COMMENT "创建人",
  `updated_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `updated_by` STRING NOT NULL  COMMENT "修改人",
  `is_full_binding` INT(2) NOT NULL DEFAULT "1" COMMENT "是否完全绑定关键属性   0否 1是",
  `is_old` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否老的数据，0-否，1-是",
  `is_have_foot_support` tinyint(1) NOT NULL DEFAULT "2" COMMENT "是否有脚托，0-否，1-是, 请选择-2",
  `is_marking` tinyint(1) NOT NULL DEFAULT "2" COMMENT "是否打标，0-否，1-是, 请选择-2"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "产品开发基本信息主sku表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_package_info` (
  `id` INT(11) NOT NULL  COMMENT "自增Id",
  `goods_id` INT(11) NOT NULL  COMMENT "商品Id",
  `package_length` DECIMAL(20, 6) NOT NULL DEFAULT "0.000000" COMMENT "包装长度",
  `package_wide` DECIMAL(20, 6) NOT NULL DEFAULT "0.000000" COMMENT "包装宽度",
  `package_high` DECIMAL(20, 6) NOT NULL DEFAULT "0.000000" COMMENT "包装高度",
  `package_weight` DECIMAL(20, 6) NOT NULL DEFAULT "0.000000" COMMENT "包装重量",
  `bubble_weight_lb` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "泡重镑",
  `bubble_weight_kg` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "泡重kg",
  `item_length` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "长",
  `item_wide` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "宽",
  `item_high` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "高",
  `full_weight` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "实际重量",
  `package_volume` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "产品包装体积",
  `perimeter_cm` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "周长cm",
  `perimeter_inch` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "周长英尺",
  `charged_weight` DECIMAL(20, 6) NULL DEFAULT "0.000000" COMMENT "计费重",
  `package_texture` INT(2) NULL DEFAULT "0" COMMENT "包装材质 1-纸箱 2-木箱 3-不规则包装",
  `is_cylinder` tinyint(1) NULL DEFAULT "0" COMMENT "是否异形或圆柱体包装 0-否 1-是 ",
  `is_package_merger` tinyint(1) NULL DEFAULT "0" COMMENT "是否合并打包 0-否  1-是",
  `is_split_package` tinyint(1) NULL DEFAULT "0" COMMENT "是否分包操作 0-否 1-是",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `updated_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `created_by` STRING NOT NULL  COMMENT "创建人",
  `updated_by` STRING NOT NULL  COMMENT "修改人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0-否 1-是",
  `separate_warehouse` INT(11) NULL  COMMENT "fba分仓类型：货品资料尺寸表迁移过来的"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "包装信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_custom_clearance_info` (
  `id` INT(11) NOT NULL  COMMENT "自增Id",
  `goods_id` INT(11) NOT NULL  COMMENT "商品Id",
  `goods_type` STRING NOT NULL  COMMENT "产品型号",
  `work_protype` STRING NOT NULL  COMMENT "工作原型",
  `product_use` STRING NOT NULL  COMMENT "工作用途",
  `product_texture` STRING NOT NULL  COMMENT "产品材质",
  `product_description` STRING NOT NULL  COMMENT "产品描述",
  `product_color` STRING NOT NULL  COMMENT "产品颜色",
  `product_brand` STRING NOT NULL  COMMENT "产品品牌",
  `product_invoice_name` STRING NOT NULL  COMMENT "开票品名",
  `computing_unit` INT(11) NULL  COMMENT "计算单位",
  `created_time` DATETIME NULL  COMMENT "创建时间",
  `updated_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `created_by` STRING NOT NULL  COMMENT "创建人",
  `updated_by` STRING NOT NULL  COMMENT "修改人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除 0-否 1-是"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "报关属性表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`auth_goods_group` (
  `id` INT(11)  NOT NULL  COMMENT "主键id",
  `group_name` STRING NOT NULL  COMMENT "小组名称",
  `group_number` STRING NOT NULL  COMMENT "小组编号",
  `status` tinyint(1) NOT NULL DEFAULT "1" COMMENT "状态：0禁止，1启用",
  `create_by` STRING NOT NULL  COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_by` STRING NOT NULL  COMMENT "修改人",
  `update_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否被删除，0：正常；1：删除",
  `erp_group_id` INT(11) NOT NULL DEFAULT "0" COMMENT ""
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "小组表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_upc_info` (
  `id` INT(11) NOT NULL  COMMENT "主键id",
  `upc_code` STRING NOT NULL  COMMENT "upc编码",
  `sku_voltage` STRING NULL  COMMENT "带电压sku",
  `is_able` tinyint(1) NULL DEFAULT "1" COMMENT "0-不启用，1-启用",
  `create_by` STRING NULL  COMMENT "创建人",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_by` STRING NULL  COMMENT "修改人",
  `update_time` DATETIME NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT ""
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`conf_spu` (
  `id` INT(11) NOT NULL  COMMENT "主键，序号",
  `pic` STRING NULL  COMMENT "SPU图片，七牛云存储key",
  `spu_code` STRING NOT NULL  COMMENT "SPU编码",
  `name` STRING NOT NULL  COMMENT "SPU名称",
  `english_name` STRING NULL  COMMENT "",
  `p_category_id` INT(11) NULL DEFAULT "0" COMMENT "类目ID",
  `develop_group_id` INT(11) NULL  COMMENT "erp产品开发页面-技术小组",
  `remark` STRING NULL  COMMENT "备注",
  `is_active` tinyint(1) NOT NULL DEFAULT "1" COMMENT "是否禁用，0-禁用，1-启用",
  `create_by` STRING NULL  COMMENT "创建人ID",
  `update_by` STRING NULL  COMMENT "修改人ID",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_time` DATETIME NULL DEFAULT "1000-01-01 00:00:00" COMMENT "更新时间",
  `product_development_leader_id` INT(11) NOT NULL DEFAULT "0" COMMENT "产品开发负责id",
  `product_development_leader` STRING NOT NULL  COMMENT "产品开发负责人名称",
  `product_management_leader_id` INT(11) NOT NULL DEFAULT "0" COMMENT "产品管理负责人id",
  `product_management_leader` STRING NOT NULL  COMMENT "产品管理负责人名称",
  `parent_id` INT(11) NULL DEFAULT "0" COMMENT "父类目ID",
  `spu_num` STRING NOT NULL  COMMENT "新的spu编码",
  `french_name` STRING NULL  COMMENT "SPU法语名称",
  `german_name` STRING NULL  COMMENT "SPU德语名称",
  `italian_name` STRING NULL  COMMENT "SPU意语名称",
  `spanish_name` STRING NULL  COMMENT "SPU西语名称",
  `level` INT(11) NULL  COMMENT "等级",
  `application_scenarios_id` STRING NULL  COMMENT "应用场景，多个以英文逗号隔开，关联数据字典表的id"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "商品配置管理-SPU信息表"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);

CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_unpacking_info` (
  `id` INT(11) NOT NULL DEFAULT "0" COMMENT "拆包信息-父节点goodsid",
  `goods_id` INT(11) NOT NULL  COMMENT "组合商品id",
  `goods_name` STRING NOT NULL  COMMENT "商品临时名称",
  `goods_code` STRING NOT NULL  COMMENT "子商品sku编号",
  `goods_level` INT(2) NOT NULL DEFAULT "0" COMMENT "默认0 主sku 1 次sku 2",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `create_by` STRING NULL  COMMENT "创建人",
  `update_by` STRING NULL  COMMENT "修改人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除0否1是"
) ENGINE=olap
DUPLICATE KEY(`id`, `goods_id`, `goods_name`)
COMMENT "拆包信息"
DISTRIBUTED BY HASH(`id`, `goods_id`, `goods_name`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);
--源mysql表非主键表
CREATE TABLE IF NOT EXISTS `vevor_evolution`.`view_goods_unpacking_info` (
  `id` INT(11) NOT NULL DEFAULT "0" COMMENT "拆包信息-父节点goodsid",
  `goods_id` INT(11) NOT NULL  COMMENT "组合商品id",
  `goods_name` STRING NOT NULL  COMMENT "商品临时名称",
  `goods_code` STRING NOT NULL  COMMENT "子商品sku编号",
  `goods_level` INT(2) NOT NULL DEFAULT "0" COMMENT "默认0 主sku 1 次sku 2",
  `create_time` DATETIME NULL  COMMENT "创建时间",
  `update_time` DATETIME NOT NULL DEFAULT "1000-01-01 00:00:00" COMMENT "修改时间",
  `create_by` STRING NULL  COMMENT "创建人",
  `update_by` STRING NULL  COMMENT "修改人",
  `is_delete` tinyint(1) NOT NULL DEFAULT "0" COMMENT "是否删除0否1是"
) ENGINE=olap
PRIMARY KEY(`id`, `goods_id`, `goods_name`,`goods_code`)
COMMENT "拆包信息"
DISTRIBUTED BY HASH(`id`, `goods_id`, `goods_name`,`goods_code`) BUCKETS 1
PROPERTIES (
  "replication_num" = "3"
);





























CREATE TABLE IF NOT EXISTS `prm`.`product_listing` (
  `listing_id` INT(11) NOT NULL  COMMENT "范本id，主键，自动增长",
  `listing_name` STRING NOT NULL  COMMENT "范本名称",
  `discription_id` INT(10)  NOT NULL  COMMENT "描述id",
  `template_id` INT(10)  NOT NULL DEFAULT "1" COMMENT "关联模版id",
  `ebay_account_id` INT(11) NOT NULL  COMMENT "ebay账号",
  `site_id` INT(10)  NOT NULL  COMMENT "站点id",
  `listing_type` tinyint(4) NOT NULL DEFAULT "1" COMMENT "刊登类型(0未编辑,1固价,2拍卖,3,多属性)",
  `goods_sku` STRING NOT NULL  COMMENT "产品SKU",
  `listing_title1` STRING NOT NULL  COMMENT "范本名字",
  `listing_title2` STRING NOT NULL  COMMENT "范本名字",
  `templets_id` tinyint(4) NOT NULL DEFAULT "0" COMMENT "",
  `listing_category1` STRING NOT NULL  COMMENT "范本分类1",
  `listing_category2` STRING NOT NULL  COMMENT "范本分类2",
  `shop_category1` STRING NOT NULL  COMMENT "商店分类1",
  `shop_category2` STRING NOT NULL  COMMENT "商店分类2",
  `mark_down_id` INT(11) NOT NULL  COMMENT "折扣id",
  `listing_days` STRING NOT NULL DEFAULT "0" COMMENT "",
  `non_line` tinyint(1) NOT NULL  COMMENT "启用无货在线",
  `listing_price` DECIMAL(10, 2) NOT NULL  COMMENT "产品价格",
  `hode_price` DECIMAL(10, 2) NOT NULL  COMMENT "保留价",
  `fix_price` DECIMAL(10, 2) NOT NULL  COMMENT "一口价",
  `currency` STRING NOT NULL  COMMENT "货币单位id",
  `listing_qty` INT(11) NOT NULL  COMMENT "物品形式的数量or批次",
  `two_transaction` STRING NOT NULL  COMMENT "二次交易机会",
  `two_transaction_price` DECIMAL(10, 2) NOT NULL  COMMENT "",
  `two_transaction_days` STRING NOT NULL  COMMENT "",
  `two_transaction_information` STRING NOT NULL  COMMENT "",
  `accept_bargaining` STRING NOT NULL  COMMENT "接受买家还价",
  `accept_max` STRING NOT NULL  COMMENT "自动接受大于数",
  `accept_max_value` DECIMAL(10, 2) NOT NULL  COMMENT "",
  `refuse_min` STRING NOT NULL  COMMENT "拒绝少于",
  `refuse_min_value` DECIMAL(10, 2) NOT NULL  COMMENT "",
  `payment_id` INT(11) NOT NULL  COMMENT "付款模块id对应base_payment中的payment_id",
  `return_id` INT(11) NOT NULL  COMMENT "退货政策id对应base_return中的return_id",
  `location_id` INT(11) NOT NULL  COMMENT "物品所在地id对应base_location中的location_id",
  `shipping_id` INT(11) NOT NULL  COMMENT "运送选项id，对应base_shipping中的shipping_id",
  `gallery` tinyint(1) NOT NULL  COMMENT "广告特色小图",
  `gallery_plus` tinyint(1) NOT NULL  COMMENT "橱窗展示",
  `international_site_visibility` tinyint(1) NOT NULL  COMMENT "国际站点曝光",
  `blod` tinyint(1) NOT NULL  COMMENT "",
  `listing_startime` INT(10)  NOT NULL  COMMENT "上架时间",
  `create_time` INT(10)  NOT NULL  COMMENT "创建时间",
  `cover_picture` STRING NOT NULL  COMMENT "封面图,逗号隔开",
  `online` STRING NOT NULL DEFAULT "N" COMMENT "是否在线",
  `handling_time` STRING NULL  COMMENT "",
  `item_id` STRING NULL  COMMENT "item id",
  `sold_qty` INT(10)  NULL DEFAULT "0" COMMENT "已售出",
  `item_specifics` STRING NOT NULL  COMMENT "",
  `custom_specifics` STRING NOT NULL  COMMENT "",
  `compatibilitiy_specifics` STRING NULL  COMMENT "",
  `ebay_upic` STRING NOT NULL  COMMENT "",
  `old_listing` tinyint(2)  NOT NULL DEFAULT "0" COMMENT "是否为老产品，0为新产品，1为老产品",
  `ebay_sku` STRING NOT NULL  COMMENT "ebay sku 标题",
  `end_time` INT(10)  NOT NULL DEFAULT "0" COMMENT "",
  `new_tem_id` INT(10) NOT NULL DEFAULT "0" COMMENT "是否为新模板",
  `cxy` INT(10) NULL DEFAULT "0" COMMENT "冲信誉产品0为不是1为10",
  `links` STRING NULL  COMMENT "拍卖引导链接",
  `locktitle` INT(1)  NULL DEFAULT "0" COMMENT "是否锁定标题，0为不锁定。1为锁定",
  `internal_fare` DECIMAL(10, 2) NULL DEFAULT "0.00" COMMENT "每一条listing设置的国内运费",
  `goods_more_name` STRING NULL  COMMENT "中心词",
  `goods_more_title_key` STRING NULL  COMMENT "尾词",
  `goods_more_title_prefix` STRING NULL  COMMENT "前缀词",
  `alterstock` tinyint(1) NULL DEFAULT "1" COMMENT "0,不更新。1，更新",
  `listing_first_startime` INT(10)  NULL DEFAULT "0" COMMENT "第一次上架时间",
  `goods_sku_voltage` STRING NULL  COMMENT "带电压sku",
  `update_time` INT(10) NULL DEFAULT "0" COMMENT "更新时间",
  `update_log` STRING NULL  COMMENT "更新日志",
  `upc` STRING NULL  COMMENT "upc编码",
  `ean` STRING NULL  COMMENT "ean编码",
  `is_discount` tinyint(2) NULL DEFAULT "0" COMMENT "是否折扣",
  `use_other_compatible` tinyint(2) NULL DEFAULT "0" COMMENT "是否使用别人的 0 使用自定义的 1使用别人的",
  `other_compatible_list` STRING NULL  COMMENT "其他用户兼容属性列表",
  `other_compatible_list_md5` STRING NULL  COMMENT "其他兼容属性的md5值",
  `brand_val` STRING NULL  COMMENT "品牌值",
  `mpn_val` STRING NULL  COMMENT "mpn的值",
  `is_up_price` tinyint(2) NULL DEFAULT "0" COMMENT "是否提价",
  `before_up_price` DECIMAL(10, 2) NULL DEFAULT "0.00" COMMENT "提价之前价格",
  `ratetable_start` tinyint(1) NULL DEFAULT "0" COMMENT "三日达是否启用，0不启用，1启用",
  `ratetable_name` STRING NULL  COMMENT "三日达名称",
  `alterprice` tinyint(1) NULL DEFAULT "1" COMMENT "0,不更新。1，更新",
  `power_sku` tinyint(1) NOT NULL DEFAULT "0" COMMENT "策略部可操作sku,1-可操作,0-不可操作",
  `listing_epid` STRING NULL  COMMENT "epid",
  `cata_group` STRING NOT NULL  COMMENT "类目分组",
  `ship_excl_id` INT(10)  NOT NULL DEFAULT "0" COMMENT "",
  `itm_location` STRING NOT NULL  COMMENT "物品所在地",
  `damaged` tinyint(1)  NOT NULL DEFAULT "0" COMMENT "好、坏货【1：好货】【2：坏货】【0：非二次销售listing】",
  `upc_type` tinyint(1)  NOT NULL DEFAULT "0" COMMENT "0为第三方UPC 1为GS1-UPC"
) ENGINE=olap
PRIMARY KEY(`listing_id`)
COMMENT "刊登数据主表"
DISTRIBUTED BY HASH(`listing_id`) BUCKETS 102
PROPERTIES (
  "replication_num" = "3"
);


CREATE TABLE IF NOT EXISTS `prm`.`product_listing_attribute` (
  `id` INT(11) NOT NULL  COMMENT "自增id",
  `listing_id` INT(11) NOT NULL  COMMENT "listing_id",
  `attribute_sku` STRING NOT NULL  COMMENT "多属性sku",
  `listing_price` DECIMAL(10, 2) NOT NULL  COMMENT "多属性价格",
  `listing_qty` INT(11) NOT NULL  COMMENT "多属性数量",
  `attribute` STRING NOT NULL  COMMENT "多属性值",
  `attribute_picture` STRING NOT NULL  COMMENT "多属性规格图片地址",
  `desc` INT(10) NOT NULL  COMMENT "排序",
  `source_sku` STRING NULL  COMMENT "多属性原始sku",
  `goods_sku_voltage` STRING NULL  COMMENT "带电压sku",
  `site_id` INT(4) NULL DEFAULT "-1" COMMENT "网站ID",
  `httpspic` tinyint(1) NULL DEFAULT "0" COMMENT "http转https",
  `sub_day7` INT(10)  NOT NULL DEFAULT "0" COMMENT "7天销量",
  `sub_day30` INT(10)  NOT NULL DEFAULT "0" COMMENT "30天销量",
  `sub_sum` INT(10)  NOT NULL DEFAULT "0" COMMENT "总销量",
  `sub_status` tinyint(1)  NOT NULL DEFAULT "0" COMMENT "子sku上线状态1为已上线，0为未上线",
  `attr_main_sku_code` STRING NOT NULL  COMMENT "主SKU编码"
) ENGINE=olap
PRIMARY KEY(`id`)
COMMENT "多属性子SKU表"
DISTRIBUTED BY HASH(`id`) BUCKETS 21
PROPERTIES (
  "replication_num" = "3"
);