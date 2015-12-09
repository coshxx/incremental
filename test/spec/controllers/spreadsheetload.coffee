'use strict'

describe 'Controller: SpreadsheetloadCtrl', ->

  # load the controller's module
  beforeEach module 'incrementalApp'

  SpreadsheetloadCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SpreadsheetloadCtrl = $controller 'SpreadsheetloadCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(SpreadsheetloadCtrl.awesomeThings.length).toBe 3
