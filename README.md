Originally https://github.com/oilshell/oil/pull/1912

## Termcodes

### Issues
- There's no way to actually test this because termcode commands has effect not on stdout/stderr but on other environments. 
- There's some biolerplates in the code. Begs macro system.
 #1872

### TODOs
- [ ] Auto adapting colors with `$COLORTERM`
- [ ] Maybe delegate jobs to `tput` from ncurses if it's present. Since it's not really part of coreutils so this better stay optional. Not sure yet. 
- [ ] Nesting styles doesn't need to be fixed. 

### Resources 
- https://en.wikipedia.org/wiki/ANSI_escape_code
- https://invisible-island.net/xterm/ctlseqs/ctlseqs.html

### Preview

```
source ./draft-termcodes/xterm.ysh 
echo $["I'm doubly underscorred" => withStyle(STYLE_DOUBLY_UNDERLINED)]
echo $["I'm clickable!" => withLink("https://www.google.com") => withFg(sgr24(0xff00ff))]
echo $["I'm crossed out" => withStyle(STYLE_CROSSED_OUT)]
```

![image](https://github.com/oilshell/oil/assets/12870742/807389e0-b75f-4372-9938-f34ee81bbe87)

