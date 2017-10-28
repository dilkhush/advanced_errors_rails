
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "advanced_errors_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "advanced_errors_rails"
  spec.version       = AdvancedErrorsRails::VERSION
  spec.authors       = ["Dilkhush Soni"]
  spec.email         = ["dilkhushsoni2010@gmail.com"]

  spec.summary       = %q{[Rails] Extentions to ActiveModel's error handling features which I find useful.}
  spec.description   = %q{Disabling the rendering of the attribute name for errors by the error_messages_for helper.
                          Simply place a caret as the first character in the message.}
  spec.homepage      = "http://github.com/dilkhush/advanced_errors_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'activemodel'
  spec.add_dependency 'activerecord'
end
