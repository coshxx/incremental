'use strict'

describe 'Controller: AlertCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  AlertCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AlertCtrl = $controller 'AlertCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(AlertCtrl.awesomeThings.length).toBe 3
