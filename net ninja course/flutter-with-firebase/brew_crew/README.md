![](https://github.com/Hardik-S/AndroidStudioProjects/blob/master/net%20ninja%20course/flutter-with-firebase/brew_crew/showcase_images/Brew%20Crew%20Showcase.png)

# Summary

A Flutter application to check the time of different locations around the world with an intuitive UI. 

# Specific Screens

Can be found in lib -> screens. 

## Loading Screen

Created using a package from PubDev. Simple Fading Cube from SpinKit.

## Register + Sign In

Allows user to register or sign in (and swap between the two options using authenticate) using an email and password. Uses local validation (char length) and firestore validation (real email) to create account.

## Brew Tiles

Tile updates in real time to reflect user nickname, # of sugars, coffee strength in colour. Uses flutter ListView to organize in an orderly fashion.

## Services

Authentication and streaming data from database are the two services used. AuthService extracts useful information from Firebase user type to create user object with relevant data. Also connects to firebase for email validation and database storage. Database service updates user information real time using firebase snapshots.

# What I learned

I dove deeply into the features and functions of asynchronous code and the benefits of modularization. Also familiarized myself with Firebase, Firestore and streams in data. Introduced to data pipeline concept. Learned about authentication processes and found myself relating app development concepts to real apps that I use on a daily basis.

Overall had a lot of fun over the 4-day course that this video series took me to complete.

## What's next? 

Next, I will continue by starting on the backend for a blindfold chess app.

I want to use the Lichess API and NLP to create a viable method of transferring voice commands into a game of live chess.
