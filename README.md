
# Clone the GitHub Repository
    $ git clone https://github.com/Shashikant86/parallel-cucumber-failed-rerun
    $ cd parallel-cucumber-failed-rerun


# Running Features in Parallel

## Requirements
 * Ruby 1.9.3 and above
 * Bundler


## Running parallel_cucumber and Re-running failed Scenarios

    $ bundle exec rake test

This will run 10 features in 10 different processes.

## Reports

  ### HTML Reports
  Once you run the rake task, You will see HTML reports generated in the HTML files dependeing on how many process you have

  ### Failed Scenario log

  Parallel cucumber logs failed scenarios in the 'cucumber_failures.log'

# using Rakefile

  Rakefile has 4 different tasks to perform different cucumber operations

### cleanup

  This task delete old html reports and cucuber failures log file and create new one for fresh execution.

### parallel_cucumber

This task runs features in parallel and create 'cucumber_failures.log' file with failed scenarios.

### rerun

This task will rerurn only failed scenarios.

### test

This task will combine everything in one.
