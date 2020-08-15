# -*- coding: binary -*-
module Rex
module Post
module Meterpreter
module Extensions
module Incognito

# ID for the extension (needs to be a multiple of 1000)
EXTENSION_ID_INCOGNITO = 12000

# Associated command ids
COMMAND_ID_INCOGNITO_ADD_GROUP_USER      = EXTENSION_ID_INCOGNITO + 1
COMMAND_ID_INCOGNITO_ADD_LOCALGROUP_USER = EXTENSION_ID_INCOGNITO + 2
COMMAND_ID_INCOGNITO_ADD_USER            = EXTENSION_ID_INCOGNITO + 3
COMMAND_ID_INCOGNITO_IMPERSONATE_TOKEN   = EXTENSION_ID_INCOGNITO + 4
COMMAND_ID_INCOGNITO_LIST_TOKENS         = EXTENSION_ID_INCOGNITO + 5
COMMAND_ID_INCOGNITO_SNARF_HASHES        = EXTENSION_ID_INCOGNITO + 6

end
end
end
end
end