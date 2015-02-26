# README

This is homework 3.  Hopefully I made this easier than homework 2.  Now we are getting to the interesting.  We are getting into migrations (changes to the database), and models (our way with interacting with the data in our database).

## Overall Specifications
In the end all we want is Users, Cats, and Todos with the following specifications in the database, to have models defined for them,AND to submit answers to the google doc.  We are going with the very basic TODO app that pretty common in tutorials everywhere.

### Users
name: A string that contains the name of the User

email: A string that contains the email of the User

age: An integer that contains the age of the User

### Cats
name: A string that contains the name of the cat.

### Todos
tasks: A string of the task that needs to be done

finished: A boolean on whether or not it's been finished

### Also
Have a method that allows the cat to "Meow", which means give it a method that puts a "Meow" into the console.

## Before you start

You probably want to look at the repo to see what's been done for you.  I would especially check app/models and db/migrations.  If you want to try doing it without the walkthrough below I would recommend it because I feel that you learn alot about these kinds of things through trial and error.  Remember to run your migrations with
```
rake db:migrate
```
in order to make the changes to your database.


## Walkthrough

### Cats
So one of the first things you should notice is that there is already a migration to create a cats table with a name field of type string in it, but you don't have a model associated with it.  First [define the model](http://guides.rubyonrails.org/active_record_basics.html#creating-active-record-models) in app/models.  Then create a method called meow (you can call it whatever really) and just have it puts meow to the console.  Save the file and fire up your rails console and check to see if you can create a new cat and call its meow method.  If it prints "meow" you are good!

```
$ rails c
> c = Cat.new
> c.meow # Should print out meow
```

### Users
So for User we can see a migration was made to create a user with a name and an email, and we already have a model.  All we need to do is add an integer called age to our Users table.  Check our the [rails documentation](http://edgeguides.rubyonrails.org/active_record_migrations.html#creating-a-migration) to see how to do this.  Run the migration and check to see if your User now has an age.

```
$ rails c
> u = User.new
> u.age # Should not error
```

### Todos
There isn't anything here for todos!  This is a perfect time to see how easy it is to create a migration and model in seconds with one command line action.  Check [this](http://edgeguides.rubyonrails.org/active_record_migrations.html#model-generators) out to see how.  Run similar actions to the above two to check to see if it worked!

## Submitting
Go to the top of the app and run
```
git add .
git commit -am "Models!"
```
and push it up to a  repo on your Github account.  If you forked this repo and cloned the fork on your own repository you should be able to do
```
git push origin HEAD
```
and submit this [form](https://docs.google.com/forms/d/1yn5HEALzMyvv9JHKB-b_4_CihrANtvdAIbTtVe0n1zY/viewform).
