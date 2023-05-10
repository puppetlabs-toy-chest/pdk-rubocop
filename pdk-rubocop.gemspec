# frozen_string_literal: true

require_relative 'lib/pdk/rubocop/version'

Gem::Specification.new do |spec|
  spec.name = 'pdk-rubocop'
  spec.version = Pdk::Rubocop::VERSION
  spec.authors = ['Puppet, Inc']
  spec.email = ['info@puppet.com']

  spec.summary = 'A Gem that provides RuboCop configuration to Puppet Modules and Tools.'
  spec.description = 'A Gem that provides Rubocop configuration to Puppet Modules and Tools.'
  spec.homepage = 'https://github.com/puppetlabs/pdk-rubocop'
  spec.license = 'Apache-2.0'

  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['lib/**/*.rb'] + ['module_rubocop.yml']

  spec.add_dependency 'rake'
  spec.add_dependency 'rubocop', '= 1.48.1'
  spec.add_dependency 'rubocop-performance', '= 1.16.0'
  spec.add_dependency 'rubocop-rspec', '= 2.19.0'
end
