Pod::Spec.new do |spec|
  spec.name = "VCInstantiable"
  spec.version = "0.0.2"
  spec.summary = "Helper for instantiating ViewControllers and injecting dependency."
  spec.homepage = "https://github.com/mweglarz/Instantiable.git"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Marcin Węglarz" => 'marcin.weglarz01@gmail.com' }

  spec.platform = :ios, "8.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/mweglarz/Instantiable.git", tag: spec.version.to_s, submodules: true }
  spec.source_files = "Instantiable/**/*"

  spec.frameworks = "UIKit"
end
