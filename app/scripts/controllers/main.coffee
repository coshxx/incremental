'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###

angular.module 'incrementalApp'
.controller 'MainCtrl', (game, user) ->
  @user = user
  @game = game
  return
