Gem::Specification.new do |s|
  s.name        = 'hipcow'
  s.version     = '1.0.0'
  s.date        = '2015-07-16'
  s.summary     = "cowsay for Hipchat"
  s.description = "Become the cow whisperer on Hipchat... Or at least a whispering cow..."
  s.authors     = ["Khanh Nguyen"]
  s.email       = 'khanhplications@gmail.com'
  s.files       = ["lib/hipcow.rb"]
  s.homepage    =
    'https://github.com/khanh2907/hipcow'
  s.license       = 'MIT'
  s.add_runtime_dependency "hipchat-api",
    ["= 1.0.6"]
  s.add_runtime_dependency "ruby_cowsay",
    ["= 0.1.1"]
end
