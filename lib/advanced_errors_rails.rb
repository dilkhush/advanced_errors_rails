require 'active_model'
require "advanced_errors_rails/version"
require 'advanced_errors_rails/full_messages'

ActiveModel::Error.send :include, AdvancedErrorsRails::FullMessages
