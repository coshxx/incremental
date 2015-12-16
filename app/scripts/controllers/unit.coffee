'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:UnitCtrl
 # @description
 # # UnitCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'UnitCtrl', (units, $log, $routeParams, user, game, reset) ->
  @allUnits = units
  @cur = units[$routeParams.unit]
  @game = game

  @sellFish = ->
    user.sellFish()

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
        sum += @cur.price * @cur.pricefactor**n
      sum

  @claimPearls = ->
    inactivePearls = units['pearl'].owned
    activePearls = units['pearl'].active

    activePearls += inactivePearls
    inactivePearls = 0

    reset.doAscend()

    # later
    units['pearl'].owned = 0
    units['pearl'].active = activePearls

  @upgradeUnitWithPearls = (item) ->
    units['pearl'].active -= item.pearlupgradecost
    units['pearl'].spent += 1
    item.pearlupgradecost += 1
    item.pearlupgrades += 4
  return
