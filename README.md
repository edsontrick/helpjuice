# Project made for a test in HelpJuice

## Dependencies
* Ruby 2.2.2
* A mongo database running (please, edit the config/mongoid.yml to your database configuration, but don't modify production configurations).
* Redis
* Sidekiq

## Classes
* Articles: a class that represents all the actions related to articles
* KnowledgeBase: a class that represents the actions around the Knowledge Base of this admin prototype

## Controllers
* ArticlesController
* KnowledgebasesController

## How the platform works?
Well, the platform doesn't search real articles at all, it just saves the query typed in a Knowledge Base database. To make a better query Knowledge Base, the platform only saves the query before 1 second without typing.

In the first page all things happens, it has:
* the search field.
* the list of query with respective times that was searched.
* a button that clears the Knowledge Base database.

## Hmm, nice. Where are the tests?
to run the test, please, run ``` bundle exec rspec ```

When executed, all tests run automatically.

We have two simple tests:
* To stress the application, 10 thousands KnowledgeBases objects are created (but they are not commited to database) with and without Sidekiq
