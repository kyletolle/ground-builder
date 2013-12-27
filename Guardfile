guard :bundler do
  watch('Gemfile')
end

guard 'spork', cucumber: false, test_unit: false do
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch(%r{^spec/support/(.+)\.rb$})
end

guard :rspec, wait: 5, all_after_pass: false, all_on_start: true do
  watch('spec/spec_helper.rb')          { "spec" }
  watch(%r{^spec/support/*/(.+)\.rb$})  { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})             { |m| "spec/#{m[1]}_spec.rb" }
end

