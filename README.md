## PHASE-4-CODE-CHALLENGE-1-Pizza


Things you may want to cover:

* Ruby version  - 3.0.2

* System dependencies
checkout the gemfile for dependencies

* Configuration

* Database creation
### creating database
rails new app-name –minimal 


* Database initialization
### Configuring your database 
rails db:create - creates a new database
rails db:migrate - migrations are done using this command and a schema is generated
rails db:seed - this command is used to populate your table with data


## MODEL Deliverables

Create the following relationships:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`



## VALIDATIONS Deliverables

Add validations to the `RestaurantPizza` model:

- must have a `price` between 1 and 30
  

## ROUTES Deliverables:

Set up the following routes. Make sure to return JSON data in the format specified along with the appropriate HTTP verb.

#### GET /restaurants

Return JSON data in the format below:

```
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]
```

#### GET /restaurants/:id

If the `Restaurant` exists, return JSON data in the format below:

```
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
```

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```


#### DELETE /restaurants/:id

If the `Restaurant` exists, it should be removed from the database, along with any `RestaurantPizza`s that are associated with it.


If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

#### GET /pizzas

Return JSON data in the format below:

```
[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
```

#### POST /restaurant_pizzas

This route should create a new `RestaurantPizza` that is associated with an existing `Pizza` and `Restaurant`. It should accept an object with the following properties in the body of the request:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

If the `RestaurantPizza` is created successfully, send back a response with the data
related to the `Pizza`:

```
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```



If the `RestaurantPizza` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}

```

## Authors

Project contributed to and maintained by:

- [Mark Wanjau](https://github.com/afrikan-son/)

## ISC

### ISC License (ISC)