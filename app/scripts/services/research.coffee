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
  "tier0": [{
    unit: "officeworker"
  }
    unit: "fisher"
    {
      unit: "boat"
    }
  ]
  "tier1": [{
    unit: "officeworker"
  }
    {
      unit: "fisher"
    }
    {
      unit: "boat"
    }
    {
      unit: "dynamite"
    }
  ]
