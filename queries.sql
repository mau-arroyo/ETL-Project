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

CREATE TABLE merged_brewing_materials (
	year INT,
	month INT,
	month_current INT,
	id_types INT,
	id_material INT
);

CREATE TABLE merged_beer_states (
	state VARCHAR (60),
	year INT,
	barrels FLOAT,
	id_presentation INT
);

SELECT merged_brewing_materials.year, merged_brewing_materials.month, merged_brewing_materials.month_current, merged_brewing_materials.id_types, merged_brewing_materials.id_material, merged_beer_states.state, merged_beer_states.id_presentation 
FROM merged_brewing_materials
JOIN merged_beer_states
ON merged_brewing_materials.year = merged_beer_states.year;