'use strict'

###*
 # @ngdoc overview
 # @name incrementalApp
 # @description
 # # incrementalApp
 #
 # Main module of the application.
###
angular
  .module 'incrementalApp', [
    'ngAnimate',
    'ngRoute',
    'angulartics',
    'angulartics.google.analytics',
    'ui.bootstrap',
    'ngMaterial'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        redirectTo: '/tab/fish/fish/'
      .when '/tab/fish/:unit',
        templateUrl: 'views/unit.html'
      .when '/tab/dollars',
        redirectTo: '/tab/dollars/dollar/'
      .when '/tab/dollars/:unit',
        templateUrl: 'views/officeunit.html'
        controller: 'UnitCtrl'
        controllerAs: 'unit'
      .when '/tab/pearls/',
        templateUrl: 'views/pearltab.html'
        controller: 'UnitCtrl'
        controllerAs: 'unit'
      .when '/tab/research/',
        templateUrl: 'views/research.html'
      .when '/tab/options/',
        templateUrl: 'views/options.html'
        controller: 'OptionsCtrl'
        controllerAs: 'options'
      .when '/tab/statistics/',
        templateUrl: 'views/statistics.html'
        controller: 'OptionsCtrl'
        controllerAs: 'options'
      .when '/tab/changelog/',
        templateUrl: 'views/changelog.html'
      .when '/tab/cheat/',
        templateUrl: 'views/cheats.html'
        controller: 'OptionsCtrl'
        controllerAs: 'options'
      .otherwise
        redirectTo: '/'

angular.module('incrementalApp').config ->
  # window.ga.trackingId = "UA-69117458-2"
  # window.ga 'create', window.ga.trackingId, 'auto'
