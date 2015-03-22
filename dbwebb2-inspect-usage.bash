function usage ()
{
    local txt=(
"Utility dbwebb-inspect for inspecting kmoms: http://dbwebb.se/dbwebb-inspect"
"Usage: dbwebb-inspect [courserepo] [kmom] [user]"
""
"Item:"
"  courserepo   path to a valid course repo."
"  kmom         a valid kmom."
"  user         a valid user."
""
"Options:"
"  --selfupdate       Update to latest version."
"  --help, -h         Print help."
"  --version, -v      Print version."
"  --archive path     Path where the archive is."
"  --baseurl url      Base URL for published version."
"  --publish-to path  Path where to publish."
"  --publish-url url  URL to whats published."
    )
    printf "%s\n" "${txt[@]}"
}



function version ()
{
    local txt=(
"dbwebb-inspect version $DBW_VERSION"
    )
    printf "%s\n" "${txt[@]}"
}



function badUsage ()
{
    local message="$1"
    local txt=(
"For an overview of the command, execute:"
"dbwebb-inspect --help"
    )
    
    if [ ! -z "$message" ]; then
        printf "$message\n"
    fi
    
    printf "%s\n" "${txt[@]}"
}
