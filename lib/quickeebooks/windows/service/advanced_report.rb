require 'quickeebooks/windows/service/service_base'

module Quickeebooks
  module Windows
    module Service
      class AdvancedReport < Quickeebooks::Windows::Service::ServiceBase

# <?xml version="1.0" encoding="UTF-8"?>
# <AdvancedReportQuery xmlns="http://www.intuit.com/sb/cdm/v2"
# xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
# xsi:schemaLocation="http://www.intuit.com/sb/cdm/v2 file:/C:/CDM/main/common/RestDataFilter.xsd">
#    <Summary1099>
#       <OfferingId>ipp</OfferingId>
#       <DateMacro>All</DateMacro>
#       <UseThresholds>false</UseThresholds>
#    </Summary1099>
# </AdvancedReportQuery>


        def list(filters = [], offering_id='ipp', date_macro='All', use_thresholds=false, page = 1, per_page = 20, sort = nil, options = {})
          custom_field_query = '<?xml version="1.0" encoding="UTF-8"?>'
          custom_field_query += '<AdvancedReportQuery xmlns="http://www.intuit.com/sb/cdm/v2" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">' 
          custom_field_query += "<Summary1099>"
          #custom_field_query += "<OfferingId>#{offering_id}</OfferingId>"
          custom_field_query += "<DateMacro>#{date_macro}</DateMacro>"
          custom_field_query += "<ReportBasis>Cash</ReportBasis>"
          custom_field_query += "<UseThresholds>#{use_thresholds}</UseThresholds>"
          custom_field_query += "</Summary1099>"
          custom_field_query += '</AdvancedReportQuery>'
          puts "custom_field_query:
          #{custom_field_query}"
          fetch_collection(Quickeebooks::Windows::Model::AdvancedReport, custom_field_query.strip, filters, page, per_page, sort, options)
        end
        
        def fetch_by_id(id, idDomain = 'QB', options = {})
          url = "#{url_for_resource(Quickeebooks::Windows::Model::AdvancedReport::REST_RESOURCE)}/#{id}"
          fetch_object(Quickeebooks::Windows::Model::AdvancedReport, url, {:idDomain => idDomain})
        end

      end
    end
  end
end
