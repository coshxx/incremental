'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:OptionsCtrl
 # @description
 # # OptionsCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'AchievCtrl', (achievements, $log) ->
  @all = achievements
  $log.debug "hey out"
  for item, key of @all
    $log.debug key
    $log.debug "hey in"
  return

