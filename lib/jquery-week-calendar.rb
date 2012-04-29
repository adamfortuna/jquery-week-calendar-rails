require 'rails'

module JqueryWeekCalendar
  module Rails
    if ::Rails.version < "3.1"
      require 'jquery-week-calendar/railtie'
    else
      require 'jquery-week-calendar/engine'
    end
  end
end