require 'rake'
require 'fileutils'

POWERLINE_TMUX_PATH = '/usr/local/lib/python2.7/site-packages/powerline/bindings/tmux'

namespace :install do
  desc 'install all'
  task :all do
    Rake::Task['install:powerline'].invoke
    Rake::Task['install:zsh_pure'].invoke
  end

  desc 'install pure zsh prompt'
  task :zsh_pure do
    puts 'installing pure-prompt...'
    `npm install --global pure-prompt`
    puts 'done'
  end

  desc 'install powerline'
  task :powerline do
    puts 'installing powerline...'
    `pip install --user git+git://github.com/Lokaltog/powerline`
    puts 'done'
    Rake::Task['install:powerline_config'].invoke
  end

  desc 'link powerline configuration files'
  task :powerline_config do
    puts 'copying powerline config files...'
    `cp -R powerline/config/* ~/.config/powerline/`
    `cp -R powerline/tmux/*.conf #{POWERLINE_TMUX_PATH}`
    puts 'done'
  end
end

namespace :uninstall do
  desc 'uninstall all'
  task :all do
    Rake::Task['uninstall:powerline'].invoke
    Rake::Task['uninstall:zsh_pure'].invoke
  end

  desc 'uninstall pure zsh prompt'
  task :zsh_pure do
    `npm uninstall --global pure-prompt`
  end

  desc 'uninstall powerline'
  task :powerline do
    `rm -rf ~/.config/powerline`
    `pip uninstall powerline-status`
  end
end
