# Toolshare README

### Description
Toolshare is a Ruby on Rails application built for Flatiron School's third module by @dansbands, @georgelgore, and @dansbands. The application is a platform for New Yorkers to rent tools from Toolshare. Users are able to search for and reserve tools from Toolshare at five toolshare locations (one in each borough).

In order to make a tool rental reservation, a user is required to sign up an account. Once users sign up and/or sign in they are redirected to their profile page. Profile pages list account information including contact information, active and past reservations, and reviews. Users can edit or cancel active reservations. Once a reservation is completed, a user can review the particular tool. Ratings for each individual tool can be found on their page, as well as average ratings. Three seed users were created including

email: george@george.com password: george
email: dan@dan.com password: dandan
email: paul@paul.com password: paulpaul

There is also an administrative account (email: admin@admin.com, password: adminadmin) that can view administrative statistics for the site and modify/cancel any reservations. The admin is also able to set the status for  an active reservation to completed. Links to admin only pages can be accessed through the admin profile page. 

Take a look on Heroku: https://toolshareapp.herokuapp.com/

### Installation instructions

In order to run the application, fork the repo or clone using the following:

```git clone https://github.com/pawlkris/toolshare.git ```

Then navigate to the directory you downloaded the files and run the following:

``` bundle install ```

``` rails s ```

Then navigate to http://localhost:3000 and explore away!
