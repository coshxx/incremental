'use strict'

describe 'Filter: floor', ->

  # load the filter's module
  beforeEach module 'incrementalApp'

  # initialize a new instance of the filter before each test
  floor = {}
  beforeEach inject ($filter) ->
    floor = $filter 'floor'

  it 'should return the input prefixed with "floor filter:"', ->
    text = 'angularjs'
    expect(floor text).toBe ('floor filter: ' + text)
