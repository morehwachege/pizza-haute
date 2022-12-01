# Pizza Haute


#### _Pizza was never delivered quicker and tastier_

Pizza Haute is an API for tracking pizza restaurants. It has a lot of provisions for handling large data with its extensive database schema which extends its functionality and scope.


### Endpoints

| index           |      show            |      create     |
|-----------------|:--------------------:|----------------:|
| {{host}}/pizzas |  {{host}}/pizzas/:id | {{host}}/pizzas |
| {{host}}/restaurants |  {{host}}/restaurants/:id | {{host}}/restaurants |
| {{host}}/restaurant-pizzas |  {{host}}/restaurant-pizzas/:id | {{host}}/restaurant-pizzas |


## Tech

Pizza Haute uses a number of open source projects to work properly:

- [Ruby]("https://ruby-lang.org")
- [Rails]("https://rubyonrails.org)


## Installation

Pizza Haute requires [Ruby]("https://ruby-lang.org") v2.7+ and [Rails]("https://rubyonrails.org)  to run.

Install the dependencies and start the server.

```sh
bundle install
```

Migrate into the database and seed with provisioned fake data...

```sh
rails db:migrate db:seed
```

## Development

Want to contribute? Great!

Clone the repository and start coding
Start server...

```sh
rails server
# verify running at 127.0.0.1:3000
```

## License
GPL-3.0 License
