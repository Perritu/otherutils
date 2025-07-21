import sys
import mutagen
from mutagen.id3 import ID3

# Import the album cover image for given files.
#@param albumart The album art to import.
#@param files The files to import the album art to.

# Read arguments
if len(sys.argv) < 3:
    print("Usage: python importAlbum.py <albumart> <file1> <file2> ...")
    sys.exit(1)

albumart = sys.argv[1]
files = sys.argv[2:]

# Load the album art into mutagen
albumart = mutagen.File(albumart)

# For each file, strip existing album art and add the new one
for file in files:
    audio = ID3(file)
    audio.delall("APIC")
    audio.add(mutagen.id3.APIC(3, 'image/png', 3, 'Front Cover', albumart.data))
    audio.save()
    print("Done! Filename: " + file)