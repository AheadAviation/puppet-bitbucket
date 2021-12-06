require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'
include RspecPuppetFacts

RSpec.configure do |c|
  c.before(:each) do
    # avoid "Only root can execute commands as other users"
    Puppet.features.stubs(root?: true)
  end
end

RSpec.configure do |c|
  c.default_facts = {
    bitbucket_version: '4.6.0',
    staging_http_get: 'curl',
    os_maj_version: '6',
    puppetversion: '3.7.4',
  }
end

BITBUCKET_VERSION = '4.6.0'.freeze
BACKUP_VERSION = '3.2.0'.freeze
BITBUCKET_VERSION = '4.6.0'.freeze
BITBUCKET_BACKUP_VERSION = '3.2.0'.freeze
