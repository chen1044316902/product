create table product_category(
	category_id int not null auto_increment,
	category_name varchar(54) not null comment '类目名字',
	category_type int not null comment '类目编号',
	create_time timestamp  not null default current_timestamp comment '创建时间',
	update_time timestamp  not null default current_timestamp on update current_timestamp comment '更新时间',
	primary key(category_id),
	UNIQUE KEY uqe_category_type (category_type)

);

insert into product_category(category_id,category_name,category_type,create_time,update_time) values(1,'热榜','11','2019-07-01 12:12:12','2019-07-01 12:12:12');
insert into product_category(category_id,category_name,category_type,create_time,update_time) values(2,'好吃的','22','2019-07-01 12:12:12','2019-07-01 12:12:12');

select * from product_category;


create table product_info(
	product_id varchar(34) not null,
	product_name varchar(64) not null comment '商品名称',
	product_price decimal(8,2) not null comment '商品价格',
	product_stock int not null comment '库存',
	product_desciption varchar(64) comment '描述',
	product_icon varchar(521) comment '小图',
	product_status tinyint(3) default '0' comment '商品状态,0:上架 1:下架',
	product_type int not null comment '类目编号',
	create_time timestamp  not null default current_timestamp comment '创建时间',
	update_time timestamp  not null default current_timestamp on update current_timestamp comment '更新时间',
	primary key(product_id)

);

insert into product_info (product_id,product_name,product_price,product_stock,product_desciption,product_icon,product_status,product_type) values('1231231231231231','皮蛋瘦肉粥',0.01,39,'好吃的东西','//1231231231231231',0,11);
insert into product_info (product_id,product_name,product_price,product_stock,product_desciption,product_icon,product_status,product_type) values('1231231231231232','鸡蛋',0.12,39,'好吃的东西','//1231231231231231',0,11);
insert into product_info (product_id,product_name,product_price,product_stock,product_desciption,product_icon,product_status,product_type) values('1231231231231233','蜜汁鸡翅',13.11,30,'好吃的东西','//1231231231231231',0,11);




select * from product_info;
