# This is the core template
append_file "#{@project}/lib/#{@project}.js" do
<<-JS

(function() {
  
  var #{@project} = function() {
    alert('hello world');
  };
  
})();
JS
end