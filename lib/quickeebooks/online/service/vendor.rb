require 'quickeebooks/online/service/service_base'
require 'nokogiri'

module Quickeebooks
  module Online
    module Service
      class Vendor < ServiceBase
        def fetch_by_id(id)
          url = "#{url_for_resource(Quickeebooks::Online::Model::Vendor.resource_for_singular)}/#{id}"
          response = do_http_get(url)
          if response && response.code.to_i == 200
            Quickeebooks::Online::Model::Vendor.from_xml(response.body)
          else
            nil
          end
        end

        def list(filters = [], page = 1, per_page = 20, sort = nil, options = {})
          fetch_collection(Quickeebooks::Online::Model::Vendor, filters, page, per_page, sort, options)
        end

      end
    end
  end
end
