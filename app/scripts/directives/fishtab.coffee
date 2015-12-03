'use strict'

###*
 # @ngdoc directive
 # @name incrementalApp.directive:fishtab
 # @description
 # # fishtab
###
angular.module 'incrementalApp'
  .directive 'fishtab', ->
    templateUrl: 'views/fishtab.html'
    restrict: 'E'
