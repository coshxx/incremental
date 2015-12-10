'use strict'

describe 'Service: reset', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  reset = {}
  beforeEach inject (_reset_) ->
    reset = _reset_

  it 'should do something', ->
    expect(!!reset).toBe true
