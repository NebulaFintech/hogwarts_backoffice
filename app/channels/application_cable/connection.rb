module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_wizard

    def connect
      self.current_wizard = find_verified_user
    end

    private
      def find_verified_user
        if verified_user = env['warden'].user
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
