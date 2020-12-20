# HasteModule

This PS module enables users to be able to copy output of their powershell straight to hastebin.

## Usage

```Powershell
PS C:\Users\alex\Documents\PowerShell\Modules\hasteModule> New-Haste "This is a new Haste"
https://hastebin.com/hofapepowo
```

The Cmdlet also supports piping :

```Powershell
PS C:\Users\alex\Documents\PowerShell\Modules\hasteModule> ls


    Directory: C:\Users\alex\Documents\PowerShell\Modules\hasteModule

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---          20/12/2020  8:26 AM           4457 hasteModule.psd1
-a---          20/12/2020  8:04 AM           1482 hasteModule.psm1
-a---          20/12/2020  8:23 AM           1082 LICENSE
-a---          20/12/2020  8:28 AM            272 readme.md

PS C:\Users\alex\Documents\PowerShell\Modules\hasteModule> ls | new-haste -CopyUrlToClipboard $true
https://hastebin.com/xiyiwewoje copied to clipboard!
PS C:\Users\alex\Documents\PowerShell\Modules\hasteModule> start https://hastebin.com/xiyiwewoje
```
---
### Alias List


Alias Name | Cmdlet |
-----------|--------|
yy | New-HasteWithCopy
hastec | New-HasteWithCopy
shc | New-HasteWithCopy
hp | New-Haste
haste | New-Haste
shh | New-Haste

-----

## Additional information

I have no affiliation with Hastebin, this is a module I made for fun :)
