module Feedzirra
  
  module Parser
    # == Summary
    # Parser for dealing with Atom feed entries.
    #
    # == Attributes
    # * name
    # * uri
    # * email
    class AtomPerson
      include SAXMachine
      include FeedEntryUtilities
      element :name
      element :uri
      element :email
      def url
        @url || links.first
      end
    end

  end
  
end