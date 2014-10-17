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
  end
end
