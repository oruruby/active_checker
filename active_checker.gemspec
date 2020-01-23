$:.push File.expand_path("lib", __dir__)

require "active_checker/version"

Gem::Specification.new do |spec|
  spec.name        = "active_checker"
  spec.version     = ActiveChecker::VERSION
  spec.authors     = ["oruruby"]
  spec.email       = ["d.vishnevskiy@outlook.com"]
  spec.homepage    = ""
  spec.summary     = "Callable validations with failure processing"
  spec.description = "Architectural feature, that delegate resource verification to another abstract entity called 'Checker', and provide light interface to working with them"
  spec.license     = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

  spec.add_development_dependency "active_record"
end
