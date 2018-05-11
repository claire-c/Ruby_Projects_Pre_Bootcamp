# My First Ruby Projects

A range of starter projects, exploring Ruby and gemfile functionality. I worked on these projects six months before starting the CodeClan programming bootcamp in March 2018.

## Project 1

**Objective:** Figure out how to parse JSON in Ruby.

**What I did:** Wrote a small app called "latlong.rb", which takes JSON format as a parameter. It parses the JSON in that file, and outputs just the longitudes, and latitudes.  Comma separated.  One pair on each line.
**Example:**

`ruby latlong demo.json`

should produce:

```
41.871940, 12.567380
4.210484, 101.975766
```

## Project 2

**Objective:** Build on parsing JSON format and practise using basic APIs.

**What I did:** Wrote a random joke generator app in Ruby that runs in Terminal. The program performs an HTTP GET request to the chucknorris.io API and retrieves a random joke based on the user's category input.

**Example:**

Running `joke2.rb` in Terminal:

```
Choose a category and I will call an API to tell you a Chuck Norris joke...
explicit
dev
movie
food
celebrity
science
sport
political
religion
animal
history
music
travel
career
money
fashion
What would you like? Type 'exit' to leave.
music
Who let the dogs out? Chuck Norris let the dogs out... and then roundhouse kicked them through an Oldsmobile.
```

## Project 3

**Objective:** Learn more about Bundler and gemfiles.

**What I did:** Wrote a simple templating app called `myword.rb`. It reads a CSV file pointed to in the first argument, and produces a number of text files - one for each row of the CSV - where the values in the template have been substituted with the values in the CSV row. This is using a gemfile called Mustache.  

**Example:**

Given CSV format `Amanda, 12 Timbuktu Avenue, wool:linen:juice` the template will render the following letter:

```
Dear Amanda,

Thank you for your order.  We’ve just sent it to 12 Timbuktu Avenue.  Expect delivery in 3 - 5 working days.

As a reminder, you ordered:
wool
linen
juice

Thank you!
Claire the newbie coder
```
## Project 4

**Objective:** Learn more about HTTP. An exercise in learning, so sadly no code. I explored ports via Wikipedia and other online resources.

## Project 5

**Objective:** Learn a bit about Sinatra by reading documentation and building my first routes.

**What I did:** Explored the basics of Sinatra by writing my first routes.

**Example:**

```
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/claire' do
  'Claire'
end

get '/coffee' do
  'Coffee'
end

```
