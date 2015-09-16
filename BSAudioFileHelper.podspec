Pod::Spec.new do |s|
  s.name             	= "BSAudioFileHelper"
  s.version          	= "1.0.0"
  s.summary          	= "Helper methods for work with audio files"
  s.description      	= "Useful methods for work with audio files and handling errors"
  s.homepage         	= "https://github.com/Bogdan-Stasjuk/BSAudioFileHelper"
  s.license      		= { :type => 'MIT', :file => 'LICENSE' }
  s.author           	= { "Bogdan Stasiuk" => "Bogdan.Stasjuk@gmail.com" }
  s.source           	= { :git => "https://github.com/Bogdan-Stasjuk/BSAudioFileHelper.git", :tag => '1.0.0' }
  s.social_media_url 	= 'https://twitter.com/Bogdan_Stasjuk'
  s.platform     		= :ios, '7.0'
  s.requires_arc 	= true
  s.source_files 	= 'BSAudioFileHelper/*.{h,m}'
  s.public_header_files   	= 'BSAudioFileHelper/*.h'
  s.dependency 'BSMacros'
end
