# This is the metadata template
create_file "#{@project}/metadata.json" do
<<-JSON
{
  "name": "#{@project}",
  "version": "0.0.1",
  "authors": "",
  "summary": "",
  "description": "",
  "website": "",
  "documentation": ""
}
JSON
end
