##############################################################################
#  Copyright 2011 Service Computing group, TU Dortmund
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
##############################################################################

##############################################################################
# Description: Fogio Openstack Backend
# Author(s): Maik Srba
##############################################################################

require 'occi/log'

module OCCI
  module Backend
    class Fogio
      module Openstack
        class Network

          attr_accessor :model

          def initialize(model)
            @model = model
          end

          def parse_backend_object(client, backend_object)
            kind = @model.get_by_id("http://schemas.ogf.org/occi/infrastructure#network")

            network = OCCI::Core::Resource.new(kind.type_identifier)
          end
        end
      end
    end
  end
end