require 'devise'
require 'will_paginate'
require 'will_paginate-bootstrap'
require 'breadcrumbs_on_rails'

module Erp
	module Core
		def self.available?(engine_name)
			Object.const_defined?("Erp::#{engine_name.to_s.camelize}")
    end
	end
end
