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
      @fish = 100
      @dollars = 100

      @fisher = 0
      @fisherPrice = 10
      @fisherEfficiency = 0.02
      @fisherUpgradePrice = 200

      @boats = 0
      @boatPrice = 100
      @boatEfficiency = 0.1
      @boatUpgradePrice = 1000

      @planes = 0
      @planePrice = 1000
      @planeEfficiency = 0.4
      @planeUpgradePrice = 10000

      @officeWorkers = 0
      @officeWorkerPrice = 50
      @officeWorkerEfficiency = 1
      @officeWorkerUpgradePrice = 100

      @isFishing = false

      $log.debug "User creation finished."

    buyOneFisher: ->
      if @dollars - @fisherPrice < 0
        @fisher
      else
        @dollars = @dollars - @fisherPrice
        @fisherPrice = @fisherPrice * 1.07
        @fisher += 1

    buyOneBoat: ->
      if @dollars - @boatPrice < 0
        @boat
      else
        @dollars = @dollars - @boatPrice
        @boatPrice = @boatPrice * 1.14
        @boats += 1

    buyOnePlane: ->
      if @dollars - @planePrice < 0
        @plane
      else
        @dollars = @dollars - @planePrice
        @planePrice = @planePrice * 1.25
        @planes += 1

    buyOneOfficeWorker: ->
      if @dollars - @officeWorkerPrice < 0
        @officeWorkers
      else
        @dollars = @dollars - @officeWorkerPrice
        @officeWorkerPrice = @officeWorkerPrice * 1.25
        @officeWorkers += 1

    timerX = null
    countdown = 3
    @isFishing = false

    goFish: ->
      $timeout.cancel timerX
      @isFishing = true
      timerX = $timeout(@addOneFish, 1000)

    addOneFish: =>
      @fish += 1
      $log.debug "fish = #{@fish}"
      timerX = null
      @isFishing = false

    sellFish: ->
      if @fish - 1 >= 0
        @fish -= 1
        @dollars += 1

    upgradeFishers: ->
      if @dollars - @fisherUpgradePrice < 0
        return
      @dollars = @dollars - @fisherUpgradePrice
      @fisherEfficiency = @fisherEfficiency * 2
      @fisherUpgradePrice = @fisherUpgradePrice * 10

    upgradeOfficeWorkers: ->
      if @dollars - @officeWorkerUpgradePrice < 0
        return
      @dollars = @dollars - @officeWorkerUpgradePrice
      @officeWorkerEfficiency = @officeWorkerEfficiency * 2
      @officeWorkerUpgradePrice = @officeWorkerUpgradePrice * 10

    upgradeBoats: ->
      if @dollars - @boatUpgradePrice < 0
        return
      @dollars = @dollars - @boatUpgradePrice
      @boatEfficiency = @boatEfficiency * 2
      @boatUpgradePrice = @boatUpgradePrice * 10
