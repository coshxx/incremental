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
    owned: 0
    quote: "<°))))><"
  "dollar":
    name: "Dollars"
    owned: 100000
  "officeworker":
    name: "Office Worker"
    plural: "Office Workers"
    price: 30
    pricefactor: 1.07
    subtext: "Working 9 to 5 this guy automatically sells your fish."
    owned: 0
    efficiency: 1
    upgradeprice: 300
    upgradefactor: 3
    quote: "God I hate this job!"
    tier: 1
  "fisher":
    name: "Fisher"
    plural: "Fishers"
    price: 10
    pricefactor: 1.07
    subtext: "The fellow that catches the fish from the depths of the oceans. He is very slow but he never tires."
    owned: 0
    efficiency: 0.2
    upgradeprice: 200
    upgradefactor: 4
    quote: "Meh, let's go fishing!"
    tier: 0
  "dynamite":
    name: "Dynamite"
    plural: "Dynamite-Fishers"
    price: 100
    pricefactor: 1.07
    subtext: "The only true way to fish"
    owned: 0
    efficiency: 2
    upgradeprice: 1000
    upgradefactor: 2
    quote: "'Cause I'm T.N.T"
    tier: 3
  "boat":
    name: "Boat"
    plural: "Boats"
    price: 1000
    pricefactor: 1.07
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    efficiency: 5
    upgradeprice: 200
    upgradefactor: 2
    quote: "Well I'm on the Downeaster Alexa."
    tier: 0
  "robot":
    name: "Robot"
    plural: "Robots"
    price: 10000
    pricefactor: 1.07
    subtext: "Fish-hunting machines from the future."
    owned: 0
    efficiency: 10
    upgradeprice: 200
    upgradefactor: 2
    quote: "I'll be back."
    tier: 0
  "plane":
    name: "Plane"
    plural: "Planes"
    price: 100000
    pricefactor: 1.07
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    efficiency: 20
    upgradeprice: 200
    upgradefactor: 2
    quote: "How does this even work?!"
    tier: 0
  "submarine":
    name: "Submarine"
    plural: "Submarines"
    price: 1000000
    pricefactor: 1.07
    subtext: "The greatest submarine captains"
    owned: 0
    efficiency: 40
    upgradeprice: 200
    upgradefactor: 2
    quote: "Re-verify our range to target...one ping only."
    tier: 0
  "nuke":
    name: "Nuke"
    plural: "Nukes"
    price: 10000000
    pricefactor: 1.07
    subtext: "Attack the ocean."
    owned: 0
    efficiency: 80
    upgradeprice: 10000000
    upgradefactor: 2
    quote: "Sir, I'm not sure this is a good idea."
    tier: 0

