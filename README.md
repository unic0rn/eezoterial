[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=unic0rn&url=https://github.com/unic0rn/eezoterial&title=eezoterial&language=&tags=github&category=software)

eezoterial theme
================

#### about ####

First of all, this is a theme for [Secure Shell] (<https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo>) extension for Google Chrome. Porting it to any other terminal emulator shouldn't be a problem, I just didn't bother because that's what I'm using. If you'll port it to anything else - feel free to send me a pull request.

#### installation ####

In case of Secure Shell extension, simply restore backup settings from secure_shell.json - it'll only change the colors, leaving everything else untouched.

In case of any other terminal emulator, if there's no ready to use config file in this repo, just open secure_shell.json and copy-paste the color values, the order is pretty standard (black, red, green, yellow, blue, magenta, cyan, white, bright versions).

#### rationale ####

I admire solarized theme, I really do. The amount of work that went into it, the readability it provides, it's all great. Except for one little detail: I just can't stand those colors in the long run. Even worse, I can't stand the light background it uses - it makes me wonder if I should get a latte or expect a sandstorm. Call it a personal preference, for me it's just too warm for a task like coding.

So I've decided to abuse it. The idea is simple: almost everything has a solarized theme (vim, vim-airline and so on). Also, everything that uses solarized theme under a terminal, should use the base16 colors defined by the solarized palette. Change terminal palette to something that at least remotely tries to follow the way solarized palette was built - everything should look properly while using solarized theme, it'll just look different.

I also happen to like Google's [material palette] (<https://material.google.com/style/color.html#color-color-palette>), so I've used it (with the exception of darkest indigo and purple - I've made those even darker than their 900 variants). The cherry on top of the cake is the choice of indigo and purple for bright black and white/black and white, respectively (there's more purple, actually, and way more indigo), because those are the two most characteristic colors in the Mass Effect trilogy. Of course, I went mostly with their muted tones, because this is supposed to be low contrast theme, not something that will make your eyes bleed. Still, it sets the tone.

solarized palette:

![solarized](/images/base16_solarized.png?raw=true)

eezoterial palette:

![eezoterial](/images/base16_eezoterial.png?raw=true)

#### screenshots ####

Vim with solarized theme, running on eezoterial palette:

![light](/images/eezoterial_vim_light.png?raw=true)

![dark](/images/eezoterial_vim_dark.png?raw=true)
