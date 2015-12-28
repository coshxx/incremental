'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.reset
 # @description
 # # reset
 # Service in the incrementalApp.
###
angular.module 'incrementalApp'
.service 'reset', (units, $log) ->
  $log.debug "unit backup"
  @unitBackup = angular.copy(units) # save a copy of the original arrays

  doAscend: =>
    for trash, rootkey of units
      for key, val of rootkey
        if key isnt "pearlupgrades" and key isnt "pearlupgradecost" and key isnt "unlocked"
          units[trash][key] = @unitBackup[trash][key]
        else
          $log.debug "key was #{key}"


  doResetHard: =>
    $log.debug "resetting"
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @unitBackup[trash][key]

