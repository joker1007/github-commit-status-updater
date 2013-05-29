# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github-commit-status-updater/version'

Gem::Specification.new do |gem|
  gem.name          = "github-commit-status-updater"
  gem.version       = Github::Commit::Status::Updater::VERSION
  gem.authors       = ["joker1007"]
  gem.email         = ["kakyoin.hierophant@gmail.com"]
  gem.description   = %q{Github commit status api helper}
  gem.summary       = %q{Github commit status api helper}
  gem.homepage      = "https://github.com/joker1007/github-commit-status-updater"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'octokit'
  gem.add_dependency 'thor'
end
