# This is the yui template
append_file File.join(@project, 'lib', "#{@project}.js") do
<<-JS

// A plugin class designed to animate Widget's show and hide methods.
function #{@plugin.capitalize}(config) {
    #{@plugin.capitalize}.superclass.constructor.apply(this, arguments);
}
 
// Define Static properties NAME (to identify the class) and NS (to identify the namespace)
#{@plugin.capitalize}.NAME = '#{@plugin}';
#{@plugin.capitalize}.NS = 'fx';
 
// Attribute definitions for the plugin
#{@plugin.capitalize}.ATTRS = {
 
};
 
// Extend Plugin.Base
Y.extend(#{@plugin.capitalize}, Y.Plugin.Base, {
 
    // Add any required prototype methods
 
});
JS
end
