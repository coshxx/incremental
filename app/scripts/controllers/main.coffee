'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'MainCtrl', (user) ->
  @numFish = user.numFisher()
  @numMoney = user.numMoney()

  @buyOne = ->
    @numFish = user.buyOneFisher()
    @numMoney = user.numMoney()
  return
