create table if not exists
	geographies (
	  id uuid primary key
	, name varchar(64)
	, adm int
	, cca3 varchar(3) not null
	, parent_id uuid references geographies (id)
	, online bool default false
	, configuration jsonb default '{}'
	);

create trigger insert_uuid
	before insert on geographies
	for each row
	execute procedure insert_uuid();
