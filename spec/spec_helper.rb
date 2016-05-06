$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hermes/scraper'

require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

RSpec.configure do |c|
end
