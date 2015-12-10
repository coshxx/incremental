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
  @unitBackup = angular.copy(units) # save a copy of the original array

  doReset: =>
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @unitBackup[trash][key]
