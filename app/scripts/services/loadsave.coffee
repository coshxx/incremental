'use strict'

###*
 # @ngdoc service
 # @name incrementalApp.loadsave
 # @description
 # # loadsave
 # Factory in the incrementalApp.
###
angular.module 'incrementalApp'
.factory 'loadsave', ($log, $interval, units, achievementslist, achievements, reset) -> new class LoadSave
  constructor: ->
    @saveString = ""
    @loadString = ""
    @load()
    $interval @save, 30000
  generateSaveString: =>
    @saveString = JSON.stringify([units, achievementslist])
    @saveString = LZString.compressToEncodedURIComponent(@saveString)
  save: =>
    $log.debug "saving"
    @saveString = @generateSaveString()
    localStorage.clear()
    localStorage.setItem("idlefisher2", @saveString)
  import: (importString) =>
    @loadString = importString
    if @loadString is null
      return
    @loadString = LZString.decompressFromEncodedURIComponent @loadString
    @loadString = JSON.parse @loadString
    loadedUnits = @loadString[0]
    for trash, rootkey of loadedUnits
      for key, val of rootkey
        if units[trash]?
          units[trash][key] = loadedUnits[trash][key]

    loadedAchievements = @loadString[1]
    for ach, i in loadedAchievements
      achievementslist[i] = loadedAchievements[i]
    achievements.recountAchievements()
  load: =>
    $log.debug "loading"
    @loadString = localStorage.getItem "idlefisher2"
    if @loadString is null
      return
    @loadString = LZString.decompressFromEncodedURIComponent @loadString
    @loadString = JSON.parse @loadString
    loadedUnits = @loadString[0]
    for trash, rootkey of loadedUnits
      for key, val of rootkey
        if units[trash]?
          units[trash][key] = loadedUnits[trash][key]

    loadedAchievements = @loadString[1]
    for ach, i in loadedAchievements
      achievementslist[i] = loadedAchievements[i]
    achievements.recountAchievements()
