##############################################################
#
# COURSEPROJECT
#
##############################################################

COURSEPROJECT_VERSION = '7e11a40e02fd5ecc52775a6bbfff0ef1d0e8d2e3'
COURSEPROJECT_SITE = 'git@github.com:cu-ecen-aeld/final-project-JLDenn.git'
COURSEPROJECT_SITE_METHOD = git
COURSEPROJECT_GIT_SUBMODULES = YES

define COURSEPROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/datactrl
endef

define COURSEPROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/datactrl/datactrl $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/bt/*.sh $(TARGET_DIR)/root/
	$(INSTALL) -m 0755 $(@D)/bt/*.exp $(TARGET_DIR)/root/
endef

$(eval $(generic-package))