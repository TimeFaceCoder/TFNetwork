Pod::Spec.new do |s|
  s.name         = "TFNetwork"
  s.version      = "0.0.1"
  s.summary      = "时光流影iOS底层网络框架"
  s.homepage     = "https://github.com/TimeFaceCoder/TFNetwork"
  s.license      = "Copyright (C) 2016 TimeFace, Inc.  All rights reserved."
  s.author             = { "Melvin" => "yangmin@timeface.cn" }
  s.social_media_url   = "http://www.timeface.cn"
  s.ios.deployment_target = "7.1"
  s.source       = { :git => "https://github.com/TimeFaceCoder/TFNetwork.git"}
  s.source_files  = "TFNetwork/TFNetwork/**/*.{h,m,c}"
  s.resource_bundles = {
    'TFLibraryResource' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true
  s.dependency 'MPMessagePack', :git=> 'https://github.com/TimeFaceCoder/MPMessagePack.git'
  s.dependency 'AFNetworking'
end
