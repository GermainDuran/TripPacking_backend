Welcome to TriPacking
======================


TripPacking is an application that allows users to organize and create trips with suitcases to be able to track all the belongings taken to a certain trip in an orderly and modern way.

Developed a Rails API backend with endpoints for users, trips, belongings and suitcases. Enabled full CRUD for trips, suitcases and belongings.
+ Implemented user interface employing React/Redux and JavaScript with Materialize CSS for styling.
+ Utilized JSON Web Tokens, localStorage and bcrypt gem to store encrypted user information client-side.
+ Used Logo Maker to design the main logo of the application in the front end.
+ Incorporated Cloudinary API to enable image uploads.

Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Prerequisites
Before running, be sure to have the following installed and running:

Ruby version: 2.5.3
PostgreSQL database

Installing
Run the following from your terminal in the root directory of this repo:

bundle install
rails db:setup
rails db:migrate
rails db:seed (if you want dummy data to work with)
rails s

Author:
Germain Arturo Duran Torres

FrontEnd Repository
https://github.com/GermainDuran/tripPacking_frontEnd

Demo
