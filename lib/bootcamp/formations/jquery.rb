# This is the jquery template
append_file "#{name}/lib/#{name}.js" do
<<-JS\n
(function($) {
  $.extend($.fn, {
		#{name}: function() {
		  alert('hello world');
	  }
	});
})(jQuery);
JS
end
