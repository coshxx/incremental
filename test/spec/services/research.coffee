'use strict'

describe 'Service: research', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  research = {}
  beforeEach inject (_research_) ->
    research = _research_

  it 'should do something', ->
    expect(!!research).toBe true
