# This is the core template
append_file "#{name}/lib/#{name}.js" do
<<-JS\n
(function() {
  
  var #{name} = function() {
    alert('hello world');
  };
  
})();
JS
end