'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
.factory 'user', ($log, $timeout, units, achievements) -> new class User
  constructor: ->
    @init()
  init: =>
    @units = units
    @isFishing = false
    @isSelling = false

  buy: (unit, amount) ->
    unit.unlocked = true
    if amount is 1
      if units['dollar'].owned - unit.price >= 0
        units['dollar'].owned -= unit.price
        unit.price *= unit.pricefactor
        unit.owned += amount
    else
      sum = 0
      for n in [0 .. amount-1]
        sum += unit.price * unit.pricefactor**n
      if units['dollar'].owned - sum >= 0
        units['dollar'].owned -= sum
        unit.price = unit.price * unit.pricefactor**amount
        unit.owned += amount

    achievements.checkUnit(unit)

  goFish: ->
    @isFishing = true
    $timeout @catchOne, 500

  catchOne: =>
    @isFishing = false
    units['fish'].owned += 1
    units['fish'].total += 1

  sellFish: ->
    @isSelling = true
    $timeout @sellOne, 50

  sellOne: =>
    @isSelling = false
    if units['fish'].owned - 1 >= 0
      units['fish'].owned -= 1
      units['dollar'].owned += 1

  reset: ->
    @init()
