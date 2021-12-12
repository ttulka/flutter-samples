# Printing issue on Linux Demo

Simply run the project under Linux:

```
flutter run -d linux
```


To get the error when Print is clicked in the printing dialog:

```
(printinglinux:14500): Gtk-CRITICAL **: 14:30:45.680: gtk_printer_accepts_pdf: assertion 'GTK_IS_PRINTER (printer)' failed

(printinglinux:14500): GLib-GObject-CRITICAL **: 14:30:45.680: g_object_new_valist: invalid unclassed object pointer for value type 'GtkPrinter'

(printinglinux:14500): Gtk-CRITICAL **: 14:30:45.680: gtk_printer_get_backend: assertion 'GTK_IS_PRINTER (printer)' failed

(printinglinux:14500): GLib-GObject-CRITICAL **: 14:30:45.681: g_object_ref: assertion 'G_IS_OBJECT (object)' failed
Lost connection to device.

```
