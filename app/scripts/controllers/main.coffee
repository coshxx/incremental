'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###

angular.module 'incrementalApp'
.controller 'MainCtrl', (reset, loadsave, game, user, $interval, $timeout, $location, $log ) ->
  @alerts = [
    { type: 'success' , msg: 'Autosave'}
  ];
  @user = user
  @game = game
  @isOpen = false
  @selectedMode = 'md-fling'
  @selectedDirection = 'down'
  @selectedIndex = -1

  @closeAlert = (index) =>
    @alerts = {}

  $timeout @closeAlert, 20000

  @selectTab = (where) ->
    if where is 0
      $location.url "/tab/fish/fish"
    if where is 1
      $location.url "/tab/dollars/dollar"
    if where is 2
      $location.url "/tab/research"
    if where is 3
      $location.url "/tab/pearls"
    if where is 4
      $location.url "/tab/achievements"
    @selectIndex = where
  return
