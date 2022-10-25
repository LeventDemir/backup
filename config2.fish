function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	set -g __fish_prompt_char '☢️'
      case '*'
	set -g __fish_prompt_char '☢ '
  # ☠ λ ☢ ☣ ☭ 卍 ☯ ☹ ☺ ☻ 🤖 ☠️ ☢️ ☣️ 🍺 🐷 ▶ ⟹ ⟶ ☪ ✇ ⚡ ★ ⊗ ➠ ✔ ⚠️ 🔥 💀 ♻ 🏋️  💩 🚽 🥊 ⚔️ ➡ ➜ ⟼
    end
  end

  # Setup colors
  set -l red (set_color red)
  set -l blue (set_color 34E2E2)
  set -l yellow (set_color yellow)
  set -g green (set_color 50FA7B)
  set -l cyan (set_color 00AFFF)
  set -l red (set_color red)
  set -l white (set_color white)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color 50FA7B
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true
  
  # Line 1
  echo -n $red'╭─('$green$USER$yellow'@'$blue$__fish_prompt_hostname$red')'$red'─'$red'('$yellow(prompt_pwd)$red')'
  __fish_git_prompt "$red-($cyan""git://%s$red)"
  echo
  # Line 2
  echo -n $red'╰─╼ '$yellow$__fish_prompt_char
end


set fish_greeting
set fish_prompt_pwd_dir_length 100
set fish_color_command green
