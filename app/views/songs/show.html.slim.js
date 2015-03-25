h4 =t('.song_page')
.show_table
  .table
    h6 =t(Song.human_attribute_name('title'))
    p =@song.title

    // TIP: you don't have to create a method for pulling a record, unless 
    // the code looks like this below where 
    // you have a fancy name, pulling only the first initial of the name on the song
    //p ="#{@song.artist.name} #{@song.artist.name.first}.something here"

    h6 Band/ Artist Name
    /p =@song.audioable.name  
    h6 on the following playlists
    p  =select_tag 'playlists', options_from_collection_for_select(@playlists, 'id', 'title')
    h6 =t(Song.human_attribute_name('created_at'))
    p =timeago(@song.created_at)
    h6 =t(Song.human_attribute_name('updated_at'))
    p =timeago(@song.updated_at)
  .audio 
    audio(controls src= @song.file)
  .links
      p =link_to t('.back'), songs_path
      p =link_to t('.edit'), edit_song_path(@song)
      p =link_to t('.destroy'), song_path(@song), method: :delete, data: { confirm: 'Are you sure?' }
