/*-
 * Copyright (c) 2021 elementary LLC. (https://elementary.io)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Library General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

[DBus (name = "io.elementary.pantheon.XRDesktop")]
public class XRDesktopIndicator.Services.DBusService : Object {
    public bool enabled { get; set; default = false; }
    public signal void enabled_changed (bool enabled);

    construct {
        notify["enabled"].connect (() => {
            enabled_changed (enabled);
        });
    }
}