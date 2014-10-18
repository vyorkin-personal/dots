require 'rake'
require 'fileutils'

POWERLINE_TMUX_PATH = '/usr/local/lib/python2.7/site-packages/powerline/bindings/tmux'

namespace :install do
  desc 'install all'
  task :all do
    run 'install:powerline'
    run 'install:zsh_pure'
  end

  desc 'install pure zsh prompt'
  task :zsh_pure do
    `npm install --global pure-prompt`
  end

  desc 'install powerline'
  task :powerline do
    `pip install --user git+git://github.com/Lokaltog/powerline`
    run 'install:powerline_config'
  end

  desc 'link powerline configuration files'
  task :powerline_config do
    `cp -R powerline/config/* ~/.config/powerline/`
    `cp -R powerline/tmux/*.conf #{POWERLINE_TMUX_PATH}`
  end
end

namespace :uninstall do
  desc 'uninstall all'
  task :all do
    run 'uninstall:powerline'
    run 'uninstall:zsh_pure'
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
