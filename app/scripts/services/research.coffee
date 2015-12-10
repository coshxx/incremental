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
    factor: 2
    researched: false
  }
    unit: "fisher"
    factor: 4
    researched: false
  {
    unit: "boat"
    factor: 2
    researched: false
  }
  ]
