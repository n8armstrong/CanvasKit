Pod::Spec.new do |s|
  s.name     = 'CanvasKit'
  s.version  = '0.6.57'
  s.license  = 'MIT'
  s.summary  = 'A Canvas API integration framework better than bamboo'
  s.homepage = 'https://github.com/instructure/CanvasKit'
  s.authors  = { 'Rick Roberts' => 'elgreco84@gmail.com', 'Jason Larsen' => 'jason.larsen@gmail.com' }
  s.source   = { :git => 'https://github.com/instructure/CanvasKit.git', :tag => '0.6.57' }
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.ios.source_files = 'CanvasKit/**/*.{h,m}'
  s.ios.vendored_frameworks = 'Carthage/Build/iOS/*.framework'

  s.resources = 'CanvasKit/**/*.{js}','CanvasKit/**/*.{css}'

  s.subspec 'no-arc' do |ss|
    ss.requires_arc = false
    ss.source_files = 'Carthage/Checkouts/iso-8601-date-formatter/ISO8601DateFormatter.{h,m}'
  end
end
