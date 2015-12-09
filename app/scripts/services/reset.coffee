'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.unitBak
 # @description
 # # unitBak
 # Service in the incrementalApp.
###
angular.module 'incrementalApp'
.service 'reset', (units, $log) ->
  clone = (obj) ->
    return obj if obj is null or typeof (obj) isnt "object"
    temp = new obj.constructor()
    for key of obj
      temp[key] = clone(obj[key])
    temp

  $log.debug "running"
  unitBak = angular.copy(units)
  $log.debug unitBak

  doTheReset: =>
    units = angular.copy unitBak
    $log.debug units
