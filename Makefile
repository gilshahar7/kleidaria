INSTALL_TARGET_PROCESSES = SpringBoard
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Kleidaria

Kleidaria_FILES = Tweak.x
Kleidaria_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
