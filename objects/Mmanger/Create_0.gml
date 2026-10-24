// Volumes (0-1 range recommended, but kept your original values)
global.masterVolume = 1;
global.musicVolume = 1;

// Music system variables
songInstance = noone;
songAsset = noone;
targetSongAsset = noone;
endFadeOutTime = 60;
startFadeInTime = 60;
fadeInInstVol = 0;

// Fade-out tracking arrays
fadeOutinstances = array_create(0);
fadeOutinstVol = array_create(0);
fadeOutinstTime = array_create(0);