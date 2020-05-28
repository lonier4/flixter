# README

# Flixter

### Ruby/Ruby on Rails / AWS / JavaScript / jQuery / AJAX / postgreSQL / REST APIs

The application is a two-sided video-streaming marketplace, featuring credit card payment capabilities for students to sign up for courses. User role management comes into play to manage students and teachers separate pages and the postgreSQL database.

Bootstrap is used through the application for the top navigation bar, footer and the grid system for content layout. Subtlepatterns.com supplied the background patterns. The footer is a sticky footer thanks to the CSS property Flexbox.

An image from http://www.unsplash.com is used as the background for the hero section on the landing page.  

"Simple form gem" was used for all forms used by teachers and students such as the sign in/up form. Backend user authentication was facilitated with the "devise gem".

The application has courses which then have several sections and those have several lessons. The lessons have videos that only teachers can upload. Students sign up for the courses which gives them access to the lesson videos. In order to manage user roles, I built separate controllers for students and teachers, each having its own URL with the Rails feature _namespaces._

Validation throughout the app ensures only a logged in user can create courses and only the user who created the course can create a section or lesson for that course. 

In the process of refactoring my code to avoid redundancy, I used _memoization_ to store certain values inside of the memory to reduce the times I had to find a certain value inside the database. This allowed me to call a function directly in views using helper methods so Rails knows it can let the view call it.

"Carrierwave gem" was used to allow the image uploads for the lessons. It was then switched to Amazon S3 (AWS) for improved storage and security. Using the 'ImageMagick" program, I was able to change the resolution of images that were to large as they were uploaded by users to reduce page load times. 

The "MiniMagick gem" was installed to give CarrierWave the ability to reach out to the ImageMagick program and resize images. The "Carrierwave-aws gem" was used for the video uploads. The video player is a _VideoJS_ widget.

Once a student is logged in they can enroll and pay for the course with a credit card. Using the "Stripe gem" I was able to hook up the Stripe API to connect to their server and allow credit card payments by receiving a token to pull the funds form an users bank account. 

To enroll in a course with a dummy payment for test purposes use credit card #  4242-4242-4242-4242 followed by any expiration date in the future and any 3 digit CCV number

The "ranked-model gem" was used to keep track of the ordinal number or the position of each lesson created by a teacher within a section of a course in the database. It also allows the teacher to rearrange the order of lessons. In other words each lesson has a rank.

To allow the teacher to "drag and drop" the lessons in different orders, JavaScript was recruited along with the help of jQuery. This way changes can be made to the page without having to reload it and changes to the database can sync through an AJAX request.
