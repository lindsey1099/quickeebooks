require "quickeebooks"

module Quickeebooks
  module Windows
    module Model
      class AdvancedReport < Quickeebooks::Windows::Model::IntuitType
        # DEFAULT_TYPE_OF = 'Report'
        XML_COLLECTION_NODE = 'Report'
        XML_NODE = 'Report'

#       URI: https://services.intuit.com/sb/advancedreport/v2/<realmID>
#       Method: POST
        REST_RESOURCE = "advancedreport"
        
        xml_convention :camelcase
        # xml_accessor :vendor_id, :from => 'VendorId', :as => Quickeebooks::Windows::Model::VendorId
        # xml_accessor :vendor_name
        # xml_accessor :vendor1099?, :from => 'Vendor1099'
      end
    end
  end
end