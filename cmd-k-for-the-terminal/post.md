---
title: "Cmd-K For The Terminal"
subtitle: "Use one shortcut to cd to any directory, Vim to any file, or view any PDF or image"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./image.png)

I've long been annoyed by how much time it takes to navigate the filesystem in the terminal. So much time wasted typing fragments of filenames and pressing TAB just to call `cd` or `vim`.

I wanted Cmd-K like Notion, Slack, and Discord have - quick access to anything in my file system.

Yesterday I figured out how to build it: fuzzy access to any directory, text file, or PDF/image, with a preview of what the file would be before accessing. 

Here's it in action:

![](TODO GIF showing it in action)

Huge thanks to Junegunn Choi for [fzf](https://github.com/junegunn/fzf), which was the missing piece I needed.

BLUF
====
If you don't care how I did it and just want it for yourself, here are the instructions.

**NOTE:** I'm on Macbook using iTerm. You'll need to adapt these instructions if you're on something different.

First, install the following dependencies:

```
brew install fd fzf tiv
```

Next, add the following to your `.bash_profile` or `.bashrc`:

```bash
function cmdk() {
    # Set up the prompt for reading files
    read -r -d '' _cmdk_fzf_default_cmd <<-'EOF'
fd_base_cmd="fd --follow --hidden --color=always"

echo '/'      # Shortcut for getting to root
echo 'HOME'   # Shortcut for getting to HOME
echo '..'
echo '/tmp/'

if [ "${PWD}" = "${HOME}" ]; then
    # NOTE: We do this last in case it takes a long time
    # Skip the Applications and Library in the home directory; they contain a bunch of garbage
    ${fd_base_cmd} --strip-cwd-prefix -E 'Applications' -E 'Library' .
else
    # Skip the Applications and Library in the home directory; they contain a bunch of garbage
    ${fd_base_cmd} -E 'Applications' -E 'Library' . "${HOME}"

    # NOTE: We do this last in case it takes a long time
    ${fd_base_cmd} --strip-cwd-prefix .
fi
EOF


    read -r -d '' _cmdk_fzf_preview_cmd <<-'EOF'
ls_base_cmd='ls --color=always'

case {} in
    HOME)
        ${ls_base_cmd} "${HOME}"
        ;;
    *)
        case $(file -b --mime-type {} ) in
            text/*)
                bat --color=always {}
                ;;
            inode/directory)
                ${ls_base_cmd} {}
                ;;
            image/*)
                tiv -w 100 -h 100 {}
                ;;
        esac
        ;;
esac
EOF


    # EXPLANATION:
    # -m allows multiple selections
    # --ansi tells fzf to parse the ANSI color codes that we're generating with fd
    # --scheme=path optimizes the fzf algorithm for path-based items
    IFS=$'\n' output_paths=( $(FZF_DEFAULT_COMMAND="${_cmdk_fzf_default_cmd}" fzf -m --scheme=path --ansi --preview="${_cmdk_fzf_preview_cmd}") )
    if [ "${?}" -ne 0 ]; then
        return
    fi

    dirs=()
    text_files=()
    open_targets=()
    for output in "${output_paths[@]}"; do
        case "${output}" in
            HOME)
                dirs+=("${HOME}")
                ;;
            *)
                case $(file -b --mime-type "${output}") in
                    text/*)
                        text_files+=("${output}")
                        ;;
                    inode/directory)
                        dirs+=("${output}")
                        ;;
                    application/pdf)
                        open_targets+=("${output}")
                        ;;
                    image/*)
                        open_targets+=("${output}")
                        ;;
                esac
                ;;
        esac
    done

    num_dirs="${#dirs[@]}"
    if [ "${num_dirs}" -eq 1 ]; then
        cd "${dirs[0]}"
    elif [ "${num_dirs}" -gt 1 ]; then
        echo "Error: Cannot cd to more than one directory at a time" >&2
        return 1
    fi

    for open_target_filepath in "${open_targets[@]}"; do
        open "${open_target_filepath}"
    done

    if [ "${#text_files[@]}" -gt 0 ]; then
        vim -O "${text_files[@]}"
    fi
}
```

Then, reload your shell and enter `cmdk` to ensure it worked.

Finally, set up a hotkey with your terminal to make Cmd-K enter the string `cmdk\n`. In iTerm this is done by:

`Settings > Profile > Keys > Key Mappings > + > Send Text`

Then enter `cmdk\n` as the text to send and bind it to the Cmd-K hotkey.

Enjoy 🚀

The Details
===========
I started getting fed up with terminal filesystem navigation back in 2014. "There _has_ to be a faster way to get between directories," I felt.





Conclusion
----------
TODO Challenge/questions to the reader

### Further Reading

TODO link to previous writing

_TODO SUBSCRIBE BUTTON CTA (use ChatgGPT)_

TODO SUBSCRIBE BUTTON

<!------------------ IG POST DESCRIPTION --------------------->
<!--
TODO

👉 Read the full article (link in bio)
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
