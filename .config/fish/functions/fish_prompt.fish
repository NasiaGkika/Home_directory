# name: Minimalist
# author: ridiculous_fish

function fish_prompt
    set_color $fish_color_cwd
    echo -n (basename $PWD)
    echo -n (set_color --bold)(set_color red)' >'(set_color yellow)'>'(set_color green)'> '
    set_color normal
end
