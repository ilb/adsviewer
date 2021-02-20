drop schema if exists adsviewer;
create schema adsviewer;
grant all privileges on adsviewer.* to 'adsviewer'@'localhost' identified by 'adsviewer';
grant all privileges on adsviewer.* to 'adsviewer'@'%' identified by 'adsviewer';

