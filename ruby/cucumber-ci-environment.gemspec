version = File.read(File.expand_path('VERSION', __dir__)).strip

Gem::Specification.new do |s|
  s.name        = 'cucumber-ci-environment'
  s.version     = version
  s.authors     = ['Vincent Prêtre']
  s.description = 'Detect CI Environment from environment variables'
  s.summary     = "#{s.name}-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = 'https://github.com/cucumber/ci-environment'
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.6'
  s.required_rubygems_version = '>= 3.0.8'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/cucumber/ci-environment/issues',
    'changelog_uri' => 'https://github.com/cucumber/ci-environment/blob/main/CHANGELOG.md',
    'documentation_uri' => 'https://cucumber.io/docs/gherkin/',
    'source_code_uri' => 'https://github.com/cucumber/ci-environment/tree/main/ruby'
  }

  s.add_development_dependency 'rake', '~> 13.1'
  s.add_development_dependency 'rspec', '~> 3.12'

  s.executables      = []
  s.files            = Dir['README.md', 'LICENSE', 'lib/**/*']
  s.test_files       = Dir['spec/**/*']
  s.rdoc_options     = ['--charset=UTF-8']
  s.require_path     = 'lib'
end
