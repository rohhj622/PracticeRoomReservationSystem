# PracticeRoomReservationSystem

> 연습실 예약과 관리를 위한 웹 사이트입니다.
#eclipse #jsp  #mysql8.0.17 #apacheTomcat9.0.24 

## 주요 기능 (사용자별)

### 사용자 기능
- 자신의 악기만 해당.
- 연습실 예약. 
- 자신의 예약 내역 열람 및 취소. (ex-홍길동/드럼)
- 관리자가 작성한 공지사항 확인.

### 관리자 기능 
- 모든 악기 해당.
- 연습실 내역 열람 및 취소. (ex- 드럼, 기타, 피아노, ...)
- 연속적인 시간 한번에 예약.
- 공지사항을 작성,수정,삭제,열람. 
- 연습실 예약에 대한 통계 (요일별, 악기별-시간별, 누적 페널티 순위).

### 선생님 기능
- 자신의 악기만 해당.
- 예약 내역 열람 및 취소. (ex-드럼)
- 연속적인 시간 한번에 예약.
- 공지사항 열람.


## 페이지 구성

### /WebContent/page

- 사용자
  + user01 : 사용자 예약
  + user02 : 사용자 내역
  + board : 공지사항

- 관리자
  + admin00 : 관리자 예약
  + admin01 : 관리자 내역
  + admin02 : 관리자 통계
  + board : 공지사항

- 선생님
  + teacher01 : 선생님 예약
  + teacher02 : 선생님 내역
  + board : 공지사항


