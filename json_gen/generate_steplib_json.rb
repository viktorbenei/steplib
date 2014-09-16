require 'find'
require "safe_yaml/load"
require 'optparse'
require 'json'


options = {
  output_file_path: nil,
  steplib_info_file: "../steplib.yml"
}
opt_parser = OptionParser.new do |opt|
  opt.banner = "Usage: generate_steplib_json.rb [OPTIONS]"
  opt.separator  ""
  opt.separator  "Options"

  opt.on("-o", "--outputfile OUTPUT_FILE_PATH", "Output JSON file path") do |value|
    options[:output_file_path] = value
  end

  opt.on("-h","--help","help") do
    puts opt_parser
    exit
  end
end
opt_parser.parse!

unless options[:output_file_path]
  puts "[!] Output JSON File Path is missing"
  puts opt_parser
  exit
end

# --- UTILS ---

def json_step_item_from_yaml_hash(yaml_hash)
  return {
    name: yaml_hash["name"]
  }
end

# --- MAIN ---

steplib_data = {
  version: nil,
  steps: {}
}

steplib_info = SafeYAML.load_file(options[:steplib_info_file])
steplib_data[:version] = steplib_info["version"]

Find.find("../steps") do |path|
  if FileTest.directory?(path)
    next
  else
    if match = path.match(/steps\/([a-zA-z0-9-]*)\/([0-9]*\.[0-9]*\.[0-9]*)\/step.yml\z/)
      stepid, stepver = match.captures
      step_version_item = json_step_item_from_yaml_hash(SafeYAML.load_file(path))

      steplib_data[:steps][stepid] = {} unless steplib_data[:steps][stepid]

      steplib_data[:steps][stepid][stepver] = step_version_item
    end
  end
end

puts " steplib_data: #{steplib_data.to_json}"

# write to file
File.open(options[:output_file_path], "w") do |f|
  f.write(steplib_data.to_json)
end
