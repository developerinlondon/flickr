README
===

Demo of carousel using jQuery (not using any plug-ins) to display a list of photos (loaded from Flickr)

This Project is built in 3 steps, which is put on 3 branches separately:

Branch 1: Story 1
---

- The images is loaded directly from Flickr API: http://api.flickr.com/services/feeds/photos_public.gne?tags=bskyb&format=json&tagmode=any in file `carousel.erb`
- We use simple jQuery code to display the images
- demo: http://murmuring-lowlands-9256.herokuapp.com/

Branch 2: Story 2
---
- We create a model to store to title and image URL from Flickr API
- We create an API to return JSON format, contain the list of title and image URL that fetch from Flickr API.
- demo: http://murmuring-lowlands-9256.herokuapp.com/flickr

Branch 3: Story 3
---
- We use the JSON data from Story 2 to use in our simple Carousel slider (Story 1). The carousel does not calling the Flickr API directly, the job is now done with the Flickr service which is implemented in Story 2.
- We also improve Carousel with loading indicator, and handle case with error data.

(Demo)
---
http://murmuring-lowlands-9256.herokuapp.com/ 
http://murmuring-lowlands-9256.herokuapp.com/flickr

Testing
==

We have some tests in place. 

Run 'rspec' for testing.
