CREATE TABLE `cms_seckillactivity` (
  `seckillactivity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '秒杀活动id',
  `promotion_id` bigint(20) DEFAULT NULL COMMENT '促销编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '秒杀商品主skuId',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '秒杀商品skuId',
  `start_date` datetime DEFAULT NULL COMMENT '秒杀活动开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '秒杀活动结束时间',
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `member_level` varchar(20) DEFAULT NULL COMMENT '单品促销会员级别',
  `fprice` double(11,2) DEFAULT '0.00' COMMENT '促销返现',
  `market_price` double(11,2) DEFAULT '0.00' COMMENT '市场价格',
  `jd_price` double(11,2) DEFAULT '0.00' COMMENT '京东价格',
  `promo_price` double(11,2) DEFAULT '0.00' COMMENT '促销价 秒杀价',
  `image_url` varchar(150) DEFAULT NULL COMMENT '商品图片',
  `seckill_num` int(6) DEFAULT NULL COMMENT '秒杀数量',
  `status` char(1) DEFAULT '1' COMMENT '状态：1 未审核 2 秒杀 3 已失效 4摇一摇 5 专享 6专场',
  `modifer` varchar(50) DEFAULT NULL COMMENT '修改人erp账号',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `token_id` int(11) DEFAULT NULL COMMENT '令牌id',
  `pre_status` char(1) DEFAULT '' COMMENT '本商品原状态是否是秒杀，用来判断是否在秒杀场次下显示失效的商品。null:不是 1：是',
  `invalid_display` char(1) DEFAULT NULL COMMENT '秒杀商品失效后是否在场次最下面显示 null:显示 1：不显示',
  `third_kind_id` varchar(200) DEFAULT NULL COMMENT '商品三级类目id',
  `sku_select` tinyint(1) DEFAULT NULL COMMENT '1:被选中显示的sku  null：没有被选中',
  `spu_order` bigint(20) DEFAULT NULL COMMENT '设置的spu显示顺序，值为时间戳',
  `yn_index` tinyint(4) DEFAULT '0' COMMENT '是否显示在首页 1：是 0：否',
  `special_kill` int(2) DEFAULT NULL,
  `shop_id` char(100) DEFAULT NULL,
  `mpage_address` char(200) DEFAULT NULL,
  `operate_word` char(200) DEFAULT NULL,
  `corner_icon_type` int(11) DEFAULT NULL COMMENT '角标类型 0：无角标，1：明星单品',
  `ever_seckill` tinyint(4) DEFAULT '0' COMMENT '是否曾上线秒杀商品',
  `ipad_shop_id` char(100) DEFAULT NULL COMMENT 'ipad 秒杀店铺id',
  `ipad_mpage_address` char(200) DEFAULT NULL COMMENT 'ipad 秒杀活动页地址',
  `tag_color` int(4) DEFAULT NULL COMMENT '秒杀标签颜色',
  `tag_home` varchar(100) DEFAULT NULL COMMENT '秒杀首页标签',
  `tag_inner` varchar(100) DEFAULT NULL COMMENT '超级秒杀内页标签',
  `seckill_type` int(4) DEFAULT NULL COMMENT '秒杀类型：0自营，1店铺',
  `seckill_shop_id` char(100) DEFAULT NULL COMMENT '超级秒杀店铺ID',
  `jump_type` int(4) DEFAULT NULL COMMENT '跳转类型：1店铺，0活动页',
  `jump_url` varchar(255) DEFAULT NULL COMMENT '活动页地址',
  `shop_name` varchar(100) DEFAULT NULL COMMENT '店铺名',
  `without_filter` tinyint(4) DEFAULT NULL COMMENT '标记特殊商品，不参与价格过滤，1标记特殊，0普通',
  `special_without_filter` tinyint(4) DEFAULT NULL COMMENT '标记特殊商品，不参与价格过滤，1标记特殊，0普通',
  PRIMARY KEY (`seckillactivity_id`),
  KEY `index_name` (`sku_id`),
  KEY `member_level_index` (`member_level`)
) ENGINE=InnoDB AUTO_INCREMENT=8239 DEFAULT CHARSET=utf8;