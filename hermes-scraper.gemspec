# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hermes/scraper/version'

Gem::Specification.new do |spec|
  spec.name          = 'hermes-scraper'
  spec.version       = Hermes::Scraper::VERSION
  spec.authors       = ['Luke Farrar']
  spec.email         = ['luke.farrar@thebookpeople.co.uk']
  spec.license       = 'GPLv3'
  spec.summary       = 'Scrapes tracking info from the HTML on Hermes website.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/TheBookPeople/hermes-scraper'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'mechanize', '~> 2.7.4'
end
