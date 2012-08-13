require "quickeebooks"
require 'quickeebooks/windows/model/vendor_id'

module Quickeebooks
  module Windows
    module Model
      class Vendor < Quickeebooks::Windows::Model::IntuitType
        DEFAULT_TYPE_OF = 'Person'
        XML_COLLECTION_NODE = 'Vendors'
        XML_NODE = 'Vendor'

        # https://services.intuit.com/sb/customer/v2/<realmID>
        REST_RESOURCE = "vendor"
        
        xml_convention :camelcase
        xml_accessor :vendor_id, :from => 'VendorId', :as => Quickeebooks::Windows::Model::VendorId
        xml_accessor :vendor_name
        xml_accessor :id, :from => 'Id', :as => Quickeebooks::Windows::Model::Id
        xml_accessor :sync_token, :from => 'SyncToken', :as => Integer
        xml_accessor :name, :from => 'Name'
        xml_accessor :meta_data, :from => 'MetaData', :as => Quickeebooks::Windows::Model::MetaData
        xml_accessor :addresses, :from => 'Address', :as => [Quickeebooks::Windows::Model::Address]
        xml_accessor :email, :from => 'Email', :as => Quickeebooks::Windows::Model::Email
        xml_accessor :phones, :from => 'Phone', :as => [Quickeebooks::Windows::Model::Phone]
        xml_accessor :web_site, :from => 'WebSite', :as => Quickeebooks::Windows::Model::WebSite
        xml_accessor :given_name, :from => 'GivenName'
        xml_accessor :middle_name, :from => 'MiddleName'
        xml_accessor :family_name, :from => 'FamilyName'
        xml_accessor :suffix, :from => 'Suffix'
        xml_accessor :gender, :from => 'Gender'
        xml_accessor :dba_name, :from => 'DBAName'
        xml_accessor :tax_identifier, :from => 'TaxIdentifier'
        xml_accessor :show_as, :from => 'ShowAs'
        xml_accessor :sales_term_id, :from => 'SalesTermId', :as => Quickeebooks::Windows::Model::Id
        xml_accessor :open_balance, :from => 'OpenBalance', :as => Quickeebooks::Windows::Model::OpenBalance
        xml_accessor :acct_num, :from => 'AcctNum'
        xml_accessor :vendor1099, :from => 'Vendor1099'
      end
    end
  end
end