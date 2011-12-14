# This is the metadata template
create_file "#{@project}/metadata.json" do
<<-JSON
{
  "name": "#{@project}",
  "version": "0.0.1",
  "authors": "Who wrote this?",
  "summary": "A short summary.",
  "description": "A longer description.",
  "website": "URL for this plugin.",
  "documentation": "URL for the documentation."
}
JSON
end
