var __finalVol = global.musicVolume * global.masterVolume;

// Handle song switching
if (songAsset != targetSongAsset)
{
    // Check if the current song is playing or paused, and fade it out
    if (audio_is_playing(songInstance) || audio_is_paused(songInstance)) 
    {
        array_push(fadeOutinstances, songInstance);
        array_push(fadeOutinstVol, audio_sound_get_gain(songInstance)); // Fixed: Use audio_sound_get_gain instead of audio_get_gain
        array_push(fadeOutinstTime, endFadeOutTime);
        
        songInstance = noone;
        songAsset = noone;
    }
    
    // Play new song if no fade-outs are pending
    if (array_length(fadeOutinstances) == 0) // Fixed: Added missing closing parenthesis
    {
        if (audio_exists(targetSongAsset)) // Fixed: Added missing closing parenthesis
        {
            songInstance = audio_play_sound(targetSongAsset, 4, true);
            audio_sound_gain(songInstance, 0, 0);
            fadeInInstVol = 0;
            songAsset = targetSongAsset; // Moved this inside the if block to ensure the song only updates if it exists
        }
    }
    
    // Fade in the new song
    if (audio_is_playing(songInstance))
    {
        if (startFadeInTime > 0)
        {
            fadeInInstVol = min(fadeInInstVol + (1 / startFadeInTime), 1);
        }
        else
        {
            fadeInInstVol = 1;
        }
        audio_sound_gain(songInstance, fadeInInstVol * __finalVol, 0);
    }
}

// Process fade-outs for old songs
for (var i = array_length(fadeOutinstances) - 1; i >= 0; i--)
{
    if (fadeOutinstances[i] != noone)
    {
        fadeOutinstVol[i] -= (1 / fadeOutinstTime[i]);
        
        if (fadeOutinstVol[i] <= 0)
        {
            audio_stop_sound(fadeOutinstances[i]);
            array_delete(fadeOutinstances, i, 1);
            array_delete(fadeOutinstVol, i, 1);
            array_delete(fadeOutinstTime, i, 1);
        }
        else
        {
            audio_sound_gain(fadeOutinstances[i], fadeOutinstVol[i] * __finalVol, 0);
        }
    }
}