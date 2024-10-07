dnl Copyright (C) 2024 ChenPi11.
dnl This file is part of the MLinux.
dnl
dnl MLinux is free software: you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published
dnl by the Free Software Foundation; either version 2 of the License,
dnl or (at your option) any later version.
dnl
dnl MLinux is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program.  If not, see <https://www.gnu.org/licenses/>.

AC_INIT([MLinux More GNU/Linux], [0.1.0], [wushengwuxi-msctinoulk@outlook.com])
AC_PREREQ([2.69])
AC_PROG_MAKE_SET

AC_PATH_PROG([LIVE_BUILD], [lb])
AC_PATH_PROG([SUDO], [sudo])

AC_ARG_WITH([npm-registry],
    [AS_HELP_STRING([--with-npm-registry=XXX],
        [define the mirror site of Npm registry])],
    [NPM_MIRROR=$withval],
    [NPM_MIRROR=https://registry.npm.org]
)
AC_SUBST([NPM_MIRROR])

AC_ARG_WITH([apt-source],
    [AS_HELP_STRING([--with-apt-source=XXX],
        [define the APT source])],
    [APT_SOURCE=$withval],
    [APT_SOURCE=https://deb.debian.org/debian]
)
AC_SUBST([APT_SOURCE])

AC_ARG_ENABLE([debug-console],
  [AS_HELP_STRING([--enable-debug-console],
                  [enable debug console before running chroot hooks])],
  [DEBUG_CONSOLE=yes],
  [DEBUG_CONSOLE=no])
AC_SUBST([DEBUG_CONSOLE])

AC_ARG_WITH([http-proxy],
    [AS_HELP_STRING([--with-http-proxy=protocol://host:port],
        [define the http proxy for running chroot hooks])],
    [HTTP_PROXY=$withval],
    [HTTP_PROXY=]
)
AC_SUBST([HTTP_PROXY])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([config/bootstrap])
AC_CONFIG_FILES([config/hooks/normal/5035-setup-fastgithub.hook.chroot], [chmod +x config/hooks/normal/5035-setup-fastgithub.hook.chroot])
AC_CONFIG_FILES([config/hooks/normal/5039-dbg-console.hook.chroot], [chmod +x config/hooks/normal/5039-dbg-console.hook.chroot])
AC_CONFIG_FILES([config/hooks/normal/5045-setup-nodejs.hook.chroot], [chmod +x config/hooks/normal/5045-setup-nodejs.hook.chroot])
AC_CONFIG_FILES([config/hooks/normal/5046-setup-zsh.hook.chroot], [chmod +x config/hooks/normal/5046-setup-zsh.hook.chroot])
AC_CONFIG_FILES([config/hooks/normal/5049-setup-nvim.hook.chroot], [chmod +x config/hooks/normal/5049-setup-nvim.hook.chroot])
AC_CONFIG_FILES([config/hooks/normal/7999-post-dbg-console.hook.chroot], [chmod +x config/hooks/normal/7999-post-dbg-console.hook.chroot])
AC_OUTPUT
