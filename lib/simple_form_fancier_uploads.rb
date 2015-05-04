require "simple_form_fancier_uploads/version"

module SimpleFormFancierUploads
  if defined?(::Rails)
    class Engine < ::Rails::Engine
    end
  end
end
