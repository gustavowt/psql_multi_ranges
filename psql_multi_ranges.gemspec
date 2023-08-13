# frozen_string_literal: true

require_relative "lib/psql_multi_ranges/version"

Gem::Specification.new do |spec|
  spec.name = "psql_multi_ranges"
  spec.version = PsqlMultiRanges::VERSION
  spec.authors = ["Gustavo Warmling Teixeira"]
  spec.email = ["gustavowt@gmail.com"]

  spec.summary = "PostgreSQL multiranges support"
  spec.description = "Add PostgreSQL multiranges support"
  spec.homepage = "https://github.com/gustavowt/psql_multi_ranges"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "pg", ">= 1"
  spec.add_dependency "rails", ">= 6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
