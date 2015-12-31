'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:OptionsCtrl
 # @description
 # # OptionsCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'AchievCtrl', (achievements, achievementslist, $log, $interval, $scope) ->
  @all = achievements.getList()
  @unlockcount = achievements.getUnlockCount()
  # @length = Object.keys(@all).length
  @length = @all.length
  return

