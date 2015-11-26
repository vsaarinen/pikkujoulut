# Update your team and puzzle data in here. Assumes that the first
# puzzle will have ID 1 and so on.
teams = [
  {
    name: 'team-alongword',
    current_puzzle_id: 1,
    start_puzzle_id: 1
  },
  {
    name: 'team-neverguessthis',
    current_puzzle_id: 3,
    start_puzzle_id: 3
  },
  {
    name: 'team-lookmanopasswords',
    current_puzzle_id: 5,
    start_puzzle_id: 5
  }
]
puzzles = [
  { # ID = 1, etc.
    description: '1',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 2
  },
  {
    description: '2',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 3,
    final_puzzle_id: 8
  },
  {
    description: '3',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 4
  },
  {
    description: '4',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 5,
    final_puzzle_id: 9
  },
  {
    description: '5',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 6
  },
  {
    description: '6',
    image: 'image-hint.png',
    answer: 'foo',
    next_puzzle_id: 1,
    final_puzzle_id: 7
  },
  {
    description: '7',
    image: 'image-hint.png'
  },
  {
    description: '8',
    image: 'image-hint.png'
  },
  {
    description: '9',
    image: 'image-hint.png'
  },
]

Team.create(teams)
Puzzle.create(puzzles)
