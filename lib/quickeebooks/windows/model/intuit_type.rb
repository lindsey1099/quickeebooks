module Quickeebooks
  module Windows
    module Model
      class IntuitType
        include ROXML

        private

        def log(msg)
          Quickeebooks.logger.info(msg)
          Quickeebooks.logger.flush if Quickeebooks.logger.respond_to?(:flush)
        end

        def self.resource_for_collection
          self::REST_RESOURCE
        end

        def self.resource_for_singular
          self::REST_RESOURCE
        end

      end 
    end    
  end
end
