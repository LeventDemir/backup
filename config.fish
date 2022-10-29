set red (set_color CC0000)
set blue (set_color 34E2E2)
set yellow (set_color C4A000)
set green (set_color 50FA7B)
set cyan (set_color 00AFFF)
set white (set_color white)

set __fish_git_prompt_color 50FA7B
set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_showuntrackedfiles true
set __fish_git_prompt_showstashstate true
set __fish_git_prompt_show_informative_status true

set fish_greeting
set fish_color_command 50FA7B
set fish_prompt_pwd_dir_length 100


function fish_prompt
  echo -n $red'╭─('$green$USER$yellow':'$blue$hostname$red')─('$yellow(prompt_pwd)$red')' 
  __fish_git_prompt "$red─($cyan""git://%s$red)"
  echo
  echo -n $red'╰─╼' $yellow'☢  '
  # ☠ λ ☢ ☣ ☭ 卍 ☯ ☹ ☺ ☻ 🤖 ☠️ ☢️ ☣️ 🍺 🐷 ▶ ⟹ ⟶ ☪ ✇ ⚡ ★ ⊗ ➠ ✔ ⚠️ 🔥 💀 ♻ 🏋️  💩 🚽 🥊 ⚔️ ➡ ➜ ⟼
end
