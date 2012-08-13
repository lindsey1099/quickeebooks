# see https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services/0400_QuickBooks_Windows/CompanyMetaData
require "quickeebooks"
require "quickeebooks/windows/model/address"
require "quickeebooks/windows/model/phone"
require "quickeebooks/windows/model/email"

module Quickeebooks
  module Windows
    module Model
      class Company < Quickeebooks::Windows::Model::IntuitType
        include ActiveModel::Validations
        
        REST_RESOURCE = "company"
        XML_COLLECTION_NODE = 'CompaniesMetaData'
        XML_NODE = 'CompanyMetaData'

        xml_convention :camelcase        
        xml_accessor :external_realm_id, :from => 'ExternalRealmId'
        xml_accessor :registered_company_name, :from => 'QBNRegisteredCompanyName'
        xml_accessor :industry_type, :from => 'IndustryType'
        xml_accessor :addresses, :from => 'Address', :as => [Quickeebooks::Windows::Model::Address]
        xml_accessor :legal_address, :from => 'LegalAddress', :as => Quickeebooks::Windows::Model::Address
        xml_accessor :emails, :from => 'Email', :as => [Quickeebooks::Windows::Model::Email]
        xml_accessor :phone, :from => 'Phone', :as => Quickeebooks::Windows::Model::Phone

        def to_xml_ns(options = {})
          to_xml_inject_ns('Company', options)
        end
      end
    end
  end
end