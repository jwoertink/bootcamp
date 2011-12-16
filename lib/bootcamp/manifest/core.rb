# This is the core template
append_file File.join(@project, 'lib', "#{@project}.js") do
<<-JS

(function() {
  
  var #{@project} = function() {
    alert('Hello, World!');
  };
  
  var button = document.getElementById("testbtn");
  button.onclick = function() {
    #{@project}();
  };
})();
JS
end