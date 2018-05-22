Pod::Spec.new do |s|
  s.name         = "HSRegEx"

  s.version      = "1.0.0"

  s.summary      = "regular expression."

  s.homepage     = "https://github.com/ZYXiao/HSRegEx"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "ZYXiao" => "304983615@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/ZYXiao/HSRegEx.git", :tag => "1.0.0" }

  s.source_files  = "HSRegEx/*.{h,m}"

  s.frameworks    = 'Foundation'

  s.requires_arc = true
end
