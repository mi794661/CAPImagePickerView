Pod::Spec.new do |s|  
  s.name             = "CAPImagePickerView"  
  s.version          = "1.1.1"  
  s.summary          = "Package from TZImagePickerController."  
  s.homepage         = "https://github.com/captain9911/CAPImagePickerView"  
  s.license          = "MIT"  
  s.author           = { "captain9911" => "captain9911@163.com" }  
  s.source           = { :git => "https://github.com/captain9911/CAPImagePickerView.git", :tag => s.version.to_s }  
  
  s.platform     = :ios, '7.0'  
  s.requires_arc = true  
  s.source_files = "CAPImagePickerView/*.{h,m}"
  s.public_header_files = "CAPImagePickerView/CAPImagePickerView.h"

  s.subspec 'TZImagePickerController' do |ss|
    ss.source_files = "CAPImagePickerView/TZImagePickerController/*.{h,m}"
    ss.resources    = "CAPImagePickerView/TZImagePickerController/*.{png,xib,nib,bundle}"
  end
end  
