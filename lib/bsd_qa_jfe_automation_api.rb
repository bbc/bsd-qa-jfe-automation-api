# coding: utf-8

require 'httparty'
require 'hashie'
require 'pry'

require_relative '../lib/bsd_qa_jfe_automation_api/services'
require_relative '../lib/bsd_qa_jfe_automation_api/response/response_json'

# Namespace for Project
module BsdQaJfeAutomationApi
  include Services
end
