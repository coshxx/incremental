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
  @unitBackup = angular.copy(units) # save a copy of the original arrays

  doAscend: =>
    for trash, rootkey of units
      for key, val of rootkey
        if key != "pearlupgrades" and key != "pearlupgradecost"
          units[trash][key] = @unitBackup[trash][key]


  doResetHard: =>
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @unitBackup[trash][key]

