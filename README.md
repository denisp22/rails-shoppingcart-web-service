# Shippingcart - Backend API

## Table of contents

* [Introduction](#introduction)
* [Technology](#technologies)
* [Environmental variables](#environmental-variables)
* [Endpoints](#endpoints)

## Introduction

Web services on Ruby on Rails for building ecommerce websites. It can be integrated with frontend frameworks such as react, vue.js or angular. 

Backend API for build

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

## Endpoints

### Products

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/products?offset=x?limit=x?order=x`**

This endpoint fetches multiple `products`

Query parameters:

| Name | Required  | Type  | Description |
| :---:| :-:| :-:| :-:|
| offset | false | Number | Defines the initial record on the database query.
| limit | false | Number | Defines the maximum number of records to return from the database.
| order | false | String | Indicates in which order the products must be returned, the value can be either `desc` or `asc`

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/products/:id`**

This endpoint finds a product by it's id

### Orders
![POST](https://img.shields.io/badge/METHOD-POST-blue) **`http://localhost/orders`**

This endpoint creates a new order and sends it to the client via email

| Name | Type  | Description |
| :---:| :-:| :-:|
| client_name | String | Client name
| delivery_address | String | Order delivery address
| email | String | Client email
| phone | String | Client phone number
| products | Array | This array contains the identifiers of the selected products by the client

### Categories

![GET](https://img.shields.io/badge/METHOD-GET-green) **`http://localhost/categories`**

This endpoint fetches all the categories from the database
