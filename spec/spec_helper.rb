require 'spork'

Spork.prefork do
  require 'rubygems'
  require 'rspec'
end

Spork.each_run do
  def require_files
    ruby_files = File.join(File.dirname(__FILE__), '..', 'lib', '**', '*.rb')
    Dir[ruby_files].each do |file|
      require file
    end
  end

  require_files
end
