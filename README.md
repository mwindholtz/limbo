# Limbo

Experiment in **Test && Commit || Revert**

## Installation

Add to deps()
```
  {:limbo, "~> 0.1.2" }
```

then run  
1. `mix deps.get`
1. `mix deps.compile limbo`


### In one terminal window run
`mix limbo.pull_push`
This will push commits to the trunk whenever they are ready

### In another window run 
` MIX_ENV=test mix limbo.high `
This will run tests and commit to git if test passes, and do nothing if test does not pass.

### Advanced Usage
` MIX_ENV=test mix limbo.low `
This will run tests and save commits if test passes, and will REVERT if test does not pass.

#### Previous repo
(test-commit-revert)[https://github.com/mwindholtz/test-commit-revert]

#### References
* [Kent Beck](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864)
* [JB Rainsberger](https://blog.thecodewhisperer.com/permalink/the-worlds-shortest-article-on-test-and-commit-otherwise-revert)
* [Thomas Deniffel](https://medium.com/@tdeniffel/limbo-test-commit-revert-a-test-alternative-to-tdd-6e6b03c22bec)

