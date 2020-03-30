create table skill (
	skill_uuid UUID PRIMARY KEY,
	experience INT,
	summary VARCHAR(200),
	field_uuid UUID REFERENCES field(field_uuid),
	UNIQUE(field_uuid)
);
insert into skill (skill_uuid, experience, summary) values ('24afae8f-0c87-40a5-9480-ecd02e8df98e', 28, 'Developed mobile applications');
insert into skill (skill_uuid, experience, summary) values ('1991b0c7-a0cd-4bcc-a6b9-74abd3a8e9ba', 84, 'Worked with multi-threading and generics');
insert into skill (skill_uuid, experience, summary) values ('166d6cc1-abe5-4adf-b852-2937159ca6d6', 21, 'Worked with datasets');
insert into skill (skill_uuid, experience, summary) values ('ee7b532b-f3bd-49c5-8e87-2bf8b9ffd9c1', 25, 'Developed web applications');
insert into skill (skill_uuid, experience, summary) values ('9ddc2e21-6959-483f-8a37-6def65904c4b', 52, 'Worked with datasets');
insert into skill (skill_uuid, experience, summary) values ('78a89e1d-319d-409e-83a7-13e4e4b8e468', 32, 'Developed mobile applications');
insert into skill (skill_uuid, experience, summary) values ('6003bcfe-d237-4a2f-bdd7-6a4e3c004a35', 39, 'Managed employees');
insert into skill (skill_uuid, experience, summary) values ('7049b121-738f-4af2-aadd-ae8e606a8fbd', 31, 'Developed web applications');
insert into skill (skill_uuid, experience, summary) values ('accecf3a-6b61-43d5-abd8-c514182f5fa6', 92, 'Worked with multi-threading and generics');
insert into skill (skill_uuid, experience, summary) values ('8f284838-50bf-473a-b9c7-59dcaa3c8f90', 90, 'Developed web applications');

UPDATE skill SET field_uuid = '784a0dfd-f9e3-434f-94f6-aa18c19f553b' WHERE skill_uuid = '24afae8f-0c87-40a5-9480-ecd02e8df98e';
UPDATE skill SET field_uuid = 'd7596b27-6f92-44d0-8857-6084cd0a5417' WHERE skill_uuid = '1991b0c7-a0cd-4bcc-a6b9-74abd3a8e9ba';
UPDATE skill SET field_uuid = '33ec4e2f-578e-41cf-b8bd-fe8a7c3d88ec' WHERE skill_uuid = '166d6cc1-abe5-4adf-b852-2937159ca6d6';
UPDATE skill SET field_uuid = '3b16b011-1aff-4b35-904e-7a6b9bc16e13' WHERE skill_uuid = 'ee7b532b-f3bd-49c5-8e87-2bf8b9ffd9c1';
UPDATE skill SET field_uuid = '591500ca-06dd-47b8-bf2b-742cea294c0f' WHERE skill_uuid = '9ddc2e21-6959-483f-8a37-6def65904c4b';
UPDATE skill SET field_uuid = '27615e8a-580b-4ea8-976a-6109f4ff1112' WHERE skill_uuid = '78a89e1d-319d-409e-83a7-13e4e4b8e468';
UPDATE skill SET field_uuid = '3f37793d-a9f3-4b82-8779-fb7427a65bd3' WHERE skill_uuid = '6003bcfe-d237-4a2f-bdd7-6a4e3c004a35';
UPDATE skill SET field_uuid = '77409a7c-f710-40a2-9b1e-1de1aed57f8c' WHERE skill_uuid = '7049b121-738f-4af2-aadd-ae8e606a8fbd';
UPDATE skill SET field_uuid = '55591f44-bacd-4d07-b0fa-cc2f4b1711df' WHERE skill_uuid = 'accecf3a-6b61-43d5-abd8-c514182f5fa6';
UPDATE skill SET field_uuid = '627628ed-c996-4c63-a250-5c4b78adb109' WHERE skill_uuid = '8f284838-50bf-473a-b9c7-59dcaa3c8f90';

