# How to
Append contents of de file to 
`/usr/share/X11/xkb/symbols/de`

Add in contents of file xmlChanges.xml to following files:
* `/usr/share/X11/xkb/rules/base.xml`
* `/usr/share/X11/xkb/rules/evdev.xml`

These contents should be inside the German XML Node eg.
```
...
<name>de</name>
<variant>
  <configItem>
	<name>myneo</name>
	<description>German (MyNeo)</description>
  </configItem>
</variant>
...
```
