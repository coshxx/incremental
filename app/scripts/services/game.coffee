'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.game
 # @description
 # # game
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'game', (units, $interval, $filter, $log, achievements) -> new class Game
  constructor: ->
    $interval @fisherTick, 150
    $interval @officeworkerTick, 1000
    @fishPerSec = "(+0/sec)"
    @fishSec = 0
    @tickrate = 20
    @start = new Date
    @tendency = 0
    @achievementupgrades = achievements.getUnlockCount()
    @achpower = @achievementupgrades.amount
    @achpower = 1 + (@achpower/40)

    @statisticsGameStarted = new Date

  processPearlGain = ->
    if units['fish'].total >= units['pearl'].nextpearl
      units['pearl'].owned += 1
      units['pearl'].nextpearl *= units['pearl'].nextpearlfactor
    achievements.checkUnit(units['pearl'])

  fisherTick: =>
    now = new Date - @start
    @start = new Date
    @fishSec = 0
    for key of units
      if units[key]['efficiency']? and key isnt "officeworker"
        units['fish'].owned += ((units[key].owned * units[key].efficiency * (1+units[key].pearlupgrades/10))/@tickrate)*now/(1000/@tickrate)
        units['fish'].total += ((units[key].owned * units[key].efficiency * (1+units[key].pearlupgrades/10))/@tickrate)*now/(1000/@tickrate)
        @fishSec += (units[key].owned * units[key].efficiency * (1+units[key].pearlupgrades/10))
    unflooredFishSec = @fishSec #for the tendency
    @fishSec = $filter('floorspecial') @fishSec
    @fishPerSec = "(+#{@fishSec}/sec)"
    sellpower = units['officeworker'].owned * units['officeworker'].efficiency * (1+units['officeworker'].pearlupgrades/10)
    if units['officeworker'].paused
      sellpower = 0
    # calculate tendency
    if sellpower == unflooredFishSec
      @tendency = 0
    else if sellpower > unflooredFishSec
      @tendency = 1
    else @tendency = 2
    processPearlGain()
    achievements.checkUnit(units['fish'])
    return

  officeworkerTick: =>
    if units['officeworker'].paused
      return
    @achievementupgrades = achievements.getUnlockCount()
    @achpower = @achievementupgrades.amount
    @achpower = 1 + (@achpower/40)
    fish = units['fish'].owned
    dollar = units['dollar'].owned
    officeworker = units['officeworker'].owned
    efficiency = units['officeworker'].efficiency * (1+units['officeworker'].pearlupgrades/10)
    sellpower = officeworker * efficiency
    if fish - sellpower > 0
      fish -= sellpower
      dollar += sellpower * @achpower
    else
      dollar += fish * @achpower
      fish = 0
    units['fish'].owned = fish
    units['dollar'].owned = dollar
    units['dollar'].total += dollar
    achievements.checkUnit(units['dollar'])
