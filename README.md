# Limbo

Experiment in **Test && Commit || Revert**

## Installation

In `mix.ex`  ... add to deps()
```elixir
  {:limbo, "~> 0.1.5" }
```
... add to project()
```elixir
   preferred_cli_env: ["limbo.high": :test, "limbo.low": :test]
```

then run  
1. `mix deps.get`
1. `mix deps.compile limbo`


### In one terminal window run
`mix limbo.pull_push`
This will push commits to the trunk whenever they are ready

## In another window run the tests
### Basic Usage
` MIX_ENV=test mix limbo.high `
Runs tests. If Tests pass commit to git else NOTHING

### Advanced Usage
` MIX_ENV=test mix limbo.low `
Runs tests. If Tests pass commit to git else REVERT

#### Previous repo
(test-commit-revert)[https://github.com/mwindholtz/test-commit-revert]

#### References
* [Kent Beck](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864)
* [Kent Beck - TCR Pod Cast](https://hanselminutes.com/663/test-commit-revert-with-kent-beck)
* [JB Rainsberger](https://blog.thecodewhisperer.com/permalink/the-worlds-shortest-article-on-test-and-commit-otherwise-revert)
* [Thomas Deniffel](https://medium.com/@tdeniffel/limbo-test-commit-revert-a-test-alternative-to-tdd-6e6b03c22bec)
* [Pending Flag from Oddmund Strømme](https://twitter.com/jraregris?lang=en)
* [Breaking the Code: Scale Engineering & Software Cultural Shifts with Kent Beck- EP004](https://radiopublic.com/moonshots-of-the-intelligent-age-GAOYq4/ep/s1!eeb95)
