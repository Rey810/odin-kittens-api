# Kittens API

Kittens API is a simple data-producing RESTful API. This project is a part of [the Odin Project's](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis) curriculum.

## Goals
1. Simple Rails app where kittens can be created
2. Set up app to be a data-producing API

## Skills Used/Gained
1. Practice using MVC architecture

## Getting started

To get started with the app, clone the repo and then install the needed gems:

`$ bundle install --without production`

Next, migrate the database:

`$ rails db:migrate`

If you want to load sample data, use seeds:

`$ rails db:seed`

You are ready to run the app in a local server:

## Testing Responses

Once the installation and seeding is complete, use `gem rest-client` to test the response. For example: 

```$ rails server
$irb
>> require 'rest-client'
>> response = RestClient.get("http://localhost:3000/kittens", accept: :json)
=> <RestClient::Response 200 "[{\"id\":1,\"n...">
>> response = RestClient.get("http://localhost:3000/kittens/12", accept: :json)
=> <RestClient::Response 200 "[{\"id\":12,\"n...">
>> puts response.body
{"id":12,"name":"Garfield","age":null,"cuteness":"6","softness":"10","created_at":"2020-01-22T04:58:17.326Z","updated_at":"2020-01-22T04:58:17.326Z"}
```

