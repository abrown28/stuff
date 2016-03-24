class Queue
  ips: []
  constructor: (@i, @o, @len) ->
    @len = 10 if not @len?

    @i.onmessage = (msg) ->
      result = "queued"
      if @ips.length >= @len
        result = "rejected"
      else
        @ips.push msg.data

      @i.postMessage result

    @o.onmessage = (msg) ->
      if @ips.length <= 0
        @o.postMessage
          empty: true
      else
        @o.postMessage @len.pop()