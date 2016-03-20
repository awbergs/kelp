require 'rubygems'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec

  def fixture_file(*path)
    full_path = ['spec', 'fixtures'] + path
    IO.binread(Rails.root.join(*full_path))
  end
end
