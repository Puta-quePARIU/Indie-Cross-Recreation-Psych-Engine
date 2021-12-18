function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'nota de peligro' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Ring_Note'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'nota de peligro' then
			playSound('Ring_sound', 1)
			setProperty('health', 0);
		characterPlayAnim('boyfriend', 'hurt', true);
		characterPlayAnim('pico', 'down', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'nota de peligro' then
		playSound('Ring_sound', 1)
		characterPlayAnim('boyfriend', 'dodge', true);
		characterPlayAnim('pico', 'down', true);
	end
end