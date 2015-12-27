'use strict'

###
  All the data for the game
###
angular.module 'incrementalApp'
.value 'units', units =
  "pearl":
    name: "Pearl"
    plural: "Pearls"
    subtext: "Rich and luxuriant beauty. Drawn up from the bottom of the ocean."
    owned: 0
    active: 0
    spent: 0
    nextpearl: 100000000
    nextpearlfactor: 3.5
  "fish":
    name: "Fish"
    plural: "Fish" # http://grammarist.com/usage/fish-fishes/
    price: 0
    subtext: "The fish that swims in the ocean."
    owned: 0
    quote: "<°))))><"
    total: 0 # for pearl-tracking
  "dollar":
    name: "Dollar"
    plural: "Dollars"
    owned: 100000
    subtext: "Money makes the world go round."
  "officeworker":
    name: "Office Worker"
    plural: "Office Workers"
    price: 30
    pricefactor: 2
    subtext: "Working 9 to 5 this guy automatically sells your fish."
    owned: 0
    efficiency: 2
    efficiencyfactor: 2
    upgradeprice: 1000
    upgradefactor: 3
    upgradecurrency: "fish"
    quote: "God I hate this job!"
    tier: 0
    unlocked: true
    pearlupgrades: 0
    pearlupgradecost: 1
    paused: false
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
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "Meh, let's go fishing!"
    tier: 0
    unlocked: true
    pearlupgrades: 0
    pearlupgradecost: 1
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
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "'Cause I'm T.N.T"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "boat":
    name: "Boat"
    plural: "Boats"
    price: 2250
    pricefactor: 1.14
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    efficiency: 13.5
    efficiencyfactor: 2
    upgradeprice: 22500
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "Well I'm on the Downeaster Alexa."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "robot":
    name: "Robot"
    plural: "Robots"
    price: 33750
    pricefactor: 1.13
    subtext: "Fish-hunting machines from the future."
    owned: 0
    efficiency: 162
    efficiencyfactor: 2
    upgradeprice: 337500
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "I'll be back."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "plane":
    name: "Plane"
    plural: "Planes"
    price: 506250
    pricefactor: 1.12
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    efficiency: 1944
    efficiencyfactor: 2
    upgradeprice: 5062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "How does this even work?!"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "submarine":
    name: "Submarine"
    plural: "Submarines"
    price: 7593750
    pricefactor: 1.11
    subtext: "The greatest submarine captains"
    owned: 0
    efficiency: 23328
    efficiencyfactor: 2
    upgradeprice: 75937500
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "Re-verify our range to target...one ping only."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "nuke":
    name: "Nuke"
    plural: "Nukes"
    price: 113906250
    pricefactor: 1.10
    subtext: "Attack the ocean."
    owned: 0
    efficiency: 279936
    efficiencyfactor: 2
    upgradeprice: 1139062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    quote: "Sir, I'm not sure this is a good idea."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
