'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###

angular.module 'incrementalApp'
.controller 'MainCtrl', (game, user, $interval, $timeout, $location, reset, loadsave) ->
  @alerts = [
    { type: 'success' , msg: 'Autosave.'}
  ];
  @user = user
  @game = game

  @closeAlert = (index) =>
    @alerts = {}

  $timeout @closeAlert, 20000

  @click = (where) ->
    $location.url where
  return
