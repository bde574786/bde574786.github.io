---
title: "PIXHELL Attack"
description: "新해킹수법 '픽스헬 공격' 등장"
author: bde574786
date: 2024-11-02 06:24:00 +0900
categories: [최근 보안 이슈]
tags: [Recent Issue, PIXHELL Attack]
image: assets/posts/security-issue/2024-11-02/img-001.png
---


## **What is PIXHELL Attack?**

최근 소리를 이용해 데이터를 훔치는 방법이 확산되고 있으며, 키보드 소리를 통해 입력 데이터를 추측하는 방식이 그 예라고 볼 수 있다.

이와 함께 새롭게 발표된 **픽스헬(PIXHELL) 공격**은 액정 모니터에서 그림을 그릴 때 발생하는 소음을 통해 데이터를 전송하는 기법이다. 픽스헬 공격은 전기 제품이 작동하면서 발생하는 고음의 코일 소리, 커패시터 노이즈, 또는 진동 등을 이용하여 모니터에서 나오는 미세한 소리를 통해 기밀 정보를 유출한다.

이 공격 방식에서는 악성코드가 모니터의 픽셀 패턴을 변조하여 0~22kHz 주파수의 노이즈를 생성하고, 이 음파에 인코딩된 신호를 스마트폰 등에서 수신하여 데이터를 탈취할 수 있다. 소리는 사람이 거의 들을 수 없으며, 낮은 밝기에서도 신호 전송이 가능하여 은밀하게 이루어질 수 있다.

이 기술은 이스라엘 **네게브 벤구리온** 대학에서 개발되었으며, 테스트 결과 최대 2미터 거리에서 20bps의 속도로 데이터를 유출할 수 있는 것으로 확인되었다.

<br>
## **How can we respond?**

- 비가시성 워터마크 적용
    - SaForus의 비가시성 워터마크 기술을 사용하여 콘텐츠의 시청각적 방해 없이 저작권을 보호할 수 있다.
    - 고유한 식별 정보를 포함해 유출자를 추적할 수 있으며, 콘텐츠가 편집되더라도 워터마크가 유지되어 저작권 증명이 가능하다.
    - API를 제공하여 이미지, 동영상, 오디오, 문서 등 다양한 콘텐츠를 안전하게 보호할 수 있다.
- 물리적 보안 강화
    - 비밀번호 등 민감한 데이터 유출을 방지하기 위해 보안 구역 내 마이크 장비 반입을 제한한다.
    - 배경 소음을 사용하여 픽스헬과 같은 소리 기반 공격을 방해할 수 있다.

<br>
## **Reference**

[https://www.markany.com/securitynews/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=122905824&t=board](https://www.markany.com/securitynews/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=122905824&t=board)
[https://www.digitaltoday.co.kr/news/articleView.html?idxno=533712](https://www.digitaltoday.co.kr/news/articleView.html?idxno=533712)