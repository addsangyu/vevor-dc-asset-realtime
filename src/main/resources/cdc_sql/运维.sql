prm表(李斌、成利宁提供)    rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com
prm_db.model_basic (刊登数据主表)
prm_db.model_platform_mall (独立站平台)
prm_db.model_platform_walmart (walmart SC 平台)
prm_db.model_platform_walmart_dsv(walmart DSV 平台)
prm_db.model_platform_aliexpress (速卖通平台)
prm_db.multiattr_model_aliexpress (速卖通多属性)
prm_db.combine_sku (组合sku主表)
prm_db.combine_sku_attachment (组合sku从表)
prm_db.combine_sku_history (组合sku历史数据表)

商品中心(肖子康、周魁提供)    rm-uf6089n47f72qczn835970.mysql.rds.aliyuncs.com
vevor_evolution.view_goods_sku_basic_info(商品基础表)
vevor_evolution.view_goods_sku_basic_info_main(商品主sku表)
vevor_evolution.view_goods_package_info(商品包装尺寸表)
vevor_evolution.view_goods_custom_clearance_info(商品报关属性表)
vevor_evolution.auth_goods_group(商品小组表)
vevor_evolution.view_goods_upc_info(商品upc表)
vevor_evolution.conf_spu(商品spu表)
vevor_evolution.view_goods_unpacking_info(商品拆包表)
mysql -ureadonly  -p'7RNz8iz#PfRDz#ULnqIHRTNQ' -h rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com -P 3306 -D prm_db


prm.product_listing（刊登数据主表）
prm.product_listing_attribute（多属性子SKU表）




select count(1) from prm_db.model_basic;
select count(1) from prm_db.model_platform_mall;
select count(1) from prm_db.model_platform_walmart;
select count(1) from prm_db.model_platform_walmart_dsv;
select count(1) from prm_db.model_platform_aliexpress;
select count(1) from prm_db.multiattr_model_aliexpress;
select count(1) from prm_db.combine_sku;
select count(1) from prm_db.combine_sku_attachment;
select count(1) from prm_db.combine_sku_history;


select count(1) from vevor_evolution.view_goods_sku_basic_info;
select count(1) from vevor_evolution.view_goods_sku_basic_info_main;
select count(1) from vevor_evolution.view_goods_package_info;
select count(1) from vevor_evolution.view_goods_custom_clearance_info;
select count(1) from vevor_evolution.auth_goods_group;
select count(1) from vevor_evolution.view_goods_upc_info;
select count(1) from vevor_evolution.conf_spu;
select count(1) from vevor_evolution.view_goods_unpacking_info;


select count(1) from prm.product_listing;
select count(1) from prm.product_listing_attribute;

select count(1) from
(SELECT
  l.listing_id,
  l.item_id,
  l.goods_sku,
  l.listing_name,
  GROUP_CONCAT( a.goods_sku_voltage ) 
FROM
  prm.`product_listing` AS l
  LEFT JOIN prm.`product_listing_attribute` AS a ON l.listing_id = a.listing_id 
WHERE
  l.listing_type = 3 
  AND l.`online` = 'Y' 
  AND l.damaged = 0 
GROUP BY
  l.listing_id,
  l.item_id,
  l.goods_sku,
  l.listing_name) tbl;



truncate table prm_db.model_basic;
truncate table prm_db.model_platform_mall;
truncate table prm_db.model_platform_walmart;
truncate table prm_db.model_platform_walmart_dsv;
truncate table prm_db.model_platform_aliexpress;
truncate table prm_db.multiattr_model_aliexpress;
truncate table prm_db.combine_sku;
truncate table prm_db.combine_sku_attachment;
truncate table prm_db.combine_sku_history;






--mysql
mysql -ureadonly  -p'7RNz8iz#PfRDz#ULnqIHRTNQ' -h rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com -P 3306 -D prm_db
mysql -ureadonly  -p'7RNz8iz#PfRDz#ULnqIHRTNQ' -h rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com -P 3306 -D vevor_evolution
mysql -ureadonly -p'Pz%U&ge2ak!3&0^u5IRdnBc8' -h 47.75.42.81 -P 3306 -D prm
--starrocks
mysql  -uroot  -p'1BlVI3xdViMsxSnr'  -h 47.100.48.105 -P9030


--binlog相关
show master status;
show variables like 'log_%';
show slave status\G;
--运维命令
show full processlist;
SELECT * from information_schema.`PROCESSLIST` WHERE Time > 1000 AND USER = 'readonly'  ORDER BY TIME desc;
select * from information_schema.innodb_trx;
kill id