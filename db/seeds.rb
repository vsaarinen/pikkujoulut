# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = [
  {
    name: 'piparmonsterit',
    current_puzzle_id: 1,
    start_puzzle_id: 1
  },
  {
    name: 'glögihirmut',
    current_puzzle_id: 3,
    start_puzzle_id: 3
  },
  {
    name: 'tortuntuhoajat',
    current_puzzle_id: 5,
    start_puzzle_id: 5
  }
]
puzzles = [
  { # ID = 1, etc.
    description: '1',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 2
  },
  {
    description: '2',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 3,
    final_puzzle_id: 8
  },
  {
    description: '3',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 4
  },
  {
    description: '4',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 5,
    final_puzzle_id: 9
  },
  {
    description: '5',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 6
  },
  {
    description: '6',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif',
    answer: 'foo',
    next_puzzle_id: 1,
    final_puzzle_id: 7
  },
  {
    description: '7',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif'
  },
  {
    description: '8',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif'
  },
  {
    description: '9',
    image: 'http://img3.wikia.nocookie.net/__cb20071019155930/uncyclopedia/images/7/7b/Dancing_banana.gif'
  },
]

Team.create(teams)
Puzzle.create(puzzles)
