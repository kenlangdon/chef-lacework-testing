# InSpec test for recipe my-lacework::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe file('/var/log/lacework/datacollector.log') do
  it { should exist }
end
