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
    quote: "<°))))><"
  "dollar":
    name: "Dollars"
    owned: 1000000
  "officeworker":
    name: "Office Worker"
    plural: "Office Workers"
    price: 25
    pricefactor: 1.07
    subtext: "Working 9 to 5 this guy automatically sells your fish."
    owned: 0
    efficiency: 2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "God I hate this job!"
    tier: 0
  "fisher":
    name: "Fisher"
    plural: "Fishers"
    price: 10
    pricefactor: 1.07
    subtext: "The fellow that catches the fish from the depths of the oceans. He is very slow but he never tires."
    owned: 0
    efficiency: 0.02
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Meh, let's go fishing!"
    tier: 0
  "boat":
    name: "Boat"
    plural: "Boats"
    price: 100
    pricefactor: 1.07
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Well I'm on the Downeaster Alexa."
    tier: 0
  "plane":
    name: "Plane"
    plural: "Planes"
    price: 1000
    pricefactor: 1.07
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    efficiency: 2
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "How does this even work?!"
    tier: 0
  "submarine":
    name: "Submarine"
    plural: "Submarines"
    price: 10000
    pricefactor: 1.07
    subtext: "The greates submarine captains"
    owned: 0
    efficiency: 20
    upgradeprice: 200
    upgradefactor: 7.5
    quote: "Re-verify our range to target...one ping only."
    tier: 0
