# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_fancier_uploads/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form_fancier_uploads"
  spec.version       = SimpleFormFancierUploads::VERSION
  spec.authors       = ["Yu Haidong"]
  spec.email         = ["yuhaidongyhd@gmail.com"]

  spec.summary       = %q{Make Simple Form fancier.}
  spec.description   = %q{Make Simple Form fancier.}
  spec.homepage      = "https://github.com/teeceepee/simple_form_fancier_uploads"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
  end

  spec.add_development_dependency "bundler", "> 0"
  spec.add_development_dependency "rake", "> 0"
end
