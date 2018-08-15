require 'yaml'

module CloudkeeperGrpc
  class Constants
    status_codes = YAML.load_file(File.join(File.dirname(__FILE__), 'status-codes', 'status-codes.yml'))
    status_codes.each do |key, value|
      const_set("STATUS_CODE_#{key.underscore.upcase}", value)
    end
  end
end
