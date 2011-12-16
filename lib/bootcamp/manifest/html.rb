create_file File.join(@project, 'sandbox', 'index.html') do
<<-HTML
<!DOCTYPE html>
<html>
  <head>
    <title>#{@project.upcase} #{options[:library]} Plugin</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles.css" media="screen" charset="utf-8">
  </head>
  <body>
    <div id="container">
      <h1>Hello, World!</h1>
      <p>#{@project.capitalize} #{options[:library]} Plugin</p>
      <button id="testbtn">TEST</button>
    </div>
    <script charset="utf-8" src="../vendor/#{options[:library]}.js"></script>
    <script charset="utf-8" src="../lib/#{@project}.js"></script>
  </body>
</html>
HTML
end

create_file File.join(@project, 'sandbox', 'styles.css') do
<<-CSS
/* BASIC RESET */
*{margin: 0;padding: 0;}
body{color: #000000;font-family: Arial, sans-serif;font-size: 14px;background-color: #acacac;}
a{text-decoration: none;}
a:hover{text-decoration: underline;}
a:focus,a:active{outline: none;}
img{border: none;}
ul,ol{margin-left: 20px;}
/* GLOBAL */
#container{width: 980px;margin: 20px auto;background-color: #ffffff;border: 1px solid #666666;padding: 20px;}
#testbtn{margin-top:10px;}
CSS
end
