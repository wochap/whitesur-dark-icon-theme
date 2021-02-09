#!/usr/bin/env bash

symlinks=$(find ./ -lname "*.svg");

for file in $symlinks; do
  linkpath=$(readlink $file);
  newlinkcontent=${linkpath/svg/png};
  newlinkpath=${file/svg/png};
  ln -sf $newlinkcontent $newlinkpath;
done
