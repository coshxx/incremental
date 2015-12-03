'use strict'

###*
 # @ngdoc directive
 # @name incrementalApp.directive:dollartab
 # @description
 # # dollartab
###
angular.module 'incrementalApp'
  .directive 'dollartab', ->
    restrict: 'E'
    templateUrl: 'views/dollartab.html'
