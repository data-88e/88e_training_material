Gem::Specification.new do |spec|
  spec.name          = "my-markdown-library"
  spec.version       = "0.1.0"
  spec.authors       = ["Eric Van Dusen"]
  spec.email         = ["ericvd@berkeley.edu"]
  spec.summary       = "A library of Markdown documents from Data 88E in Fall 2024"
  spec.description   = "This gem packages three distinct sets of Markdown files: a textbook, lecture notes, and personal notebooks, making them easy to access and distribute."
  spec.homepage      = "https://github.com/data-88e/88e_training_material"
  spec.license       = "BSD-3-Clause"

  # This is the important line that includes all your files and folders.
  spec.files         = Dir.glob("{F24Lec_MD,F24LS_md,F24Textbook_MD,Data88E_System_prompt.md}/**/*")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
