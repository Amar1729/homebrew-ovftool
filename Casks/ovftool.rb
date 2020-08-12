cask "ovftool" do
  version "4.1.0,2459827"
  sha256 "20cd526b8447e9b049a7e46d6e0be9752821f56b80261c38fd161077b5ad1581"

  # ftp.tucha13.net/ was verified as official when first introduced to the cask
  url "http://ftp.tucha13.net/pub/software/VMware-ovftool-#{version.before_comma}/VMware-ovftool-#{version.before_comma}-#{version.after_comma}-mac.x64.dmg"
  name "VMware OVF Tool"
  homepage "https://code.vmware.com/web/tool/4.1.0/ovf"

  auto_updates false

  pkg "VMware OVF Tool.pkg"
  binary "#{appdir}/VMware OVF Tool/ovftool"

  uninstall delete: [
    "/Applications/VMware OVF Tool",
    "~/Library/Logs/VMware/vmware-ovftool-*.log",
  ]
end
