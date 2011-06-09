// Initialize functions
(function() {
  
  // Use the new getElementsByClassName or create one if it's an older browser
  if(!(typeof document.getElementsByClassName !== "undefined" && document.getElementsByClassName !== null)) {
    Document.prototype.getElementsByClassName = function(className) {
      var elements = [],
          nodes = this.getElementsByTagName('*'),
          i,
          pattern = new RegExp("(^|\\s)"+className+"(\\s|$)");
      for(i = 0; i < nodes.length; i++) {
        if(pattern.test(nodes[i].className)) elements.push(nodes[i]);
      }
      
      return elements;
    }
  }
  
  // Strip helpers
  String.prototype.trim = function() { return this.replace(/^\s+|\s+$/g, ''); }
  
  // Date helpers
  var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  Date.prototype.getMonthName = function() { return months[this.getMonth()]; }
  Date.prototype.getDayName = function() { return days[this.getDay()]; }
  Date.prototype.getAbbrMonthName = function() { return months[this.getMonth()].substr(0, 3); }
  Date.prototype.getAbbrDayName = function() { return days[this.getDay()].substr(0, 3); }

  // Array helpers
  // [1,2,3].each(function(i) { alert(i); });
  Array.prototype.each = function(iterator, context) {
    var index = 0;
    try {
      this.forEach(function(value) {
        iterator.call(context, value, index++);
      });
    } catch (e) {
      throw e;
    }
    return this;
  }
  
})();