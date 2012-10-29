module KJess
  module Spec
    ROOT = File.expand_path( "..", __FILE__ )
    def self.project_root
      File.expand_path( "..", ROOT )
    end

    def self.reset_server( client )
      client.flush_all
      qlist = client.stats['queues']
      if qlist then
        qlist.keys.each do |q|
          client.delete( q )
        end
      end
    end
  end
end
