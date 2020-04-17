CREATE TABLE material_brewing (
	id_material SERIAL PRIMARY KEY,
	material_type VARCHAR(30)
);

CREATE TABLE types_brewing (
	id_types SERIAL PRIMARY KEY,
	type VARCHAR(30)
);

CREATE TABLE presentation (
	id_presentation SERIAL PRIMARY KEY,
	presentation VARCHAR(30)
);