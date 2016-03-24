inPorts =
  "IN":
    ips: []
  "MULT":
    ips: []

outPorts =
  "OUT":
    ips: []

self.onmessage = (msg) ->
  try
    inPorts[msg.data.port].ips.push msg.data.ip

    # check if all ports have ips then call Run
    numberPorts = 0
    doit = for name, port of inPorts
      numberPorts += 1
      if port.ips.length > 0
        1
      else
        0
      
    count = inPorts.reduce (t,s) ->
      t.ips.length + s.ips.length
      
    if count == numberPorts
      ports = {}
      for name, port of inPorts
        ports[name] = port.ips.pop
      for name, port of outPorts
        ports[name] = []


    # send any out ips
    for name, port of outPorts
      if port.ips.length > 0
        self.postMessage
          port: name
          ip: port.ips.pop

  catch e
    console.log e


Run = (ports) ->
  i = ports["IN"]
  m = ports["MULT"]

  ports["OUT"].ips.push m*i








