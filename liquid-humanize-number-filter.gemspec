Gem::Specification.new do |gem|
  gem.name = 'liquid-humanize-number'
  gem.version = '1.0.2'
  gem.date = '2017-01-03'
  gem.summary = 'A liquid filter to make numbers more human readable'
  gem.description = gem.summary
  gem.authors = ['Leo Adamek']
  gem.email = 'info@mrzen.com'
  gem.files = ['lib/liquid-humanize-number.rb']
  gem.homepage = 'http://www.mrzen.com/'
  gem.license = 'GPL-3.0'

  gem.required_ruby_version = '>= 2.0.0'

  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'liquid', '~> 4.0'

end
