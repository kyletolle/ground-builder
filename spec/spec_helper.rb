require 'rubygems'
require 'rspec'

def require_files
  ruby_files = File.join(File.dirname(__FILE__), '..', 'lib', '**', '*.rb')
  Dir[ruby_files].each do |file|
    require file
  end
end

require_files
