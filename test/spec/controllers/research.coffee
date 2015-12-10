'use strict'

describe 'Controller: ResearchCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  ResearchCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ResearchCtrl = $controller 'ResearchCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ResearchCtrl.awesomeThings.length).toBe 3
