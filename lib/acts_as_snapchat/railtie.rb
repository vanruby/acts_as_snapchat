module ActsAsSnapchat
  class Railtie < ::Rails::Railtie
    initializer "acts_as_snapchat" do
      ActiveSupport.on_load(:active_record) do

        module ActsAsSnapchat
          extend ::ActiveSupport::Concern

          included do
            default_scope { where("created_at > ?", 10.seconds.ago) }
          end
        end

        class ActiveRecord::Base
          class << self

            def acts_as_snapchat
              include ActsAsSnapchat
            end

            alias :acts_as_mongodb :acts_as_snapchat

          end
        end

      end
    end
  end
end
