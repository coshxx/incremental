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

    constructor: (user) ->
      @user = user
      $interval(onTickFisher, 1000/tickrate)
      $interval(onTickOfficeWorker, 1000)

    onTickFisher = ->
      fisherProfitPerTick = user.fisher * user.fisherEfficiency
      user.fish += fisherProfitPerTick
      boatProfitPerTick = user.boats * user.boatEfficiency
      user.fish += boatProfitPerTick

    onTickOfficeWorker = ->
      if user.officeWorkers <= 0
        return
      if user.fish - (user.officeWorkers * user.officeWorkerEfficiency) < 0
        user.dollars += user.fish
        user.fish = 0
      else
        user.fish -= (user.officeWorkers * user.officeWorkerEfficiency)
        user.dollars += (user.officeWorkers * user.officeWorkerEfficiency)
