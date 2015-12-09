'use strict'

###
  All the data for the game
###
angular.module 'incrementalApp'
.value 'units', units =
  "fish":
    name: "Fish"
    price: 0
    subtext: "The fish that swims in the ocean."
    pricefactor: 0
    owned: 0
    efficiency: 0
    upgradeprice: 0
    upgradefactor: 7.5
    quote: "I'm a fish, look at me."
  "fisher":
    name: "Fisher"
    price: 10
    pricefactor: 1.07
    subtext: "The fellow that catches the fish from the depths of the oceans. He is very slow but he never tires."
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Meh, let's go fishing!"
  "boat":
    name: "Boat"
    price: 100
    pricefactor: 1.07
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Well I'm on the Downeaster Alexa."
  "plane":
    name: "Plane"
    price: 1000
    pricefactor: 1.07
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "How does this even work?!"
  "submarine":
    name: "Submarine"
    price: 10000
    pricefactor: 1.07
    subtext: "The greates submarine captains"
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Re-verify our range to target...one ping only."
