# Jsp_Prj

## **--선정동기--**

  + 다 같이 하는 온라인 게임을 하다보면 동 티어대라도 실력차이가 나는 사람이 있기마련이다.
  + 이를보고 회피하려고 사람들은 전적검색 사이트를 검색해보고 한다.
  + 하지만 유저별로 멘탈이 좋지 않아서 조금만 틀어지면 게임을 하지않는 경우가 생기곤 한다.
  + 사람들이 해당 유저에 대하여 평가를 달아서 이 사람이 어떤 사람인지 판단 할 수 있도록 하기 위해 선정하였다.
---
## **--벤치마킹 사이트--**

  + op.gg라는 롤 전적 검색 사이트이다.
  + 개인전적 검색, 멀티전적 검색 등을 할 수 있다.
---
## **--컨셉트--**

  + op.gg에서 전적이 검색된 유저 정보를 크롤링하여 가져온다.
  + 하단에 전적내역 대신 게시판을 만들어 유저 별로 평가를 만들 생각이다.
---
## **--메인화면 구성--**

  + <img src = "https://user-images.githubusercontent.com/32236195/130584090-9838ff01-d8a6-4168-8125-7718c47dd617.JPG">
---
## **--전적검색 화면 구성--**

  + https://user-images.githubusercontent.com/32236195/130584092-47f23480-f20f-4e21-a1c2-0af01724f123.JPG
---
## **--게시판 화면 구성--**

  + https://user-images.githubusercontent.com/32236195/130584093-f5fce481-6fc6-45bb-926d-71a4029cdaea.JPG
---
## **--UI 네비게이션--**

  + https://user-images.githubusercontent.com/32236195/130584095-f89d6120-8737-4148-9b84-f56990e73865.JPG
---
## **--DB Table 구성도--**

  + https://user-images.githubusercontent.com/32236195/130584096-42d78722-c6f1-44e8-b539-e87d9a53e986.JPG
  + https://user-images.githubusercontent.com/32236195/130584102-11264458-f56c-4f1e-a55f-fd1eeaec4050.JPG
  + https://user-images.githubusercontent.com/32236195/130584104-53976b55-3c71-438e-8934-8833d35fb453.JPG
---
## **--결과 스크린 샷--**
  + ### **--메인--**
  + https://user-images.githubusercontent.com/32236195/130584106-351e97fa-1343-4f6a-a049-6eea58d71d97.JPG
  + ### **--게시판--**
  + https://user-images.githubusercontent.com/32236195/130584109-7ca0d621-7851-4590-8014-93876f6ed835.JPG
  + ### **--전적 검색--**
  + https://user-images.githubusercontent.com/32236195/130584112-882ec03d-098e-4eda-817c-54cf351f0682.JPG
  + ### **--글 열람--**
  + https://user-images.githubusercontent.com/32236195/130584115-8acd0d42-8ec8-4f1e-bce8-4a7aef664c75.JPG
  + ### **--글 쓰기--**
  + https://user-images.githubusercontent.com/32236195/130584117-0b1d0633-af52-401b-9ac6-7a704c61475f.JPG
  + ### **--글 수정--**
  + https://user-images.githubusercontent.com/32236195/130584120-1c6f2a15-a40a-40c4-80c1-34577e517d44.JPG
  + ### **--회원가입--**
  + https://user-images.githubusercontent.com/32236195/130584121-0f0121bf-6b9a-4bf0-afde-219353e60a14.JPG
---
## **--기능 사용--**
  + MySql WorkBench를 이용한 DB 구현
  + MVC 1을 사용한 회원가입, 로그인 게시판, 유저별 댓글 구현
  + 크롤링을 이용한 op.gg 사이트의 해당 유저의 기본 정보를 가져오는 기능 구현
  + 게시판 글 열람 시 마다 조회수 증가
  + 크롤링으로 가져온 유저 정보마다 댓글을 달 수 있도록 구현
  + 로그인 세션 구현
#league of legends(lol) Record Search site op.gg crawling
#and lol by user comment web site
