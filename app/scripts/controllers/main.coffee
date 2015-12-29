'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###

angular.module 'incrementalApp'
.controller 'MainCtrl', (reset, loadsave, game, user, $interval, $timeout, $location, achievements, $log ) ->
  @alerts = [
    # { type: 'success' , msg: 'Autosave'}
  ]
  @user = user
  @game = game
  @isOpen = false
  @selectedMode = 'md-fling'
  @selectedDirection = 'down'
  @selectedIndex = -1
  @nextdelete = 0

  @closeAlert = =>
    @alerts.splice(@nextdelete, 1)
    @nextdelete -= 1

  @checkAchievements = =>
    recent = achievements.getRecentUnlocks()
    itemsFound = false
    for item in recent
      $log.debug "in loop"
      itemsFound = true
      @message = {
        title: item.title
        subtext: item.subtext
        content: item.content
      }
      $log.debug @message
      temp = @alerts.push( { type: 'success', msg: @message})
      @nextDelete += temp
      $timeout @closeAlert, 7500
    if itemsFound
      achievements.clearRecentUnlocks()


  # $timeout @closeAlert, 20000

  $log.debug "starting interval"
  $interval @checkAchievements, 500

  @selectTab = (where) ->
    if where is 0
      $location.url "/tab/fish/fish"
    if where is 1
      $location.url "/tab/dollars/dollar"
    if where is 2
      $location.url "/tab/research"
    if where is 3
      $location.url "/tab/pearls"
    if where is 4
      $location.url "/tab/achievements"
    @selectIndex = where
  return
