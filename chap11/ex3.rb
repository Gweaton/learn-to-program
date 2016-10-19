#found this one tricky - used example answer and tweaked the end.
def music_shuffle filenames
  filenames = filenames.sort
  length = filenames.length

  #cut the deck twice, then cut it once to shuffle like cards.

  2.times do
    l_idx = 0 #index of next card in left pile
    r_idx = length/2 #index of next card in right pile
    shuf = []

    while shuf.length < length
      if shuf.length % 2 == 0
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(length) #index of the card to cut at
  idx = 0

  while idx < length
    arr.push(filenames[(idx+cut) % length])
    idx = idx + 1
  end


  arr
end

Dir.chdir '/Users/georgeeaton/music'
songs = Dir['**/*.mp3']

puts(music_shuffle(songs))
