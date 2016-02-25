# The Magic Conch
Slack Integration for choosing merienda.

## Environment
- Ruby 2.2.2
- Rails 4.2.4

## Production
- Deployed in Heroku with Puma webserver
- NewRelic add-on for keep alive


## Application Info
To use rails and still serve as a bare bones API endpoint, this app was generated using the `rails-api` gem.

The app responds on its root path (`'/'`) and handles the incoming text based on specific present keywords. Currently, the app processes 5 different actions: `help`, `list`, `add`, `delete`, and `ask`.

To be technically specific, for each action, there is one handler class that contains all the logic needed for the action. This is done using the factory pattern in OOP.

Finally, the app responds with JSON and text formatted for Slack messaging.
