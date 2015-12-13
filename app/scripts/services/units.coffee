'use strict'

###
  All the data for the game
###
angular.module 'incrementalApp'
.value 'units', units =
  "pearl":
    name: "Pearl"
    plural: "Pearls"
    owned: 0
  "fish":
    name: "Fish"
    plural: "Fish" # http://grammarist.com/usage/fish-fishes/
    price: 0
    subtext: "The fish that swims in the ocean."
    owned: 0
    quote: "<°))))><"
  "dollar":
    name: "Dollars"
    owned: 0
  "officeworker":
    name: "Office Worker"
    plural: "Office Workers"
    price: 30
    pricefactor: 1.05
    subtext: "Working 9 to 5 this guy automatically sells your fish."
    owned: 0
    efficiency: 2
    efficiencyfactor: 2
    upgradeprice: 1000
    upgradefactor: 1.15
    quote: "God I hate this job!"
    tier: 0
    unlocked: true
  "fisher":
    name: "Fisher"
    plural: "Fishers"
    price: 10
    pricefactor: 1.07
    subtext: "The fellow that catches the fish from the depths of the oceans. He uses the classic fishing rod."
    owned: 0
    efficiency: 0.2
    efficiencyfactor: 2
    upgradeprice: 100
    upgradefactor: 3
    quote: "Meh, let's go fishing!"
    tier: 0
    unlocked: true
  "dynamite":
    name: "Dynamite-Fisher"
    plural: "Dynamite-Fishers"
    price: 150
    pricefactor: 1.07
    subtext: "This guy showed up with dynamite. 'Tis the ancient art of fishing' so he says."
    owned: 0
    efficiency: 1.15
    efficiencyfactor: 2
    upgradeprice: 1500
    upgradefactor: 3
    quote: "'Cause I'm T.N.T"
    tier: 0
    unlocked: false
  "boat":
    name: "Boat"
    plural: "Boats"
    price: 1800
    pricefactor: 1.14
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    efficiency: 13.5
    efficiencyfactor: 2
    upgradeprice: 18000
    upgradefactor: 3
    quote: "Well I'm on the Downeaster Alexa."
    tier: 0
    unlocked: false
  "robot":
    name: "Robot"
    plural: "Robots"
    price: 21600
    pricefactor: 1.13
    subtext: "Fish-hunting machines from the future."
    owned: 0
    efficiency: 162
    efficiencyfactor: 2
    upgradeprice: 216000
    upgradefactor: 3
    quote: "I'll be back."
    tier: 0
    unlocked: false
  "plane":
    name: "Plane"
    plural: "Planes"
    price: 259200
    pricefactor: 1.12
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    efficiency: 1944
    efficiencyfactor: 2
    upgradeprice: 2592000
    upgradefactor: 3
    quote: "How does this even work?!"
    tier: 0
    unlocked: false
  "submarine":
    name: "Submarine"
    plural: "Submarines"
    price: 3110400
    pricefactor: 1.11
    subtext: "The greatest submarine captains"
    owned: 0
    efficiency: 23328
    efficiencyfactor: 2
    upgradeprice: 31104000
    upgradefactor: 3
    quote: "Re-verify our range to target...one ping only."
    tier: 0
    unlocked: false
  "nuke":
    name: "Nuke"
    plural: "Nukes"
    price: 37324800
    pricefactor: 1.10
    subtext: "Attack the ocean."
    owned: 0
    efficiency: 279936
    efficiencyfactor: 2
    upgradeprice: 373248000
    upgradefactor: 3
    quote: "Sir, I'm not sure this is a good idea."
    tier: 0
    unlocked: false
