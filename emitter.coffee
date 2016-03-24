
i = 0
setInterval ->
  i++
  console.lo i
  self.postMessage {type: "Message", message: i}
, 1000