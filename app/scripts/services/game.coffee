'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.game
 # @description
 # # game
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'game', (units, $interval, $filter, $log) -> new class Game
  constructor: ->
    $interval @fisherTick, 50
    $interval @officeworkerTick, 1000
    @fishPerSec = "(+0/sec)"
    @fishSec = 0
    @tickrate = 20
    @start = new Date

    @tendency = 0

  fisherTick: =>
    now = new Date - @start
    @start = new Date
    @fishSec = 0
    for key of units
      if units[key]['efficiency']? and key isnt "officeworker"
        units['fish'].owned += ((units[key].owned * units[key].efficiency)/@tickrate)*now/50
        @fishSec += (units[key].owned * units[key].efficiency)
    unflooredFishSec = @fishSec #for the tendency
    @fishSec = $filter('floorspecial') @fishSec
    @fishPerSec = "(+#{@fishSec}/sec)"

    sellpower = units['officeworker'].owned * units['officeworker'].efficiency

    # calculate tendency
    if sellpower == unflooredFishSec
      @tendency = 0
    else if sellpower > unflooredFishSec
      @tendency = 1
    else @tendency = 2
    return

  officeworkerTick: ->
    fish = units['fish'].owned
    dollar = units['dollar'].owned
    officeworker = units['officeworker'].owned
    efficiency = units['officeworker'].efficiency

    sellpower = officeworker * efficiency

    if fish - sellpower > 0
      fish -= sellpower
      dollar += sellpower
    else
      dollar += fish
      fish = 0

    units['fish'].owned = fish
    units['dollar'].owned = dollar
