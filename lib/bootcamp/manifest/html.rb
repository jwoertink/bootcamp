create_file "#{@project}/index.html" do
<<-HTML
<!DOCTYPE html>
<html>
  <head>
    <title>#{@project.upcase} Javascript Plugin</title>
    <meta charset="utf-8">
  </head>
  <body>
    <h1>Hello World</h1>
    <button onclick="">TEST</button>
    <script charset="utf-8" src="vendor/#{options[:library]}.js"></script>
    <script charset="utf-8" src="lib/#{@project}.js"></script>
  </body>
</html>
HTML
end