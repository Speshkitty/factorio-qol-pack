function overwrite_setting(setting_type, setting_name, value)
  -- setting_type: [bool-setting | int-setting | double-setting | string-setting]
  if data.raw[setting_type] then
    local s = data.raw[setting_type][setting_name]
    if s then
	  s.default_value = value
    else
      log("Error: missing setting " .. setting_name)
    end
  else
    log("Error: missing setting type " .. setting_type)
  end
end

overwrite_setting("string-setting", "aai-loaders-mode", "expensive") -- Sets the AAI loaders mode to default to expensive, which is then modified by the sane loaders mod
overwrite_setting("string-setting", "ee-testing-lab", "shared") -- Sets the testing lab to default to the force shared space
