Pod::Spec.new do |s|
    s.name         = "LBObservableProperty"
    s.version      = "0.0.1"
    s.summary      = "LBObservableProperty: Lioz Balki Framework"
    
    s.description  = <<-DESC
                   The Lioz Balki SDK for iOS Observable Property framework provides:
                   *
                   DESC
    
    s.homepage  = "https://github.com/lioz12131415/LBObservableProperty.git"
    s.readme    = "https://raw.githubusercontent.com/lioz12131415/LBObservableProperty/main/README.md"
    
    s.license = {
        :type => "MIT", :file => "LICENSE"
    }
    s.author = {
        "Lioz Balki" => "lioz12131415@gmail.com"
    }
    s.source = {
        :git => "https://github.com/lioz12131415/LBObservableProperty.git", :tag => "#{s.version}"
    }
    s.resource_bundles = {
        'LBCollectionsCombinerView' => ['LBObservableProperty/**/*.{swift,xcassets,xcdatamodeld,ttf}']
    }
    s.pod_target_xcconfig = {
        'LD_RUNPATH_SEARCH_PATHS' => '$(FRAMEWORK_SEARCH_PATHS)'
    }
    
    s.source_files = "LBObservableProperty", "LBObservableProperty/**/*.{h,m,swift,folder,storyboard,strings,xcdatamodeld,xib,ttf}"
    
    s.platform               = :ios, "14.0"
    s.libraries              = 'z'
    s.requires_arc           = true
    s.swift_version          = "5.0"
    s.vendored_frameworks    = "LBObservablePropertyXCFramework.xcframework"
    s.ios.deployment_target  = '14.0'

end
