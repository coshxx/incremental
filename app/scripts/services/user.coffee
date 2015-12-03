'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
  .factory 'user', ->
    # Service logic
    # ...

    fisher = 0
    fish = 0
    dollars = 100
    officeWorkers = 0
    running = false

    # Public API here
    numFisher: ->
      fisher

    numFish: ->
      fish

    numDollars: ->
      dollars

    numOfficeWorkers: ->
      officeWorkers

    isRunning: ->
      running

    letRun: (yesno) ->
      running = yesno

    numOfficeWorker: ->
      officeWorker

    buyOneOfficeWorker: ->
      if dollars - 20 < 0
        officeWorker
      else
        dollars -= 20
        officeWorker += 1

    buyOneFisher: ->
      if dollars - 2 < 0
        fisher
      else
        dollars -= 2
        fisher += 1

    incrementFish: (num) ->
      fish += num

    numDollars: ->
      dollars
