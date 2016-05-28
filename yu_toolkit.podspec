Pod::Spec.new do |s|
  s.name         = "yu_toolkit"
  s.version      = "0.0.1"
  s.summary      = "cocoa util class"

  s.homepage     = "https://github.com/cosina1985/yu_lib"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "yubenyi" => "cosina1985@gmail.com" }
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  s.source       = { :git => 'https://github.com/cosina1985/yu_lib.git', :tag => s.version.to_s }
  s.source_files  = "class", "class/**/*.{h,m}"
  s.public_header_files = "class/**/*.h"
  s.frameworks = "Foundation"
  s.requires_arc = true

end
