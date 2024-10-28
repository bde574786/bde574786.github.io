---
title: "Midnight Blizzard’s Attack on Microsoft"
description: "러시아와 관련된 해커 그룹 Midnight Blizzard가 2023년 11월부터 Microsoft를 공격했으며, 이는 2024년 1월에 공개되었다."
author: bde574786
date: 2024-10-26 16:38:00 +0900
categories: [최근 보안 이슈]
tags: [Recent Issue, Password Spray Attack]
image: assets/posts/security-issue/2024-10-26/image-001.png
---

## **Who is Midnight Blizzard?**

**Midnight Blizzard**는 **러시아 정부와 연관된 해커 그룹**으로, 주로 **APT29, Cozy Bear, Nobelium**이라는 이름으로 알려져 있다. 이 중 Cozy Bear라는 이름은 2016년 미국 대선을 앞두고 **미국 민주당 전국위원회(DNC)를 해킹**한 사건으로 유명해지게 되었다. 이 사건은 러시아의 미국 정치 개입 시도로 평가되어, Cozy Bear가 러시아 외부 정보기관인 SVR과의 연관이 있다는 분석도 제기되었다.

이 그룹은 정치적, 외교적 정보 수집을 목표로 하며, 특히 고위급 외교 및 정보기관 네트워크를 공격 대상으로 삼아왔다. **2020년 SolarWinds 해킹** 사건에서도 중요한 역할을 했으며, 이 공격으로 인해 미국 국방부, 재무부, 국토안보부 등 수천 개의 기관이 영향을 받게 되었다. SolarWinds 해킹은 IT 관리 소프트웨어 업데이트에 **악성코드를 삽입**하는 방식으로 이루어져, 해커들이 수개월 동안 여러 기업과 정부 기관의 내부 시스템에 접근할 수 있었다.

## **Microsoft의 대응과 보안 조치**

2023년 11월, Midnight Blizzard는 Microsoft를 대상으로 **비밀번호 스프레이 공격(Password Spray Attack)**을 시도하였다. Microsoft는 2024년 1월에 이를 공식적으로 공개하였고 2024년 들어 공격 빈도를 최대 10배 가까이 늘렸다고 밝혔다. 이 공격으로 일부 Microsoft 기업 이메일 계정이 표적이 되었고 고객과 주고 받은 이메일들이 유출된 것이 확인되었다. 이후 Micosoft는 지속적으로 고객들에게 관련 이메일이 노출되었음을 알렸으며 별도로 구축한 보안 시스템을 통해 이메일 내용을 검토할 수 있도록 지원하였다.

## **Password Spray Attack vs Brute Force**

이 공격은 **무차별 대입 공격(Brute Force)**의 한 유형으로 분류되지만 특정 계정에 대해 모든 비밀번호를 대입하는 것이 아니라 여러 계정에 대해 흔한 비밀번호를 사용하여 로그인을 시도한다. 특정 계정에 대해 많은 비밀번호 조합을 시도하지 않기 때문에 계정 잠금을 회피할 수 있으며, **다단계 인증(MFA)**가 없는 계정이 하나라도 걸리게 된다면 접근 권한을 얻을 수 있다. 공격 대상이 다수의 계정을 보유한 대형 조직일 때 효과적이다.

Microsoft는 공식 문서를 통해 Midnight Blizzard는 공격 대상이 일관되고 목표가 거의 변하지 않기 때문에 새로운 정황이 계속 나타날 가능성이 있으며 추가적인 비인가 접근이 발생할 수 있다고 알리고 있다. 즉, 이번 공격에 대한 조사 결과가 점차 밝혀질 수 있지만, 아직 모든 정보가 파악되지 않았고 공격자가 다시 접근할 가능성도 남아 있다는 경고로 보여진다.

## Reference

[https://www.microsoft.com/ko-kr/security/security-insider/midnight-blizzard](https://www.microsoft.com/ko-kr/security/security-insider/midnight-blizzard)
[https://www.forbes.com/sites/jamesfarrell/2024/03/08/who-is-midnight-blizzard-russian-linked-group-has-repeatedly-targeted-microsoft-company-says/](https://www.forbes.com/sites/jamesfarrell/2024/03/08/who-is-midnight-blizzard-russian-linked-group-has-repeatedly-targeted-microsoft-company-says/)