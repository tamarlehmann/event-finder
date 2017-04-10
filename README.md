# Event Finder [![Build Status](https://travis-ci.org/tamarlehmann/event-finder.svg?branch=master)](https://travis-ci.org/tamarlehmann/event-finder)[![Coverage Status](https://coveralls.io/repos/github/tamarlehmann/event-finder/badge.svg?branch=master)](https://coveralls.io/github/tamarlehmann/event-finder?branch=master)

An app that accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

## Technologies
 * Ruby
 * RSpec

## Installation Instructions & Running The Code
  * Clone this repo
  * The project is a command-line tool. Start up `irb`
  * Require the file `require './lib/grid.rb'`
  * Create a grid `grid = Grid.new`
  * Call method to find events `grid.find_events`
  * Read message `Please Input Coordinates e.g. 2, 3` and respond e.g. `2, 3`
  * See output of five closest events to the specified coordinates:
  ```
  Closest Events to (2, 3)
  Event 046 -  $31.65, Distance 2
  Event 092 -  $50.27, Distance 3
  Event 003 -  $73.87, Distance 4
  Event 073 -  $35.30, Distance 5
  Event 020 -  $93.85, Distance 6
  ```

## Running The Tests
* Run `rspec` in the command-line
* See 11 tests pass

## Random Data Generation

I used [Mockaroo](https://www.mockaroo.com/) to generate random seed data. I generated 100 rows of JSON data. The structure is as follows:
 * ID, number
 * No_tickets, number between 0 and 100
 * Price, monetary value in $ between 0 and 100
 * x_coord, number between -10 and 10
 * y_coord, number between -10 and 10

I used `require 'json' ` to access JSON data.
