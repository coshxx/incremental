'use strict'

describe 'Controller: UnitCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  UnitCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    UnitCtrl = $controller 'UnitCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(UnitCtrl.awesomeThings.length).toBe 3
