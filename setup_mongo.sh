#####################################################################
# DOWNLOAD MONGO DUMP FROM S3 AND APPLY IT LOCALLY
#####################################################################
cd /var/lib/mongodb
#this file is only good for about 1 year and is then recycled ( until March 2018)
sudo wget <PUT_HERE_MONGO_DUMP_FILE_URL>
sudo mv $_ dump.tar.gz.enc
sudo openssl aes-256-cbc -d -a -in dump.tar.gz.enc -out dump.tar.gz -pass pass:<PUT_HERE_ENCRYPTION_KEY_FOR_DUMP_FILE>
sudo tar -xzf dump.tar.gz
mongorestore --db lergo-test dump/lergo-production --drop