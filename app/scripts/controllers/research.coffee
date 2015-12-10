'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:ResearchCtrl
 # @description
 # # ResearchCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'ResearchCtrl', ($log, research, units) ->
  @currentTier = research.tier
  @data = research
  @units = units
  $log.debug @data

  @advanceTier = (currenttier) ->
    $log.debug currenttier
    $log.debug @data

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
