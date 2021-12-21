# 이력서 평가 시스템

`Ruby on Rails` 로 개발된 이력서 평가 시스템입니다.
실시간 제공이 가능한 서버에 업로드 한 뒤 평가에 사용하시면 편리하게 서류 평가가 가능합니다.


## Install
- `Ruby`, `Ruby on Rails`를 설치한 뒤 실행합니다.

```
git clone https://github.com/YMGYM/Tobigs_resume_scoring_system.git
cd Tobigs_resume_scoring_system

bundle install
yarn install --check-files
```

## 준비
데이터베이스를 마이그레이션하고 파일을 준비합니다.
```
rails db:migrate
```

## 서버 시작
개발용 서버를 실행합니다.
```
rails server
```

## 데이터베이스 업데이트
- 지원서를 ./resume 폴더에 `resumes.csv` 파일로 삽입후 실행
- 지원서 작성 시 Column명을 수정 ex: `"name", "city", "univ", "major", "gender", "military", "entryYear", "leftSem", "birth", "phone", "email", "python", "skills", "dataLecture", "activity", "question1", "question2", "question3", "question4", "question5", "interviewTime"
- 아래 메소드는 ./lib/tasks/resume.rake 에서 편집이 가능합니다.

```
지원서 삽입
rake resume:insert_resume

```

## 회원가입 기능 차단
`config/routes.rb` 파일의 2번째 줄에서 주석 설정

## 1차 2차 평가 전환
- `app/controllers/resume_controller.rb` 수정

## 주의사항
- rails 6를 기준으로 개발하였습니다. (2021년 5월) 이후 버전에서 호환성을 보장하지 않습니다.