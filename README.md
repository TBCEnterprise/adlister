# Adlister

## Checkout the demo!
http://tbclister-env.smz2mnhxpg.us-east-1.elasticbeanstalk.com/ads

### Welcome to Adlister!

- This project is inteded to provide a barebone version of Craigslist, with varied functionality depending on the users preference. 
- Adlister is setup to simulate a end-users version of a ad posting website. 

## Latest features

#### v 1.0.1.7

- Added ability to allow users, once signed in, to contact the owner of a post through the sites email. This allows users to maintain privacy and not have their email displayed on the page.
- Added images to the individual Ad page.

## Features

- Full featured database using MySQL.
- Password hashing/salting.
- Ability to edit post owned by the logged in user from the profile or the main listing page.
- Utilizes Bootstrap 4 for all styling (no native css file, but can be added).
- Built entirely with Java.

## Installation
- Fork the repo and clone it down to your local machine.
- Ensure you have Java SDK 9 and MySQL 5.6+ as well as Tomcat 8+ and Maven4+.
- If you have an IntelliJ installed running the latest version, you should be ok.
- Create a Config.class within the DAO folder. This file should instantiate the necessary configurations needed to access your database and to log in to the appropriate email service to enable that feature.

## Bugs
- Current landing page is terrible. Feel free to replace it with whatever you like.
- Not ever exception has been tested or caught. Apache/Java/SQL exception may occur from uncaught edge case.
