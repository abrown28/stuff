// Generated by CoffeeScript 1.10.0
(function() {
  var i;

  i = 0;

  setInterval(function() {
    i++;
    console.lo(i);
    return self.postMessage({
      type: "Message",
      message: i
    });
  }, 1000);

}).call(this);
