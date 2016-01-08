# Facebook Ruby Assessment
This is a question repo for testing your web server understanding relate to Ruby. You'll be building a Facebook backend server application.

Included is a Sinatra Web Server version 0.0.9 based on https://github.com/hollowaykeanho/sinatra-web-server. You can obtain an updated version from the given link.

# Purpose
The assessment goal is to test your understanding about ActiveRecord, ActiveRecord Relationship and Association, RESTFUL standards and MVC through the use of Sinatra framework, structured to mimic Rails.

# Objectives
Your primary objective is to develop a **working** Facebook backend web app without heavy emphasis on the frontend. However, user experience (UX) is still considered in the assessment. To achieve an acceptable level, you should deliver:

> Tip: 
> Spend more time on the backend. Leave the frontend works as simple as possible.


## 1) A Wireframe of your App UX flow
This helps your mentor to navigate and test your app. It will be served as a map for your app.

## 2) Your database design
This helps to structure your database. It helps your mentor to verify and work with your data structure.

## 3) Your Working App
> By **Working** definition:
> Usable, configurable and all expected functions are working. It doesn't need to be pretty.

The App should be doing the following:

### User
1. User is able to create an account (sign up)
2. User is able to log into an account (sign in)
3. User is able to log out from an account (sign out)

### Posts
> Note: 
> Compulsory to use ActiveRecord Relationship in this section. E.g.: Url.first.user.name.


1. User is able to CREATE posts
2. User is able to VIEW posts
3. User is able to UPDATE his/her posts **only**
4. User is able to DELETE his/her posts **only**

### Comments
> Note: 
> Compulsory to use ActiveRecord Relationship in this section.


1. User is able to CREATE comment for a post
2. User is able to VIEW comment for a post
3. User is able to UPDATE his/her comment for a post **only**
4. User is able to DELETE his/her comment for a post **only**

### Likes (Optional)
> Note to mentor: 
>   Straight pass to mentee if he/she achieved this level with clean and acceptable codes.


1. User is able to CREATE like for a comment or a post
2. User is able to VIEW likes for a comment or a post
4. User is able to DELETE his/her own likes for a comment or a post **only**

# Time Length
A maximum of 5 hours. Hard stop at 3pm.

# Procedure
1. Fork this repo and git clone it to your local machine.
2. Have your mentor ready to time you.
3. Begin your code.
4. To submit, push your commits into your forked repo.
5. Post the link to your mentor and inform him/her your completion.
6. Your mentor will walk you through your codes.

# Good Luck!
