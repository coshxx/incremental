'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
  .factory 'user', ($log, $timeout) -> new class User
    constructor: ->
      @fish = 0
      @fisher = 0
      @dollars = 0
      @officeWorkers = 0
      $log.debug "User creation finished."

    buyOneFisher: ->
      @fisher += 1

    goFish: ->
      if not isWorking
        isWorking = $timeout(addOneFish, 1000)

    addOneFish = =>
      @fish += 1
      $log.debug "fish+1"
