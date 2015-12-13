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

  @buy = (unit, amount) ->
    user.buy(unit, amount)

  # returns amount of owned units
  @owned = (unit) ->
    return units[unit].owned

  @getPrice = (amount) =>
    if amount is 1
      @cur.price
    else
      sum = 0
      for n in [0 .. amount-1]
        sum += amount * @cur.pricefactor**n
      sum


  return
