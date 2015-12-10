'use strict'

describe 'Directive: flashbutton', ->

  # load the directive's module
  beforeEach module 'incrementalApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<flashbutton></flashbutton>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the flashbutton directive'
