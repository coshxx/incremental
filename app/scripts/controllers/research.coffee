'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:ResearchCtrl
 # @description
 # # ResearchCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'ResearchCtrl', ($log, research, units, $timeout) ->
  @currentTier = research.tier
  @data = research
  @units = units
  @tierchange = true
  $log.debug @data

  afterAnimationAdvance = =>
    @currenttier += 1
    research.tier += 1
    @tierchange = true

  @advanceTier = (currenttier) ->
    allResearched = true
    for obj in @data['tier'+currenttier]
      if units[obj.unit].tier isnt currenttier+1
        allResearched = false

    if allResearched
      @tierchange = false
      $timeout afterAnimationAdvance, 1000




  @doUpgrade = (unit, tier) =>
    if unit.tier != tier #sanity check in case something explodes in the DOM
      return
    if units['dollar'].owned >= unit.upgradeprice
      units['dollar'].owned -= unit.upgradeprice
      unit.efficiency = unit.efficiency * unit.upgradefactor
      unit.upgradeprice = unit.upgradeprice * unit.upgradefactor
      unit.tier += 1
      @advanceTier(unit.tier-1)
  return
