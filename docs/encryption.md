# Encrypting partition with home directories

## Problem

When You encrypt partition where You have users home directories that is different than main disk, which You secure 
with FileVault, You will came accross a problem, when on boot Your home directory is on locked partition, so You're
unable to access your data.

## Solution

> `PRO TIP`
> Enable **root** user first, so when something goes wrong you'll be able to straight things up.
> [Apple's support website to the rescue](https://support.apple.com/en-us/HT204012) !

Now that `root` is enabled in Your system, ensure you are logged out and log in as `root`.

To encrypt second drive first let's find out which is it.

```bash
$ diskutil list

/dev/disk0
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *256.1 GB   disk0
   1:                        EFI EFI                     209.7 MB   disk0s1
   2:          Apple_CoreStorage                         100.9 GB   disk0s2
   3:                 Apple_Boot Boot OS X               650.0 MB   disk0s3
   4:                  Apple_HFS Users                   154.2 GB   disk0s4
/dev/disk1
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:                  Apple_HFS Mac OS X               *100.5 GB   disk1
                                 Logical Volume on disk0s2
                                 0B344972-7655-44D4-B36A-7187AA190DE6
                                 Unlocked Encrypted
```

As You can see `disk0s4` is our target so let's encrypt it:

```bash
$ diskutil coreStorage convert disk0s4 -passphrase
```

Now You'll need to restart Your mac to `diskutil` start work on volume.
If You want to check encryption status run:

```bash
$ diskutil coreStorage list
```

After encryption is done we'll need to unlock this disk during boot.
To do that we'll use [Unlock](https://github.com/jridgewell/unlock).
Make sure directory `/Library/PrivilegedHelperTools` exists and run script:

```bash
$ curl -L https://raw.github.com/jridgewell/Unlock/master/install.sh | bash 
```

That's it. You're ready to reboot and enjoy both encrypted partitions !
