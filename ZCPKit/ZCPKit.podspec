Pod::Spec.new do |s|
  s.name         = "ZCPKit"
  s.version      = "0.0.2"
  s.summary      = "Just for test."
  s.description  = <<-DESC
                    ZCPKit, Just for test.
                   DESC
  s.homepage     = "https://coding.net/u/zcp164757979/p/ZCPKit/git"
  s.license      = "MIT"
  s.author             = { "朱超鹏" => "164757979@qq.com" }
  s.source       = { :git => "https://git.coding.net/zcp164757979/ZCPKit.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/ZCPKit.h'
  s.public_header_files = 'Classes/ZCPKit.h'

# ――― Subspec ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.subspec 'Util' do |ss|
    ss.source_files = 'Classes/Util/ZCPUtil.{h,m}'
    ss.public_header_files = 'Classes/Util/ZCPUtil.h'
  end

  s.subspec 'Router' do |ss|
    ss.dependency 'ZCPKit/Util'
    ss.source_files = 'Classes/Router/ZCPRouter.{h,m}'
    ss.public_header_files = 'Classes/Router/ZCPRouter.h'
  end

  s.subspec 'Test' do |ss|
    ss.source_files = 'Classes/Test/*.{h,m}'
    ss.subspec 'Files1' do |sss|
      sss.source_files = 'Classes/Test/Files1/*.{h,m}'
      sss.subspec 'Files2' do |ssss|
        ssss.source_files = 'Classes/Test/Files1/Files2/*.{h,m}'
      end
    end
  end

end
