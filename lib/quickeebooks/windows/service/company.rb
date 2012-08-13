require 'quickeebooks/windows/service/service_base'
require 'nokogiri'

module Quickeebooks
  module Windows
    module Service
      # read only, corresponds to the realm_id
      #see https://ipp.developer.intuit.com/0010_Intuit_Partner_Platform/0050_Data_Services/0500_QuickBooks_Windows/0600_Object_Reference/Company
      
      class Company < ServiceBase
        def list(filters = [], page = 1, per_page = 20, sort = nil, options = {})
          fetch_collection(Quickeebooks::Windows::Model::Company, nil, filters, page, per_page, sort, options)
        end
        
        # def fetch_by_id(id, idDomain = 'QB', options = {})
        #   url = "#{url_for_resource(Quickeebooks::Windows::Model::Company::REST_RESOURCE)}/#{id}"
        #   fetch_object(Quickeebooks::Windows::Model::Company, url, {:idDomain => idDomain})
        # end
      end
    end
  end
end