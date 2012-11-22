require "quickeebooks"

module Quickeebooks
  module Windows
    module Model
      class AdvancedReport < Quickeebooks::Windows::Model::IntuitType
        # DEFAULT_TYPE_OF = 'Report'
        XML_COLLECTION_NODE = 'Data'
        XML_NODE = 'DataRow'

#       URI: https://services.intuit.com/sb/advancedreport/v2/<realmID>
#       Method: POST
        REST_RESOURCE = "advancedreport"
        
        xml_convention :camelcase
        attr_accessor :vendor_id#, :from => 'VendorId', :as => Quickeebooks::Windows::Model::VendorId
        attr_accessor :vendor_name#, :from => 'VendorName'
        attr_accessor :vendor_tax_id#, :from => 'VendorTaxId'
        attr_accessor :box1_amount#, :from => 'Box1_Amount', :as => Float
        attr_accessor :box2_amount#, :from => 'Box2_Amount', :as => Float
        attr_accessor :box3_amount#, :from => 'Box3_Amount', :as => Float
        attr_accessor :box4_amount#, :from => 'Box4_Amount', :as => Float
        attr_accessor :box5_amount#, :from => 'Box5_Amount', :as => Float
        attr_accessor :box6_amount#, :from => 'Box6_Amount', :as => Float
        attr_accessor :box7_amount#, :from => 'Box7_Amount', :as => Float
        attr_accessor :box8_amount#, :from => 'Box8_Amount', :as => Float
        attr_accessor :box9_amount#, :from => 'Box9_Amount', :as => Float
        attr_accessor :box10_amount#, :from => 'Box10_Amount', :as => Float
        attr_accessor :box13_amount#, :from => 'Box13_Amount', :as => Float
        attr_accessor :box14_amount#, :from => 'Box14_Amount', :as => Float

        def self.from_xml(xml)
          items = (xml/'ColData').map(&:inner_text)

          entry = new
          entry.vendor_id = items[0]
          entry.vendor_name = items[1]
          entry.vendor_tax_id = items[2]
          entry.box1_amount = items[3].to_f
          entry.box2_amount = items[4].to_f
          entry.box3_amount = items[5].to_f
          entry.box4_amount = items[6].to_f
          entry.box5_amount = items[7].to_f
          entry.box6_amount = items[8].to_f
          entry.box7_amount = items[9].to_f
          entry.box8_amount = items[10].to_f
          entry.box9_amount = items[11].to_f
          entry.box10_amount = items[12].to_f
          entry.box13_amount = items[13].to_f
          entry.box14_amount = items[14].to_f
          entry
        end
      end
    end
  end
end
