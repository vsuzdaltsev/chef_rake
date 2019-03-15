module Rake
  module Knife
    module_function

    def key(args)
      return Constants::IDENTITY_FILE.call(args) if args[:identity_file].eql?('identity_file') 

      args[:identity_file]
    end

    def ssh_user(args)
      return Constants::SSH_USER if args[:ssh_user].eql?('ssh_user')

      args[:ssh_user]
    end

    def node_name(args)
      return Constants::NODE_NAME.call(args) if args[:node_name].eql?('node_name')

      args[:node_name]
    end

    def env_file(args)
      return args[:env_file] if args[:env_file].include?('/')
      
      Constants::ENV_DIR + args[:env_file]
    end
  end
end
