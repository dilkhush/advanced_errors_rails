require 'active_model'
require "advanced_errors_rails/version"
require 'advanced_errors_rails/full_messages'

ActiveModel::Errors.send :include, AdvancedErrorsRails::FullMessages