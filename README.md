# nouveaumonde.ch

This website is using:
- drupal 8
- bootstrap

## Git

Git version control system is used for this project.

Good GUI
 - https://www.sourcetreeapp.com (stable and complete)
 -  https://desktop.github.com (minimalistic of focused on github)

## drush

Drush is a commande line tools for drupal. You can download it from http://www.drush.org/en/master/

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