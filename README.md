## Shuffler
A simple plugin designed to pick random songs to play from a list.

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

## Decisions

An assumption was made that the list would contain unique songs. This let me do tasks 1 and 2 in tandem, so you will only see 1 commit reference those tasks.

If the assumption does not hold, a good place to hold the logic for task 2 would be inside the `lib/models/picker.rb` class.

Another touch point perhaps would be to revisit the test cases as my hunch is my approach might be too prone to intermittent tests.

## Release / Commit Log

Task 1<br/>
commit `ce5c75bb672e6fa535cac4dad33d2b6a37d897bd Caleb Leung <caleb.leungg@gmail.com> 1658538324 +1000commit (initial): add: mvp picker`

Task 2 & 3<br/>
commit `8d936e90cc95c601db3604702b0a450e5191abd5 Caleb Leung <caleb.leungg@gmail.com> 1658541266 +1000commit: add: upgrades to shuffling experience`

Task 4<br/>
commit `b894bdffa194dddc9294798102674cc04d17bc5e Caleb Leung <caleb.leungg@gmail.com> 1658543656 +1000commit: add: artist variety logic to the shuffler`