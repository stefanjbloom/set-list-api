# Joins Homework


## 1. Songs - AR review
Let's write some ActiveRecord queries! 

First, make sure your bundle & database are up to date. 
```
bundle install
rails db:{drop,create,migrate,seed}
```

Then, navigate to `spec/models/song_spec.rb`. Your task is to write AR queries and set them to the `query` variable set up for you in each test. When you run each test, your query should make the test pass. Run each test individually rather than all at once.

## 2. Artists - Joins Exploration

Time for joins! 

So far, the querying we've been doing only uses one table. However, our tables are associated (our songs table has a foreign key to associate every record to an artist) and we might need to do some querying that involves multiple tables! That's where a join comes in. 

Let's look at joins in both AR and SQL! ActiveRecord makes joins syntax easier, but it's important to take a look at the raw SQL that is created in order to understand what AR is doing under the hood. 

In `spec/models/artist_spec.rb` follow the intro instructions to inspect some joins. Then, try one for yourself! 

Creating your own join will likely be difficult, and it's okay if you don't land on a working solution. Bring your questions and blockers to class. 

Check out the `joins-homework-solutions` branch for answers!

## Optional Further Reading

1. (SQL Joins)[https://www.w3schools.com/sql/sql_join.asp]
2. (Join Exercise)[https://pgexercises.com/questions/joins/simplejoin.html]

# Set List Tutorial


This repository serves as an in-class project for Turing's Mod 2 BE program. Through working on this tutorial, students will gain an understanding of and practice the following topics (among others): 
* Model testing
* Migrations
* Request testing
* MVC
* ActiveRecord & SQL
* Serializers
* Error Handling

## Setup

Clone (you don't need to fork) this repo to your local. Then, run the following commands in Terminal: 
```
bundle install
rails db:{drop,create,migrate,seed}
```

You should then be able to access the databases called `set_list_development` and `set_list_test`. 

## How to Use
This application starts with schema and corresponding tests for `Songs`, and then later `Artists` as well. Throughout classes in mod 2, students will be asked to work on adding various features to this application. Students are welcome to use the `main` branch of this repo, and add to it on their own machines. There is no need to submit any pull requests to the original repo, as this is a practice application. 

Students can also check out the branches in this repo to visit the code at different points in time. Lesson plans will indicate which branches will need to be used.

### Warning
Note: ___we don't recommend **forking** this repo___, as there are many branches that you'll lose access to if you fork. Since this is a tutorial, you can reference the many branches in this repo for the class you're currently working on. Forking will not bring these branches with your forked copy. 

Also, this tutorial is most useful going class-by-class, not necessarily done in addition to any intermission work. If you have context/prior knowleddge for the topics explored in this repository, you can use it to practice those topics. Generally, we advise students to wait until the topic comes up in a project or class to explore the branches of this repo.