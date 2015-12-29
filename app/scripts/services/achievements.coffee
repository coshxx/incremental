'use strict'

angular.module 'incrementalApp'
.factory 'achievements', (achievementslist, $log) -> new class Achievements
  constructor: ->
    @unlockcount = {
      amount: 0
    }

    @recentunlocks = []

  checkUnit: (unit) =>
    for ach in achievementslist
      if ach.requiredunit is unit.name
        if ach.requiredamount <= unit.owned
          if ach.unlocked is false
            ach.unlocked = true
            ach.revealed = true
            @unlockcount.amount++
            @recentunlocks.push(ach)

  getList: ->
    achievementslist

  getUnlockCount: =>
    @unlockcount

  getRecentUnlocks: =>
    @recentunlocks

  clearRecentUnlocks: =>
    @recentunlocks = []

###
  All the achievements
###
angular.module 'incrementalApp'
.value 'achievementslist', achievementslist = [
  {
    title: "A slow start"
    subtext: "Catch your first fish"
    content: "Catch 1 fish"
    revealed: true
    unlocked: false
    requiredunit: "Fish"
    requiredamount: 1
  }
  {
    title: "Fishing Master"
    subtext: "Catch a few fish"
    content: "Catch 1k fish"
    revealed: false
    unlocked: false
    requiredunit: "Fish"
    requiredamount: 1000
  }
  {
    title: "Fishing Millionaire"
    subtext: "Catch a million fish"
    content: "Catch 1M fish"
    revealed: false
    unlocked: false
    requiredunit: "Fish"
    requiredamount: 1000000
  }
  {
    title: "Fishing Billionaire"
    subtext: "Catch a billion fish"
    content: "Catch 1B fish"
    revealed: false
    unlocked: false
    requiredunit: "Fish"
    requiredamount: 1000000000
  }
  {
    title: "Fishing Trillionaire"
    subtext: "Catch a trillion fish"
    content: "Catch 1T fish"
    revealed: false
    unlocked: false
    requiredunit: "Fish"
    requiredamount: 1000000000000
  }
  {
    title: "A helping hand"
    subtext: "Buy your first fisher"
    content: "Buy 1 Fisher"
    revealed: true
    unlocked: false
    requiredamount: 1
    requiredunit: "Fisher"
  }
  {
    title: "A few good fisher"
    subtext: "You can't handle the fish"
    content: "Buy 10 fisher"
    revealed: true
    unlocked: false
    requiredamount: 10
    requiredunit: "Fisher"
  }
  {
    title: "Entrepreneur"
    subtext: "100 guys off the street"
    content: "Buy 100 fisher"
    revealed: false
    unlocked: false
    requiredunit: "Fisher"
    requiredamount: 100
  }
  {
    title: "A new beginning"
    subtext: "Who are you? 'Nobody'-Net-Fisher"
    content: "Buy 1 Net-Fisher"
    revealed: false
    unlocked: false
    requiredunit: "Net-Fisher"
    requiredamount: 1
  }
  {
    title: "Net-workers"
    subtext: "Punny"
    content: "Buy 10 Net-Fisher"
    revealed: false
    unlocked: false
    requiredunit: "Net-Fisher"
    requiredamount: 10
  }
  {
    title: "Dynamite?"
    subtext: "Watch your fingers"
    content: "Buy 1 Dynamite-Fisher"
    revealed: false
    unlocked: false
    requiredunit: "Dynamite-Fisher"
    requiredamount: 1
  }
  {
    title: "Explosions everywhere"
    subtext: "It's loud but it's effective"
    content: "Buy 10 Dynamite-Fisher"
    revealed: false
    unlocked: false
    requiredunit: "Dynamite-Fisher"
    requiredamount: 10
  }
  {
    title: "Grandpa?"
    subtext: "His wife works in a cookie factory not far from here."
    content: "Buy 1 Grandpa"
    revealed: false
    unlocked: false
    requiredunit: "Grandpa"
    requiredamount: 1
  }
  {
    title: "They can hardly hold the fishing rod"
    subtext: "...but they are good."
    content: "Buy 10 Grandpas"
    revealed: false
    unlocked: false
    requiredunit: "Grandpa"
    requiredamount: 10
  }
  {
    title: "A cat"
    subtext: "That's not a cat. That's a monster."
    content: "Buy 1 cat"
    revealed: false
    unlocked: false
    requiredunit: "Cat"
    requiredamount: 1
  }
  {
    title: "Meowwwwwwwww"
    subtext: "My ears hurt"
    content: "Buy 10 Cats"
    revealed: false
    unlocked: false
    requiredunit: "Cat"
    requiredamount: 10
  }
  {
    title: "I should buy a boat"
    subtext: "-cat"
    content: "Buy 1 Boat"
    revealed: false
    unlocked: false
    requiredunit: "Boat"
    requiredamount: 1
  }
  {
    title: "A fleet"
    subtext: "That must have been expensive?"
    content: "Buy 10 boats"
    revealed: false
    unlocked: false
    requiredunit: "Boat"
    requiredamount: 10
  }
  {
    title: "Scary"
    subtext: "It's a tank after all"
    content: "Buy 1 tank"
    revealed: false
    unlocked: false
    requiredunit: "Tank"
    requiredamount: 1
  }
  {
    title: "An army"
    subtext: "And you want them for fishing? Right?"
    content: "Buy 10 tanks"
    revealed: false
    unlocked: false
    requiredunit: "Tank"
    requiredamount: 10
  }
  {
    title: "Great, a robot"
    subtext: "He looks familiar."
    content: "Buy 1 robot"
    revealed: false
    unlocked: false
    requiredunit: "Robot"
    requiredamount: 1
  }
  {
    title: "A robot army"
    subtext: "Cyberdyne called. They want their machines back."
    content: "Buy 10 robots"
    revealed: false
    unlocked: false
    requiredunit: "Robot"
    requiredamount: 10
  }
  {
    title: "What? Why?"
    subtext: "The pilot tells you this is perfectly safe."
    content: "Buy 1 plane"
    revealed: false
    unlocked: false
    requiredunit: "Plane"
    requiredamount: 1
  }
  {
    title: "We might need more space "
    subtext: "This is madness."
    content: "Buy 10 planes"
    revealed: false
    unlocked: false
    requiredunit: "Plane"
    requiredamount: 10
  }
  {
    title: "A what? A xenomorph"
    subtext: "Let's hope it gets along with the other guys."
    content: "Buy 1 xenomorph"
    revealed: false
    unlocked: false
    requiredunit: "Xenomorph"
    requiredamount: 1
  }
  {
    title: "SCARY"
    subtext: "The guys were okay with one, but ten?!"
    content: "Buy 10 xenomorph"
    revealed: false
    unlocked: false
    requiredunit: "Xenomorph"
    requiredamount: 10
  }
  {
    title: "Crazy Ivan"
    subtext: "The captain of the submarine looks cool."
    content: "Buy 1 submarine"
    revealed: false
    unlocked: false
    requiredunit: "Submarine"
    requiredamount: 1
  }
  {
    title: "Flotilla"
    subtext: "They call themselves 'Grey Wolves'"
    content: "Buy 10 xenomorph"
    revealed: false
    unlocked: false
    requiredunit: "Xenomorph"
    requiredamount: 10
  }
  {
    title: "U.F.O."
    subtext: "Uknown fishing object"
    content: "Buy 1 ufo"
    revealed: false
    unlocked: false
    requiredunit: "Ufo"
    requiredamount: 1
  }
  {
    title: "These guys were born to fish!"
    subtext: "Fish is the universal language."
    content: "Buy 10 ufos"
    revealed: false
    unlocked: false
    requiredunit: "Ufo"
    requiredamount: 10
  }
  {
    title: "A nuclear bomb"
    subtext: "Our scientists tell us it's safe to 'drop the bomb'"
    content: "Buy 1 nuke"
    revealed: false
    unlocked: false
    requiredunit: "Nuke"
    requiredamount: 1
  }
  {
    title: "Atomic winter"
    subtext: "Please wear this radiation protection suit."
    content: "Buy 10 nukes"
    revealed: false
    unlocked: false
    requiredunit: "Nuke"
    requiredamount: 10
  }
  {
    title: "A motivated helper"
    subtext: "The thing is, bob, it's not that I'm lazy, it's that I just don't care."
    content: "Buy 1 Office Worker"
    revealed: true
    unlocked: false
    requiredunit: "Office Worker"
    requiredamount: 1
  }
  {
    title: "Tell me, Mr. Anderson"
    subtext: "What good is a phone call when you are unable to speak?"
    content: "Buy 10 Office Workers"
    revealed: false
    unlocked: false
    requiredunit: "Office Worker"
    requiredamount: 10
  }
  {
    title: "My god, you've gotten fat."
    subtext: "Not you. The guy you just hired. I know him."
    content: "Buy 20 Office Workers"
    revealed: false
    unlocked: false
    requiredunit: "Office Worker"
    requiredamount: 20
  }
  {
    title: "You should stop playing this game"
    subtext: "You probably have most of the achievements already."
    content: "Buy 50 Office Workers"
    revealed: false
    unlocked: false
    requiredunit: "Office Worker"
    requiredamount: 50
  }
  {
    title: "A dollar"
    subtext: "'Then when you get the money, you get the power.'"
    content: "Have 1 dollar"
    revealed: false
    unlocked: false
    requiredunit: "Dollar"
    requiredamount: 1
  }
  {
    title: "Good start"
    subtext: "...with more money"
    content: "Have 100 dollar"
    revealed: false
    unlocked: false
    requiredamount: 100
    requiredunit: "Dollar"
  }
  {
    title: "One K"
    subtext: "Finally you can pay your landlord"
    content: "Have 1000 dollar"
    revealed: false
    unlocked: false
    requiredamount: 1000
    requiredunit: "Dollar"
  }
  {
    title: "A serious amount of money"
    subtext: "10k. You wouldn't want to lose that."
    content: "Have 10k dollar"
    revealed: false
    unlocked: false
    requiredamount: 10000
    requiredunit: "Dollar"
  }
  {
    title: "A new car"
    subtext: "...or five"
    content: "Have 100k dollar"
    revealed: false
    unlocked: false
    requiredamount: 100000
    requiredunit: "Dollar"
  }
  {
    title: "Millionaire"
    subtext: "Finally!"
    content: "Have 1M dollar"
    revealed: false
    unlocked: false
    requiredamount: 1000000
    requiredunit: "Dollar"
  }
  {
    title: "Billionaire"
    subtext: "Finally!"
    content: "Have 1B dollar"
    revealed: false
    unlocked: false
    requiredamount: 1000000000
    requiredunit: "Dollar"
  }
  {
    title: "Trillionaire"
    subtext: "That is a lot of money"
    content: "Have 1T dollar"
    revealed: false
    unlocked: false
    requiredamount: 1000000000000
    requiredunit: "Dollar"
  }
  {
    title: "Your first pearl"
    subtext: "It's so beautiful"
    content: "Find 1 pearl"
    revealed: false
    unlocked: false
    requiredamount: 1
    requiredunit: "Pearl"
  }
  {
    title: "Too many pearls"
    subtext: "Much wow"
    content: "Find 10 pearls"
    revealed: false
    unlocked: false
    requiredamount: 10
    requiredunit: "Pearl"
  }

]
