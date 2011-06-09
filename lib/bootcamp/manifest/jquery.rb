# This is the jquery template
append_file "#{@project}/lib/#{@project}.js" do
<<-JS

(function($) {
  $.extend($.fn, {
		#{@project}: function() {
		  alert('hello world');
	  }
	});
})(jQuery);
JS
end
