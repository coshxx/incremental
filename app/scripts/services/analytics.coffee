'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.analytics
 # @description
 # # analytics
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'analytics', ($log) ->
  something: ->
    42
