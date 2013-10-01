Pod::Spec.new do |s|

  s.name         = "Ensembles"
  s.version      = "0.1.0"
  s.summary      = "A peer-to-peer synchronization framework for Core Data."

  s.description  =  <<-DESC
                    Ensembles extends Apple's Core Data framework to add 
                    peer-to-peer synchronization for Mac OS and iOS. 
                    Multiple SQLite persistent stores can be coupled together 
                    via a file synchronization platform like iCloud or Dropbox. 
                    The framework can be readily extended to support any 
                    service capable of moving files between devices, including 
                    custom servers.
                    DESC

  s.homepage     = "https://github.com/drewmccormack/ensembles"
  s.license      = { :type => 'MIT', :file => 'LICENCE.txt' }
  s.author       = { "Drew McCormack" => "drewmccormack@mac.com" }
  
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'

  s.source        = { :git => 'https://github.com/drewmccormack/ensembles.git', :tag => s.version.to_s }
  s.source_files  = 'Framework/**/*.{h,m}'
  s.exclude_files = 'Framework/Tests (Mac)'
  
  s.resources     = 'Framework/Resources/*'
  
  s.requires_arc  = true

end
