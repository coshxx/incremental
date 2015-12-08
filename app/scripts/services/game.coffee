'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.game
 # @description
 # # game
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
  .factory 'game', (user, $interval, $log) -> new class Game
    tickrate = 10
    start = new Date
    constructor: (user) ->
      @user = user
      $interval(onTickFisher, 1000/tickrate)
      $interval(onTickOfficeWorker, 1000)
    onTickFisher = ->
      # need to get time-delta now because once the tab goes inactive
      # the browsers "optimize" timers to only tick like twice per second?
      timePassed = new Date - start
      start = new Date
      user.canAffordUpgrades()
      user.updateFishPerSec()
      fisherProfitPerTick = user.fisher * user.fisherEfficiency * (timePassed/100)
      user.fish += fisherProfitPerTick
      boatProfitPerTick = user.boats * user.boatEfficiency * (timePassed/100)
      user.fish += boatProfitPerTick
      planeProfitPerTick = user.planes * user.planeEfficiency * (timePassed/100)
      user.fish += planeProfitPerTick
      submarineProfitPerTick = user.submarines * user.submarineEfficiency * (timePassed/100)
      user.fish += submarineProfitPerTick
    onTickOfficeWorker = ->
      if user.officeWorkers <= 0
        return
      if user.fish - (user.officeWorkers * user.officeWorkerEfficiency) < 0
        user.dollars += user.fish
        user.fish = 0
      else
        user.fish -= (user.officeWorkers * user.officeWorkerEfficiency)
        user.dollars += (user.officeWorkers * user.officeWorkerEfficiency)
