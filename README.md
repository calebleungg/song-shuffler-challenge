## Shuffler
A simple plugin designed to pick random songs to play from a list.
This was a code challenge.

## Installation

1. Install ruby version `3.1.2` ([A guide on how](https://www.ruby-lang.org/en/documentation/installation/))
2. Install dependencies by first installing bundler, then installing the packages. (There is only one dependency, `rspec`)
```bash
$: gem install bundler

# ... and then

$: bundle install
```

## How To Run
All tests reside inside the `spec` folder.

`rspec` was used as the testing framework.

To run the tests, use either commands:
```bash
# runs tests at the specified location
$: rspec spec/models/shuffler.rb

# runs all the tests underneath the spec folder
$: rspec
```
