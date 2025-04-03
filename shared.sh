#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for pi builds
PI_DEFCONFIG=configs/raspberrypi4_64_defconfig
# The place we store customizations to the pi configuration
MODIFIED_PI_DEFCONFIG=base_external/configs/aesd_pi_defconfig
# The defconfig from the buildroot directory we use for the project
AESD_DEFAULT_DEFCONFIG=${PI_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${MODIFIED_PI_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}
