#!/bin/bash 
#
# Copyright � 2016, Aditya Upreti  <aupreti72@gmail.com>
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#

sleep 4
start=$(date +'%s')
echo "==============================================="
echo "*         WELCOME TO AUTO ROM COMPRESSER      *"
echo "*         This Script is made to compress     *"
echo "*                ROM Sources                  *"
echo "*IF u got error just fix Dir for eg now its cm*"
echo " ============================================= "
mkdir ../cm-repo
export XZ_OPT=9e
mv .repo ../cm-repo/
tar -zcvf ../cm-repo/cm-no-repo.tar.xz
cd ../cm-repo
tar -zcvf cm-repo.tar.xz .
echo "Make Compress rom sources completed in $(($(date +'%s') - $start)) seconds"
