'use strict'

###*
 # @ngdoc filter
 # @name incrementalApp.filter:floor
 # @function
 # @description
 # # floor
 # Filter in the incrementalApp.
###
angular.module 'incrementalApp'
  .filter 'floor', ->
    (input) ->
      # http://crusaders-of-the-lost-idols.wikia.com/wiki/Large_Number_Abbreviations
      numShort = [ 'K', 'M', 'B', 't', 'q', 'Q', 's', 'S' ] #enough for now :)
      temp = Math.floor(input)
      index = -1
      power = 1000

      #1.000.000 / 1000 = 1000
      #  100.000 / 1000 = 100
      #    1.000 / 1000 = 1
      #      999 / 1000 = 0.999

      if temp/power < 1
        return temp

      loop
        temp = temp/power
        index += 1
        break unless temp >= 1000

      return temp.toPrecision(3) + numShort[index]
