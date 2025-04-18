##############################################################
#
# COURSEPROJECT
#
##############################################################

COURSEPROJECT_VERSION = '6301737033440bfb750e8b1b86422e81606737a2'
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
	
	$(INSTALL) -m 0644 $(@D)/web/*.html $(TARGET_DIR)/var/www/
	
	$(INSTALL) -d 0755 $(@D)/web/cgi-bin/ $(TARGET_DIR)/var/www/cgi-bin/
	$(INSTALL) -m 0755 $(@D)/web/cgi-bin/* $(TARGET_DIR)/var/www/cgi-bin/
	
	$(INSTALL) -d 0755 $(@D)/web/css/ $(TARGET_DIR)/var/www/css/
	$(INSTALL) -m 0644 $(@D)/web/css/* $(TARGET_DIR)/var/www/css/
	
	$(INSTALL) -d 0755 $(@D)/web/js/ $(TARGET_DIR)/var/www/js/
	$(INSTALL) -m 0755 $(@D)/web/js/* $(TARGET_DIR)/var/www/js/
endef

$(eval $(generic-package))