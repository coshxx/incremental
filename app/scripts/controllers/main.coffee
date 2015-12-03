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
  @getNumFisher = ->
    user.numFisher()

  @getNumFish = ->
    user.numFish()

  @getNumDollars = ->
    Math.floor user.numDollars()

  @getNumOfficeWorkers = ->
    user.numOfficeWorkers()

  @buyOneFisher = ->
    user.buyOneFisher()
    user.numDollars()

  @buyOneOfficeWorker = ->
    user.buyOneOfficeWorkers()
    user.numDollars()

  @gameLoop = =>
    Math.floor user.incrementFish(user.numFisher()/10)
    user.numDollars()

  if not user.isRunning()
    user.letRun(true)
    $interval(@gameLoop, 100)

  return
