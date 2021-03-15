COPY category(id, code, name, "parentId", "avitoId")
FROM '$PWD/category.csv'
DELIMITER ',' csv header;