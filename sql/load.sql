COPY category(id, code, name, "parentId", "avitoId")
FROM 'C:\Users\matco\react-apps\adsviewer\sql\category.csv'
DELIMITER ',' csv header;