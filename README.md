# Tennis Refactoring Kata

## Installation

```bash
git clone https://github.com/dvrensk/tennis-kata
cd tennis-kata
bundle install
# Make sure you can run the tests
bundle exec ruby tennis_test.rb
# Once you start, run the tests continuously in a terminal:
bash run_tests.sh
```

## Your task, should you choose to accept it…

Imagine you work for a consultancy company, and one of your colleagues has been doing some work for the Tennis Society. The contract is for 10 hours billable work, and your colleague has spent 8.5 hours working on it. Unfortunately he has now fallen ill. He says he has completed the work, and the tests all pass. Your boss has asked you to take over from him. She wants you to spend an hour or so on the code so she can bill the client for the full 10 hours. She instructs you to tidy up the code a little and perhaps make some notes so you can give your colleague some feedback on his chosen design.

There are three versions of this refactoring kata, each with their own design smells and challenges. I suggest you start with the first one, in `tennis_game_1.rb`. The test suite provided is fairly comprehensive, and fast to run. You should not need to change the tests, only run them often as you refactor.

## Scoring Tennis

Tennis has a rather quirky scoring system, and to newcomers it can be a little difficult to keep track of. The tennis society has contracted your company to build a scoreboard to display the current score during tennis games. 

Your task is to write a “TennisGame” class containing the logic which outputs the correct score as a string for display on the scoreboard. When a player scores a point, it triggers a method to be called on your class letting you know who scored the point. Later, you will get a call “#score” from the scoreboard asking what it should display. This method should return a string with the current score.

You can read more about Tennis scores [here](http://en.wikipedia.org/wiki/Tennis#Scoring) which is summarized below:

1. A game is won by the first player to have won at least four points in total and at least two points more than the opponent.
1. The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as "love", "fifteen", "thirty", and "forty" respectively.
1. If at most three points have been scored by each player, and the scores are equal, the score is "_points_-all", e.g., "fifteen-algit add README.mdbeen scored by each player, and the scores are equal, the score is "deuce".
1. If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is "advantage" for the player in the lead.

You need only report the score for the current game. Sets and Matches are out of scope.

## About this kata

The original Tennis kata was developed by Emily Bache and can be found in a multi-language version at [https://github.com/emilybache/Tennis-Refactoring-Kata]().  This Ruby-only version was prepared by David Vrensk.

If you like this Kata, you may be interested in Emily's book, ["The Coding Dojo Handbook"](https://leanpub.com/codingdojohandbook)
# tenis_kata
# tenis_kata
