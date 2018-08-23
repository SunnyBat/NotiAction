include theos/makefiles/common.mk

BUNDLE_NAME = NotiAction
NotiAction_FILES = NotiAction.mm
NotiAction_INSTALL_PATH = /Library/PreferenceBundles
NotiAction_FRAMEWORKS = UIKit
NotiAction_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NotiAction.plist$(ECHO_END)
