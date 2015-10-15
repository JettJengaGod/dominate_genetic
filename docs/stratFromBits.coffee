fs = require("fs")
coffee = require 'coffee-script'

loadBits = (filename) ->
  fs.readFile filename, (err, contents) ->
    compile filename, contents.toString()
    bits = contents.toString()
parseBits = ->
  order2 = ["Cellar", "Moat"]
  order3 = ["Silver", "Village", "Woodcutter", "Workshop"]
  order4 = ["Militia", "Remodel", "Smithy"]
  order5 = ["Market","Mine"]


order (list, bits)->
  switch list.length
    when 2
      if bits is "1"
        list = list.reverse()
    when 3
      switch bits
        when "001"


reorder(list,order) ->
  if list.length is 3
    