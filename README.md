상대적이면서도 절대적인 개인취향이 반영된
어떤 개발자의 맥 환경
==================
[blog.doortts.com](http://blog.doortts.com)

혹은

https://repo.yona.io/doortts/blog/issues

<br/>
# 1. 기본 설정들 변경

## dock 에서 불필요한 아이콘들 제거
안 쓰는 앱들은 Dock에서 지우자 (앱이 지워지는 건 아니니까 don't worry)

	독에서 지울 앱 아이콘에 마우스 오른쪽 버튼 -> options 
	-> 독에 유지하기(keep in dock) 선택해제


## Function key를 일반키로 설정
구식 개발자라 단축키 하나가 아쉬운 상황인지라..  볼륨 키우고 백라이트 조절 등이 필요 할때는 fn 키랑 조합으로 사용하면 되니까 무방. 
	
	설정 -> 키보드 -> 키보드 : '모든 F1, F2 등의  키를 표준 기능 키로 사용' 선택

## 화면 닫을때 암호물어보기 
안 그러면 내 정보는 공공재 된다.. (아.. 어차피 이미 늦었나.)

	설정 -> 보안 및 개인정보 -> 일반(General)

## 한영 키보드 전환을 빠르게

	설정 -> 키보드 -> 키보드단축키 - 좌측: 입력소스 
	-> '이전 입력소스 선택' 과 '입력 메뉴에서 다음 소스 선택' 단축키를 서로 교환함

## key hold시에 repeat이 동작하게 만들기(터미널 화면에서)

	defaults write -g ApplePressAndHoldEnabled -bool false 


## spotlight 단축키 변경
개인의 취향. 개발자 입장에서는 각종 기존 단축키들과 충돌나는게 아까워서.

	키보드 -> 키보드 단축키 -> spotlight 를 F12로 변경(show dashboard 는 uncheck)


## 잠금화면 메시지 설정
잠금화면에서 자신의 이름이나 이메일 등이 표시되도록. 분실시 찾아줄 수 있게
	
	설정 -> 보안 및 개인정보 -> 일반 -> 잠금 메시지 설정


## MAC에서 한글 마지막 글자 잘림현상 해결

	설정 -> 키보드(Keyborad) -> 글자(text) -> '자동으로 영문철자 수정' 해제



## 컴퓨터 이름(Computer name) 바꾸기

설정 -> 공유 -> 컴퓨터 이름

# 2.자주 쓰는 도구들 설치

## appstore 에서 기존 구매 앱들 설치
이미 산거라도 쓸데 없는건 설치하지 않기!

- PopClip: text 선택시 이런저런 사용가능한 action 이 popup으로 뜸
- Dropover: 임시 스택 of everything. Yoink 보다 나음.
- Amphetamine: 화면이 꺼지지 않게 유지, Caffeine 보다 나음
- Ms Todo: 할일 관리
- Monosnap: 캡처도구

## BTT (Better Touch Tools)
[http://blog.boastr.net/](http://blog.boastr.net/)

	three finger swipe up/down -> command + up/down 으로 설정

## sublime text 3
[http://www.sublimetext.com/3](http://www.sublimetext.com/2)

TextMate를 오픈소스화 시킬 정도의 파급력을 가진 최고의 에디팅 툴

## chrome 설치
워낙 extention들이 좋은게 많아서.. 

추천 extention
- CrxMouse : Mac 크롬을 지원하는 마우스 제스처
- TweetDeck : twitter와 facebook을 동시에 지원
- Vimium : h,j,k,l
- Neater Bookmarks : 내 bookmark 간단 검색

[https://www.google.com/intl/en/chrome/browser/](https://www.google.com/intl/en/chrome/browser/)

## brew 설치 
Mac용 Command installer. 앞으로는 커맨드로 왠만한 도구들을 설치

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## XCode Command Line Tools 설치가 필요하다면(gcc 컴파일러 들어 있음)
XCode를 설치해도 되지만 XCode 안쓰는데도 2기가 짜리를 설치할 필요가 없으니 gcc/git 등의 command tool만 설치!

  [https://developer.apple.com/downloads](https://developer.apple.com/downloads/index.action#)

### brew를 통해 git 설치

	brew git install

참고: [http://mxcl.github.io/homebrew/](http://mxcl.github.io/homebrew/)

## Karabiner 설치
why? 오른쪽 command를 한영전환으로 변경. 키 반복입력을 빠르게 만들기.

다운로드:	 [https://pqrs.org/osx/karabiner/](https://pqrs.org/osx/karabiner/)

	Command_R to Command_R (+when you type Command_r only, toggle IM) -> In Mac apps
	for Korean 항목에서 키보드 선택(101/103키)

	Key repeat에서 wait 타임을 83 -> 30으로 변경
	
	Use PC Style Home/End <- keyboard 를 따로 쓸 경우

- vim 이나 IdeaVim 에서 esc 누를 때 영문으로 IME 변경하는 Rule (Mac + Karabiner)
https://gist.github.com/doortts/3eb501469a9308ed8500f699b5aaed22

##  ₩ 표시대신 ` 가 표시하도록 변경, 그리고 option + char 가 이상한 값이 안찍히게 만들기
```
~/Library/KeyBindings/DefaultKeyBinding.dict
```
을 열어서 아래 내용 추가
```
{
    "₩" = ("insertText:", "`");
"~a" = (); "~b" = (); "~c" = (); "~d" = (); "~e" = (); "~f" = (); "~g" = (); "~h" = (); "~i" = (); "~j" = (); "~k" = (); "~l" = (); "~m" = (); "~n" = (); "~o" = (); "~p" = (); "~q" = (); "~r" = (); "~s" = (); "~t" = (); "~u" = (); "~v" = (); "~w" = (); "~x" = (); "~y" = (); "~z" = ();
}
```

## Slow Quit App
맥에서 키보드 딜레이 문제로 의도치 않게 앱이 종료되는걸 방지해 줌

https://github.com/dteoh/SlowQuitApps

## Scroll Reverser
터치패드는 natural scroll 로 동작하고 mouse 는 기본(기존) 스크롤 방식으로 동작하게 만들어 주는 앱

https://pilotmoon.com/scrollreverser/

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
