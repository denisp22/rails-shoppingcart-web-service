# &copy;Web Items - Backend API

## Table of contents

* [Introduction](#introduction)
* [Frontend](#frontend)
* [Technology](#technology)
* [Environmental variables](#environmental-variables)
* [Project execution](project-execution)
* [Endpoints](#endpoints)
## Introduction

Web Items is an e-commerce site created to offer different supermarket products online, at the same time, it is the final project of the Ruby on rails/React bootcamp. This repository contains the backend API code of wWeb Items.

## Frontend

The repository of the frontend code of Web Items can be found at: https://github.com/luislopez-dev/Bootcamp-Final-Project-Frontend

## Technologies

* Ruby 2.7.0
* Rails 6.1.5
* PG (postgres) 1.1
* Sendgrid-Ruby

## Environmental variables

1. `DB_HOST:` The host url of the database
2. `DB_USERNAME:` The database username
3. `DB_PASSWORD:` The database password
4. `DB_NAME:` The database name
5. `SENDGRID_API_KEY:` The API Key of your Sendgrid account. 

## Project execution

1. Clone this repository
2. Install the project dependencies with the following command `gem install`
3. Create a file with the name `application.yml` inside the `config` folder and setup the environmental variables described in the previous section. 
4. Create the project database with the following command `Rails db:create`
5. Run the database migrations with the following command `Rails db:migrate`
6. Run the database seeds the following command `Rails db:seed`
7. Finally execute the project with the following command `Rails server` or `Rails s`

## Endpoints

## Other bootcamp projects: 

1. Shopping cart CLI: https://github.com/luislopez-dev/Shopping-Cart-CLI
2. MVC CRUD: https://github.com/luislopez-dev/Product-MVC-CRUD
3. CRUD REST API: https://github.com/luislopez-dev/Products-CRUD-API
4. Some of the bootcamp coding challenges: https://replit.com/@LuisLopez73?path=folder/Boot-camp%20coding%20challenges