# Pikkujoulut

The infrastructure for creating a virtually-assisted treasure hunt for multiple teams. Teams log in with their unique (and semi-secret) team name. They are presented with a predefined hint (image and/or text) along with an answer box. Once the right answer is entered, they are directed to the next hint.

The puzzles are linked together in a loop. Once you finish the last puzzle, you are directed to a final hint/message.

Offers a simple password-protected admin view at `/follow` to see what hints teams are at.

## Requirements

- Ruby
- RubyGems
- Bundler
- Heroku (for deployments)

## Installation

1. Clone this repository onto your machine.
1. Install the app: `bundle install`
1. Add your team and puzzle data into `db/seeds.rb`.
1. Create the database: `rake db:setup`
1. Start the development server: `rails server`
1. Open your browser at `http://localhost:3000/`.

To update puzzle or team information, the database needs to be reset with `rake db:reset` before running `rake db:setup`.

## Deploying

Deploying to Heroku is done via pushing to a Heroku remote. Add your Heroku remote to git, then deploy with a git push:

```
git push heroku master
```

If you need to update the data, reset the database first.

```
heroku run rake db:reset
```

This app uses sqlite3 as a database for development and testing environments, and PostreSQL in production due to Heroku not supporting sqlite3. This might cause trouble.

Puma is used as the HTTP server in production.
