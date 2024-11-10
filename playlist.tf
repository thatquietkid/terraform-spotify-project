data "spotify_search_track" "dhh" {
  artist = "Seedhe Maut"
  limit = 30
}

resource "spotify_playlist" "DHH_Scene" {
  name = "DHH Scene"
  tracks = flatten([ data.spotify_search_track.dhh.tracks[*].id ])
}