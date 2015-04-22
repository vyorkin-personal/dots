require 'rake'
require 'fileutils'

POWERLINE_TMUX_PATH = '/usr/local/lib/python2.7/site-packages/powerline/bindings/tmux'

NODEJS_COMMON_PACKAGES = <<-PKGS
bower duo grunt-cli broccoli-cli gulp yo khaos jspm 
avn avn-nvm browserify webpack webpack-dev-server jasmine jake madge 
forever nodemon jscs how-to-npm protractor psi jshint eslint jsdoc 
watch js-beautify nsp gitbook-cli plato sloc npmd@1 live-server git-guilt
PKGS

namespace :install do
  desc 'install all'
  task :all do
    Rake::Task['install:powerline'].invoke
    Rake::Task['install:zsh_pure'].invoke
    Rake::Task['install:nvm'].invoke
    Rake::Task['install:prerequisites'].invoke
    Rake::Task['install:devtools_terminal'].invoke
  end

  desc 'setup prerequisites'
  task :prerequisites do
    puts 'setting up prerequisites...'
    `stty sane`
    `defaults write org.R-project.R force.LANG en_US.UTF-8`
    puts 'done'
  end

  desc 'install common nodejs global packages'
  task :nodejs_packages do
    puts 'installing common nodejs global packages...'
    `npm i -g #{NODEJS_COMMON_PACKAGES}`
    puts 'configuring packages...'
    `avn setup`
    puts 'done'
  end

  desc 'install devtools terminal'
  task :devtools_terminal do
    puts 'installing devtools terminal nodejs proxy...'
    puts 'for more info see: https://chrome.google.com/webstore/detail/devtools-terminal/leakmhneaibbdapdoienlkifomjceknl/'
    `npm install -g devtools-terminal`
    `sudo devtools-terminal --install --id=leakmhneaibbdapdoienlkifomjceknl`
    puts 'done'
  end

  desc 'install pure zsh prompt'
  task :zsh_pure do
    puts 'installing pure-prompt...'
    `npm install -g pure-prompt`
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

  desc 'install node version manager'
  task :nvm do
    puts 'installing nvm...'
    `curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash`
    puts 'done'
  end
end

namespace :uninstall do
  desc 'uninstall all'
  task :all do
    Rake::Task['uninstall:powerline'].invoke
    Rake::Task['uninstall:zsh_pure'].invoke
    Rake::Task['uninstall:nodejs_packages'].invoke
  end

  desc 'install common nodejs global packages'
  task :nodejs_packages do
    puts 'installing common nodejs global packages...'
    `npm uninstall -g #{NODEJS_COMMON_PACKAGES}`
    puts 'done'
  end

  desc 'uninstall pure zsh prompt'
  task :zsh_pure do
    `npm uninstall -g pure-prompt`
  end

  desc 'uninstall powerline'
  task :powerline do
    `rm -rf ~/.config/powerline`
    `pip uninstall powerline-status`
  end
end
