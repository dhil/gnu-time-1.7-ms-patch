# Patched GNU time 1.7
GNU time utility patched with an option for displaying *elapsed real time* in milliseconds.

Use the `"%m"` format option to display elapsed real time in milliseconds, i.e.:
```
$ time --format "%m" <command>
```

# README
`time` is a program that measures many of the CPU resources, such as
time and memory, that other programs use.  The GNU version can format
the output in arbitrary ways by using a printf-style format string to
include various resource measurements.  Some systems do not provide
much information about program resource use; `time` reports
unavailable information as zero values.

See the file INSTALL for compilation and installation instructions.

Mail suggestions and bug reports for GNU time to
bug-gnu-utils@prep.ai.mit.edu.  Please include the version of
`time`, which you can get by running `time --version`, and the
operating system and C compiler you used.

# AUTHORS
Authors of GNU time.

David Keppel.  Original version.

David MacKenzie.  POSIXization, autoconfiscation, GNU getoptization,
documentation, other bug fixes and improvements.

Arne Henrik Juul.  Helped with portability.

Francois Pinard.  Helped with portability.
