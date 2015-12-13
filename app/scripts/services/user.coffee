'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
.factory 'user', ($log, $timeout, units) -> new class User
  constructor: ->
    @init()
  init: =>
    @units = units
    @isFishing = false
    @isSelling = false
    $log.debug "User creation finished."

  buy: (unit, amount) ->
    sum = 0
    if amount is 1
      sum = unit.price
    else
      for n in [0 .. amount-1]
        sum += amount * unit.pricefactor**n

    if units['dollar'].owned - sum
      units['dollar'].owned -= sum
      unit.owned += amount
      unit.price *= (amount-1) * unit.pricefactor**(amount-1)
      unit.unlocked = true


  goFish: ->
    @isFishing = true
    $timeout @catchOne, 500

  catchOne: =>
    @isFishing = false
    units['fish'].owned += 1

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
