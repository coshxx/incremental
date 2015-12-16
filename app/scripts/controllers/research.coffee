'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:ResearchCtrl
 # @description
 # # ResearchCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'ResearchCtrl', ($log, units, $timeout) ->
  @units = units

  @upgradeUnit = (unit) ->
    if unit.upgradecurrency is "dollar"
      if units['dollar'].owned - unit.upgradeprice < 0
        return
      units['dollar'].owned -= unit.upgradeprice

    if unit.upgradecurrency is "fish"
      if units['fish'].owned - unit.upgradeprice < 0
        return
      units['fish'].owned -= unit.upgradeprice

    unit.upgradeprice = unit.upgradeprice * unit.upgradefactor
    unit.efficiency = unit.efficiency * unit.efficiencyfactor
    # unit.upgradefactor = unit.upgradefactor*2
  return
