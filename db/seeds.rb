# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Menu.create({id: '1' ,parent_id: '0',caption: '權限管理',     action: '#' ,                       icon: 'fa-user-secret',  seq: '99' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '2' ,parent_id: '1',caption: '群組權限維護',  action: 'admin_groups_path' ,       icon: 'fa-users',        seq: '2' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '3' ,parent_id: '1',caption: '管理者維護',   action: 'admin_supervisors_path',    icon: 'fa-user',         seq: '1' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '4' ,parent_id: '1',caption: '選單維護',     action: 'admin_menus_path' ,         icon: 'fa-th-list',     seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '5' ,parent_id: '0',caption: '商品管理',     action: '#' ,                        icon: 'fa-envira',      seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '6' ,parent_id: '5',caption: '類別維護',     action: 'admin_categories_path' ,   icon: 'fa-link',         seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '7' ,parent_id: '5',caption: '商品維護',     action: 'admin_products_path' ,      icon: 'fa-link',        seq: '1' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '8' ,parent_id: '0',caption: '訂單管理',     action: '#' ,                        icon: 'fa-truck',       seq: '1' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '9' ,parent_id: '0',caption: 'APP功能',     action: '#' ,                        icon: 'fa-mobile',      seq: '2' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '10' ,parent_id: '9',caption: '訊息推播',    action: '#' ,                        icon: 'fa-link',        seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '11' ,parent_id: '0',caption: '分析報表',    action: '#' ,                        icon: 'fa-tachometer',  seq: '3' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '12' ,parent_id: '0',caption: '基本資料管理', action: '#' ,                       icon: 'fa-link',        seq: '1' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '13' ,parent_id: '12',caption: '客製化版面',  action: 'admin_home_grids_path' ,   icon: 'fa-th',          seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '14' ,parent_id: '12',caption: '門市簡介',   action: 'admin_store_infos_path' ,  icon: 'fa-link',         seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '15' ,parent_id: '0',caption: '促銷活動',    action: '#' ,                       icon: 'fa fa-connectdevelop',seq: '1' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});
Menu.create({id: '16' ,parent_id: '12',caption: '首頁Banner', action: '#' ,                       icon: 'fa-link',         seq: '0' ,created_at: '2016-03-10 12:00:00',updated_at: '2016-03-10 12:00:00'});

Group.create({id:1,  caption:'平台管理者',     created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});
Group.create({id:2,  caption:'公司管理者',     created_at:'2016-03-10 12:00:00', updated_at:'2016-03-10 12:00:00'});


connection = ActiveRecord::Base.connection()
connection.execute("insert into groups_supervisors values ('1' ,'1')");
connection.execute("insert into groups_supervisors values ('1' ,'2')");

connection.execute("INSERT INTO supervisors VALUES ('1', '楊玄銘', 'yang5664@gmail.com', '$2a$10$npYvaH2kMYXH4ECg2eNAYOSNE5BGeDIvMRVp/P5vBHHpdiUU56w.6', null, null, '2016-06-30 01:57:17.511452', '89', '2016-07-03 07:58:45.699512', '2016-07-01 11:25:51.410942', '127.0.0.1', '::1', '2016-06-06 16:04:08.71369', '2016-07-03 09:03:03.738774') ");
connection.execute("INSERT INTO supervisors VALUES ('2', 'Ray', 'phileiny@gmail.com', '$2a$10$HuIK3TtR9Ul5ncWzmUSj9OKT/Y/uhDH56TXtOpIvGrvKm4zTxFCbW', null, null, null, '1', '2016-06-14 14:18:20.855588', '2016-06-14 14:18:20.855588', '::1', '::1', '2016-06-13 06:26:25.244143', '2016-06-14 14:18:20.85644')");

connection.execute("insert into groups_menus values ('1', '1') ");
connection.execute("insert into groups_menus values ('1', '2') ");
connection.execute("insert into groups_menus values ('1', '3') ");
connection.execute("insert into groups_menus values ('1', '4') ");
connection.execute("insert into groups_menus values ('1', '5') ");
connection.execute("insert into groups_menus values ('1', '6') ");
connection.execute("insert into groups_menus values ('1', '7') ");
connection.execute("insert into groups_menus values ('1', '8') ");
connection.execute("insert into groups_menus values ('1', '9') ");
connection.execute("insert into groups_menus values ('1', '10') ");
connection.execute("insert into groups_menus values ('1', '11') ");
connection.execute("insert into groups_menus values ('1', '12') ");
connection.execute("insert into groups_menus values ('1', '13') ");
connection.execute("insert into groups_menus values ('1', '14') ");
connection.execute("insert into groups_menus values ('1', '15') ");
connection.execute("insert into groups_menus values ('1', '16') ");
connection.execute("insert into groups_menus values ('2', '5') ");
connection.execute("insert into groups_menus values ('2', '6') ");
connection.execute("insert into groups_menus values ('2', '7') ");
connection.execute("insert into groups_menus values ('2', '8') ");
connection.execute("insert into groups_menus values ('2', '9') ");
connection.execute("insert into groups_menus values ('2', '10') ");
connection.execute("insert into groups_menus values ('2', '11') ");

# SELECT setval('menus_id_seq', COALESCE((SELECT MAX(id)+1 FROM menus), 1), false);
connection.execute("SELECT setval('supervisors_id_seq', COALESCE((SELECT MAX(id)+1 FROM supervisors), 1), false);");
connection.execute("SELECT setval('menus_id_seq', COALESCE((SELECT MAX(id)+1 FROM menus), 1), false);");
connection.execute("SELECT setval('groups_id_seq', COALESCE((SELECT MAX(id)+1 FROM groups), 1), false);");
