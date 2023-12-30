# DIADZ Themes

## Spicetify
![diadz-spicetify](screenshots/diadz-spicetify.png)
(cat not included)

-   **IMPORTANT:** Add the following to your `config-xpui.ini` file. Details as to why are explained [here](https://github.com/JulienMaille/spicetify-dynamic-theme#important). Run `spicetify apply` after adding these lines.

```ini
[Patch]
xpui.js_find_0880 = COLLAPSED\?64:32
xpui.js_repl_0880 = COLLAPSED?32:32
xpui.js_find_8008 = ,(\w+=)56,
xpui.js_repl_8008 = ,${1}32,
```

-   **SUGGESTION:** For Windows users, here's how to make the window controls' background match with the topbar background

    -   Put this snippet into your `user.css` (or through the Marketplace's `+ Add CSS` feature)

```css
/* transparent window controls background */
body::after {
    content: "";
    position: absolute;
    right: 0;
    z-index: 999;
    backdrop-filter: brightness(2.12);
    /* page zoom [ctrl][+] or [ctrl][-]
       edit width and height accordingly
        69%  = 194px 45px
        76%  = 177px 40.5px
        83%  = 162px 37.5px
        91%  = 148px 34px
        100% = 135px 31px (default)
        110% = 123px 28.5px
    */
    width: 135px;
    height: 31px;
}
```

![winctrl](screenshots/winctrl.png)

---

## Discord

![diadz-discord-home](screenshots/diadz-discord-home.png)

![diadz-discord-server](screenshots/diadz-discord-server.png)

---

## Credits

[DevEvil99](https://github.com/DevEvil99) for his [Discord Theme](https://github.com/DevEvil99/Azurite-Discord-Theme)

[darkthemer](https://github.com/darkthemer/) for their [Spicetify Mimic](https://github.com/spicetify/spicetify-themes/tree/master/text) of [spotify-tui](https://github.com/Rigellute/spotify-tui)