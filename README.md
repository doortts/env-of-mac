상대적이면서도 절대적인 개인취향이 반영된
어떤 개발자의 맥 환경
<br/>
# 1. 기본 설정들 변경

## key hold시에 repeat이 동작하게 만들기(터미널 화면에서)

	defaults write -g ApplePressAndHoldEnabled -bool false 

## Function key를 일반키로 설정
구식 개발자라 단축키 하나가 아쉬운 상황인지라..  볼륨 키우고 백라이트 조절 등이 필요 할때는 fn 키랑 조합으로 사용하면 되니까 무방. 
	
	설정 -> 키보드 -> 키보드 단축키 -> 기능키'F1, F2 등의  키를 표준 기능 키로 사용' 선택

## Caps Lock 을 ctrl key 로 변경
	
	설정 -> 키보드 -> 키보드 단축키 -> 보조키 -> Caps Lock -> Ctrl

## Karabiner-Elements 설치 및 한영 전환키를 우측 command로 변경

	Karabiner-Elements: 오른쪽 command -> F18

	설정 -> 키보드 -> 키보드 단축키 -> 입력 소스 -> 다음 소스 F18, 이전 소스 ctrl + F18


## 화면 높이를 더 많이 사용할 수 있게 Dock을 오른쪽으로 변경


## 잠금화면 메시지 설정
잠금화면에서 자신의 이름이나 이메일 등이 표시되도록. 분실시 찾아줄 수 있게
	
	화면 잠금 -> 잠겨 있을 때 메시지 보기 -> 전화 번호나 이메일


## 컴퓨터 이름(Computer name) 바꾸기

	설정 -> 일반 -> 공유 -> 로컬 호스트 이름

## cmd+tab 누를 때 모든 모니터(디스플레이)에서 App Switcher 표시하기
```
defaults write com.apple.Dock appswitcher-all-displays -bool true; killall Dock
```

## 배터리 % 보이게 하기
```
System Settings > Control Center, then scroll down to Battery and turn on "Show Percentage". 
```

# 2.자주 쓰는 도구들 설치

## appstore 에서 기존 구매 앱들 설치
이미 산거라도 쓸데 없는건 설치하지 않기!

- PopClip: text 선택시 이런저런 사용가능한 action 이 popup으로 뜸
- Dropover: 임시 스택 of everything. Yoink 보다 나음.
- Amphetamine: 화면이 꺼지지 않게 유지, Caffeine 보다 나음
- Ms Todo: 할일 관리

## 스크린샷 프로그램
- shottr, https://shottr.cc/

## BTT (Better Touch Tools)
[http://blog.boastr.net/](http://blog.boastr.net/)

	three finger swipe up/down -> command + up/down 으로 설정

## sublime text
[http://www.sublimetext.com](http://www.sublimetext.com)

## chrome 설치
워낙 extention들이 좋은게 많아서.. 


## brew 설치 
Mac용 Command installer. 앞으로는 커맨드로 왠만한 도구들을 설치

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## XCode Command Line Tools 설치가 필요하다면(gcc 컴파일러 들어 있음)
XCode를 설치해도 되지만 XCode 안쓰는데도 2기가 짜리를 설치할 필요가 없으니 gcc/git 등의 command tool만 설치!

  [https://developer.apple.com/downloads](https://developer.apple.com/downloads/index.action#)

### brew를 통해 git 설치

	brew install git

참고: [http://mxcl.github.io/homebrew/](http://mxcl.github.io/homebrew/)


- vim 이나 IdeaVim 에서 esc 누를 때 영문으로 IME 변경하는 Rule (Mac + Karabiner)
https://gist.github.com/doortts/3eb501469a9308ed8500f699b5aaed22

##  ₩ 표시대신 ` 가 표시하도록 변경, 그리고 option + char 가 이상한 값이 안찍히게 만들기
```
mkdir ~/Library/KeyBindings
vi ~/Library/KeyBindings/DefaultKeyBinding.dict
```
을 열어서 아래 내용 추가
```
{
    "₩" = ("insertText:", "`");
"~a" = (); "~b" = (); "~c" = (); "~d" = (); "~e" = (); "~f" = (); "~g" = (); "~h" = (); "~i" = (); "~j" = (); "~k" = (); "~l" = (); "~m" = (); "~n" = (); "~o" = (); "~p" = (); "~q" = (); "~r" = (); "~s" = (); "~t" = (); "~u" = (); "~v" = (); "~w" = (); "~x" = (); "~y" = (); "~z" = ();
}
```
그리고, 시스템 재시작

## Slow Quit App
~~맥에서 키보드 딜레이 문제로 의도치 않게 앱이 종료되는걸 방지해 줌~~
세월이 지나서 이젠 더이상 최신 OS를 지원하지 않음

https://github.com/dteoh/SlowQuitApps

## Scroll Reverser
터치패드는 natural scroll 로 동작하고 mouse 는 기본(기존) 스크롤 방식으로 동작하게 만들어 주는 앱

https://pilotmoon.com/scrollreverser/

**BTT(Better Touch Tools)를 설치하면 설정에 이미 있음. 단순히 마우스만 스크롤을 변경하기 위해서 추가 다른 앱을 설치할 필요가 없음.**

## Alfred 
App Launcher

[http://www.alfredapp.com/](http://www.alfredapp.com/)

대체제품: Raycast https://www.raycast.com/

## Bartender (유료)
메뉴바 아이콘이 길어지는 걸 해결
http://www.macbartender.com

## MS TODO
todo 중에서 간단하면서 잘 동작함 (wunderlist 후속제품)

https://to-do.microsoft.com/tasks/

## iterm 설치
기본 터미널보다 우수함. 

[http://www.iterm2.com/](http://www.iterm2.com/)

대체제: http://tmux.sourceforge.net/


## appcleaner 
설치된 앱을 깨끗하게 지우자

[freemacsoft.net/appcleaner](http://www.freemacsoft.net/appcleaner/)

## Developer Color Picker 
개발자용 컬러 피커. 색을 다루는 개발자라면!

[http://panic.com/~wade/picker/](http://panic.com/~wade/picker/)

## Obsidian
적당한 markdown 노트 앱

https://obsidian.md/

## ~~go2shell 설치 후 설정 (mac appstore)~~ 
최신 OS에서 동작 안하는 것으로 보임

finder에서 현재 폴더로 터미널 띄우기 
http://zipzapmac.com/go2shell

## Sensible side buttons
https://sensible-side-buttons.archagon.net
맥에서 마우스 추가 사이드 버튼이 상황에 맞게 잘 동작하도록 만들어주는 앱

# for Commandline Shell

## autojump
Rank 기반 디렉터리 이동

https://github.com/joelthelion/autojump

### powerlevel10k
https://github.com/romkatv/powerlevel10k

## oh my zsh 설치

   curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

### zsh command syntax highlighting 만들기 (Fish shell like)
	
[https://github.com/zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### zsh-autosuggestions (Fish shell lik)

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### zsh autocomplete

https://github.com/marlonrichert/zsh-autocomplete 

### powerlevel10k
https://github.com/romkatv/powerlevel10k

## vim related
https://github.com/bling/vim-airline

## git diff highlight

curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight > /usr/local/bin/diff-highlight && chmod +x /usr/local/bin/diff-highlight

## git config 
```
alias.co=checkout
alias.edit=!f() { git diff --name-status --diff-filter=U | cut -f2 ; }; vi `f`
alias.add-unmerged=!f() { git diff --name-status --diff-filter=U | cut -f2 ; }; git add `f`

pager.log=diff-highlight | less -F -X
pager.show=diff-highlight | less -F -X
pager.diff=diff-highlight | less -F -X

rerere.enabled=true

pull.rebase=true
credential.helper=cache --timeout=604800

```


## .vimrc
```
syntax on

set laststatus=2
set t_Co=256
hi Comment  guifg=#80a0ff ctermfg=darkgray

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nnoremap 0 ^
vnoremap 0 ^
autocmd Filetype gitcommit setlocal spell textwidth=72

set smartcase
set paste

" Disable beep and flash with an autocmd
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
```
