Dir[File.join(File.expand_path(File.dirname(__FILE__)), "*.rb")].each do |rb_file|
  next if File.basename(rb_file) == File.basename(__FILE__)
  require rb_file 
end
