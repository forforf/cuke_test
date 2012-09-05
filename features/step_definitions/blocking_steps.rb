require 'rspec/expectations'
require 'cucumber/formatter/unicode'

Before do
  @background = false
  @checker = []
end

After do
end
Given /a background/ do
  @background.should be_true
end

Given /a skipped feature and skipped scenario/ do    #/^a feature and (\w+)/ do |testable|
  @checker.push true
end

When /the skipped scenario is skipped/ do
  @checker.push true
end

Then /it should be skipped/ do
  @checker.size.should > 0
  @checker.inject(true){|flag, i| flag && i}.should be_true
end