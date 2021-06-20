#!/bin/bash
# This is a rather minimal example Argbash potential
# Example taken from http://argbash.readthedocs.io/en/stable/example.html


# [可选参数]
# ARG_OPTIONAL_SINGLE([option], [o], [optional argument help msg])

# [可选布尔参数]
# ARG_OPTIONAL_BOOLEAN([print], , [boolean optional argument help msg])

# [固定参数]
# ARG_POSITIONAL_SINGLE([positional-arg], [positional argument help  msg], )

# [帮助信息]
# ARG_HELP([The general script's help msg])
# ARGBASH_GO


# [ <-- needed because of Argbash

echo "Value of --option: $_arg_option"
echo "print is $_arg_print"
echo "Value of positional-arg: $_arg_positional_arg"

# ] <-- needed because of Argbash |
