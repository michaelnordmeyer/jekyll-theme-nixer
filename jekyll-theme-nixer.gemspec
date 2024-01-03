# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-nixer"
  spec.version       = "1.1.0"
  spec.authors       = ["Michael Nordmeyer"]
  spec.email         = ["michaelnordmeyer@users.noreply.github.com"]

  spec.summary       = "A hard-core minimalistic, single-author Jekyll theme with almost default browser styling, and a dark mode. Just a post list and posts, no menu, header, footer, or pages. Even the backlink from posts to home is missing."
  spec.homepage      = "https://github.com/michaelnordmeyer/jekyll-theme-nixer"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"
  
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.9.3", "< 5.0"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2.1"
end
