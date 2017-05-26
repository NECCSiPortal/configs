## ==================================================
## flat-rate
## ==================================================

# Goods
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000005', 'Gold VCPU', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000004', 'Silver VCPU', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000003', 'Bronze VCPU', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000002', 'RAM', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000001', 'Volume Storage', '2015-01-01 00:00:00', 0);

# Catalog
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000005', 'Gold VCPU x 10 CORE(S)', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000004', 'Silver VCPU x 10 CORE(S)', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000003', 'Bronze VCPU x 10 CORE(S)', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000002', 'RAM 20 GB', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000001', 'Volume Storage 50 GB', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Contents
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents01', 'catalog0-1111-2222-3333-000000000005', 'goods000-1111-2222-3333-000000000005', 10, 'cores', '', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents02', 'catalog0-1111-2222-3333-000000000004', 'goods000-1111-2222-3333-000000000004', 10, 'cores', '', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents03', 'catalog0-1111-2222-3333-000000000003', 'goods000-1111-2222-3333-000000000003', 10, 'cores', '', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents04', 'catalog0-1111-2222-3333-000000000002', 'goods000-1111-2222-3333-000000000002', 20, 'ram', 'GB', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents05', 'catalog0-1111-2222-3333-000000000001', 'goods000-1111-2222-3333-000000000001', 50, 'gigabytes', 'GB', '2015-01-01 00:00:00', 0);

# Price
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price01', 'catalog0-1111-2222-3333-000000000005', 'Default', 172.41, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price02', 'catalog0-1111-2222-3333-000000000004', 'Default', 129.31, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price03', 'catalog0-1111-2222-3333-000000000003', 'Default', 86.21, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price04', 'catalog0-1111-2222-3333-000000000002', 'Default', 258.62, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price05', 'catalog0-1111-2222-3333-000000000001', 'Default', 64.66, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Scope
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000001', 'catalog0-1111-2222-3333-000000000001', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000002', 'catalog0-1111-2222-3333-000000000002', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000003', 'catalog0-1111-2222-3333-000000000003', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000004', 'catalog0-1111-2222-3333-000000000004', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000005', 'catalog0-1111-2222-3333-000000000005', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);



## ==================================================
## pay-for-use
## ==================================================

# Goods
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000008', 'VCPU', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000007', 'RAM', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000006', 'Volume Storage', '2015-01-01 00:00:00', 0);

#Catalog
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000008', 'VCPU 1CORE(S) / Day', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000007', 'RAM 1GB / Day', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000006', 'Volume Storage 1GB / Day', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Contents
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents06', 'catalog0-1111-2222-3333-000000000008', 'goods000-1111-2222-3333-000000000008', 10, 'cores', '', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents07', 'catalog0-1111-2222-3333-000000000007', 'goods000-1111-2222-3333-000000000007', 20, 'ram', 'GB', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents08', 'catalog0-1111-2222-3333-000000000006', 'goods000-1111-2222-3333-000000000006', 50, 'gigabytes', 'GB', '2015-01-01 00:00:00', 0);

# Price
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price01', 'catalog0-1111-2222-3333-000000000008', 'Default', 172.41, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price04', 'catalog0-1111-2222-3333-000000000007', 'Default', 258.62, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price05', 'catalog0-1111-2222-3333-000000000006', 'Default', 64.66, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Scope
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000006', 'catalog0-1111-2222-3333-000000000006', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000007', 'catalog0-1111-2222-3333-000000000007', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000008', 'catalog0-1111-2222-3333-000000000008', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);



## ==================================================
## OST
## ==================================================

# Goods
INSERT INTO aflo.goods (goods_id, goods_name, created_at, deleted) VALUES ('goods000-1111-2222-3333-000000000010', 'Object Storage', '2015-01-01 00:00:00', 0);

# Catalog
INSERT INTO aflo.catalog (catalog_id, catalog_name, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog0-1111-2222-3333-000000000010', 'Object Storage 1GB / Day', '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Contents
INSERT INTO aflo.catalog_contents (seq_no, catalog_id, goods_id, goods_num, expansion_key2, expansion_key3, created_at, deleted) VALUES ('contents10', 'catalog0-1111-2222-3333-000000000010', 'goods000-1111-2222-3333-000000000010', 1, 'gigabytes', 'GB', '2015-01-01 00:00:00', 0);

# Price(Public)
INSERT INTO aflo.price (seq_no, catalog_id, scope, price, lifetime_start, lifetime_end, created_at, deleted) VALUES ('price10', 'catalog0-1111-2222-3333-000000000010', 'Default', 1, '2015-01-01 00:00:00', '9999-12-31 23:59:59', '2015-01-01 00:00:00', 0);

# Catalog Scope
INSERT INTO aflo.catalog_scope (id, catalog_id, scope, lifetime_start, lifetime_end, created_at, deleted) VALUES ('catalog_scope0-1111-2222-3333-000010', 'catalog0-1111-2222-3333-000000000010', 'Default', '2015-01-01 00:00:00', '2030-12-31 23:59:59', '2015-01-01 00:00:00', 0);
