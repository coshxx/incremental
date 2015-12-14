'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.reset
 # @description
 # # reset
 # Service in the incrementalApp.
###
angular.module 'incrementalApp'
.service 'reset', (units, research, $log) ->
  @unitBackup = angular.copy(units) # save a copy of the original arrays
  @researchBackup = angular.copy(research) # don't need that one??

  doAscend: =>
    for trash, rootkey of units
      for key, val of rootkey
        if key != "pearlupgrades" and key != "pearlupgradecost"
          units[trash][key] = @unitBackup[trash][key]

    research.tier = 0

  doResetHard: =>
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @unitBackup[trash][key]

    research.tier = 0