# Food Guide on Rails

My project is a food website that has a list of Resturants where users can sign up to submit reviews about the listed resturant and add images of the food they enjoyed in the resturnat.

## Functionality

The app suppots the following functionality:

* User can add, edit and delete a review.
* User can add and delete and image.
* User can view all reviews of chosen user.
* Admin can delete any review or image by other users.

## Features

### Gems

* Bootstrap for styling
* Kaminari for pagination
* Faker to generate fake data for seeding
* Active Stograge to upload images
* aws-sdk to store files on Amazon S3.

### New Technologies

* using amazon buckets to save images after herkou deployment
* using seed to populate my Resturant data base with Faker gem
* Using active storage to upload images

### Challenges faced

The most challenging and rewarding part were two requirements :

- integrationg the reviews in the resturant show pages.
- trying to secure Amazon credentials so it will be more secure to push my code to github safely 

### Favorite parts

Definetly the using amazon buckets then building the relations 

### What to add next ?

Resturant reservation services and user profiles.

### Demo-ish

The below is a screen-shot of what I think is the most beautiful webpage in my site 

![Image of Yaktocat](https://i.ibb.co/mGRXpC4/Screenshot-2019-06-19-Restaurant.png)

