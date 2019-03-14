require_relative File.expand_path('lib/constants',    __dir__)
require_relative File.expand_path('lib/knife_helper', __dir__)

task :default do
  puts "* Type 'rake --tasks' to list existent tasks"
end

Dir[File.expand_path("tasks/*.rake")].each do |task|
  load task
end
