# Kittens API

Kittens API is a simple data-producing RESTful API. This project is a part of [the Odin Project's](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis) curriculum.

##Getting started

To get started with the app, clone the repo and then install the needed gems:

`$ bundle install --without production`

Next, migrate the database:

`$ rails db:migrate`

If you want to load sample data, use seeds:

`$ rails db:seed`

You are ready to run the app in a local server:

##Testing Responses

Once the installation and seeding is complete, use `gem rest-client` to test the response. For example: 

`$ rails server`

``` $irb
>> require 'rest-client'
>> response = RestClient.get("http://localhost:3000/kittens", accept: :json)
=> <RestClient::Response 200 "[{\"id\":1,\"n...">
>> response = RestClient.get("http://localhost:3000/kittens/1", accept: :json)
=> <RestClient::Response 200 "[{\"id\":1,\"n...">
>> puts response.body
```

