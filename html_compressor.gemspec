Gem::Specification.new do |s|
  s.name = "html_compressor"
  s.version = "0.0.3"
  s.date = "2012-12-28"
  s.summary = "HTML wrapper for htmlcompressor"
  s.email = "me@ivanturkovic.com"
  s.description = "Easily compress your files with html_compressor. Use html_compressor natively inside ruby code."
  s.homepage = "http://github.com/completelynovel/html_compressor"
  s.rubyforge_project = "html_compressor"
  s.has_rdoc = true
  s.authors = ["Ivan Turkovic"]
  s.files = Dir["Rakefile", "lib/**/*", "test/**/*"]
  s.test_files = Dir["test/*_test.rb"] unless $SAFE > 0
  s.add_dependency "POpen4", ">= 0.1.4"
end