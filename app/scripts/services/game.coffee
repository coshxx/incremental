'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.game
 # @description
 # # game
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'game', (units, $interval, $log) -> new class Game
  constructor: ->
    $interval @fisherTick, 100
    $interval @officeworkerTick, 1000

  fisherTick: ->
    for trash, rootkey of units
      if units[trash]['efficiency']? and trash isnt "officeworker"
        units['fish'].owned += units[trash].owned * units[trash].efficiency
    ###
    units['fish'].owned += units['fisher'].owned * units['fisher'].efficiency
    units['fish'].owned += units['boat'].owned * units['boat'].efficiency
    units['fish'].owned += units['plane'].owned * units['plane'].efficiency
    units['fish'].owned += units['submarine'].owned * units['submarine'].efficiency
    ###
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

    # later
    units['fish'].owned = fish
    units['dollar'].owned = dollar
