Pod::Spec.new do |s|  
  s.name             = "CAPImagePickerView"  
  s.version          = "1.0.1"  
  s.summary          = "Package from TZImagePickerController."  
  s.homepage         = "https://github.com/captain9911/CAPImagePickerView"  
  s.license          = "MIT"  
  s.author           = { "captain9911" => "captain9911@163.com" }  
  s.source           = { :git => "https://github.com/captain9911/CAPImagePickerView.git", :tag => s.version.to_s }  
  
  s.platform     = :ios, '7.0'  
  s.requires_arc = true  
  s.source_files = "CAPImagePickerView/*.{h,m}"
  s.resources    = "CAPImagePickerView/*.{png,xib,nib,bundle}" 
end  