2014年10月19日21:23:32
alter table `brand` add `if_use` tinyint(1) not null default 1 COMMENT '是否使用' after first_letter
2014年10月20日20:22:35
alter table `city` add `if_use` tinyint(1) not null default 1 COMMENT '是否使用' after html_name;
alter table `scene` add `if_use` tinyint(1) not null default 1 COMMENT '是否使用' after image;
alter table scene add INDEX city_id(`city_id`);
alter table `brand` drop sorting;