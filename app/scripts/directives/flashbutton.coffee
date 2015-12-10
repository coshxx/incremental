'use strict'

###*
 # @ngdoc directive
 # @name incrementalApp.directive:flashbutton
 # @description
 # # flashbutton
###
angular.module 'incrementalApp'
  .directive 'flashbutton', ->
    restrict: 'EA'
    scope:
      flashDelay: '='
      flashOnSuccess: '='
    template: '<button></button>'
    replace: true,
    link: (scope, element, attrs) ->
      element.find button.text attrs
