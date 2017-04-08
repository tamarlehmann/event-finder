# Event Finder

An app that accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.

# Technologies
 * Ruby
 * RSpec

# Random Data Generation

I used [Mockaroo](https://www.mockaroo.com/) to generate random seed data. I generated 100 rows of JSON data. The structure is as follows:
 * ID, number
 * No_tickets, number between 0 and 100
 * Price, monetary value in $ between 0 and 100
 * x_coord, number between -10 and 10
 * y_coord, number between -10 and 10

I used `require 'json' ` to access JSON data.
