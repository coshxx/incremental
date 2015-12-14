'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:OptionsCtrl
 # @description
 # # OptionsCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'OptionsCtrl', (units, reset, $log) ->
  @allUnits = units

  @importString = "Enter save data"
  @saveSuccess = ""
  tempObject = JSON.stringify(units)
  @saveState = LZString.compressToEncodedURIComponent(tempObject)
  @saveData = ->
    localStorage.setItem("fishgame", @saveState)
    @saveSuccess = "That worked...maybe"
  @loadData = ->
    @importString = localStorage.getItem "fishgame"
    @import()
  @import = ->
    unpacked = LZString.decompressFromEncodedURIComponent(@importString)
    unpacked = JSON.parse unpacked
    @importSave(unpacked)
  @importSave = (data) ->
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = data[trash][key]
  @reset = ->
    reset.doReset()

  @cheat = ->
    units['dollar'].owned += 1000
    units['dollar'].owned += 100000

  return

