require 'yaml'

module CloudkeeperGrpc
  class Constants
    metadata = YAML.load_file(File.join(File.dirname(__FILE__), 'metadata', 'metadata.yml'))
    metadata['keys'].each do |key|
      upcase_key = key.upcase
      const_set("KEY_#{upcase_key}", key)
      metadata[key].each { |value| const_set("#{upcase_key}_#{value.upcase}", value)} if metadata.has_key? key
    end
  end
end
