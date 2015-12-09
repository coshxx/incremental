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
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        redirectTo: '/tab/fish/fish'
      .when '/tab/fish/:unit',
        templateUrl: 'views/unit.html'
        controller: 'UnitCtrl'
        controllerAs: 'unit'
      .when '/tab/dollars',
        redirectTo: '/tab/dollars/dollars'
      .when '/tab/dollars/dollars',
        templateUrl: 'views/dollars.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/dollars/officeworker',
        templateUrl: 'views/officeworker.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/research',
        templateUrl: 'views/research.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/options',
        templateUrl: 'views/options.html'
        controller: 'OptionsCtrl'
        controllerAs: 'options'
      .when '/tab/changelog',
        templateUrl: 'views/changelog.html'
      .otherwise
        redirectTo: '/'

