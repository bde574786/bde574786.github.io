---
title: "Telegram RCE"
description: "오타로 인한 RCE 취약점"
author: bde574786
date: 2024-10-29 03:49:00 +0900
categories: [최근 보안 이슈]
tags: [Recent Issue, RCE]
image: assets/posts/security-issue/2024-10-29/img-001.png
---


올해 4월, X(트위터)에 Windows용 텔레그램에서 **RCE 취약점**이 발견되었다는 영상이 게시되었다. 해당 영상은 Windows용 텔레그램 채팅 창에서 동영상을 클릭했을 때, 계산기가 실행되는 모습을 담고 있었다. 

이 영상이 화제가 되어 사용자들 사이에서 우려가 커지자 텔레그램 측은 이에 대해 **그런 취약점이 존재한다는 것을 확인할 수 없다**고 답변하며 영상이 조작되었거나 거짓일 가능성이 높다고 반박했다.
![image.png](assets/posts/security-issue/2024-10-29/img-002.png)

<br>
## **PoC**

논란이 일어난 다음 날, XSS 해킹 포럼에 해당 취약점의 PoC가 공개되었다. 

이 PoC는 텔레그램 **소스 코드 상의 오타**로 인해 .pyzw 파일을 전송할 때 보안 경고 창을 우회할 수 있는 취약점을 이용하였다. .pyzw 파일의 **MIME 타입**을 **video/mp4**로 설정하여, 수신자가 동영상 파일로 착각하도록 위장할 수 있었고 피해자가 의심없이 파일을 클릭할 경우, 실제로는 동영상 대신 **Python 코드가 실행**되었던 것이다.

페이로드는 아래와 같다.

```python
__import__("subprocess").call(["cmd.exe"])
```

<br>
자세한 PoC는 [여기에서](https://www.youtube.com/watch?v=6JY3uaLSflk&t=319s) 찾아볼 수 있다.

<br>
## **Exploit Requirements**

- 4.16.6 이전의 Windows용 Telegram 앱
- Python이 설치되어 있어야 함
- 사용자가 .pyzw 파일을 클릭해야 함

<br>
## **Action taken by Telegram**

텔레그램은 위험한 파일 확장자 목록을 확인하는 코드의 오타를 수정하였다. 오픈 소스이므로 GitHub 페이지에서 커밋을 확인할 수 있다.
![image.png](assets/posts/security-issue/2024-10-29/img-003.png)

또한, 추가적인 보안 조치로 사용자가 pyzw 파일을 받을 때마다 파일 이름 끝에 “**.untrusted”** 확장자가 추가되어 사용자에게 전송되도록 하였다.  이로 인해 파일이 Python에서 자동으로 실행되지 않도록 방지 할 수 있었으며 사용자가 파일을 열 때 어느 프로그램을 사용할지 확인하는 절차가 추가되어 의도치 않은 코드 실행을 막을 수 있었다. 

<br>
## **Reference**

[https://medium.com/@0xrave/how-a-simple-typo-in-telegrams-code-unleashed-remote-code-execution-fdc5156994e6](https://medium.com/@0xrave/how-a-simple-typo-in-telegrams-code-unleashed-remote-code-execution-fdc5156994e6)

[https://github.com/telegramdesktop/tdesktop/commit/11b57ff7d3b61684daf03b350d90e5f8d68c24b1](https://github.com/telegramdesktop/tdesktop/commit/11b57ff7d3b61684daf03b350d90e5f8d68c24b1)