# Load assembly
Add-Type -AssemblyName System.Windows.Forms

# Define a list of words to use in the password
$words = "dog", "cat", "fish", "bird", "book", "pen", "chair", "table", "phone", "shoe", "shirt", "pants", "hat", "bag", "car", "bike", "train", "plane", "boat", "river", "mountain", "valley", "star", "moon", "sun", "cloud", "rain", "snow", "wind", "storm", "flower", "tree", "grass", "leaf", "fruit", "vegetable", "meat", "drink", "food", "sweet", "bitter", "sour", "salty", "hot", "cold", "warm", "cool", "light", "dark", "color", "shape", "size", "number", "letter", "sound", "silence", "music", "song", "dance", "jump", "run", "walk", "sit", "stand", "sleep", "wake", "eat", "drink", "laugh", "cry", "smile", "frown", "talk", "listen", "think", "learn", "know", "understand", "remember", "forget", "begin", "end", "open", "close", "push", "pull", "give", "take", "find", "lose", "win", "play", "work", "help", "hurt", "love", "hate", "see", "hear", "feel", "touch", "taste", "smell", "come", "go", "stop", "move", "fast", "slow", "up", "down", "left", "right", "in", "out", "on", "off", "over", "under", "near", "far", "big", "small", "long", "short", "high", "low", "wide", "narrow", "thick", "thin", "full", "empty", "heavy", "light", "hard", "soft", "wet", "dry", "clean", "dirty", "old", "new", "good", "bad", "happy", "sad", "easy", "hard", "simple", "complex", "safe", "dangerous", "strong", "weak", "loud", "quiet", "rich", "poor", "cheap", "expensive", "early", "late", "before", "after", "first", "last", "more", "less", "many", "few", "much", "little", "same", "different", "right", "wrong", "true", "false", "yes", "no", "maybe", "always", "never", "sometimes", "often", "rarely", "usually", "day", "night", "morning", "evening", "noon", "midnight", "spring", "summer", "autumn", "winter", "today", "tomorrow", "yesterday", "week", "month", "year", "century", "millennium", "second", "minute", "hour", "time", "past", "present", "future", "history", "story", "tale", "legend", "myth", "fact", "fiction", "news", "information", "knowledge", "wisdom", "intelligence", "thought", "idea", "imagination", "dream", "reality", "truth", "lie", "secret", "mystery", "puzzle", "problem", "solution", "answer", "question", "doubt", "belief", "opinion", "view", "theory", "hypothesis", "science", "art", "literature", "music", "dance", "theater", "cinema", "television", "radio", "internet", "website", "page", "screen", "picture", "image", "photo", "painting", "drawing", "sculpture", "design", "architecture", "building", "house", "home", "room", "door", "window", "roof", "wall", "floor", "ceiling", "bed", "sofa", "chair", "table", "desk", "shelf", "cabinet", "drawer", "closet", "lamp", "light", "bulb", "candle", "fire", "stove", "oven", "microwave", "fridge", "freezer", "dishwasher", "sink", "tap", "shower", "bath", "toilet", "mirror", "comb", "brush", "toothbrush", "toothpaste", "soap", "shampoo", "towel", "cloth", "shirt", "blouse", "dress", "skirt", "pants", "jeans", "shorts", "socks", "shoes", "boots", "slippers", "hat", "cap", "scarf", "gloves", "coat", "jacket", "sweater", "umbrella", "bag", "backpack", "purse", "wallet", "card", "ticket", "money", "coin", "note", "check", "credit", "debit", "gift", "present", "box", "package", "letter", "mail", "post", "envelope", "stamp", "pen", "pencil", "marker", "crayon", "paint", "brush", "paper", "notebook", "book", "magazine", "newspaper", "dictionary", "encyclopedia", "atlas", "map", "globe", "world", "earth", "planet", "star", "moon", "sun", "sky", "cloud", "rain", "snow", "wind", "storm", "thunder", "lightning", "rainbow", "mountain", "hill", "valley", "plain", "desert", "forest", "jungle", "park", "garden", "flower", "tree", "grass", "leaf", "branch", "root", "seed", "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "iceplant", "jackfruit", "kiwi", "lemon", "mango", "nectarine", "orange", "pineapple", "quince", "raspberry", "strawberry", "tangerine", "victoria", "watermelon", "yellow", "zucchini", "ant", "bird", "car", "door", "egg", "flower", "guitar", "hat", "icecream", "juice", "kangaroo", "lamp", "monkey", "nest", "ocean", "pencil", "queen", "rainbow", "star", "tree", "umbrella", "violin", "window", "yogurt", "zebra", "alligator", "butterfly", "cloud", "dolphin", "elephant", "frog", "giraffe", "iguana", "jellyfish", "koala", "lion", "mouse", "octopus", "penguin", "quail", "rabbit", "snail", "tiger", "unicorn", "vulture", "wolf", "yak"

# Create main form
$mainForm = New-Object System.Windows.Forms.Form
$mainForm.Text = 'Password Generator'
$mainForm.Size = New-Object System.Drawing.Size(300,200)

# Create password TextBox
$passwordTextBox = New-Object System.Windows.Forms.TextBox
$passwordTextBox.Location = New-Object System.Drawing.Point(10,20)
$passwordTextBox.Size = New-Object System.Drawing.Size(280,40) # Increase TextBox size
$passwordTextBox.Font = New-Object System.Drawing.Font("Arial", 20) # Increase font size
$mainForm.Controls.Add($passwordTextBox)

# Create generate button
$generateButton = New-Object System.Windows.Forms.Button
$generateButton.Location = New-Object System.Drawing.Point(40,70) # Adjust button position
$generateButton.Size = New-Object System.Drawing.Size(180,23)
$generateButton.Text = 'PASSWORD RANDOMIZER'
$generateButton.Add_Click({
    $random = Get-Random -Minimum 10 -Maximum 99
    $word1 = Get-Random -InputObject $words
    $word2 = Get-Random -InputObject $words
    $newPassword = "$word1$word2$random".Substring(0,1).ToUpper()+ "$word1$word2$random".Substring(1)
    $passwordTextBox.Text = "$newPassword"
})
$mainForm.Controls.Add($generateButton)

# Show main form
$mainForm.ShowDialog()
