guard :minitest do
  watch(%r{^lib/classes/(.+)\.rb$}) { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/(.*/)?([^/]+)\.rb$})
  watch(%r{^test/test_helper\.rb$}) { 'test' }
  watch(%r{^lib/bootstrap\.rb$}) { 'test' }
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end
