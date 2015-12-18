'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.loadsave
 # @description
 # # loadsave
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'loadsave', ($log, $interval, units) -> new class LoadSave
  constructor: ->
    @saveString = ""
    @loadString = ""
    @load()
    $interval @save, 5000


  generateSaveString = =>
    @saveString = JSON.stringify(units)
    @saveString = LZString.compressToEncodedURIComponent(@saveString)

  save: =>
    $log.debug "saving"
    @saveString = generateSaveString()
    localStorage.setItem("fishgame", @saveString)

  load: =>
    console.trace()
    $log.debug "loading"
    @loadString = localStorage.getItem "fishgame"
    if @loadString is ""
      return
    @loadString = LZString.decompressFromEncodedURIComponent @loadString
    @loadString = JSON.parse @loadString

    for trash, rootkey of units
      for key, val of rootkey
        units[trash][key] = @loadString[trash][key]

