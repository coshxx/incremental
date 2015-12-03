'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.game
 # @description
 # # game
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
  .factory 'game', (user, $interval) -> new class Game
    tickrate = 10

    constructor: (user) ->
      @user = user
      $interval(onTick, 1000/tickrate)

    onTick = ->
      return
