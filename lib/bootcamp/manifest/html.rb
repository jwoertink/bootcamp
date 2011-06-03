create_file "#{name}/index.html" do
<<-HTML
<!DOCTYPE html>
<html>
  <head>
    <title>#{name.upcase} Javascript Plugin</title>
    <meta charset="utf-8">
  </head>
  <body>
    <h1>Hello World</h1>
    <button onclick="">TEST</button>
    <script charset="utf-8" src="vendor/#{options[:framework]}.js"></script>
    <script charset="utf-8" src="lib/#{name}.js"></script>
  </body>
</html>
HTML
end