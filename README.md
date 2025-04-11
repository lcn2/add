# add

Add a column (field) of numbers.


# To install

```sh
sudo make install
```


# Example

```sh
/usr/local/bin/add 2 < data
23209
```


# To use

```sh
/usr/local/bin//add [-h] [-V] [field]

    -h          print help message and exit
    -V          print version string and exit

    [field]	field number to add (def: add field 1)

Exit codes:
     0         all OK
     2         -h and help string printed or -V and version string printed
     3         command line error
 >= 10         internal error

add version: 1.3.1 2025-04-11
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/add/security/policy)".
