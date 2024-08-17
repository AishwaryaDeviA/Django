How to run ?

Install docker desktop

and then build the project docker-compose build

and then use the command "docker-compose run --rm elevate sh -c "python manage.py runserver"

but befor the ensure all the tests passes since we are using test driven developement by using the command  "docker-compose run --rm elevate sh -c "python manage.py test"
