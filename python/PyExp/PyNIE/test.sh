#!/bin/sh

PATH="/usr/bin:/bin:/usr/sbin:/sbin"

sudo rm -rf /System/Library/Extensions/ntfs.kext
sudo rm -rf /System/Library/FileSystems/ntfs.fs
sudo rm /sbin/mount_ntfs
sudo rm /usr/share/man/man8/mount_ntfs.8

#Rebuild the kext cache
if [ -f ./System/Library/Extensions.kextcache ]; then
		sudo rm ./System/Library/Extensions.kextcache
			sudo kextcache -k ./System/Library/Extensions
		fi

		sudo rm -rf /Library/Receipts/NTFS.pkg


