
# headscale

# Windows

```
New-Item -Path "HKLM:\SOFTWARE\Tailscale IPN"
New-ItemProperty -Path 'HKLM:\Software\Tailscale IPN' -Name UnattendedMode -PropertyType String -Value always
New-ItemProperty -Path 'HKLM:\Software\Tailscale IPN' -Name LoginURL -PropertyType String -Value https://tailscale.techgsolutions.com:8443
```

# Reference
https://github.com/juanfont/headscale
https://github.com/GoodiesHQ/headscale-admin
https://patrick-huetter.de/running-headscale-with-headscale-admin-ui-letsencrypt-docker-compose-in-dual-stack-with-ipv4-and-ipv6-1433.html