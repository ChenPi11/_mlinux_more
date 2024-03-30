#!/usr/bin/bash
# Copyright (C) 2024 ChenPi11.
# This file is part of the MLinux.
# MLinux is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published
# by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# MLinux is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with MLinux.  If not, see <https://www.gnu.org/licenses/>.

# Check if the system is Debian.

source "/etc/os-release"

if [ "$ID" = "debian" ]; then
    exit 0
else
    echo "This is not a Debian GNU/Linux!" >&2
    echo "This is a '$PRETTY_NAME' ($ID). Please you DEBIAN to build MLinux More." >&2
    exit 1
fi
