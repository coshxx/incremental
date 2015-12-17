'use strict'

describe 'Service: loadsave', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  loadsave = {}
  beforeEach inject (_loadsave_) ->
    loadsave = _loadsave_

  it 'should do something', ->
    expect(!!loadsave).toBe true
