require 'fileutils'

task :cleanup do
puts " ========Deleting old reports ang logs========="
FileUtils.rm_rf('reports')
File.delete("cucumber_failures.log") if File.exist?("cucumber_failures.log")
File.new("cucumber_failures.log", "w")
Dir.mkdir("reports")
end

task :parallel_run do
puts "===== Executing Tests in parallel"
system "bundle exec parallel_cucumber features/ -o \"-p parallel -p pretty\" -n 10"
puts " ====== Parallel execution finished and cucumber_failure.log created ========="
end

task :rerun do
if File.size("cucumber_failures.log") == 0
puts "==== No failures. Everything Passed ========="
else
puts " =========Re-running Failed Scenarios============="
system "bundle exec cucumber @cucumber_failures.log -f pretty"
end
end

task :test => [ :cleanup, :parallel_run, :rerun  ]

Rake::Task["test"].invoke
