# This is the prototype template
append_file File.join(@project, 'lib', "#{@project}.js") do
<<-JS

#{@project.capitalize}Options = Object.extend({
  message: 'Hello World'
}, window.#{@project.capitalize}Options || {});

var #{@project.capitalize} = Class.create();

#{@project.capitalize}.prototype = {
  initialize: function() {
    alert(#{@project.capitalize}Options.message);
  }
}

JS
end
