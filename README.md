# quick-snip
This Alfred Workflow attepts to make snippets quicker to create.


## Workflow:
1. Highlight text and press hotkey, Alfred opens, pastes text.
2. Enter name:keyword:snippet into Alfred.
3. Script runs and adds snippet.

## How to get it:
1. Download the latest release
2. Click on it, Alfred should open and import it
3. Customize to your liking

Hot tip for those just getting started on working on Alfred stuff:
Everything is located here:  

    ~/Library/Application Support/Alfred/Alfred.alfredpreferences
It doesn't look like it, but its a directory. Snippets are stored in the
snippets folder (obviously) in JSON format. Don't worry about messing with
the SQLite Database, that's the old way to do it, I believe.

## Alternate Trigger:
You can also access the Add Snippet action via the '\\\\snip' snippet trigger.
It was my original plan to create a Snippet Trigger -> New Snippet Workflow. 
I haven't flushed it out completely yet though, so that route is a bit more 
cumbersome than getting into the workflow via hotkey, especially because of 
the paste selected text functionality. If I can figure out how to pass 
arguments via snippet trigger, than I'll do more on that front, but I don't 
know if that's possible.

## Notes:
- Autocomplete is set as the default. Check out the script if you want to 
change that, should be pretty easy to figure out.
- Make sure to use a colon as your delimeter. This can be changed in the script if you want.
- My script should ignore all but the first two colons.
- Please let me know if you've got ideas to improve this! I'm just getting
started with Alfred workflows and bash scripting.

## Known issues:
Multi-line snippets paste as single line.

