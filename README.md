# Library management system with Django and mysql

> ###  Example of Simple library managemnt  with django and  mysql(CRUD, auth, advanced patterns, etc) that adheres to the [library management](https://github.com/wubrafiq807/locallibrary-django) .

This repo is functionality complete — PR's and issues welcome!
# Running


MySQL installed and running, if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

Set up MySQL database, use -u -p flags to provide username and password:
```
$  mysql < librarry_management.sql
```
## Installation

1. Clone this repository: `git clone https://github.com/wubrafiq807/locallibrary-django`.
2. `cd` into `conduit-django`: `cd locallibrary-django`.
3. Install [pyenv](https://github.com/yyuu/pyenv#installation).
4. Install [pyenv-virtualenv](https://github.com/yyuu/pyenv-virtualenv#installation).
5. Install Python 3.5.2: `pyenv install 3.5.2`.
6. Create a new virtualenv called `productionready`: `pyenv virtualenv 3.5.2 productionready`.
7. Set the local virtualenv to `productionready`: `pyenv local productionready`.
8. Reload the `pyenv` environment: `pyenv rehash`.

If all went well then your command line prompt should now start with `(productionready)`.

If your command line prompt does not start with `(productionready)` at this point, try running `pyenv activate productionready` 

# Technologies
Language - [python](https://www.python.org/)<br />
Web framework - [Django](https://www.djangoproject.com/)<br />
Database - [MySQL](https://www.mysql.com/)<br />