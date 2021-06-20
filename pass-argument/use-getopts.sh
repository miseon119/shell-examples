#!/bin/sh

# 重置以防止在前面的shell中使用getopts工具(这是一个POSIX变量)
OPTIND=1

# 初始化变量名称
OUTPUT_FILE=""
VERSION=0

# getopts的缺点就是它只能处理短选项，如-h，而不能是--help格式
while getopts "h?vf:" key; do
    case "$key" in
    h|\?)
        show_help
        exit 0
        ;;
    v)
        VERSION=1
        ;;
    f)
        output_file=$OPTARG
        ;;
    esac
done

shift $((OPTIND-1))

[ "${1:-}" = "--" ] && shift

echo "verbose=$VERSION, output_file='$output_file', Leftovers: $@" |
