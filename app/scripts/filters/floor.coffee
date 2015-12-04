'use strict'

###*
 # @ngdoc filter
 # @name incrementalApp.filter:floor
 # @function
 # @description
 # # floor
 # Filter in the incrementalApp.
###
angular.module 'incrementalApp'
  .filter 'floor', ->
    (input) ->
      Math.floor(input)
