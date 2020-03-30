create table address (
	address_uuid UUID NOT NULL PRIMARY KEY,
	street VARCHAR(50) NOT NULL,
	suite VARCHAR(50),
	city VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	postal VARCHAR(50),
	country VARCHAR(50) NOT NULL
);

insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '28 Arapahoe Circle', null, 'Volary', 'Czech Republic', '384 51', 'CZ');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '5726 4th Circle', null, 'El Peñol', 'Colombia', '522088', 'CO');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '709 Saint Paul Pass', '3367', 'Mahates', 'Colombia', '131048', 'CO');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '91809 Upham Way', null, 'Saint-Bruno-de-Montarville', 'Canada', 'J3V', 'CA');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '1 Elgar Trail', null, 'Fangtai', 'China', null, 'CN');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '44 Calypso Lane', '458', 'New York City', 'United States', '10160', 'US');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '6 Gerald Circle', null, 'Chittagong', 'Bangladesh', '4000', 'BD');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '68 Fallview Pass', null, 'Hihyā', 'Egypt', null, 'EG');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '05178 Schlimgen Hill', '6', 'Dầu Tiếng', 'Vietnam', null, 'VN');
insert into address (address_uuid, street, suite, city, region, postal, country) values (uuid_generate_v4(), '347 Crest Line Parkway', null, 'Rtishchevo', 'Russia', '442185', 'RU');

UPDATE address SET address_uuid = 'b6f5e028-527c-4532-a646-c1662b223c91' WHERE street = '28 Arapahoe Circle';
UPDATE address SET address_uuid = '92350b2f-5d12-4982-83ac-8e7f456ebe6a' WHERE street = '5726 4th Circle';
UPDATE address SET address_uuid = '69766959-a332-4168-bcd9-30bdaa6fafdd' WHERE street = '709 Saint Paul Pass';
UPDATE address SET address_uuid = 'd627de18-0935-4e05-af6f-851ea0041f7e' WHERE street = '91809 Upham Way';
UPDATE address SET address_uuid = '00ad33e6-266a-4bfd-a4c4-e8353db22d68' WHERE street = '1 Elgar Trail';
UPDATE address SET address_uuid = 'ab6c12a8-3d14-45e6-9f06-c54beefef519' WHERE street = '44 Calypso Lane';
UPDATE address SET address_uuid = '4857fe64-d4c0-45b6-910e-65831d5908df' WHERE street = '6 Gerald Circle';
UPDATE address SET address_uuid = '7fbfb00c-9dc1-4e34-a2e8-d0196184c0f7' WHERE street = '68 Fallview Pass';
UPDATE address SET address_uuid = '8863f2ad-354c-43bc-99c6-58631c75e9eb' WHERE street = '05178 Schlimgen Hill';
UPDATE address SET address_uuid = '4e3f66b6-d473-45f6-84ca-c8672c976f1e' WHERE street = '347 Crest Line Parkway';