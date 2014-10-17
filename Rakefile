require 'rake'
require 'fileutils'

namespace :install do
  desc 'install all'
  task :all do
    run 'install:powerline'
  end

  desc 'install powerline'
  task :powerline do
    `pip install --user git+git://github.com/Lokaltog/powerline`
    run 'install:powerline_config'
  end

  desc 'link powerline configuration files'
  task :powerline_config do
    `cp -R powerline/ ~/.config/powerline/`
  end
end

namespace :uninstall do
  desc 'uninstall all'
  task :all do
    run 'uninstall:powerline'
  end

  desc 'uninstall powerline'
  task :powerline do
    `pip uninstall powerline-status`
    `rm -rf ~/.config/powerline`
  end
end
