# Event Finder [![Build Status](https://travis-ci.org/tamarlehmann/event-finder.svg?branch=master)](https://travis-ci.org/tamarlehmann/event-finder) [![Coverage Status](https://coveralls.io/repos/github/tamarlehmann/event-finder/badge.svg?branch=master)](https://coveralls.io/github/tamarlehmann/event-finder?branch=master)

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
  * Read message `Please Input Coordinates e.g. 2, 3` and respond with coordinates e.g. `2, 3`
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

## Assumptions
- I used [Mockaroo](https://www.mockaroo.com/) to generate random seed data. I generated 100 rows of JSON data. The structure is as follows:
 * ID, number
 * No_tickets, number between 0 and 100
 * Price, monetary value in $ between 0 and 100
 * x_coord, number between -10 and 10
 * y_coord, number between -10 and 10
Ruby has JSON built in, just `require JSON` needed at the top of the file.

- Only accessible method that can be called is find_events, everything else is unknown to the application.

## Ideas For Extension
- Supporting multiple ticket prices at a single location
  * I would have ticket price as an array within the event hash.
  * When outputting the events I would sort the price array in ascending order and output the price at the first position in the array.
- Supporting multiple events at the same location
  * I would store the events as an array of hashes rather than a single hash for a single event. When finding the closest events would ensure that each cell's events are iterated over when outputting the five closest events.
  * I would consider adding a date attribute for each event to distinguish which events were output when finding the closest five.
- Working with a much larger world size?  
  * I would have an 'Area' class which would create a grid for a specific location of a specific size (e.g. this is X= -10 to 10 and Y= -10 to 10).
  * When finding the five closest events I would ensure that the app required the user to input a location before the specific coordinates.
  * I would add a location attribute to each event so that when events were assigned to a cell, the events were added to the cell at the correct location.

## Task Requirements
- Your program should randomly generate seed data
- Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis)
- Your program should assume that each co-ordinate can hold a maximum of one event
- Each event has a unique numeric identifier (e.g. 1, 2, 3)
- Each event has zero or more tickets
- Each ticket has a non-zero price, expressed in US Dollars
- The distance between two points should be computed as the Manhattan distance
