
SampleOptions = Object.extend({
  message: 'Hello World'
}, window.SampleOptions || {});

var Sample = Class.create();

Sample.prototype = {
  initialize: function() {
    alert(SampleOptions.message);
  }
}

