require_relative File.expand_path('chef_rake_libs/constants', __dir__)
require_relative File.expand_path('chef_rake_libs/knife_helper', __dir__)

task :default do
  puts "* Type 'rake --chef_rake_tasks' to list existent chef_rake_tasks"
end

Dir[File.expand_path("chef_rake_tasks/*.rake")].each do |task|
  load task
end
