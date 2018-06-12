require 'spec_helper'
require_relative '../lib/bsd_qa_jfe_automation_api'
require_relative '../lib/helpers/authentication'
require 'pry'
RSpec.describe BsdQaJfeAutomationApi do
  it 'has a version number' do
    expect(BsdQaJfeAutomationApi::VERSION).not_to be nil
  end
end
