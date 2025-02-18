
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = ebe0cd59bb766dcf6f13b9f8a37e6b57381d82e7
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-comerts.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull
LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

#LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules clean
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules modules
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull clean
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull modules
#endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -d 0755 $(@D)/misc-modules/*.ko $(TARGET_DIR)/lib/modules/
#	$(INSTALL) -d 0755 $(@D)/scull/*.ko $(TARGET_DIR)/lib/modules/
#	$(INSTALL) -m 0755 $(@D)/rootfs_overlay/ldd-start-stop $(TARGET_DIR)/etc/init.d/S981lddmodules
#endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/rootfs_overlay/ldd-start-stop $(TARGET_DIR)/etc/init.d/S981lddmodules
#endef

$(eval $(kernel-module))
$(eval $(generic-package))

