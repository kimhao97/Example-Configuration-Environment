platform :ios, '11.0'
inhibit_all_warnings!

target 'example-configuration-environments' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for example-configuration-environments
  pod 'Swinject', '2.7.1'
  pod 'SwinjectStoryboard', '2.2.2'

  target 'example-configuration-environmentsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'example-configuration-environmentsUITests' do
    # Pods for testing
  end

end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
               end
          end
   end
end
