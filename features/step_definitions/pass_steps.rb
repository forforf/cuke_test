require 'rspec/expectations'
require 'cucumber/formatter/unicode'

Before do
  @checker = []
end

After do
end

Given /a pass feature and pass scenario/ do    #/^a feature and (\w+)/ do |testable|
  @checker.push true
end

When /the pass scenario is tested/ do
  @checker.push true
end

Then /it should pass/ do
  @checker.size.should > 0
  @checker.inject(true){|flag, i| flag && i}.should be_true
end