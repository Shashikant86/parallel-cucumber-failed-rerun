require "Capybara"
require "Capybara/cucumber"
require "cucumber"
require "rspec"
require 'capybara/poltergeist'
require 'capybara/rspec'
# require 'capybara/accessible'

Capybara.default_driver = :poltergeist


Capybara.register_driver :poltergeist do |app|

    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,

    }

    Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.register_driver :accessibility do |app|
    Capybara::Accessible::Driver.new(app)
end
