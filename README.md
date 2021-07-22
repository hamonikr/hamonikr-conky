![hamonikr-jin](https://img.shields.io/badge/hamonikr-jin-violet)

# hamonikr-conky

하모니카에서 제공하는 바탕화면의 모니터링 도구 Conky 설정을 돕는 도구.

 * HamoniKR-ME (>= 1.4), Ubuntu (>= 18.04), LinuxMint(>=19) 지원
 * 한글 인터페이스 지원
 * upstream : https://github.com/zcot/conky-manager2
 * binary : https://launchpad.net/~afelinczak/+archive/ubuntu/ppa?field.series_filter=focal
 
![conky](docs/img-1.png)
![conky](docs/img-2.png)
![conky](docs/img-3.png)
![conky](docs/img-4.png)

# Install

## HamoniKR 사용자의 경우
터미널을 열고(Ctrl+Alt+T) 아래 명령어를 입력하세요.

```
sudo apt update
sudo apt install -y hamonikr-conky
```

## Ubuntu, LinuxMint 등 다른 배포판 사용자의 경우
터미널을 열고(Ctrl+Alt+T) 아래 명령어를 입력하세요.

```
curl -sL https://pkg.hamonikr.org/add-hamonikr.apt | sudo -E bash -
sudo apt install -y hamonikr-conky
```

#  새 테마를 추가하고 패키지할 때
1) 소스코드 중 아래 압축파일을 풀면 테마가 저장되는 .conky 폴더가 있습니다.
`usr/share/conky-manager/themepacks/default-themes-2.1.cmtp.7z`

2) .conky 폴더안에 추가하기 원하는 테마를 넣고 다시 압축을 합니다. (7z)

3) 같은 폴더에 `default-themes-x.x.cmtp.7z` 형식으로 이름을 수정합니다.

4) .conky 폴더와 이전에 있던 default-themes-2.1.cmtp.7z 파일은 삭제합니다.

5) debian 패키지로 빌드하고 배포합니다.

# Usage
 * 프로그램 > `conky 설정도구` : 바탕화면의 Conky 테마를 설정하는 프로그램
 * 프로그램 > `conky 온/오프` : Conky 사용을 온/오프 하는 프로그램

 # 이슈 또는 버그
 사용 중 문제를 발견하시면 root@hamonikr.org 또는 https://groups.google.com/forum/m/#!forum/hamonikr 에서 알려주세요.
