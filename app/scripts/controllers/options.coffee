'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:OptionsCtrl
 # @description
 # # OptionsCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'OptionsCtrl', (units, reset, $log, loadsave, achievements, game) ->
  @allUnits = units
  @saveState = loadsave.generateSaveString()
  @achievements = achievements
  @gameStarted = game.statisticsGameStarted
  @timeNow = new Date
  @timeNow = @timeNow.getMilliseconds()
  @importString = ""
  @saveData = ->
    loadsave.save()
  @loadData = ->
    loadsave.load()
  @reset = ->
    reset.doResetHard()
  @import = ->
    loadsave.import(@importString)
  return

