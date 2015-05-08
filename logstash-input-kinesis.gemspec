# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logstash/inputs/kinesis/version'

Gem::Specification.new do |spec|
  spec.name          = "logstash-input-kinesis"
  spec.version       = Logstash::Input::Kinesis::VERSION
  spec.authors       = ["Brian Palmer"]
  spec.email         = ["brian@codekitchen.net"]
  spec.summary       = %q{Logstash plugin for Kinesis input}
  spec.description   = %q{This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program}
  spec.homepage      = "https://github.com/codekitchen/logstash-input-kinesis"
  spec.licenses      = ['Apache License (2.0)']

  spec.files         = %w[Gemfile LICENSE.txt README.md Rakefile] + Dir.glob("lib/logstash/inputs/**/*")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Special flag to let us know this is actually a logstash plugin
  spec.metadata      = { "logstash_plugin" => "true", "logstash_group" => "input" }

  spec.platform      = 'java'

  spec.requirements << "jar 'com.amazonaws:amazon-kinesis-client', '1.2.1'"

  spec.add_runtime_dependency 'jar-dependencies', '~> 0.1.7'
  spec.add_runtime_dependency 'ruby-maven', '>= 3.1.1.0.8'
  spec.add_runtime_dependency "maven-tools", '~> 1.0.7'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "logstash-core"
  spec.add_development_dependency "logstash-codec-json"
end
