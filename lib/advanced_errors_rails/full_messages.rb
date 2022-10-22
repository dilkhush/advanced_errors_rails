module AdvancedErrorsRails
  module FullMessages
    def full_message_with_ignore_attribute
      return self.message[1..self.message.length] if self.message.match(/^\^/)
      full_message_without_ignore_attribute
    end

    def self.included(base)
      base.class_eval do
        alias_method :full_message_without_ignore_attribute, :full_message
        alias_method :full_message, :full_message_with_ignore_attribute
      end
    end
  end
end
