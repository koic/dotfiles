# installed directory.
topdir="${HOME}/opt/oracle"
bindir="${topdir}/bin"
libdir="${topdir}/lib"

export NLS_LANG=Japanese_Japan.AL32UTF8
export ORACLE_HOME=${topdir}
export PATH=${ORACLE_HOME}/bin:$PATH
export DYLD_LIBRARY_PATH=${ORACLE_HOME}/lib
