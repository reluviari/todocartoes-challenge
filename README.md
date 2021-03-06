<h1 align="center">
  <strong>Todo Cartões - Challenge</strong>
</h1> 

<p align="center">
    Gifts List
</p> 

## 📌 Link to App

You can visit the app by clicking this link: [Access App](https://todocartoes-danilo-challenge.herokuapp.com/).


## How the application was generated

Let's create a new application enabled with Webpack and React. You need to have NodeJS and Yarn installed on your computer.

```sh
$ rails new app-name --with-webpacker-react --webpack=react --database=postgresql
```

```sh
$ rails generate react:install
```

## Ruby version: 

* 2.5.3 

## System dependencies

* rails 5.2.3
* node 10.16.0
* yarn 1.12.3


## Configuration

```sh
$ bundle install
```

```sh
$ yarn install
```


## Database creation

```sh
$ rails db:create
```

```sh
$ rails db:migrate
```


## Database initialization

```sh
$ rails app:setup
```


## Endpoint products

Total objects per page: 15

To search for products through enpoint, use the URL below always passing the "page" parameter:

[https://todocartoes-danilo-challenge.herokuapp.com/api/v1/products?page=5](https://todocartoes-danilo-challenge.herokuapp.com/api/v1/products?page=5)

This will output a json with objects like:

```sh
[
    {
        id: 61,
        category_id: 13,
        name: "Enormous Steel Plate",
        description: "Consequatur necessitatibus sapiente. Doloremque ea error. Quas veritatis excepturi. Error maxime quis. Non eos labore. Numquam quae aut. Cumque exercitationem aut. Saepe officia et. Est ratione velit. Voluptas id quia. Ut eum nihil. Est dolore sit.",
        price: "34.38",
        
        category: {
            id: 13,
            name: "Sports & Health"
        }
    },
    {
        id: 62,
        category_id: 3,
        name: "Aerodynamic Iron Watch",
        description: "Et quo est. Dolor ut accusamus. Doloribus iusto ut. Magni autem animi. Ut nobis molestiae. Dolor unde delectus. Voluptate natus nam. Nostrum libero facere. Repellendus cum quae. Eum suscipit voluptatem. Debitis ut id. Nobis autem dolorem. Eveniet tempora voluptatem. Excepturi ex iste. Accusamus necessitatibus debitis. Itaque dolorum sequi. Magni fugiat non. Debitis aut voluptatum.",
        price: "47.98",
        category: {
            id: 3,
            name: "Movies & Toys"
        }
    }
    ...
]

```

If an invalid page number is entered, a "meta" is returned with information of pagination with the number of pages available and the total number of objects:


[https://todocartoes-danilo-challenge.herokuapp.com/api/v1/products?page=88](https://todocartoes-danilo-challenge.herokuapp.com/api/v1/products?page=88)


This will output a json object like:

```sh
 {
     products: [ ],
     meta: {
         pagination: {
             per_page: 15,
             total_pages: 8,
             total_objects: 133
      }
  }
```


## Deployment instructions

### Deploy Heroku

```sh
 $ heroku create app-name
```

```sh
 $ heroku buildpacks:add heroku/ruby
 $ heroku buildpacks:add heroku/nodejs
```

```sh
 $ git add .
```

```sh
 $ git commit -m 'My first commit'
```

```sh
 $ git push heroku master
```


## Aditional Information

* Gem react-rails was used only for the ease of using its 'react_component' helper for rendering carousel component and search products component, developed in react.
  
* Semantic Ui was used for front end styling.



## 🙋‍♂️ Author

* **Danilo Dias** - [reluviari](https://github.com/reluviari)
