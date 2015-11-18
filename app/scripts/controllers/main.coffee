'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'MainCtrl', ($scope) ->
  $scope.fish = 10
  $scope.fishbuttonclick = ->
    $scope.fish++
    return
  return
