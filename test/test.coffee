assert = require 'assert'
importify = require '../importify'

importify require './importme'

if MAGICNUMBER? and MAGICNUMBER == 42
	console.log 'Passed'
else
	console.error 'Import failed'

