
pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

python3 manage.py makemigrations

python3 manage.py migrate

git config --global user.name cscranton5
git config --global user.email carterscranton5@gmail.com

cd ./frontend

npm install

npm run build

cd ..
#python3 manage.py runserver