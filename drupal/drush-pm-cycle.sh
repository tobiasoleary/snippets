#!/usr/bin/env bash

# FILE: drush-pm-cycle.sh OR drush-pm-cycle
# AUTHOR: Tobias O'Leary (tobiasoleary+snippets@mac.com)
# DESCRIPTION:
# 	Makes three drush commands run as one - pm-disable, pm-uninstall and pm-enable.
# 	Time-Saving and Carpal Tunnel Free!
# 
# INSTALLATION:
# 	Move this file into a directory in your `PATH` (Run `$ echo $PATH` to see the list).
# 	 $ mv /path/to/drush-pm-cycle.sh /path/to/bin/in/path/drush-pm-cycle #Move and renames dropping the .sh
#		Add executable permission to the drush-pm-cycle
#		 $ chmod u+x /path/to/drush-pm-cycle
#
# USAGE:
# 	$ drush-pm-cycle <MODULE_NAME>
#

MODULE=$1;

echo "$> drush pm-disable -y $MODULE;";
drush pm-disable -y $MODULE; 

echo "$> drush pm-uninstall -y $MODULE;";
drush pm-uninstall -y $MODULE; 

echo "$> drush pm-enable -y $MODULE;";
drush pm-enable -y $MODULE;