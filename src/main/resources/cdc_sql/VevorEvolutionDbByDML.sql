INSERT INTO view_goods_sku_basic_info_sink
SELECT
    id                                
    ,goods_id                          
    ,temporary_name                    
    ,product_name                      
    ,item_id                           
    ,sku_code                          
    ,sku_code_with_voltage             
    ,sku_code_of_second_sale           
    ,spu_id                            
    ,category_id                       
    ,first_category_id                 
    ,second_category_id                
    ,voltage                           
    ,voltage_plug                      
    ,current_status_number             
    ,international_brand               
    ,developer_group                   
    ,developer                         
    ,buyer_id                          
    ,buyer                             
    ,is_reject                         
    ,reject_before_status              
    ,reject_reason                     
    ,is_time_out                       
    ,time_out_deadline_time            
    ,audit_time                        
    ,deferred_days                     
    ,is_invalid                        
    ,invalid_category                  
    ,remark                            
    ,boss_remark                       
    ,developer_remark                  
    ,is_sold_separate                  
    ,is_purchase_sample                
    ,is_second_sale                    
    ,version                           
    ,user_id                           
    ,user_name                         
    ,is_delete                         
    ,created_time                      
    ,created_by                        
    ,updated_time                      
    ,updated_by                        
    ,erp_develop_id                    
    ,erp_goods_id                      
    ,images                            
    ,is_informal                       
    ,is_show_in_information            
    ,is_old                            
    ,shelf_time                        
    ,is_arrival                        
    ,is_brand                          
    ,main_sku_id                       
    ,main_sku_code                     
    ,sub_sku_code                      
    ,voltage_id                        
    ,plug_id                           
    ,supplier                          
    ,supplier_version                  
    ,is_tax_refund                     
    ,purchase_price_including_tax      
    ,is_have_foot_support              
    ,is_marking                        
    ,generate_type                     
    ,old_skucode                       
    ,is_normal_goods                   
    ,marking_reason                    
    ,`level`                            
    ,purchase_sample_time              
    ,estimated_arrival_time            
    ,actual_shelves_time               
    ,profit_audit_notes                
    ,product_specificity               
    ,is_forecast_complete              
FROM view_goods_sku_basic_info_src



INSERT INTO view_goods_sku_basic_info_main_sink
SELECT
    id                      
    ,main_sku_code           
    ,temporary_name          
    ,main_sku_name           
    ,old_sku_code            
    ,spu_id                  
    ,category_id             
    ,group_id                
    ,is_brand                
    ,international_brand     
    ,is_delete               
    ,created_time            
    ,created_by              
    ,updated_time            
    ,updated_by              
    ,is_full_binding         
    ,is_old                  
    ,is_have_foot_support    
    ,is_marking              
FROM view_goods_sku_basic_info_main_src



INSERT INTO view_goods_package_info_sink
SELECT
    id                 
    ,goods_id           
    ,package_length     
    ,package_wide       
    ,package_high       
    ,package_weight     
    ,bubble_weight_lb   
    ,bubble_weight_kg   
    ,item_length        
    ,item_wide          
    ,item_high          
    ,full_weight        
    ,package_volume     
    ,perimeter_cm       
    ,perimeter_inch     
    ,charged_weight     
    ,package_texture    
    ,is_cylinder        
    ,is_package_merger  
    ,is_split_package   
    ,created_time       
    ,updated_time       
    ,created_by         
    ,updated_by         
    ,is_delete          
    ,separate_warehouse 
FROM view_goods_package_info_src



INSERT INTO view_goods_custom_clearance_info_sink
SELECT
    id                   
    ,goods_id             
    ,goods_type           
    ,work_protype         
    ,product_use          
    ,product_texture      
    ,product_description  
    ,product_color        
    ,product_brand        
    ,product_invoice_name 
    ,computing_unit       
    ,created_time         
    ,updated_time         
    ,created_by           
    ,updated_by           
    ,is_delete            
FROM view_goods_custom_clearance_info_src



INSERT INTO auth_goods_group_sink
SELECT
    id           
    ,group_name   
    ,group_number 
    ,status       
    ,create_by    
    ,create_time  
    ,update_by    
    ,update_time  
    ,is_delete    
    ,erp_group_id 
FROM auth_goods_group_src



INSERT INTO view_goods_upc_info_sink
SELECT
    id          
    ,upc_code    
    ,sku_voltage 
    ,is_able     
    ,create_by   
    ,create_time 
    ,update_by   
    ,update_time 
FROM view_goods_upc_info_src



INSERT INTO conf_spu_sink
SELECT
    id                           
    ,pic                          
    ,spu_code                     
    ,name                         
    ,english_name                 
    ,p_category_id                
    ,develop_group_id             
    ,remark                       
    ,is_active                    
    ,create_by                    
    ,update_by                    
    ,create_time                  
    ,update_time                  
    ,product_development_leader_id
    ,product_development_leader   
    ,product_management_leader_id 
    ,product_management_leader    
    ,parent_id                    
    ,spu_num                      
    ,french_name                  
    ,german_name                  
    ,italian_name                 
    ,spanish_name                 
    ,`level`                        
    ,application_scenarios_id     
FROM conf_spu_src



INSERT INTO view_goods_unpacking_info_sink
SELECT
    id         
    ,goods_id   
    ,goods_name 
    ,goods_code 
    ,goods_level
    ,create_time
    ,update_time
    ,create_by  
    ,update_by  
    ,is_delete  
FROM view_goods_unpacking_info_src



//prm
INSERT INTO product_listing_sink
SELECT
    listing_id                            
    ,listing_name                          
    ,discription_id                        
    ,template_id                           
    ,ebay_account_id                       
    ,site_id                               
    ,listing_type                          
    ,goods_sku                             
    ,listing_title1                        
    ,listing_title2                        
    ,templets_id                           
    ,listing_category1                     
    ,listing_category2                     
    ,shop_category1                        
    ,shop_category2                        
    ,mark_down_id                          
    ,listing_days                          
    ,non_line                              
    ,listing_price                         
    ,hode_price                            
    ,fix_price                             
    ,currency                              
    ,listing_qty                           
    ,two_transaction                       
    ,two_transaction_price                 
    ,two_transaction_days                  
    ,two_transaction_information           
    ,accept_bargaining                     
    ,accept_max                            
    ,accept_max_value                      
    ,refuse_min                            
    ,refuse_min_value                      
    ,payment_id                            
    ,return_id                             
    ,location_id                           
    ,shipping_id                           
    ,gallery                               
    ,gallery_plus                          
    ,international_site_visibility         
    ,blod                                  
    ,listing_startime                      
    ,create_time                           
    ,cover_picture                         
    ,online                                
    ,handling_time                         
    ,item_id                               
    ,sold_qty                              
    ,item_specifics                        
    ,custom_specifics                      
    ,compatibilitiy_specifics              
    ,ebay_upic                             
    ,old_listing                           
    ,ebay_sku                              
    ,end_time                              
    ,new_tem_id                            
    ,cxy                                   
    ,links                                 
    ,locktitle                             
    ,internal_fare                         
    ,goods_more_name                       
    ,goods_more_title_key                  
    ,goods_more_title_prefix               
    ,alterstock                            
    ,listing_first_startime                
    ,goods_sku_voltage                     
    ,update_time                           
    ,update_log                            
    ,upc                                   
    ,ean                                   
    ,is_discount                           
    ,use_other_compatible                  
    ,other_compatible_list                 
    ,other_compatible_list_md5             
    ,brand_val                             
    ,mpn_val                               
    ,is_up_price                           
    ,before_up_price                       
    ,ratetable_start                       
    ,ratetable_name                        
    ,alterprice                            
    ,power_sku                             
    ,listing_epid                          
    ,cata_group                            
    ,ship_excl_id                          
    ,itm_location                          
    ,damaged                               
    ,upc_type
FROM
  product_listing_src
WHERE
  listing_type = 3 
  AND `online` = 'Y' 
  AND damaged = 0 

  
  
  
  
INSERT INTO product_listing_attribute_sink
SELECT
    a.id                 
    ,a.listing_id         
    ,a.attribute_sku      
    ,a.listing_price      
    ,a.listing_qty        
    ,a.attribute          
    ,a.attribute_picture  
    ,a.desc               
    ,a.source_sku         
    ,a.goods_sku_voltage  
    ,a.site_id            
    ,a.httpspic           
    ,a.sub_day7           
    ,a.sub_day30          
    ,a.sub_sum            
    ,a.sub_status         
    ,a.attr_main_sku_code 
FROM
  `product_listing_src` AS l
  LEFT JOIN `product_listing_attribute_src` AS a 
ON l.listing_id = a.listing_id 
WHERE
  l.listing_type = 3 
  AND l.`online` = 'Y' 
  AND l.damaged = 0 

