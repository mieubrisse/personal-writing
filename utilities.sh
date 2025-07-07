# Opens in Vim a post inside the given blog post repo
# Expects the first argument to be the post repo
# You'll likely want to add an alias for this in your .bashrc
find_post() {
    if [ -z "${#}" ]; then
        echo "Usage: jump_post /your/blog/post/repo" >&2
        return 1
    fi
    blog_repo="${1}"
    if ! [ -d "${blog_repo}" ]; then
        echo "Error: given blog post repo '${blog_repo}' isn't a directory" >&2
        return 1
    fi
    
    # Use associative arrays to store our data to get O(1) lookup times
    declare -A seen_dirs
    declare -A branch_mapping
    declare -a entries

    # Get main branch post directories first (they take precedence)
    while IFS= read -r file; do
        dir=$(dirname "$file")
        if [ -z "${seen_dirs[$dir]:-}" ]; then
            entries+=("$dir")
            branch_mapping["$dir"]="main"
            seen_dirs["$dir"]=1
        fi
    done < <(git -C "$blog_repo" ls-tree -r --name-only main | grep '/post\.md$')

    # Get all branches at once and process them
    branches=($(git -C "$blog_repo" branch --format='%(refname:short)' --no-merged main))
    
    # Process all branches using git show instead of ls-tree
    for branch in "${branches[@]}"; do
        while IFS= read -r file; do
            dir=$(dirname "$file")
            if [[ -z "${seen_dirs[$dir]:-}" ]]; then
                entries+=("$dir")
                branch_mapping["$dir"]="$branch"
                seen_dirs["$dir"]=1
            fi
        done < <(git -C "$blog_repo" show --name-only --pretty=format: "refs/heads/$branch" | grep '/post\.md$')
    done

    # Launch fzf
    selection=$(printf '%s\n' "${entries[@]}" | fzf)
    
    [ -z "$selection" ] && return

    # Look up which branch to use for this directory
    branch="${branch_mapping[$selection]}"
    
    if [ -z "$branch" ]; then
        echo "Error: There was no branch mapping for selection: ${selection}" >&2
        return 1
    fi

    if ! git -C "$blog_repo" switch "$branch" >/dev/null; then
        echo "Error: Couldn't change repo to branch: ${branch}" >&2
        return 1
    fi

    cd "$blog_repo/$selection" && vim post.md
}

# Quick helper to summon up a new post inside this repo
# Expects the first argument to be the post repo, and the second argument to be the name of the post branch
# You'll likely want to add an alias for this in your .bashrc
function new_post() {
    if [ "${#}" -eq 0 ]; then
        echo "Usage: jump_post /your/blog/post/repo post-directory-name" >&2
        return 1
    fi

    blog_repo="${1}"
    if ! [ -d "${blog_repo}" ]; then
        echo "Error: given blog post repo '${blog_repo}' isn't a directory" >&2
        return 1
    fi

    post_name="${2}"
    if [[ "${post_anme}" == *" "* ]]; then
        echo "New post name cannot have spaces" >&2
        return 1
    fi


    cd "${code_dirpath}/personal-writing"
    if [ -d "${post_name}" ]; then
        echo "Directory '${post_name}' already exists" >&2
        return 1
    fi
    if git rev-parse --verify "${post_name}" &> /dev/null; then
        echo "Git branch '${post_name}' already exists" >&2
        return 1
    fi

    cp -R TEMPLATE "${post_name}"
    gco -b "${post_name}"
    cd "${post_name}"
    vim "post.md"
}

