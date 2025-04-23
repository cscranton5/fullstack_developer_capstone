# setup django virtual enviroment
pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

# install requirements + do django migrations
python3 -m pip install -U -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate
#python3 manage.py runserver

# git config setup
git config --global user.name cscranton5
git config --global user.email carterscranton5@gmail.com

# front end setup
cd ./frontend
npm install
npm run build

cd ..

# database server setup
cd ./database
docker build . -t nodeapp
#docker-compose up

cd ..