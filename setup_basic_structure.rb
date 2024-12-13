# Create a basic directory structure for a simple Ruby project
def create_basic_structure(project_name)
  directories = [
    project_name,
    "#{project_name}/bin",
    "#{project_name}/lib",
    "#{project_name}/spec"
  ]

  directories.each do |dir|
    Dir.mkdir(dir) unless Dir.exist?(dir)
  end

  # Create the main application file in lib/
  File.open("#{project_name}/lib/#{project_name}.rb", 'w') do |file|
    file.write("# #{project_name.capitalize} main file\n")
  end

  # Create a sample test file in spec/
  File.open("#{project_name}/spec/#{project_name}_spec.rb", 'w') do |file|
    file.write("# Tests for #{project_name.capitalize}\n")
  end

  # Create the Gemfile
  File.open("#{project_name}/Gemfile", 'w') do |file|
    file.write("source 'https://rubygems.org'\n\n")
    file.write("gem '#{project_name}'\n")
    file.write("gem 'rspec'       # For testing with RSpec\n")
  end

  # Create the README.md
  File.open("#{project_name}/README.md", 'w') do |file|
    file.write("# #{project_name.capitalize}\n\n")
    file.write("## Description\n\nA brief description of your project.\n")
  end

  # Create the .gitignore file
  File.open("#{project_name}/.gitignore", 'w') do |file|
    file.write(".DS_Store\n")     # macOS specific files
    file.write("*.log\n")          # Log files
    file.write("*.tmp\n")          # Temporary files
    file.write("coverage/\n")      # Coverage reports if using SimpleCov
  end

  puts "Basic directory structure for '#{project_name}' created successfully!"
end

# Usage: Call the method with your desired project name
create_basic_structure("my_project")
