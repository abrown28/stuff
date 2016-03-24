Class Network
  nodes: []
  constructor: () ->
  defProc: (file) ->
    worker = new Worker "js/node.js"
    worker.postMessage {cmd: "load", file: file}


net = new Network
emitter = net.defProc "js/emitter.js"

#emitter = new Worker "js/emitter.js"
#get = new Worker "js/get.js"
#display = new Worker "js/display.js"

#Connect emitter, get
#Connect get, display

###
get.postMessage
  port: "IN"
  ip: "4"

get.postMessage
  port: "MULT"
  ip: "13"
###