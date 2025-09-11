include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-webdroidx
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=BobbyUnknown <bobbyun.known88@gmail.com>

LUCI_TITLE:=WebDroidX - Android Screen Mirroring
LUCI_DEPENDS:=+adb +screen
LUCI_PKGARCH:=all

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

SCRIPTS_DIR=/etc/webdroidx

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(LUCI_TITLE)
  DEPENDS:=$(LUCI_DEPENDS)
  PKGARCH:=$(LUCI_PKGARCH)
endef

define Package/$(PKG_NAME)/description
	 WebDroidX is a web-based Android screen mirroring solution that allows you to control and view Android devices through a web browser.
endef

define Build/Prepare
	# No preparation steps required
endef

define Build/Compile
	# No compilation steps required
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/share/luci/menu.d
	$(INSTALL_DATA) ./usr/share/luci/menu.d/* $(1)/usr/share/luci/menu.d/

	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DATA) ./usr/share/rpcd/acl.d/* $(1)/usr/share/rpcd/acl.d/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./etc/init.d/webdroidx $(1)/etc/init.d/webdroidx

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./etc/config/webdroidx $(1)/etc/config/webdroidx

	$(INSTALL_DIR) $(1)/www/luci-static/resources/view/webdroidx
	$(INSTALL_DATA) ./htdocs/luci-static/resources/view/webdroidx/* $(1)/www/luci-static/resources/view/webdroidx/
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
[ -n "$$IPKG_INSTROOT" ] || {
    /etc/init.d/webdroidx enable
    /etc/init.d/webdroidx start
    sleep 5
	/etc/init.d/webdroidx stop
	/etc/init.d/webdroidx disable
}
endef

define Package/$(PKG_NAME)/prerm
#!/bin/sh
[ -n "$$IPKG_INSTROOT" ] || {
	/etc/init.d/webdroidx stop
	/etc/init.d/webdroidx disable
	echo "webdroidx uninstalled"
	echo "Thank for using this app"
}
endef

$(eval $(call BuildPackage,$(PKG_NAME)))