This is the finished Rails Tutorial sample application by Michael Hartle.
I made a few changes. The most visible one is that the users are populated by random Harry Potter, Rick and Morty, and Friends characters who spout random quotes from their series.

My app is hosted on [Heroku](https://langenfeld-micropost-app.herokuapp.com/).

<b>Implemented Functionality:</b>  
Modeled Users  
User Signup  
User Login  
User Logout  
Sessions  
Authentication  
Remember Tokens  
Persistent Sessions  
Updating, Showing, and Deleting Users  
Account Activation  
Password Reset
User Microposts  
Following Users    



# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).
