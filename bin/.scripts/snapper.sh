# snapper setup
snapper -c root create-config /
snapper -c var create-config /var # for exclusion other than subvolumes of var
snapper -c paclib create-config /var/lib/pacman # for inclusion
snapper -c paccache create-config /var/cache/pacman # for inclusion
snapper -c home create-config /home

# take initial snapshots
SNAPDESC="initial install-time snapshot"
snapper -c root create -d $SNAPDESC
snapper -c var create -d $SNAPDESC
snapper -c paclib create -d $SNAPDESC
snapper -c paccache create -d $SNAPDESC
snapper -c home create -d $SNAPDESC
