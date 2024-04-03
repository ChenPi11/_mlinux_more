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

AC_ARG_WITH([github-mirror],
    [AS_HELP_STRING([--with-github-mirror=XXX],
        [define the mirror site of GitHub])],
    [GITHUB=$withval],
    [GITHUB=https://github.com]
)
AC_SUBST([GITHUB])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([config/hooks/normal/9050-setup-dotnet.hook.chroot])

AC_OUTPUT