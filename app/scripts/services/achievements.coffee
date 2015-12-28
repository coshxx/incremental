'use strict'

###
  All the data for the game
###
angular.module 'incrementalApp'
.value 'achievements', achievements =
  "pearl":
    1:
      title: "Your first pearl"
      subtext: "It's so beautiful"
      revealed: false
      unlocked: false
      requiredamount: 1
    2:
      title: "Too many pearls"
      subtext: "Much wow"
      revealed: false
      unlocked: false
      requiredamount: 10
  "fish":
    1:
      title: "A slow start"
      subtext: "Catch your first fish"
      revealed: true
      unlocked: false
    2:
      title: "A fishers best friend"
      subtext: "...is another fisher?!"
      revelead: true
      unlocked: false
  "dollar":
    1:
      title: "Ohhh, money..."
      subtext: "I like that"
      revealed: false
      unlocked: false
      requiredamount: 1
