# Rails on Repl.it

This is a template to get you started with Rails on Repl.it. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Repl.it:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow all hosts (see `config/environments/development.rb`)
- allow the app to be iframed (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Repl.it database](http://docs.repl.it/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.repl.it) page. Alternatively you can [ask in the community](https://repl.it/talk/ask). Feel free to report bugs [here](https://repl.it/bugs) and give us feedback [here](https://repl.it/feedback).


