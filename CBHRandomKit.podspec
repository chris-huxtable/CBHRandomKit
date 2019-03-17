Pod::Spec.new do |spec|

  spec.name                   = "CBHRandomKit"
  spec.version                = "1.3.2"
  spec.module_name            = "CBHRandomKit"

  spec.summary                = "An easier & safer to use interface for good cryptographically secure random."
  spec.homepage               = "https://github.com/chris-huxtable/CBHRandomKit"

  spec.license                = { :type => "ISC", :file => "LICENSE" }

  spec.author                 = { "Chris Huxtable" => "chris@huxtable.ca" }
  spec.social_media_url       = "https://twitter.com/@Chris_Huxtable"

  #spec.ios.deployment_target = '9.0'
  spec.osx.deployment_target  = '10.10'

  spec.source                 = { :git => "https://github.com/chris-huxtable/CBHRandomKit.git", :tag => "v#{spec.version}" }

  spec.requires_arc           = true

  spec.public_header_files    = 'CBHRandomKit/*.h'
  spec.source_files           = "CBHRandomKit/*.{h,m}"

end
