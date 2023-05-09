---@type QuestieQuestBlacklist
local QuestieQuestBlacklist = QuestieLoader:ImportModule("QuestieQuestBlacklist")

local currentPhase = 5 -- TODO: Use API function which hopefully will come in the future

-- Phase 1 is omitted, because everything not in this list is supposed to be available in Phase 1
local questsToBlacklistBySoMPhase = {
    [1] = {}, -- Phase 1 - Regular Phase 1 + Dire Maul + Tier 0.5 quests (this is required for counting, but should stay empty)
    [2] = { -- Phase 2 - World Bosses
    },
    [3] = { -- Phase 3 - BWL + Darkmoon Faire
        [7761] = true, -- Blackhand's Command BWL pre quest
        [7787] = true,
        -- Darkmoon Faire quests
        [7902] = true,
        [7903] = true,
        [8222] = true,
        [7901] = true,
        [7899] = true,
        [7940] = true,
        [7900] = true,
        [7907] = true,
        [7927] = true,
        [7929] = true,
        [7928] = true,
        [7946] = true,
        [8223] = true,
        [7934] = true,
        [7981] = true,
        [7943] = true,
        [7894] = true,
        [7933] = true,
        [7898] = true,
        [7885] = true,
        [7942] = true,
        [7883] = true,
        [7892] = true,
        [7937] = true,
        [7939] = true,
        [7893] = true,
        [7891] = true,
        [7896] = true,
        [7884] = true,
        [7882] = true,
        [7897] = true,
        [7895] = true,
        [7941] = true,
        [7881] = true,
        [7890] = true,
        [7889] = true,
        [7945] = true,
        [7935] = true,
        [7938] = true,
        [7944] = true,
        [7932] = true,
        [7930] = true,
        [7931] = true,
        [7936] = true,
        [9249] = true,
        [10939] = true,
        [10940] = true,
        [10941] = true,
        -----------------
    },
    [4] = { -- Phase 4 - Zul'Gurub
        [456] = true,
        [636] = true,
        [8411] = true,
        [8056] = true,
        [8057] = true,
        [8064] = true,
        [8065] = true,
        [8074] = true,
        [8075] = true,
        [8110] = true,
        [8111] = true,
        [8112] = true,
        [8113] = true,
        [8116] = true,
        [8117] = true,
        [8118] = true,
        [8119] = true,
        [8041] = true,
        [8042] = true,
        [8043] = true,
        [8044] = true,
        [8045] = true,
        [8046] = true,
        [8047] = true,
        [8048] = true,
        [8049] = true,
        [8050] = true,
        [8051] = true,
        [8052] = true,
        [8053] = true,
        [8054] = true,
        [8055] = true,
        [8058] = true,
        [8059] = true,
        [8060] = true,
        [8061] = true,
        [8062] = true,
        [8063] = true,
        [8066] = true,
        [8067] = true,
        [8068] = true,
        [8069] = true,
        [8070] = true,
        [8071] = true,
        [8072] = true,
        [8073] = true,
        [8076] = true,
        [8077] = true,
        [8078] = true,
        [8079] = true,
        [8101] = true,
        [8102] = true,
        [8103] = true,
        [8104] = true,
        [8106] = true,
        [8107] = true,
        [8108] = true,
        [8109] = true,
        [8141] = true,
        [8142] = true,
        [8143] = true,
        [8144] = true,
        [8145] = true,
        [8146] = true,
        [8147] = true,
        [8148] = true,
        [8184] = true,
        [8185] = true,
        [8186] = true,
        [8187] = true,
        [8188] = true,
        [8189] = true,
        [8190] = true,
        [8191] = true,
        [8192] = true,
        [8195] = true,
        [8196] = true,
        [8201] = true,
        [8227] = true,
        [8238] = true,
        [8239] = true,
        [8240] = true,
        [8243] = true,
        [8246] = true,
        [8446] = true,
        [8447] = true,
        [9208] = true,
        [9209] = true,
        [9210] = true,
        [8307] = true,
        [8313] = true,
        [8317] = true,
        [8282] = true,
        [8278] = true,
        [8323] = true,
        [8324] = true,
        [8275] = true,
        [8309] = true,
        [8310] = true,
        [8315] = true,
        [8319] = true,
        [8341] = true,
        [8342] = true,
        [8343] = true,
        [8331] = true,
        [8332] = true,
        [8333] = true,
        [8306] = true,
        [8321] = true,
        [8362] = true,
        [8364] = true,
        [9248] = true,
        [8281] = true,
        [8285] = true,
        [8279] = true,
        [8287] = true,
        [8314] = true,
    },
    [5] = { -- Phase 5 - AQ
        [8277] = true,
        [8280] = true,
        [8283] = true,
        [8284] = true,
        [8304] = true,
        [8318] = true,
        [8320] = true,
        [8361] = true,
        [8276] = true,
        [8747] = true,
        [8748] = true,
        [8749] = true,
        [8750] = true,
        [8752] = true,
        [8753] = true,
        [8754] = true,
        [8755] = true,
        [8757] = true,
        [8758] = true,
        [8759] = true,
        [8760] = true,
        [8800] = true,
        [8751] = true,
        [8756] = true,
        [8761] = true,
        [8801] = true,
        [8802] = true,
        [8764] = true,
        [8765] = true,
        [8766] = true,
        [8620] = true,
        [8621] = true,
        [8622] = true,
        [8623] = true,
        [8624] = true,
        [8625] = true,
        [8626] = true,
        [8627] = true,
        [8628] = true,
        [8629] = true,
        [8630] = true,
        [8631] = true,
        [8632] = true,
        [8633] = true,
        [8634] = true,
        [8637] = true,
        [8638] = true,
        [8639] = true,
        [8640] = true,
        [8641] = true,
        [8655] = true,
        [8656] = true,
        [8657] = true,
        [8658] = true,
        [8659] = true,
        [8660] = true,
        [8661] = true,
        [8662] = true,
        [8663] = true,
        [8664] = true,
        [8665] = true,
        [8666] = true,
        [8667] = true,
        [8668] = true,
        [8669] = true,
        [8689] = true,
        [8690] = true,
        [8691] = true,
        [8692] = true,
        [8693] = true,
        [8694] = true,
        [8695] = true,
        [8696] = true,
        [8697] = true,
        [8698] = true,
        [8699] = true,
        [8700] = true,
        [8701] = true,
        [8702] = true,
        [8703] = true,
        [8704] = true,
        [8705] = true,
        [8706] = true,
        [8707] = true,
        [8708] = true,
        [8709] = true,
        [8710] = true,
        [8711] = true,
        [8712] = true,
        [8728] = true,
        [8729] = true,
        [8730] = true,
        [8733] = true,
        [8734] = true,
        [8735] = true,
        [8736] = true,
        [8741] = true,
        [8742] = true,
        [8743] = true,
        [8745] = true,
        [8783] = true,
        [8784] = true,
        [8789] = true,
        [8790] = true,
        [8791] = true,
        [8602] = true,
        [8603] = true,
        [8606] = true,
        [8592] = true,
        [8593] = true,
        [8594] = true,
        [8595] = true,
        [8596] = true,
        [8597] = true,
        [8598] = true,
        [8599] = true,
        [8584] = true,
        [8585] = true,
        [8586] = true,
        [8587] = true,
        [8555] = true,
        [8556] = true,
        [8557] = true,
        [8558] = true,
        [8559] = true,
        [8560] = true,
        [8561] = true,
        [8562] = true,
        [8572] = true,
        [8573] = true,
        [8574] = true,
        [8575] = true,
        [8576] = true,
        [8577] = true,
        [8578] = true,
        [8496] = true,
        [8579] = true,
        [8544] = true,
        [8519] = true,
        [8856] = true,
        [8829] = true,
        [8497] = true,
        [8804] = true,
        [8805] = true,
        [8536] = true,
        [8857] = true,
        [8498] = true,
        [8806] = true,
        [8308] = true,
        [8858] = true,
        [8859] = true,
        [8807] = true,
        [8771] = true,
        [8773] = true,
        [8775] = true,
        [8777] = true,
        [8809] = true,
        [8787] = true,
        [8785] = true,
        [8538] = true,
        [8534] = true,
        [8738] = true,
        [8502] = true,
        [8537] = true,
        [8539] = true,
        [8786] = true,
        [8737] = true,
        [8687] = true,
        [8739] = true,
        [8501] = true,
        [8535] = true,
        [8808] = true,
        [8810] = true,
        [8740] = true,
        [8381] = true,
        [8779] = true,
        [8540] = true,
        [8541] = true,
        [8778] = true,
        [8780] = true,
        [8781] = true,
        [8782] = true,
        [8770] = true,
        [8772] = true,
        [8774] = true,
        [8776] = true,
        [8316] = true,
        [9023] = true,
        [8382] = true,
        [8286] = true,
        [8288] = true,
        [8301] = true,
        [8302] = true,
        [8303] = true,
        [8305] = true,
        [8548] = true,
        [8818] = true,
        [8817] = true,
        [8816] = true,
        [8815] = true,
        [8814] = true,
        [8820] = true,
        [8826] = true,
        [8825] = true,
        [8824] = true,
        [8823] = true,
        [8822] = true,
        [8821] = true,
        [8819] = true,
    },
    [6] = { --Phase 6 - Naxxramas
        [9085] = true,
        [9142] = true,
        [9165] = true,
        [9141] = true,
        [9033] = true,
        [9034] = true,
        [9036] = true,
        [9037] = true,
        [9038] = true,
        [9039] = true,
        [9040] = true,
        [9041] = true,
        [9042] = true,
        [9043] = true,
        [9044] = true,
        [9045] = true,
        [9046] = true,
        [9047] = true,
        [9048] = true,
        [9049] = true,
        [9050] = true,
        [9054] = true,
        [9055] = true,
        [9056] = true,
        [9057] = true,
        [9058] = true,
        [9059] = true,
        [9060] = true,
        [9061] = true,
        [9068] = true,
        [9069] = true,
        [9070] = true,
        [9071] = true,
        [9072] = true,
        [9073] = true,
        [9074] = true,
        [9075] = true,
        [9077] = true,
        [9078] = true,
        [9079] = true,
        [9080] = true,
        [9081] = true,
        [9082] = true,
        [9083] = true,
        [9084] = true,
        [9086] = true,
        [9087] = true,
        [9088] = true,
        [9089] = true,
        [9090] = true,
        [9091] = true,
        [9092] = true,
        [9093] = true,
        [9095] = true,
        [9096] = true,
        [9097] = true,
        [9098] = true,
        [9099] = true,
        [9100] = true,
        [9101] = true,
        [9102] = true,
        [9103] = true,
        [9104] = true,
        [9105] = true,
        [9106] = true,
        [9107] = true,
        [9108] = true,
        [9109] = true,
        [9110] = true,
        [9111] = true,
        [9112] = true,
        [9113] = true,
        [9114] = true,
        [9115] = true,
        [9116] = true,
        [9117] = true,
        [9118] = true,
        [9120] = true,
        [9121] = true,
        [9122] = true,
        [9123] = true,
        [9124] = true,
        [9125] = true,
        [9126] = true,
        [9127] = true,
        [9128] = true,
        [9129] = true,
        [9131] = true,
        [9132] = true,
        [9136] = true,
        [9137] = true,
        [9153] = true,
        [9211] = true,
        [9213] = true,
        [9221] = true,
        [9222] = true,
        [9223] = true,
        [9224] = true,
        [9225] = true,
        [9226] = true,
        [9227] = true,
        [9228] = true,
        [9229] = true,
        [9230] = true,
        [9232] = true,
        [9233] = true,
        [9234] = true,
        [9235] = true,
        [9236] = true,
        [9237] = true,
        [9238] = true,
        [9239] = true,
        [9240] = true,
        [9241] = true,
        [9242] = true,
        [9243] = true,
        [9244] = true,
        [9245] = true,
        [9246] = true,
        [9250] = true,
        [9251] = true,
        -- Silithus/EPL PvP
        [9248] = true,
        [9422] = true,
        [9415] = true,
        [9419] = true,
        [9416] = true,
    },
}

---@return table<number, table<number, boolean>> @All quests that should be blacklisted separated by phase
function QuestieQuestBlacklist:GetSoMQuestsToBlacklist()
    for phase = 1, currentPhase do
        questsToBlacklistBySoMPhase[phase] = {} -- empty table instead of nil to keep table size
    end
    return questsToBlacklistBySoMPhase
end
