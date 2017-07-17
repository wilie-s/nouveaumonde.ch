# nouveaumonde.ch

Official website of https://nouveaumonde.ch

What is used:
- drupal 8
- bootstrap
- sass
- nodejs
- yarn


## Development

nodejs and yarn is used to compile less to css.

**Requirement for development**

- **nodejs** https://nodejs.org/en/
-  **yarn** on your system [follow the instruction to install yarn](https://yarnpkg.com/lang/en/docs/install/).

**Install project dependencies**

    $ yarn install

**Work with less**

Start watcher on less files (build on change)

    $ yarn run start

Build sass (one time)

    $ yarn run build

## Git

Git version control system is used for this project.

Good GUI
 - https://www.sourcetreeapp.com (stable and complete)
 -  https://desktop.github.com (minimalistic of focused on github)
 
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


## drush

Drush is a command line tools for drupal. You can download it from http://www.drush.org/en/master/

Go in the drupal folder (in the web folder) to launch command.

**Some basic command:**

List all the command

    $ drush

Rebuild all cache (first things to do in case of strange bugs)

    $ drush cache-rebuild
    
Import/Export configuration

    $ drush config-import
    $ drush config-export
    
Manage module

    $ drush pm-download 
    $ drush pm-enable
    $ drush pm-disable
   
Make a full backup (Backup your code, files, and database into a single file)

    $ drush archive-dump
   
Restore

    $ drush archive-restore
