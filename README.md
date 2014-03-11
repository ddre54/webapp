# Webapp

This is a project built with Elixir that uses Dynamo to serve web requests.

It's intent is to serve as a template blog or webpage avoiding the boilerplate of creating one. So you can start playing faster with technology based on Elixir and Dynamo

Creating the webapp with `dynamo`

This is for creating a new application using dynamo:

```bash
# Clone repo and enter its folder
git clone git://github.com/elixir-lang/dynamo.git
cd dynamo
# Get dependencies and run tests
MIX_ENV=test mix do deps.get, test
# Compile dynamo into the mix
mix compile
# Create the project
mix dynamo ~/webapp
cd ~/webapp
# Install dependencies. Similar to bundler. Nice!
mix deps.get
# Compile dynamo appq into the mix
mix compile
# Start the server. By default in localhost:4000
mix server
```

## Running it on production

```bash
MIX_ENV=prod mix do compile, server & disown
```

If the above doesn't work, and the server is kill when you close the terminal, try this:

```bash
MIX_ENV=prod mix server & disown
```


## Credits

* Blog structure and layout based on the tutorial ***"HTML 5 and CSS 3: The Techniques You'll Soon Be Using"***. Link [here][html5_and_css3_blog]

[html5_and_css3_blog]: http://code.tutsplus.com/tutorials/html-5-and-css-3-the-techniques-youll-soon-be-using--net-5708 "HTML 5 and CSS 3: The Techniques You'll Soon Be Using"

## License
Webapp is released under the [MIT License].

[MIT License]: http://opensource.org/licenses/MIT "MIT License"

## Resources

* [Elixir website](http://elixir-lang.org/)
* [Elixir getting started guide](http://elixir-lang.org/getting_started/1.html)
* [Elixir docs](http://elixir-lang.org/docs)
* [Dynamo source code](https://github.com/elixir-lang/dynamo)
* [Dynamo guides](https://github.com/elixir-lang/dynamo#learn-more)
* [Dynamo docs](http://elixir-lang.org/docs/dynamo)
