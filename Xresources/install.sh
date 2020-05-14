#!/bin/sh

mkdir -pv $HOME/.Xresources.d
cp -lv --backup Xresources $HOME/.Xresources
cp -lrv --backup Xresources.d/* $HOME/.Xresources.d/

xrdb $HOME/.Xresources
