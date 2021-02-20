COPY category(id, code, name, "parentId", "avitoId")
FROM '/home/slavb/work/avlick/adsviewer/sql/category.csv'
DELIMITER ',' csv header;