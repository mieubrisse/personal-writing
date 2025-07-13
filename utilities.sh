# Quick helper to summon up a new post inside this repo
# Expects the first argument to be the post repo, and the second argument to be the name of the post branch
# You'll likely want to add an alias for this in your .bashrc
new_post() {
    if [ "${#}" -eq 0 ]; then
        echo "Usage: jump_post /your/blog/post/repo post" >&2
        return 1
    fi

    blog_repo="${1}"; shift
    if ! [ -d "${blog_repo}" ]; then
        echo "Error: given blog post repo '${blog_repo}' isn't a directory" >&2
        return 1
    fi

    post_name_spaces="${*}"
    post_name="${post_name_spaces// /-}"
    if [ -z "${post_name}" ]; then
        echo "Error: post name cannot be empty" >&2
        return 1
    fi
    if [[ "${post_name}" == *" "* ]]; then
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

    git checkout main || return 1
    cp -R TEMPLATE "${post_name}" || return 1
    git checkout -b "${post_name}" || return 1
    cd "${post_name}" || return 1
    git add . || return 1
    git commit -m "Initial commit for ${post_name}" || return 1
    vim "post.md" || return 1
}

