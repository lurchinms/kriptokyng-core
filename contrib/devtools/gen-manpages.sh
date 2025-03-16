#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

kriptoyngD=${kriptoyngD:-$SRCDIR/kriptoyngd}
kriptoyngCLI=${kriptoyngCLI:-$SRCDIR/kriptoyng-cli}
kriptoyngTX=${kriptoyngTX:-$SRCDIR/kriptoyng-tx}
kriptoyngQT=${kriptoyngQT:-$SRCDIR/qt/kriptoyng-qt}

[ ! -x $kriptoyngD ] && echo "$kriptoyngD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
TITVER=($($kriptoyngCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for kriptoyngd if --version-string is not set,
# but has different outcomes for kriptoyng-qt and kriptoyng-cli.
echo "[COPYRIGHT]" > footer.h2m
$kriptoyngD --version | sed -n '1!p' >> footer.h2m

for cmd in $kriptoyngD $kriptoyngCLI $kriptoyngTX $kriptoyngQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${TITVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${TITVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
