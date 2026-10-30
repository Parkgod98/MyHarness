# AI-native Workflow

AI와 함께 개발하고, 만든 결과를 이해하기 위한 가벼운 작업 지침이다. 특정 언어나 프레임워크를 정해두지 않는다.

## 파일 구성

- `AGENTS.md`: 개발할 때 지킬 기본 원칙과 대화 방식
- `SPEC_GUIDE.md`: 복잡한 작업의 SPEC을 정리할 때 참고하는 안내
- `.agents/skills/project-walkthrough/SKILL.md`: 프로젝트 전체를 공부하고 싶을 때 사용하는 Skill

## 기존 프로젝트에 적용하기

**설치 프로그램은 필요 없다.** 실제 작업 폴더에서 공개 저장소를 내려받는다.

```bash
git clone https://github.com/Parkgod98/MyHarness.git
```

이제 `MyHarness/`에서 아래 3개를 **실제 작업 폴더의 최상위 위치로** 직접 옮긴다.

1. `AGENTS.md`
2. `SPEC_GUIDE.md`
3. `.agents/` 폴더 전체 (안에 `skills/project-walkthrough/SKILL.md`가 있다)

**`MyHarness/.git`과 `MyHarness/README.md`는 옮기지 않는다.** `.git`은 내려받은 저장소의 Git 관리 정보이고, 과제의 기존 `README.md`를 덮어쓸 필요도 없다. 필요한 세 항목을 옮겼다면 `MyHarness/` 폴더는 삭제해도 된다. `.git`만 먼저 삭제하고 필요한 파일을 옮겨도 결과는 같다.

과제 폴더에 같은 이름의 파일이나 Skill이 이미 있다면 덮어쓰지 말고 내용을 비교해 필요한 부분을 합친다.

### 적용된 모습

```text
work/
├── AGENTS.md
├── SPEC_GUIDE.md
├── .agents/
│   └── skills/
│       └── project-walkthrough/
│           └── SKILL.md
├── README.md            # 원래 과제 README
└── ...                  # 원래 과제 파일
```

파일을 옮긴 뒤 **실제 작업 폴더에서 새 Codex 세션을 열고** `AGENTS.md` 지침과 `project-walkthrough` Skill의 인식 여부를 확인한다. `git clone`만 했을 때 하위 `MyHarness/`의 지침이 상위 작업 폴더에 자동 적용되지는 않는다.

## 사용하기

1. Codex와 목표·자료·요구사항을 확인하고, 필요한 경우 개발 순서와 완료 기준을 합의한다.
2. 평소처럼 개발한다. 작은 변경에 SPEC이나 별도 문서를 강제하지 않는다.
3. 프로젝트 전체를 공부할 때 `$project-walkthrough`를 호출하거나 "project-walkthrough Skill로 프로젝트를 정리해 줘"라고 요청한다.
4. 만든 `PROJECT_WALKTHROUGH.md`를 읽고, 이해되지 않는 부분을 질문하거나 실제 코드 기준의 확인 질문에 답해 본다.

공개 도구 사용은 각 작업 환경의 규칙과 권한이 허용하는 범위에서 진행한다.
