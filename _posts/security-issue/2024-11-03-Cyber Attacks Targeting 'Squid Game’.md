---
title: "Cyber Attacks Targeting 'Squid Game’"
description: "'오징어 게임'을 미끼로 한 피싱과 악성코드"
author: bde574786
date: 2024-11-03 06:24:00 +0900
categories: [최근 보안 이슈]
tags: [Recent Issue, Trojan Horse]
image: assets/posts/security-issue/2024-11-03/img-001.png
---


‘**오징어 게임**’은 넷플릭스에서 제작한 한국 드라마로, 2021년 공개 이후 전 세계적으로 엄청난 파급력을 보여주었다. 이 드라마는 90개 이상의 국가에서 **넷플릭스 1위**를 기록했으며, 공개 후 약 한 달 만에 1억 1천만 가구가 시청하는 신기록을 세웠다. 또한, 넷플릭스 역사상 가장 많이 시청된 드라마로 자리매김하며 단기간에 글로벌 팬층을 형성했다.

그러나 '**오징어 게임**'을 보려는 시청 수요가 늘어나면서, 이를 노린 웹 사기 수법을 이용한 사이버 범죄도 발생했다.

러시아에 본사를 두고 있는 보안 기업 **Kaspersky**는 **오징어 게임**을 언급하는 수십개의 악성 파일이 웹에 퍼지는 것을 발견했으며, 그 중 대부분은 악성 프로그램을 설치하는 **트로이 목마(Trojan Horse)  다운로더**라고 밝혔다. 

<br>
## **How did it work?**

공격자는 오징어 게임 시리즈의 애니메이션 버전을 보여주면서 사용자가 의심하지 않도록 위장하였다. 동시에 **Trojan**을 실행시켜 사용자의 브라우저에서 데이터를 은밀하게 수집했고 공격자의 서버로 전송하면서 사용자의 정보가 외부로 유출될 수 있었다. 또한, **Trojan**은 시스템에 바로가기를 생성하여, 시스템이 시작될 때마다 자기 자신을 자동으로 실행하도록 설정했다. 이로 인해 사용자는 **Trojan**이 계속 작동하며 정보를 탈취하는 것을 알아차리기 어려웠다.

사이버 범죄자들은 타사 앱 스토어에 악성 오징어 게임 테마 앱을 배포하거나 가짜 오징어 게임 상품 판매 사이트를 만들어 추가 피해를 유도하였다. 이는 대중 문화를 악용한 최신 온라인 사기 방식의 일부로, 이전에도 영화 **블랙 위도우**나 **가수 카니예 웨스트의 앨범 Donda**와 같은 인기 콘텐츠가 비슷한 방식으로 악용된 바 있다.

<br>
## **Warning from Kaspersky**

**Kaspersky 코리아 대표 강하라 지사장**은 오징어 게임이 화제가 되면서 이를 악용한 피싱 페이지와 가짜 온라인 게임 사이트가 등장했다며, 이로 인해 피해자들이 개인 정보와 금전적 손해를 입고, 악성코드에 감염되는 경우가 많다고 경고했다. 이어 관련 콘텐츠를 스트리밍하거나 물품을 구매할 때는 반드시 웹사이트의 신뢰성을 확보하는 것이 중요하다고 강조했다.

<br>
## **Reference**

[https://news.nate.com/view/20211028n35533](https://news.nate.com/view/20211028n35533)
[https://m.boannews.com/html/detail.html?idx=101978&page=636&mkind=1&kind=1](https://m.boannews.com/html/detail.html?idx=101978&page=636&mkind=1&kind=1)
[https://www.scworld.com/brief/kaspersky-squid-game-themed-malware-proliferating](https://www.scworld.com/brief/kaspersky-squid-game-themed-malware-proliferating)