'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.reset
 # @description
 # # reset
 # Service in the incrementalApp.
###
angular.module 'incrementalApp'
.service 'reset', (units, $log, achievementslist, achievements) ->
  $log.debug "unit backup"
  @unitBackup = angular.copy(units) # save a copy of the original arrays for resetting purposes
  @achievBackup = angular.copy(achievementslist)
  doAscend: =>
    for trash, rootkey of units
      for key, val of rootkey
        if key isnt "pearlupgrades" and key isnt "pearlupgradecost" and key isnt "unlocked" and key isnt "ascension"
          units[trash][key] = @unitBackup[trash][key]
    units['ascension'].owned++
    achievements.checkUnit(units['ascension'])
  doResetHard: =>
    $log.debug "resetting"
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @unitBackup[trash][key]
    for ach, i in achievementslist
      achievementslist[i] = @achievBackup[i]
    achievements.recountAchievements()