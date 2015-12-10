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
# TODO: move to service...

  @importString = "Enter save data"
  @saveSuccess = ""
  tempObject = JSON.stringify(units)
  @saveState = LZString.compressToEncodedURIComponent(tempObject)
  @saveData = ->
    return
    localStorage.setItem("fishgame", @saveState)
    @saveSuccess = "That worked...maybe"
  @loadData = ->
    return
    @importString = localStorage.getItem "fishgame"
    @import()
  @import = ->
    return
    unpacked = LZString.decompressFromEncodedURIComponent(@importString)
    unpacked = JSON.parse unpacked
    @importSave(unpacked)
  @importSave = (data) ->
    return
    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = data[trash][key]
  @reset = ->
    reset.doReset()
  return

