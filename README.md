# A Virtual Machine for Practicing Ruby on Rails

This is based on this:
[railsmn-dev-box](https://github.com/railsmn/railsmn-dev-box)
which is based on this:
[rails-dev-box](https://github.com/rails/rails-dev-box)
... the latter states it's not designed for app development, but it seems to use the same setup as VM's that do (it's a project for working on Rails itself).


Bring the machine up in a console:
	git clone git://github.com/conoromalley/blank-rails-vagrant.git
	cd blank-rails-vagrant
	vagrant up
	vagrant ssh

You are now logged into the dev box.
Rails commands should be run from here.
The app's folder is under /vagrant, this is the host machine's "blank-rails-vagrant" directory
This allows you to edit on the host with your favorite editing tools. 

Run this so that Rails will replace anything that was gitignored
    rails new . -s


This is the easiest connection setting to use in the  ````config/database.yml```` file:
	development:
		adapter: postgresql
		encoding: utf-8
		database: vagrant
		pool: 5
		username: vagrant
		password:

Make sure you do this for both the Development and Test databases (if you are running tests :-D).  

rails server

Open your browser and go to [localhost:3000](http://localhost:3000).  

Remember to run
	bundle install
	
if you make changes to Gems etc.


## What's In The Box

* Git
* RVM
* Ruby 2.0.0 (binary RVM install)
* Bundler
* SQLite3, MySQL, and Postgres
* System dependencies for nokogiri, sqlite3, mysql, mysql2, and pg
* Databases and users needed to run the Active Record test suite
* Node.js for the asset pipeline
* Memcached



## Virtual Machine Management

To __exit__ SSH connection to Vagrant Virtual Machine, 

    exit        # option 1

    # press ^D  # option 2


To __suspend__ virtual machine,  
    
    # from your computer

    vagrant suspend


To __resume__ virtual machine,  
    
    # from your computer

    vagrant resume


To __shutdown/halt__ virtual machine,  
    
    # from your computer 

    vagrant halt


To __resume__ virtual machine,  

   # from your computer  

   vagrant up


To get __status__ of virtual machine,  

    # from your computer

    vagrant status


To completely delete virtual machine,  

    # from your computer

    vagrant destroy   # DANGER: all is gone


Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.


## Credits 

This is a renamed fork of [rails-dev-box](https://github.com/rails/rails-dev-box). Big Thanks to [Xavier Noria](https://github.com/fxn) and other contributors for their efforts. You guys rock. Thanks!
