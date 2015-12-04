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
    officeWorkerFinished = 0


    constructor: (user) ->
      @user = user
      $interval(onTick, 1000/tickrate)

    onTick = ->
      fisherProfitPerTick = user.fisher * 0.02
      user.fish += fisherProfitPerTick

      officeWorkerFinished += user.officeWorkers * 0.1

      if officeWorkerFinished > 1
        if user.fish > 1
          user.fish -= 1
          user.dollars += 1
          officeWorkerFinished -= 1
          $log.debug officeWorkerFinished
