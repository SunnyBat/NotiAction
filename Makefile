export ARCHS = armv7 armv7s arm64
include theos/makefiles/common.mk

TWEAK_NAME = NotiAction
NotiAction_FILES = Tweak.xm
NotiAction_LIBRARIES = activator

SUBPROJECTS += notiaction
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard backboardd"