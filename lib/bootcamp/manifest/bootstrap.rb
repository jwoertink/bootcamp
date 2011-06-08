say("bootstrapping #{orders[:project]}", :blue)

#create_file File.join(project, 'lib', "#{project}.js")
# create_file File.join(name, '.gitignore') do
#   <<-GIT
#   .DS_Store
#   *.tmproj
#   tmtags
#   *.swp
#   **/Thumbs.db
#   GIT
# end
# create_file File.join(name, "README") do
#   <<-DOC
#   #{name.capitalize} JavaScript Plugin
#   Created: #{Time.now.strftime("%m/%d/%Y")}
#   DOC
# end
# create_file File.join(name, 'LICENSE') do
#   <<-DOC
#  ----------------------------------------------------------------------------
#  #{name} #{options[:framework]} plugin
#  v 0.0.1
#  Dual licensed under the MIT and GPL licenses.
#  ----------------------------------------------------------------------------
#  Copyright (C) #{Time.now.year} 
#  WEBSITE_CAN_GO_HERE
#  ----------------------------------------------------------------------------
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#  
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#  
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#  THE SOFTWARE.
#  ----------------------------------------------------------------------------
#   DOC
# end
# empty_directory File.join(name, 'vendor')
# empty_directory File.join(name, 'tests')