#
# Be sure to run `pod lib lint Minject.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Minject'
  s.version          = '1.0.0'
  s.summary          = 'Minimum DI framework'
  s.description      = <<-DESC
Minject is a minimum Dependency Injection framework for Swift.
It is designed for developers to avoid depending on "magical" behavior and have explicit control by self.
                       DESC

  s.homepage         = 'https://github.com/thedoritos/Minject'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomohiro Matsumura' => 'thedoritos@gmail.com' }
  s.source           = { :git => 'https://github.com/thedoritos/minject.git', :tag => s.version.to_s }

  s.swift_versions   = ['5.0']
  s.ios.deployment_target = '8.0'

  s.source_files = 'Minject/Classes/**/*'
end
