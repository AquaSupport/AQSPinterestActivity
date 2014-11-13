Pod::Spec.new do |s|
  s.name         = "AQSPinterestActivity"
  s.version      = "0.1.0"
  s.summary      = "[iOS] UIActivity Class for Pinterest"
  s.homepage     = "https://github.com/AquaSupport/AQSPinterestActivity"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/AquaSupport/AQSPinterestActivity.git", :tag => "v0.1.0" }
  s.source_files  = "AQSPinterestActivity/Classes/**/*.{h,m}"
  s.resources = ["AQSPinterestActivity/Classes/**/*.png"]
  s.requires_arc = true
  s.platform = "ios", '7.0'

  s.dependency "Pinterest-iOS"
end