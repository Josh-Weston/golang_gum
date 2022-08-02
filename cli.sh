#!/bin/bash
TYPE=$(gum choose "Say Hi" "Say Goodbye")
if [ "$TYPE" = "Say Hi" ]
    then
        echo "Hi!"
    else
        echo
            echo "Goodbye"
            exit 1
fi

SHORT=$(gum input --placeholder "Josh Weston")

# It looks like we can hit ESC to exit the long story
LONG=$(gum write --placeholder "Tell me a story")
echo $LONG

# You can send multiline text/files into gum choose to automatically create a list to choose from
WHO=$(printf "Josh\nMarcy\nPJ\nCleo" | gum choose)
LETTER=$(cat ./mylist.txt | gum choose)

echo "WHO: $WHO, LETTER: $LETTER"

gum spin --spinner dot --title "Waiting for something to happen..." -- sleep 5

# will exit the program with a 0 status or 1 status depending on the answer
gum confirm "Exit with out error?"