var assert = require('assert');
var main = require('main');

module.exports = {
  
  'test #read()': function() {
    var greetings = main.Greeting("user");
    assert.eql("hello user", greetings);
  },
}


