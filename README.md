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

### Products

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/products`**

The endpoint fetches multiple products

Query parameters:

| Name | Required  | Type  | Description |
| :---:| :-:| :-:| :-:|
| offset | false | Number | Defines the initial record on the database query.
| limit | false | Number | Defines the maximum number of records to return from the database.
| order | false | String | `desc` or `asc`

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/products/:id`**

Theis endpoint finds a product by it's id

### Orders
![POST](https://img.shields.io/badge/METHOD-POST-blue) **`http://localhost/orders`**

This endpoint creates a new order and sends it to the client via email

| Name | Type  | Description |
| :---:| :-:| :-:| :-:|
| client_name | String | Client name
| delivery_address | String | Order delivery address
| email | String | Client email
| phone | String | Client phone number |
| products | Array | This array contains the identifiers of the selected products by the client

### Categories

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/categories`**

The endpoint fetches all the categories from the database

## Other bootcamp projects: 

1. Shopping cart CLI: https://github.com/luislopez-dev/Shopping-Cart-CLI
2. MVC CRUD: https://github.com/luislopez-dev/Product-MVC-CRUD
3. CRUD REST API: https://github.com/luislopez-dev/Products-CRUD-API
4. Some of the bootcamp coding challenges: https://replit.com/@LuisLopez73?path=folder/Boot-camp%20coding%20challenges