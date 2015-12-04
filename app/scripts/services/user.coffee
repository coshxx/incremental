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
      @dollars = 100000

      @fisher = 0
      @fisherPrice = 10

      @officeWorkers = 0
      @officeWorkerPrice = 200

      $log.debug "User creation finished."

    buyOneFisher: ->
      if @dollars - @fisherPrice < 0
        @fisher
      else
        @dollars = @dollars - @fisherPrice
        @fisherPrice = @fisherPrice * 1.07
        @fisher += 1

    buyOneOfficeWorker: ->
      if @dollars - @officeWorkerPrice < 0
        @officeWorkers
      else
        @dollars = @dollars - @officeWorkerPrice
        @officeWorkerPrice = @officeWorkerPrice * 1.07
        @officeWorkers += 1

    addOneFish: =>
      @fish += 1
      $log.debug "fish = #{@fish}"

    goFish: ->
      $timeout(@addOneFish, 1000)

    sellFish: ->
      if @fish - 1 >= 0
        @fish -= 1
        @dollars += 1
