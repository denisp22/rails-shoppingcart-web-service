# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category seeds
categories = [{name:'Produce'}, {name:'Health & Medicine'},
              {name:'Bakery'}, {name:'Frozen'}, {name:'Snacks & Candy'},
              {name:'Personal Care'}, {name:'Beauty'}, {name:'Household'},
              {name:'Beverages'}, {name:'Meat & Seafood'}, {name:'Baby'},
              {name:'Alcohol'}, {name:'Pets'}, {name:'Breakfast'}]
Category.insert_all(categories)

# categories = Category.all
#
# produce_category = categories.select { |category| category.name == "Produce" }[0]["id"]
# health_medicine_category = categories.select { |category| category.name == "Health & Medicine" }[0]["id"]
# bakery_category = categories.select { |category| category.name == "Bakery" }[0]["id"]
# frozen_category = categories.select { |category| category.name == "Frozen" }[0]["id"]
# snacks_candy = categories.select { |category| category.name == "Snacks & Candy" }[0]["id"]
# personal_care =  categories.select { |category| category.name == "Personal Care" }[0]["id"]
# beauty_category = categories.select { |category| category.name == "Beauty" }[0]["id"]
# household_category = categories.select { |category| category.name == "Household" }[0]["id"]
# beverages_category = categories.select { |category| category.name == "Beverages" }[0]["id"]
# meat_seafood_category = categories.select { |category| category.name == "Meat & Seafood" }[0]["id"]
# baby_category = categories.select { |category| category.name == "Baby" }[0]["id"]
# alcohol_category = categories.select { |category| category.name == "Alcohol" }[0]["id"]
# pets_category = categories.select { |category| category.name == "Pets" }[0]["id"]
# breakfast_category = categories.select { |category| category.name == "Breakfast" }[0]["id"]

# Product seeds

# products = [{name: 'Fruit Produce Strawberries Package', price: '10.49',
#              stock: 454, brand: "Driscoll's", category_id: produce_category,
#              img:'https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_c7585018-664c-469f-bf98-9729138dfc29.png',
#             },
#             {name: 'Claritin 24 Hour Allergy Grape Chewable Tablet', price: '35.69',
#              stock: 654, brand: "Bayer", category_id: health_medicine_category,
#              img:'https://www.instacart.com/assets/domains/product-image/file/large_b4b5e663-85d0-473c-92f1-b28305269111.png',
#             }]
# Product.insert_all(products)