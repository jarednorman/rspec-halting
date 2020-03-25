require_relative 'lib/rspec/halting/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-halting"
  spec.version       = Rspec::Halting::VERSION
  spec.authors       = ["Jared Norman"]
  spec.email         = ["jared@super.gd"]

  spec.summary       = "An RSpec matcher that solves the halting problem"
  spec.homepage      = "https://github.com/jarednorman/rspec-halting"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jarednorman/rspec-halting.git"
  spec.metadata["changelog_uri"] = "https://github.com/jarednorman/rspec-halting/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec-expectations"
end
