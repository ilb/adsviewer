<<<<<<< HEAD
cat comment.sql data.sql | sudo -u postgres psql adsviewer
cat sql/ads.sql | sudo -u postgres psql adsviewer
cat sql/types.sql | sudo -u postgres psql adsviewer
=======
cat comment.sql data.sql load.sql auto.sql types.sql ads.sql | sudo -u postgres psql adsviewer
>>>>>>> master
