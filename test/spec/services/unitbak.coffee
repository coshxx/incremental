'use strict'

describe 'Service: unitBak', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  unitBak = {}
  beforeEach inject (_unitBak_) ->
    unitBak = _unitBak_

  it 'should do something', ->
    expect(!!unitBak).toBe true
