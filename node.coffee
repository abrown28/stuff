self.onmessage = (msg) ->
  if msg?.data?.cmd? == "load" and msg?.data?.file?
    importScript msg.data.file
  




