class SchoolApplicationsChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_from "school_applications_#{current_wizard.id}"
  end

  def unsubscribed
    stop_all_streams
  end
end
