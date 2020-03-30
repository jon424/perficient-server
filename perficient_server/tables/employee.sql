create table employee (
  employee_uuid UUID PRIMARY KEY,
	firstName VARCHAR(50),
	lastName VARCHAR(50),
  address_uuid UUID REFERENCES address(address_uuid),
	contactEmail VARCHAR(50),
	companyEmail VARCHAR(50),
	birthDate DATE,
	hiredDate DATE,
	currentRole VARCHAR(20),
	businessUnit VARCHAR(24),
  skill_uuid UUID REFERENCES skill(skill_uuid),
	assignedTo VARCHAR(50)
);

ALTER TABLE employee ADD COLUMN summary VARCHAR(200);

insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Shoshana', 'Carlow', 'sbranigan0@weebly.com', 'sbranigan0@skype.com', '4/14/1975', '6/4/2001', 'Project Manager', 'Digital Experience Group', 'Branigan', 'Developed mobile applications');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Zacharia', 'Shurman', 'ztebboth1@europa.eu', 'ztebboth1@vinaora.com', '3/4/1975', '4/8/2009', 'Technical Consultant', 'Digital Experience Group', 'Tebboth', 'Worked with multi-threading and generics');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Teddie', 'Basilone', 'thansed2@cafepress.com', 'thansed2@sciencedaily.com', '8/21/1979', '9/12/1990', 'Technical Consultant', 'Adobe', 'Hansed', 'Developed mobile applications');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Evangelia', 'Granleese', 'etaggett3@telegraph.co.uk', 'etaggett3@unblog.fr', '3/1/1985', '9/23/1990', 'Chief', 'Digital Experience Group', 'Taggett', 'Worked with multi-threading and generics');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Alfred', 'Binnion', 'apickerill4@acquirethisname.com', 'apickerill4@pinterest.com', '12/3/1987', '1/15/2017', 'Technical Consultant', 'IBM NBU', 'Pickerill', 'Developed mobile applications');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Redd', 'Petrasso', 'rpartlett5@archive.org', 'rpartlett5@mayoclinic.com', '4/12/1978', '10/11/2006', 'Project Manager', 'API Management', 'Partlett', 'Worked with multi-threading and generics');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Bernardine', 'Linneman', 'bkeeting6@nih.gov', 'bkeeting6@mozilla.com', '6/7/1978', '5/23/1996', 'Director', 'Digital Experience Group', 'Keeting', 'Developed web applications');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Demetre', 'Brakewell', 'dkarslake7@angelfire.com', 'dkarslake7@netscape.com', '1/22/1982', '1/11/1995', 'Director', 'Adobe', 'Karslake', 'Worked with datasets');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Shelby', 'Etchingham', 'sregenhardt8@ycombinator.com', 'sregenhardt8@meetup.com', '10/1/1979', '3/5/2004', 'Project Manager', 'API Management', 'Regenhardt', 'Managed employees');
insert into employee (employee_uuid, firstName, lastName, contactEmail, companyEmail, birthDate, hiredDate, currentRole, businessUnit, assignedTo, summary) values (uuid_generate_v4(), 'Drew', 'Blemings', 'ddilliway9@slashdot.org', 'ddilliway9@e-recht24.de', '10/11/1977', '9/26/1991', 'Chief', 'Digital Experience Group', 'Dilliway', 'Managed employees');



UPDATE employee SET employee_uuid = 'b74988d9-73d7-4d4c-bded-5643f9269d19' WHERE firstName = 'Shoshana';
UPDATE employee SET employee_uuid = '88a43690-fa69-4058-aca1-a14d04a1e9e9' WHERE firstName = 'Zacharia';
UPDATE employee SET employee_uuid = 'df4b062a-4cd3-4ae4-ae86-b259725345de' WHERE firstName = 'Teddie';
UPDATE employee SET employee_uuid = 'c8d414cb-71e7-4bc4-b131-3ef21af82468' WHERE firstName = 'Evangelia';
UPDATE employee SET employee_uuid = '1aa89555-2c24-481c-9cbb-ea76419ec189' WHERE firstName = 'Alfred';
UPDATE employee SET employee_uuid = 'd5239508-e55c-4161-a515-41db2e4d8f15' WHERE firstName = 'Redd';
UPDATE employee SET employee_uuid = '146edee2-ed94-4832-a164-7dcadd968660' WHERE firstName = 'Bernardine';
UPDATE employee SET employee_uuid = '56c5ed22-6945-49d3-8902-f30ba8a9dabb' WHERE firstName = 'Demetre';
UPDATE employee SET employee_uuid = '36dbe0b1-4c4b-4cbf-9d17-ecfd37fd10be' WHERE firstName = 'Shelby';
UPDATE employee SET employee_uuid = 'b0265472-a69f-48d8-b48b-4b4669b80a79' WHERE firstName = 'Drew';



UPDATE employee SET address_uuid = 'b6f5e028-527c-4532-a646-c1662b223c91' WHERE employee_uuid = 'b74988d9-73d7-4d4c-bded-5643f9269d19';
UPDATE employee SET address_uuid = '92350b2f-5d12-4982-83ac-8e7f456ebe6a' WHERE employee_uuid = '88a43690-fa69-4058-aca1-a14d04a1e9e9';
UPDATE employee SET address_uuid = '69766959-a332-4168-bcd9-30bdaa6fafdd' WHERE employee_uuid = 'df4b062a-4cd3-4ae4-ae86-b259725345de';
UPDATE employee SET address_uuid = 'd627de18-0935-4e05-af6f-851ea0041f7e' WHERE employee_uuid = 'c8d414cb-71e7-4bc4-b131-3ef21af82468';
UPDATE employee SET address_uuid = '00ad33e6-266a-4bfd-a4c4-e8353db22d68' WHERE employee_uuid = '1aa89555-2c24-481c-9cbb-ea76419ec189';
UPDATE employee SET address_uuid = 'ab6c12a8-3d14-45e6-9f06-c54beefef519' WHERE employee_uuid = 'd5239508-e55c-4161-a515-41db2e4d8f15';
UPDATE employee SET address_uuid = '4857fe64-d4c0-45b6-910e-65831d5908df' WHERE employee_uuid = '146edee2-ed94-4832-a164-7dcadd968660';
UPDATE employee SET address_uuid = '7fbfb00c-9dc1-4e34-a2e8-d0196184c0f7' WHERE employee_uuid = '56c5ed22-6945-49d3-8902-f30ba8a9dabb';
UPDATE employee SET address_uuid = '8863f2ad-354c-43bc-99c6-58631c75e9eb' WHERE employee_uuid = '36dbe0b1-4c4b-4cbf-9d17-ecfd37fd10be';
UPDATE employee SET address_uuid = '4e3f66b6-d473-45f6-84ca-c8672c976f1e' WHERE employee_uuid = 'b0265472-a69f-48d8-b48b-4b4669b80a79';


UPDATE employee SET skill_uuid = '24afae8f-0c87-40a5-9480-ecd02e8df98e' WHERE employee_uuid = 'b74988d9-73d7-4d4c-bded-5643f9269d19';
UPDATE employee SET skill_uuid = '1991b0c7-a0cd-4bcc-a6b9-74abd3a8e9ba' WHERE employee_uuid = '88a43690-fa69-4058-aca1-a14d04a1e9e9';
UPDATE employee SET skill_uuid = '166d6cc1-abe5-4adf-b852-2937159ca6d6' WHERE employee_uuid = 'df4b062a-4cd3-4ae4-ae86-b259725345de';
UPDATE employee SET skill_uuid = 'ee7b532b-f3bd-49c5-8e87-2bf8b9ffd9c1' WHERE employee_uuid = 'c8d414cb-71e7-4bc4-b131-3ef21af82468';
UPDATE employee SET skill_uuid = '9ddc2e21-6959-483f-8a37-6def65904c4b' WHERE employee_uuid = '1aa89555-2c24-481c-9cbb-ea76419ec189';
UPDATE employee SET skill_uuid = '78a89e1d-319d-409e-83a7-13e4e4b8e468' WHERE employee_uuid = 'd5239508-e55c-4161-a515-41db2e4d8f15';
UPDATE employee SET skill_uuid = '6003bcfe-d237-4a2f-bdd7-6a4e3c004a35' WHERE employee_uuid = '146edee2-ed94-4832-a164-7dcadd968660';
UPDATE employee SET skill_uuid = '7049b121-738f-4af2-aadd-ae8e606a8fbd' WHERE employee_uuid = '56c5ed22-6945-49d3-8902-f30ba8a9dabb';
UPDATE employee SET skill_uuid = 'accecf3a-6b61-43d5-abd8-c514182f5fa6' WHERE employee_uuid = '36dbe0b1-4c4b-4cbf-9d17-ecfd37fd10be';
UPDATE employee SET skill_uuid = '8f284838-50bf-473a-b9c7-59dcaa3c8f90' WHERE employee_uuid = 'b0265472-a69f-48d8-b48b-4b4669b80a79';

