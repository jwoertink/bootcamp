# This is the jquery template
append_file "#{name}/lib/#{name}.js" do
<<-JS

(function($) {
  $.extend($.fn, {
		#{name}: function() {
		  alert('hello world');
	  }
	});
})(jQuery);
JS
end
