GEMS_ROOT_PATTERN =  "~/.rbenv/versions/%s/lib/ruby/gems/%s/gems"
begin
  rbenv_version  = ENV['RBENV_VERSION']

  if rbenv_version
    root_path = GEMS_ROOT_PATTERN % [rbenv_version, rbenv_version]
    absolute_root_path = File.expand_path(root_path)

    Dir.glob("#{absolute_root_path}/*").each do |path|
      $LOAD_PATH << "#{path}/lib"
    end
  end

  require 'rubygems'
  require 'sketches'
  require 'pry'

  Pry.start || exit
rescue LoadError => e
  puts "unable to load dependency: #{e.inspect}"
end
