'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'MainCtrl', ($scope, $timeout) ->
  $scope.fish = 0
  $scope.buttonText = "Fish!"
  $scope.fishProgress = "inactive"
  $scope.showme = false
  $scope.fishPerSec = "+1/sec"
  $scope.showSellFish = false
  $scope.gold = 0
  isFishing = false

  $scope.fishbuttonclick = ->
    $scope.buttonText = "Fishing!"
    if not isFishing
      startFish()
      $scope.fishProgress = "active"
      isFishing = true
    return

  startFish = () ->
    if $scope.fish >= 10
      $scope.showSellFish = true
    $scope.fish+=1
    $timeout startFish, 1000
    return

  $scope.sellFish = () ->
    if $scope.fish - 1 < 0
      return
    $scope.fish--
    $scope.gold+=0.1
    return
  return
