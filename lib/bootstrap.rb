# Main libraries and dependencies
%w(
  byebug
  active_model
).each { |l| require l }

def require_all_in_dir(*dirnames)
  Dir[File.join(File.dirname(__FILE__), dirnames, '*.rb')].each do |f|
    require_relative File.join(dirnames, File.basename(f, '*.'))
  end
end

require_all_in_dir('classes')
