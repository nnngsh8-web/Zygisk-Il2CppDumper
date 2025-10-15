-- GameGuardian VPN Detection Header
-- Author: Gta
-- Purpose: Exit script if VPN is active

local vpnPackages = {
  "com.nordvpn.android",        -- NordVPN
  "com.expressvpn.vpn",         -- ExpressVPN
  "com.protonvpn.android",      -- ProtonVPN
  "com.surfshark.vpnclient.android", -- Surfshark
  "com.hotspotshield.android",  -- Hotspot Shield
  "com.vpnhub",                 -- VPNHub
  "com.psiphon3",               -- Psiphon
  "com.tunnelbear.android",     -- TunnelBear
  "com.freevpn.fastvpn",        -- FastVPN
  "com.betternet.android",       -- Betternet
}

local function isVPNActive()
  for _, pkg in ipairs(vpnPackages) do
    if gg.isPackageInstalled(pkg) then
      return true
    end
  end
  return false
end

if isVPNActive() then
  gg.alert("VPN detected! Please disable VPN to run this script.")
  os.exit()
end
