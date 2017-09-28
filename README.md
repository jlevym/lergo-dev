# Lergo development environment

## Pre-requisites

- install vagrant
- install ansible and ansible-galaxy
- put mongo dump file's url and secret password in `setup_mongo.db`
    - <PUT_HERE_MONGO_DUMP_FILE_URL> - change to the url of the dump file
    - <PUT_HERE_ENCRYPTION_KEY_FOR_DUMP_FILE> - change to the encryption key for the file
- put email credentials in example-me.json 
    - <PUT_HERE_EMAIL_ACCESS_KEY> - change to email access key
    - <PUT_HERE_EMAIL_SECRET_KEY> - change to email secret access key
* don't commit those changes

## Setup

1. run `ansible-galaxy install -r requirements.yml` to install ansible roles
2. from top of this project run `vagrant up --provision`
    -   some steps may seem 'failed' but they're not (like `npm install` for example)
3. than run from your terminal `./run_lergo_ui.sh`
4. than run from another terminal `./run_lergo_ri.sh`
5. open http://localhost:9000 from your browser

## Clear
run `vagrant destroy`
and do the **setup** again