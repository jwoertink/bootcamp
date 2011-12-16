# This is the mootols template
append_file File.join(@project, 'lib', "#{@project}.js") do
<<-JS

var #{@project.capitalize} = new Class({
  Implements: [Options, Events],
  options: {
    message: 'hello world'
  },
  initialize: function(options) {
    this.setOptions(options);
  },
  run: function() {
    alert(this.options.message);
  }
  
});

var h = new #{@project.capitalize}();
h.run();
JS
end
