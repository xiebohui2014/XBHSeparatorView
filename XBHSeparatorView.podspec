Pod::Spec.new do |s|
  s.name             = 'XBHSeparatorView'
  s.version          = '1.1.0'
  s.summary          = 'Amazing SeparatorView.'

  s.description      = <<-DESC
  Amazing SeparatorView. Try.
                       DESC

  s.homepage         = 'https://github.com/xiebohui2014/XBHSeparatorView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xiebohui' => 'xiebohui2014@163.com' }
  s.source           = { :git => 'https://github.com/xiebohui2014/XBHSeparatorView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'XBHSeparatorView/Classes/**/*'

end
