'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:UnitCtrl
 # @description
 # # UnitCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'UnitCtrl', (units, $log, $routeParams, user, game) ->
  @allUnits = units
  @cur = units[$routeParams.unit]
  @game = game

  @buyOne = (unit) ->
    user.buyOne(unit)

  # returns amount of owned units
  @owned = (unit) ->
    return units[unit].owned
  return
