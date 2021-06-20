# Passing Argument in Shellscript

## Using Space

Sample Command:
```console
$ ./by-space-sign.sh -e conf -s /etc -l /usr/lib /etc/hosts
```
[code](./by-space-sign.sh)

## Using Equal Sign

Sample Command:
```console
$ ./by-equal-sign.sh -e=conf -s=/etc -l=/usr/lib /etc/hosts
```
[code](./by-equal-sign.sh)

## Using getopts

Sample Command:
```console
$ ./use-getopts.sh -h
$ ./use-getopts.sh -v -f
```
[code](./use-getopts.sh)


