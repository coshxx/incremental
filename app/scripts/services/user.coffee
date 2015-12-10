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

  buyOne: (unit) ->
    if units['dollar'].owned - unit.price >= 0
      units['dollar'].owned -= unit.price
      unit.owned += 1
      unit.price *= unit.pricefactor

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
