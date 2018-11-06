## Aivirt API [![Build Status](https://travis-ci.org/jtrtj/aivirt_api.svg?branch=master)](https://travis-ci.org/jtrtj/aivirt_api)
#### Contents:
1. [Introduction](#introduction)
1. [Initial Setup](#initial-setup)
1. [How to Use](#how-to-use)
1. [Known Issues](#known-issues)
1. [Running Tests](#running-tests)
1. [How to Contribute](#how-to-contribute)
1. [Schema](#schema)
1. [Tech Stack](#tech-stack)
---
#### Introduction:
The Aivirt API is here to generate a new trivia game each day for [Aivirt](https://jtrtj.github.io/aivirt/). Each day the API requests 10 random questions from [Open Trivia DB](https://opentdb.com/api_config.php). While adding each question to the database, a splash image from [Unsplash](https://unsplash.com/developers) is attached to each question according to its "category". On the deployed front end, each question renders its image as a background.

It is deployed on heroku [here](https://aivirt-api.herokuapp.com/)
#### Initial Setup:
You will need an [Unsplash API Key](https://unsplash.com/developers)(it's free)
1. `git clone git@github.com:jtrtj/aivirt_api.git`
1. `cd aivirt_api`
1. `bundle update`
1. edit rails credentials to include your unsplash client_id:
   ```yml
   unsplash:
     client_id: <your_api_key>
   ```
1. `rails s` to run locally

---

#### How to Use:
>
> to get Today's game:
>
> __GET /api/v1/games/todays-game__
>

```json
{
    "id": 2,
    "date": "Nov 06, 2018",
    "questions": [
        {
            "question": "Which Greek letter represents the \"Half-Life\" logo?",
            "correct_answer": "Lambda",
            "answers": [
                "Omega",
                "Lambda",
                "Alpha",
                "Sigma"
            ],
            "image_url": "https://images.unsplash.com/photo-1520433503211-07a1dc4b5327?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=b5da5c56de1235883d59480b4109c29a",
            "image_author": "Keagan Henman",
            "image_author_profile": "https://unsplash.com/@henmankk"
        },
        {
            "question": "Which singer was featured in Jack Ü (Skrillex & Diplo)'s 2015 song 'Where Are Ü Now'?",
            "correct_answer": "Justin Bieber",
            "answers": [
                "Justin Bieber",
                "Selena Gomez",
                "Ellie Goulding",
                "The Weeknd"
            ],
            "image_url": "https://images.unsplash.com/photo-1508025487571-d8ea8d0afe54?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=16a08ab87d2c6230dbfdf3593b1fea89",
            "image_author": "Dominik Scythe",
            "image_author_profile": "https://unsplash.com/@drscythe"
        },
        {
            "question": "The United States was a member of the League of Nations.",
            "correct_answer": "False",
            "answers": [
                "False",
                "True"
            ],
            "image_url": "https://images.unsplash.com/photo-1494855197644-d88dab96308c?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=b13d5b40b12c851d5599b1d5cb74f4d3",
            "image_author": "Echo Grid",
            "image_author_profile": "https://unsplash.com/@echogrid"
        },
        {
            "question": "What is the scientific name for the \"Polar Bear\"?",
            "correct_answer": "Ursus Maritimus",
            "answers": [
                "Polar Bear",
                "Ursus Maritimus",
                "Ursus Spelaeus",
                "Ursus Arctos"
            ],
            "image_url": "https://images.unsplash.com/photo-1500694216671-a4e54fc4b513?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=8373d4b5b12df8981164c2d5084c0444",
            "image_author": "Kyaw Tun",
            "image_author_profile": "https://unsplash.com/@mahuyar"
        },
        {
            "question": "Which of the following Pokémon games released first?",
            "correct_answer": "Pokémon Crystal",
            "answers": [
                "Pokémon Platinum",
                "Pokémon FireRed",
                "Pokémon Crystal",
                "Pokémon Black"
            ],
            "image_url": "https://images.unsplash.com/photo-1535222636729-76586bf52493?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=473e56dbae99728499dd1a32b8ef34d1",
            "image_author": "Maik Jonietz",
            "image_author_profile": "https://unsplash.com/@der_maik_"
        },
        {
            "question": "What was another suggested name for, the 1985 film, Back to the Future?",
            "correct_answer": "Spaceman From Pluto",
            "answers": [
                "Hill Valley Time Travelers",
                "Spaceman From Pluto",
                "The Time Travelers",
                "The Lucky Man"
            ],
            "image_url": "https://images.unsplash.com/photo-1519990906521-c2ac5de015d1?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=21b6e5ee7f48c190557a0412a5d0fa2c",
            "image_author": "Matteo Contarin",
            "image_author_profile": "https://unsplash.com/@contixproduction"
        },
        {
            "question": "Who created \"RWBY\"?",
            "correct_answer": "Monty Oum",
            "answers": [
                "Miles Luna",
                "Kerry Shawcross",
                "Monty Oum",
                "Shane Newville"
            ],
            "image_url": "https://images.unsplash.com/photo-1514573972552-9cb02d6b3d38?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=ab94875a07842792ba55a68935af1d0b",
            "image_author": "Victor Benard",
            "image_author_profile": "https://unsplash.com/@vics_pics"
        },
        {
            "question": "In what year was the Oculus Rift revealed to the public through a Kickstarter campaign?",
            "correct_answer": "2012",
            "answers": [
                "2012",
                "2010",
                "2011",
                "2013"
            ],
            "image_url": "https://images.unsplash.com/photo-1484600996405-3f72130ce59f?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=11ead990c78874eaba764febb55c4ae1",
            "image_author": "Tim Mossholder",
            "image_author_profile": "https://unsplash.com/@timmossholder"
        },
        {
            "question": "Pete Townshend's solo album, \"White City: A Novel\", is set in the metropolitan area of Chicago.",
            "correct_answer": "False",
            "answers": [
                "False",
                "True"
            ],
            "image_url": "https://images.unsplash.com/photo-1498145645178-ab2c7cebc433?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=8effd6202acd8480ccbbcc49aac1d397",
            "image_author": "Dane Deaner",
            "image_author_profile": "https://unsplash.com/@danedeaner"
        },
        {
            "question": "Which of the following games was NOT included in Valve's Orange Box?",
            "correct_answer": "Counter-Strike",
            "answers": [
                "Portal",
                "Counter-Strike",
                "Half-Life 2: Episode Two",
                "Team Fortress 2"
            ],
            "image_url": "https://images.unsplash.com/photo-1533246956710-a9f4a2670e87?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=eyJhcHBfaWQiOjQxMjM5fQ&s=5822f95ee49eea98cc7bea5fa6360d14",
            "image_author": "ShareGrid",
            "image_author_profile": "https://unsplash.com/@sharegrid"
        }
    ]
}
```

---

#### Known Issues:
1. Needs Games index endpoint to provide an archive of games
1. Needs a system for recording game stats from users
   * e.g. After a user answers the 10 questions front end POSTs to API recording a PlayedGame with a payload of game_id and correct_count.
  
---
#### Running Tests:

If you have app locally deployed run `rspec` to see the test suite run.

__SimpleCov output:__
![test_screenshot](https://i.imgur.com/vO8Gq7w.png)

---
#### How to Contribute:
if you would like to contribute:
1. Checkout [Open Issues](https://github.com/jtrtj/aivirt_api/issues) Pulled from the Waffle.io board for this project
1. Fork and clone this repo
1. Make a PR

Thanks in advance!

---
#### Schema:
[![Schema Diagram](https://i.imgur.com/GWf2Y6I.png)](https://dbdiagram.io/d/5be1f4c17928be0014fb6786)

---
#### Tech Stack:
* Aivirt API is built with [Ruby 2.5.3](https://github.com/ruby/ruby/tree/v2_5_3), [Rails 5.2.1](https://github.com/rails/rails/tree/v5.2.1) and a [PostgreSQL](https://www.postgresql.org/) Database.
* Tested using RSpec with [VCR](https://github.com/vcr/vcr), [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers), [Factory Bot](https://github.com/thoughtbot/factory_bot_rails) and [Faker](https://github.com/stympy/faker)


