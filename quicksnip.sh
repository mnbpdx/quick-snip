export LC_CTYPE=C
DLM=':'
IDLM='¬'
QUERY="$1"
QUERY="$(sed 's/\:/\¬/1' <<<$QUERY)"
QUERY="$(sed 's/\:/\¬/1' <<<$QUERY)"

ARG_1=$(echo "$QUERY" | awk -F"$IDLM" 'NR==1 { print $1 }')
ARG_2=$(echo "$QUERY" | awk -F"$IDLM" 'NR==1 { print $2 }')
ARG_3=$(echo "$QUERY" | awk -F"$IDLM" 'NR==1 { print $3 }')

COLLECTION="default"
COLLECTION_DIRECTORY=~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/snippets/default

SNIPPET=$ARG_3
DONT_AUTO_EXPAND=false
UID_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
NAME=$ARG_1
KEYWORD=$ARG_2

JSON_STRING=$(jq -n \
    --arg sn "$SNIPPET" \
    --arg ae "$DONT_AUTO_EXPAND" \
    --arg id "$UID_STRING" \
    --arg nm "$NAME" \
    --arg kw "$KEYWORD" \
    '{ 
        alfredsnippet: {
            snippet: $sn,
            dontautoexpand: $ae,
            uid: $id,
            name: $nm,
            keyword: $kw
        }
    }')

echo $JSON_STRING >>"$COLLECTION_DIRECTORY/$NAME [$UID_STRING].json"
