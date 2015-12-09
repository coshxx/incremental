'use strict'

describe 'Controller: UnitcontrollerCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  UnitcontrollerCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    UnitcontrollerCtrl = $controller 'UnitcontrollerCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(UnitcontrollerCtrl.awesomeThings.length).toBe 3
