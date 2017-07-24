_contents := $(_contents)    "caf":{$(newline)

# See build/core/soong_config.mk for the add_json_* functions you can use here.
$(call add_json_str,  Target_shim_libs,                      $(TARGET_LD_SHIM_LIBS))
$(call add_json_bool, Target_uses_color_metadata,            $(filter true,$(TARGET_USES_COLOR_METADATA)))
$(call add_json_str_omitempty, Additional_gralloc_10_usage_bits, $(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS))
$(call add_json_str_omitempty, Target_process_sdk_version_override,    $(TARGET_PROCESS_SDK_VERSION_OVERRIDE))
$(call add_json_bool, Uses_qti_camera_device,                          $(filter true,$(TARGET_USES_QTI_CAMERA_DEVICE)))
$(call add_json_val_default, Bootloader_message_offset, $(BOOTLOADER_MESSAGE_OFFSET), 0)
$(call add_json_bool, Needs_text_relocations,                $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)))

# This causes the build system to strip out the last comma in our nested struct, to keep the JSON valid.
_contents := $(_contents)__SV_END

_contents := $(_contents)    },$(newline)
