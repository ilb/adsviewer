DROP DATABASE IF EXISTS adsviewer;
create database adsviewer;
CREATE USER adsviewer WITH PASSWORD 'adsviewer';
GRANT ALL PRIVILEGES ON DATABASE adsviewer to adsviewer;
