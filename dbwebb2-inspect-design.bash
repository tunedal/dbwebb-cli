#---------------------------- INSPECT DESIGN START --------------------------
#
# Test general
#
function design()
{
    TREE_OPTIONS="-d"
    inspectIntro
    
    local meDir=
    
    meDir="$( echo "$KMOM" | sed 's/kmom0/me/g' | sed 's/kmom/me/g' )"
    METARGET="me/$KMOM/$meDir"
}



#
#
#
function designRepo()
{
    local repo="$1"
    local target="me/$repo"
    
    headerForTest "-- Repo $repo" "-- ${DBW_WWW}$DBW_COURSE/$target" 
    openFilesInEditor "$target"
    printUrl "" "$target"  
    isGitRepo "$target"
    hasGitTagBetween "$EXEC_DIR/$repo" "$2" "$3"
    if [ ! -z "$4" ]; then
        hasGitTagBetween "$EXEC_DIR/$repo" "$4" "$5"
    fi
    
    #inspectCommand "" "$EXEC_DIR/$repo" "git tag"
    #cd "$EXEC_DIR/$repo" && git status
    #validateKmom "$repo"
}



#
# Test kmom
#
function designkmom01()
{
    designRepo "anax-flat" "1.0.0" "1.1.0" "1.1.0" "1.2.0"
    designRepo "anax-flat/theme" "1.0.0" "1.1.0" "1.1.0" "1.2.0"
}



#
# Test kmom
#
function designkmom02()
{
    echo "TBD"
}



#
# Test kmom
#
function designkmom03()
{
    echo "TBD"
}



#
# Test kmom
#
function designkmom04()
{
    echo "TBD"
}



#
# Test kmom
#
function designkmom05()
{
    echo "TBD"
}



#
# Test kmom
#
function designkmom06()
{
    echo "TBD"
}



#
# Test kmom
#
function designkmom10()
{
    echo "TBD"
}



#---------------------------- INSPECT DESIGN END ----------------------------