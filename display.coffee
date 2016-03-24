Node = {
  onMessage: (msg) ->
    console.log msg.message
}


self.onmessage = (msg) ->
  try
    func = "on"+msg.data.type
    Node[func] msg.data
  catch e
    console.log e

