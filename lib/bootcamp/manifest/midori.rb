# This is the midori template
append_file File.join(@project, 'lib', "#{@project}.js") do
<<-JS

(function() {
  // Does anyone know how to write a Midori plugin?
  alert('Hello World');
  
})();
JS
end
