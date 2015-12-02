'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
  .factory 'user', ->
    # Service logic
    # ...

    fisher = 0
    fish = 0
    money = 10

    # Public API here
    numFisher: ->
      fisher

    numFish: ->
      fish

    buyOneFisher: ->
      if money - 2 < 0
        fisher
      else
        money -= 2
        fisher += 1

    incrementFish: (num) ->
      fish += num

    numMoney: ->
      money
