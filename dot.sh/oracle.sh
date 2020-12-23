# installed directory.
topdir="${HOME}/opt/oracle"
bindir="${topdir}/bin"
libdir="${topdir}/lib"

export NLS_LANG=Japanese_Japan.AL32UTF8
export ORACLE_HOME=${topdir}
export OCI_DIR=$(brew --prefix)/lib
export PATH=${ORACLE_HOME}/bin:$PATH

local OS_PRODUCT_VERSION=`sw_vers -productVersion`

export DYLD_LIBRARY_PATH=${ORACLE_HOME}/lib
case $OS_PRODUCT_VERSION in
    10.9*|10.10*|10.15*)         export DYLD_LIBRARY_PATH=${ORACLE_HOME}/lib;; # for Mavericks, Yosemite, Catalina
    10.11*|10.12*|10.13*|10.14*) export OCI_DIR=${ORACLE_HOME}/lib;;           # for El Capitan, Sierra, High Sieera, Mojave
    *)                           echo "Version OS X $OS_PRODUCT_VERSION not supported.";;
esac

alias sqlplus='rlwrap sqlplus'
