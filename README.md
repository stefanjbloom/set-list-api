# Associations Practice

This branch includes practice exercises for ActiveRecord associations. Work on the exercises in this order:

1. spec/models/artist_spec.rb
2. spec/models/song_spec.rb
3. spec/models/record_label_spec.rb


Start by running one test at a time. For the first test, you should run bundle exec rspec spec/models/artist_spec.rb:15. Including the line number of the test will help you stay focused on one exercise at a time.

Avoid running all the tests at once (bundle exec rspec). This will error out since the RecordLabel class hasn't been created yet.

Make sure to read the comments in each test. They include instructions on how you should approach the problem. In addition, let any errors guide your implementation. If you get an error, be sure to read the entire error message!

 
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