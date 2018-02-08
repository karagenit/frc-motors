Gem::Specification.new do |s|
    s.name          = 'frc-motors'
    s.version       = IO.read('version.txt')
    s.license       = 'MIT'
    s.summary       = 'FRC Motor Data'
    s.description   = 'DC Motor Specification Lookup Tables for Vex/FRC Legal Motors'
    s.homepage      = 'https://github.com/karagenit/frc-motors'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['lib/frc-motors.rb'] + Dir.glob('data/*')
    s.require_paths = ['lib/', 'data/']
    s.platform      = Gem::Platform::RUBY

    s.add_development_dependency 'rubocop',                     '~> 0.49'
    s.add_development_dependency 'rdoc',                        '~> 4.2'
    s.add_development_dependency 'bundler',                     '~> 1.15'
    s.add_development_dependency 'rake',                        '~> 12.0'
    s.add_development_dependency 'test-unit',                   '~> 3.2'
    s.add_development_dependency 'github_changelog_generator',  '~> 1.14'
end
