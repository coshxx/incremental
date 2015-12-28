'use strict'

describe 'Service: achievements', ->

  # load the service's module
  beforeEach module 'incrementalApp'

  # instantiate service
  achievements = {}
  beforeEach inject (_achievements_) ->
    achievements = _achievements_

  it 'should do something', ->
    expect(!!achievements).toBe true
