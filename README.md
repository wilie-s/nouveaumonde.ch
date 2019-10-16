# nouveaumonde.ch

Official website of https://nouveaumonde.ch

What is used:
- drupal 8
- bootstrap
- sass
- composer
- nodejs

## Composer
Composer is used to manage dependencies (drupal core, modules, theme, ..)

**Download all require dependency for the project**

    composer install
   
**Install a new module**
   
    composer requiere install
       
**Check if their is update**
        
    composer outdated "drupal/*"
        
**Update core**

    composer update drupal/core webflo/drupal-core-require-dev "symfony/*" --with-dependencies

**Update a module**

    composer update drupal/modulename --with-dependencies

## Drush

Drush is a command line tools for drupal. Drush is installed with composer automatically.


List all the command

    ./vendor/bin/drush
    
run DB update
    
     ./vendor/bin/drush updatedb
            
Check security update
    
     ./vendor/bin/drush pm:security

Rebuild all cache (first things to do in case of strange bugs)

    ./vendor/bin/drush cache-rebuild
    
Import/Export configuration

    ./vendor/bin/drush config-import
    ./vendor/bin/drush config-export
    
Manage module

    ./vendor/bin/drush pm-enable
    ./vendor/bin/drush pm-disable
   
Make a full backup (Backup your code, files, and database into a single file)

    ./vendor/bin/drush archive-dump
   
Restore

    ./vendor/bin/drush archive-restore

        
## Theme Development

COMMANDS HAVE TO BE EXECUTED FROM  THE THEME FOLDER

nodejs is used to compile less to css.

**Requirement for development**

- **nodejs** https://nodejs.org/en/

**Install project dependencies**

    npm install

**Work with less**

Start watcher on less files (build on change)

    npm run start

Build sass (one time)

    npm run build
 
## Theme

The theme is in **/themes/monde**. It's a sub-them of bootstrap and using the sass version of bootstrap.

The **./monde/sass/_default-variables.scss** file is generally where you will spend the majority of your time providing any
default variables that should be used by the Bootstrap Framework instead of its own.

The **./monde/sass/overrides.scss** file contains various Drupal overrides to properly integrate with the Bootstrap Framework.
It may contain a few enhancements, feel free to edit this file as you see fit.

The **./monde/scss/style.scss** file is the glue that combines: 
_default-variables.scss, Bootstrap Framework Source Files and the overrides.scss file together.
 Generally, you will not need to modify this file unless you need to add or remove files to be imported.
 This is the file that you should **compile to ./THEMENAME/css/style.css**
 (note the same file name, using a different extension of course).



## Deployment

First you need to authorise your ssh key on the server (you will need ozcf_admin password)

    ssh-copy-id ozcf_admin@ozcf.ftp.infomaniak.com
    
To check what is going to be deployed, without actually doing anythings (dry-run)

     ./deploy.sh production

Run the deployement script via npm

    ./deploy.sh production deploy
    
    
This will run deploy.sh and copy all the files using rsync from your directory to the server except files listed in
rsync_excclude.txt.

Then go on the production to revert configuration and clear cash if needed.


