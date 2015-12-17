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
    { type: 'danger' , msg: 'Don\'t use your old savegames for new versions. It will break things.'}
  ];
  @user = user
  @game = game
  @saving = false

  autosave = =>
    loadsave.save
    @saving = true
    $timeout (@saving=false), 1000

  $interval autosave, 5000

  loadsave.load()

  @closeAlert = (index) =>
    @alerts = {}

  $timeout @closeAlert, 20000

  @click = (where) ->
    $location.url where
  return
