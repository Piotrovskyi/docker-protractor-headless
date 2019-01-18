#!/bin/bash

# Chrome, starting with version 56, refuses to run when launched by root.
# Therefore, we need to run it as a regular user, taking care
# to set the uid and gid of that user to match those of the current directory owner.
# Otherwise protractor could experience problems reading files from the current directory.
xvfb-run --server-args="-screen 0 ${SCREEN_RES}" -a $@
