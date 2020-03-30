# Active Record Landlord

![](https://media1.giphy.com/media/l2Je2fjOTvEK0c1Uc/giphy.gif)

## Overview

This assignment we will practicing Active Record methods. We do not need to put any code into our controllers, routes, or views. All of our code will go into our seed file. We can test with `rails console` and `psql`.

## Getting Started

Fork and clone this repo.

Create a new rails project called landlord with a postgresql database and skip making a `.git` directory:

```shell
rails new landlord --database=postgresql -G --api
```

Change directories into the Rails app.

Create the database:

```shell
rails db:create
```

## Assignment

### Creating Models

Use Rails model generators ([1](https://guides.rubyonrails.org/getting_started.html#creating-the-article-model), [2](https://railsguides.net/advanced-rails-model-generators/)) to create migrations and models for this erd:

![Landlord ERD](https://media.git.generalassemb.ly/user/6387/files/7cbf7ad4-ab7a-11e8-8af3-3cc7f69cb59f)

### Model Declarations

In the models directory, make sure that the apartment and tenant model declarations reflect the correct relationship in `apartment.rb` and `tenant.rb`. See [the docs on associations](https://guides.rubyonrails.org/association_basics.html).

### Writing Seeds

In `db/seeds.rb` (experimenting in the rails console and then copying the working statements into the seeds file is a good strategy):

- Create at least 3 instances of the Apartment class
- Create at least 9 instances of the Tenant class. At least 5 should belong to an apartment
- Query for all instances of the Tenant class and store it in a variable
- Query for all instances of the Tenant class that belong to one of the Apartments you created and store it in a variable
- Update of one of the attributes for one of the objects you've created using attribute helper methods
- Save the object that you updated to the database
- Update an object using the update method
- Delete one of the objects you've created

