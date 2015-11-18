'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
  .controller 'AboutCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
