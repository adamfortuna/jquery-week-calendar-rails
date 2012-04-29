require 'rails/generators'

module JqueryWeekCalendar
  class Install < ::Rails::Generators::Base
    JAVASCRIPTS = File.expand_path('../../../vendor/assets/javascripts', __FILE__)
    STYLESHEETS = File.expand_path('../../../vendor/assets/stylesheets', __FILE__)

    def self.source_root
      @source_root ||= JAVASCRIPTS
    end

    def copy_calendar
      Dir[File.join(JAVASCRIPTS, '*.js')].each do |file|
        file = File.split(file).last
        copy_file file, "public/javascripts/#{file}"
      end

      Dir[File.join(STYLESHEETS, '*.css')].each do |file|
        file = File.split(file).last
        copy_file file, "public/stylesheets/#{file}"
      end
    end
  end
end