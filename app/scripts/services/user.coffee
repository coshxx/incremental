'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
  .factory 'user', -> new class User
    constructor: ->
      @fish = 0
      @fisher = 0
      @dollars = 0
      @officeWorkers = 0
      console.log "Constructor called"

    buyOneFisher: ->
      @fisher += 1
