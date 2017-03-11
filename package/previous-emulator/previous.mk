################################################################################
#
# previous
#
################################################################################

PREV_VERSION = 1.5
PREV_SOURCE = previous.tar.gz
PREV_SITE = http://juddy.org/
PREV_LICENSE = https://github.com/itomato/Previous-realtime/blob/master/gpl.txt
PREV_LICENSE_FILES = gpl.txt
PREV_INSTALL_STAGING = YES
PREV_CONFIG_SCRIPTS = previous-config

$(eval $(autotools-package))

define PREV_BUILD_CMDS
	./configure
	$(MAKE)
endef

