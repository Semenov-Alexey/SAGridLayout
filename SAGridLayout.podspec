#
# Be sure to run `pod lib lint SAGridLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SAGridLayout'
  s.version          = '0.1.0'
  s.summary          = 'Show UICollectionView element's list in a more unique and interesting way.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Show UICollectionView element's list in a more unique and interesting way in one line of code'
                       DESC

  s.homepage         = 'https://github.com/Semenov-Alexey/SAGridLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Semenov-Alexey' => 'w.l.e.o@icloud.com' }
  s.source           = { :git => 'https://github.com/Semenov-Alexey/SAGridLayout.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.facebook.com/profile.php?id=100004116511145'

  s.ios.deployment_target = '13.0'
  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
  "ios": "13.0"
}

  # s.source_files = 'SAGridLayout/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SAGridLayout' => ['SAGridLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
