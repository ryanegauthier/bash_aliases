# Are you tired of typing at the linux command line?!

I did an extensive google search of handy linux commands and lists of handy aliases and compiled them together in a .bash_aliases file that I use daily! As time goes on I plan to grow this file until my machine and I become one. This file is totally and absolutely for me but you can feel free to download the entire thing or just cherry pick any of the aliases that are included within. There are so many different sources to this document I don't think I could actually site all of them so I'll just lump them all into one big "Thanks for your time!"

## Required Files

You just need to download the .bash_aliases file directly into your home directory and find the lines in your .bashrc file that looks something like this 

`# Alias definitions. `
`# You may want to put all your additions into a separate file like`
`# ~/.bash_aliases, instead of adding them here directly.`
`# See /usr/share/doc/bash-doc/examples in the bash-doc package.`
## Possible update needed
And add (if it doesn't already exist)
`if [ -f ~/.bash_aliases ]; then`
`    . ~/.bash_aliases`
`fi`

## Final instructions
And now you're ready to rock and roll (or possibly smooth jazz)! Well, first you'll need a reboot of your terminal of course. From then on out I included a `reload` alias so you can kiss terminal reboots good-bye!

If you ever want to update the .bash_alias file just type `aka` (or whatever you change your file's first line to - it's your file do what you want with it)

If I think of any other high level instructions you know I'm gonna add them right here in this readme.
