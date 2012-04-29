require 'rails'

module JqueryWeekCalendar
  module Rails
    class Railtie < ::Rails::Railtie
      generators do
        require 'jquery-week-calendar/generators'
      end
    end
  end
end