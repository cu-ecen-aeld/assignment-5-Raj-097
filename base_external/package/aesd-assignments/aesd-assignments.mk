
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
AESD_ASSIGNMENTS_VERSION = '4ad748f0eb7b04e6e0b7484dfe7e90d2354528fc'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignment-5-Raj-097.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef


define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	
	$(INSTALL) -d $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/ 

	# Install aesdsocket startup script
	$(INSTALL) -d $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
