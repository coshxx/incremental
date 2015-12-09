'use strict'

describe 'Service: spreadSheetLoad', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  spreadSheetLoad = {}
  beforeEach inject (_spreadSheetLoad_) ->
    spreadSheetLoad = _spreadSheetLoad_

  it 'should do something', ->
    expect(!!spreadSheetLoad).toBe true
