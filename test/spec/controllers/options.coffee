'use strict'

describe 'Controller: OptionsCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  OptionsCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    OptionsCtrl = $controller 'OptionsCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(OptionsCtrl.awesomeThings.length).toBe 3
