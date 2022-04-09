# Plan:

4 objects:

1. Player
2. Round
3. Question
4. Match

## Player

- Store name
- Store lives
- methods:
  - Get name
  - Reduce life
  - Req: accessor

## Round

- Store current player
- methods:
  - Generate question for player
  - Call player life reduction

## Question

- Stores question/answer input and output
- Methods:
  - Generates question and answer
  - Assesses answer w/feedback

## Match

- Store entire match
- Starts game loop
  - Generates 2 players
  - Starts round
  - Ends when player life reduced to 0

## NewGame

- Starts a new game instance when initialized
