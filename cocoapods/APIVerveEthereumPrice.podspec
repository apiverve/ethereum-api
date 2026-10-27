Pod::Spec.new do |s|
  s.name             = 'APIVerveEthereumPrice'
  s.version          = '1.2.3'
  s.summary          = 'Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars.'
  s.description      = <<-'DESC'
Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add conversion into 172 currencies, 24-hour trading volume, market capitalization, and hourly price snapshots.

This iOS/macOS SDK provides a convenient way to access the Ethereum Price from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/ethereum?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/ethereum-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveEthereumPrice/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
