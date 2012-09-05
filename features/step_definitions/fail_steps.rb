require 'rspec/expectations'
require 'cucumber/formatter/unicode'

Before do
  @checker = []
end

After do
end

Given /a fail feature and fail scenario/ do    #/^a feature and (\w+)/ do |testable|
  @checker.push false
end

When /the fail scenario is tested/ do
  @checker.push false
end

Then /it should fail/ do
  @checker.size.should > 0
  @checker.inject(true){|flag, i| flag && i}.should be_true
end