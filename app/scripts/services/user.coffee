'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.user
 # @description
 # # user
 # Factory in the incrementalApp.
###

angular.module 'incrementalApp'
  .factory 'user', ($log, $timeout, $filter) -> new class User
    constructor: ->
      @fish = 0
      @dollars = 0
      @fishPerSec = "(+0/sec)"

      @fisher = 0
      @fisherPrice = 10
      @fisherEfficiency = 0.02
      @fisherUpgradePrice = 200

      @boats = 0
      @boatPrice = 100
      @boatEfficiency = 0.2
      @boatUpgradePrice = 1000

      @planes = 0
      @planePrice = 1000
      @planeEfficiency = 0.6
      @planeUpgradePrice = 10000

      @officeWorkers = 0
      @officeWorkerPrice = 25
      @officeWorkerEfficiency = 1 # the equivalent to ~5 efficiency, being that office workers act on another timer
      @officeWorkerUpgradePrice = 100

      @isFishing = false
      @researchAvailable = true

      @sellTenFishPrice = 2000
      @sellTenFishAvailable = false

      $log.debug "User creation finished."

    updateFishPerSec: ->
      amount = $filter('floor')(@fisherEfficiency*10*@fisher)
      amount += $filter('floor')(@boatEfficiency*10*@boats)
      amount += $filter('floor')(@planeEfficiency*10*@planes)
      @fishPerSec = "(+#{amount}/sec)"

    sellTenFishUpgradeBought: ->
      if @dollars - @sellTenFishPrice < 0
        return
      @dollars -= @sellTenFishPrice
      @sellTenFishAvailable = true

    buyOneFisher: ->
      if @dollars - @fisherPrice < 0
        @fisher
      else
        @dollars = @dollars - @fisherPrice
        @fisherPrice = @fisherPrice * 1.1
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
    sellTenFish: ->
      if @fish - 10 >= 0
        @fish -= 10
        @dollars += 10

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

    canAffordUpgrades: ->
      if @dollars > @fisherUpgradePrice or
      @dollars > @boatUpgradePrice or
      @dollars > @officeWorkerUpgradePrice or
      @dollars > @sellTenFishPrice and !@sellTenFishAvailable
        @researchAvailable = true
      else
        @researchAvailable = false