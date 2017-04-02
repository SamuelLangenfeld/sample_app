This app is a mini version of Twitter that lets users sign up and create microposts with text and images.  Users can follow or unfollow other users.  It was made following Michael Hartl's [Ruby on Rails Tutorial](http://www.railstutorial.org).

My app is hosted on [Heroku](https://langenfeld-micropost-app.herokuapp.com/).

<b>Implemented Functionality:</b>  
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

Users can post text up to 140 characters and an image. Any posts from other users they follow will show up in their feed.

![alt-text](https://github.com/SamuelLangenfeld/sample_app/blob/master/app/assets/images/new_image_post.png).



Unfortunately Heroku doesn't keep file uploads, so any images posted will be deleted when the dyno stops.

Users can see a list of all other users. Users that are authorized can delete other users accounts.


![alt-text](https://github.com/SamuelLangenfeld/sample_app/blob/master/app/assets/images/users_index.png)



Unauthorized users can still see the list, but will be unable to delete other users.

![alt-text](https://github.com/SamuelLangenfeld/sample_app/blob/master/app/assets/images/users_index_no_authentication.png)
