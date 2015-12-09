'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
.factory 'user', ($log, $timeout, $filter, units) -> new class User
  constructor: ->
    @init()
  init: =>
    @dollars = 100
    @units = units
    $log.debug "User creation finished."

  buyOne: (unit) ->
    if @dollars - unit.price > 0
      @dollars -= unit.price
      unit.owned += 1
      unit.price *= unit.pricefactor
