'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.research
 # @description
 # # research
 # Value in the incrementalApp.
###
angular.module 'incrementalApp'
.value 'research', research =
  tier: 0
  "tier0": [
    {
      unit: "fisher"
    }
  ]
  "tier1": [
    {
      unit: "fisher"
    }
    {
      unit: "officeworker"
    }
  ]
  "tier2": [
    {
      unit: "officeworker"
    }
  ]
  "tier3": [
    {
      unit: "dynamite"
    }
  ]
  "tier4": [
    {
      unit: "officeworker"
    }
    {
      unit: "dynamite"
    }
  ]
