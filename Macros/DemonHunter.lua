local Sequences = GSMasterSequences

------------------
----- Demon Hunter
------------------
Sequences["DH"] = {
StepFunction = [[
	limit = limit or 1
	if step == limit then
		limit = limit % #macros + 1
		step = 1
	else
		step = step % #macros + 1
	end
]],
PreMacro = [[
/cast [combat] Demon Spikes
/targetenemy [noharm][dead]
]],
"/cast !Shear",
"/cast !Soul Carver",
"/cast !",
"/cast !Fel Eruption",
"/cast !",
PostMacro = [[
/cast [Combat]Immolation Aura
/cast [Combat]Empower Wards
/cast Fiery Brand
/startattack
/script UIErrorsFrame:Hide();
]],
}
