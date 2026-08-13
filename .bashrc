# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func

#alias rm='rm -I'

export LESSCHARSET=latin1
export LESS=-Mrf

#alias rm='pwd;read;rm'

alias :q='exit'

#SOCKS_PROXY='135.179.0.25:10080'
#SOCKS_PROXY='130.87.7.58:1080'
CYCLE_ID=`date +%Y%m`
SOCKS_PROXY='10.170.16.28:8080'
PY_WORK_DIR='D:\IDev\workspace\py_tst\src'
GO_WORK_DIR='D:\IDev\workspace\GoLang\src'
JA_WORK_DIR='D:\IDev\workspace'
RP_WORK_DIR='D:\IDoc\devwork\2019\中台项目\支付中心\支付中心工作交接\支付对账报表'
CEM_LOG_DIR='D:\ITmp\opt\logs\busi'
RP_WORK_DIR=`echo ${RP_WORK_DIR}/${CYCLE_ID} | iconv -f utf-8 -t gb18030`

MU_WORK_DIR='E:\music'

_runiconv () { _cmd=$1; shift; $_cmd $* 2>&1 | iconv -f utf-8 -t gb18030; }
_chr() { printf \\$(printf '%03o' $1); }
_ord() { printf '%d' "'$1"; }
_say()
{
    if (( $# == 0 )) ; then
        cscript `cygpath -w /usr/local/bin/ptts.vbs` < /dev/stdin >/dev/null 2>&1
    else
        cscript `cygpath -w /usr/local/bin/ptts.vbs` <<< "$*" > /dev/null 2>&1
    fi
}

_sayex()
{
    if [ $# == 0 ]; then
        read words;
        cscript `cygpath -w /usr/local/bin/ptts.vbs` <<< "$words" > /dev/null 2>&1;
    else
        echo "$*" | cscript `cygpath -w /usr/local/bin/ptts.vbs` > /dev/null 2>&1;
    fi
}

_up(){ cd $(eval printf '../'%.0s {1..$1}) && pwd; }

#alias ydh='youtube-dl --proxy http://127.0.0.1:10070'
alias yd='youtube-dl --proxy socks5://127.0.0.1:10070'
alias ydsd='youtube-dl --proxy socks5://127.0.0.1:10070 -f 136+140'
alias ydhd='youtube-dl --proxy socks5://127.0.0.1:10070 -f 137+140'
alias u2g='iconv -f utf-8 -t gb18030'
alias g2u='iconv -f gb18030 -t utf-8'
#alias sshp="ssh -o ProxyCommand='nc -x 130.87.7.58:1080 %h %p'"
#alias sftpp="sftp -o 'ProxyCommand nc -x 130.87.7.58:1080 %h %p'"
alias sshx="ssh -o ProxyCommand='nc -x ${SOCKS_PROXY} %h %p'"
alias sftpx="sftp -o ProxyCommand='nc -x ${SOCKS_PROXY} %h %p'"
#alias python='_runiconv python'
alias go='_runiconv go'

alias open='cygstart'
alias .cs='printf "\033c"'
alias say='_say'
alias up='_up'

alias .sshd='/usr/sbin/sshd'

#alias .ue='cygstart /cygdrive/c/Program\ Files/IDM\ Computer\ Solutions/UltraEdit/uedit64.exe'
alias .ue='cygstart -o explorer.exe /e, $(cygpath -aw /cygdrive/c/Program\ Files/IDM\ Computer\ Solutions/UltraEdit/uedit64.exe)'
#alias .st='subl --touch --cygstart --'
alias .st='cygstart -o explorer.exe /e, $(cygpath -aw /cygdrive/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe)'

#alias .sc='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Hillstone/Hillstone\ Secure\ Connect/bin/SecureConnect.exe'
alias .sc='(tasklist | grep TQClient.exe > /dev/null || cygstart /cygdrive/c/Program\ Files\ \(x86\)/Qianxin/Tianqing/TQClient.exe) && sleep 2 && cygstart /cygdrive/c/Program\ Files\ \(x86\)/Sangfor/aTrust/aTrustTray/aTrustTray.exe'
alias .se='cygstart /cygdrive/c/Program\ Files/VanDyke\ Software/Clients/SecureCRT.exe'
alias .pl='cygstart /cygdrive/c/Program\ Files\ \(x86\)/PLSQL\ Developer\ 14/plsqldev.exe env:nls_timestamp_format="YYYY-MM-DD HH24:MI:SS:FF6"'
alias .sd='cygstart /cygdrive/e/tools/SendApp.exe'

alias .xf='export XMLLINT_INDENT="    " && xmllint --format'
alias .jf='python -m json.toolex'
alias .urld='sed "s@+@ @g;s@%@\\\\x@g" | xargs -0 printf "%b"'
alias to_sql_in_cond="awk '{ if (length(\$1) > 1) print \"\x27\"\$1\"\x27\"\",\" }' | sed '$ s/.$//'"

alias .ss='cygstart /cygdrive/c/Program\ Files\ \(x86\)/goagent-goagent-985cbd5/ssr/ShadowsocksR-dotnet4.0.exe'
alias .v2='cygstart /cygdrive/c/Program\ Files\ \(x86\)/goagent-goagent-985cbd5/v2rayN-Core/v2rayN.exe'
#alias .ch='cygstart /cygdrive/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
#alias .po='cygstart /cygdrive/c/Program\ Files/DAUM/PotPlayer/PotPlayerMini64.exe'

alias ..py='cd ${PY_WORK_DIR}'
alias ..go='cd ${GO_WORK_DIR}'
alias ..ja='cd ${JA_WORK_DIR}'
alias ..rp='cd ${RP_WORK_DIR}'
alias ..lg='cd ${CEM_LOG_DIR}'

alias ..mu='cd ${MU_WORK_DIR}'

alias pytail='python -u C:\\cygwin64\\home\\root\\utils\\pytail.py'

alias sshp='sshpass -e ssh -p 18086'
