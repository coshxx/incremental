'use strict'

###
  All the data for the game
###
angular.module 'incrementalApp'
.value 'units', units =
  "ascension":
    name: "Ascension"
    owned: 0
  "pearl":
    name: "Pearl"
    plural: "Pearls"
    subtext: "Rich and luxuriant beauty. Drawn up from the bottom of the ocean."
    owned: 0
    active: 0
    spent: 0
    nextpearl: 1000000000
    nextpearlfactor: 4.5
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
    owned: 0 #1000000000000000000
    total: 0
    subtext: "Money makes the world go round."
  "officeworker":
    name: "Office Worker"
    plural: "Office Workers"
    price: 30
    pricefactor: 2
    efficiency: 2
    efficiencyfactor: 27
    upgradeprice: 1000
    upgradefactor: 2.5
    upgradecurrency: "fish"
    subtext: "Working 9 to 5 this guy automatically sells your fish."
    owned: 0
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
    efficiency: 0.2
    efficiencyfactor: 2
    upgradeprice: 100
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "The fellow that catches the fish from the depths of the oceans. He uses the classic fishing rod."
    owned: 0
    quote: "Meh, let's go fishing!"
    tier: 0
    unlocked: true
    pearlupgrades: 0
    pearlupgradecost: 1
  "net":
    name: "Netfisher"
    plural: "Netfishers"
    price: 150
    pricefactor: 1.07
    efficiency: 1.15
    efficiencyfactor: 2
    upgradeprice: 1500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "Fisher with net. Slightly more effective."
    owned: 0
    quote: "If you spend too much time thinking about a thing, you'll never get it done."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "dynamite":
    name: "Dynamite-Fisher"
    plural: "Dynamite-Fishers"
    price: 2250
    pricefactor: 1.14
    efficiency: 13.5
    efficiencyfactor: 2
    upgradeprice: 22500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "This guy showed up with dynamite. 'Tis the ancient art of fishing' so he says."
    owned: 0
    quote: "'Cause I'm T.N.T"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "grandpa":
    name: "Grandpa"
    plural: "Grandpas"
    price: 33750
    pricefactor: 1.13
    efficiency: 162
    efficiencyfactor: 2
    upgradeprice: 337500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "His wife makes cookies all day. He likes to fish all day."
    owned: 0
    quote: "I am too old for this ... stuff."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "cat":
    name: "Cat"
    plural: "Cats"
    price: 506250
    pricefactor: 1.13
    efficiency: 1944
    efficiencyfactor: 2
    upgradeprice: 5062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "A really expensive breed, trained to catch fish all day."
    owned: 0
    quote: "Meow."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "boat":
    name: "Boat"
    plural: "Boats"
    price: 7593750
    pricefactor: 1.12
    efficiency: 23328
    efficiencyfactor: 2
    upgradeprice: 75937500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "A powerful boat that roams the ocean for you."
    owned: 0
    quote: "Well I'm on the Downeaster Alexa."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "tank":
    name: "Tank"
    plural: "Tanks"
    price: 113906250
    pricefactor: 1.12
    efficiency: 279936
    efficiencyfactor: 2
    upgradeprice: 1139062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "Amphibious fish hunting unit."
    owned: 0
    quote: "WE GOT A TANK!"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "robot":
    name: "Robot"
    plural: "Robots"
    price: 1708593750
    pricefactor: 1.11
    efficiency: 3359232
    efficiencyfactor: 2
    upgradeprice: 17085937500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "A cybernetic organism. Living tissue over a metal endoskeleton. Programmed to fish."
    owned: 0
    quote: "I'll be back."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "plane":
    name: "Plane"
    plural: "Planes"
    price: 25628906250
    pricefactor: 1.10
    efficiency: 40310784
    efficiencyfactor: 2
    upgradeprice: 256289062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "The latest in fishing technology. Hunt from above."
    owned: 0
    quote: "How does this even work?!"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "xenomorph":
    name: "Xenomorph"
    plural: "Xenomorphs"
    price: 384433593750
    pricefactor: 1.10
    efficiency: 483729408
    efficiencyfactor: 2
    upgradeprice: 3844335937500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "It bleeds acid. Must be useful for fishing."
    owned: 0
    quote: "Ash, can you hear me? Ash?"
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "submarine":
    name: "Submarine"
    plural: "Submarines"
    price: 5766503906250
    pricefactor: 1.10
    efficiency: 5804752896
    efficiencyfactor: 2
    upgradeprice: 57665039062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "The greatest submarine captains"
    owned: 0
    quote: "Re-verify our range to target...one ping only."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "ufo":
    name: "Ufo"
    plural: "Ufos"
    price: 86497558593750
    pricefactor: 1.10
    efficiency: 69657034752
    efficiencyfactor: 2
    upgradeprice: 864975585937500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "The aliens inside seem friendly."
    owned: 0
    quote: "E.T. phone home."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
  "nuke":
    name: "Nuke"
    plural: "Nukes"
    price: 1297463378906250
    pricefactor: 1.10
    efficiency: 835884417024
    efficiencyfactor: 2
    upgradeprice: 12974633789062500
    upgradefactor: 4
    upgradecurrency: "dollar"
    subtext: "An atomic bomb. Attack the ocean."
    owned: 0
    quote: "Now, I am become Death, the destroyer of worlds."
    tier: 0
    unlocked: false
    pearlupgrades: 0
    pearlupgradecost: 1
