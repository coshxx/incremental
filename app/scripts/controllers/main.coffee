'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'MainCtrl', (user, $interval) ->
  @numFisher = user.numFisher()
  @numFish = user.numFish()
  @numMoney = user.numMoney()

  @buyOne = ->
    @numFisher = user.buyOneFisher()
    @numMoney = user.numMoney()

  gameLoop = =>
    @numFish = user.incrementFish(@numFisher/10)
    @numFish = Math.floor(@numFish)

  $interval(gameLoop, 100)
  return
