# AI-native Workflow

AI와 함께 요구사항을 정리하고, 개발하고, 만든 결과를 이해하기 위한 가벼운 작업 지침이다. 특정 언어·프레임워크를 전제하지 않는다.

## 구성

- `AGENTS.md`: 평소 개발할 때의 약속과 대화 방식.
- `SPEC_GUIDE.md`: 복잡한 작업의 `SPEC.md`를 정리할 때만 참고하는 안내.
- `.agents/skills/project-walkthrough/SKILL.md`: 전체 프로젝트를 이해하거나 복습하고 싶을 때만 사용하는 Skill.

## 기존 프로젝트에 적용하기

**Clone만으로는 다른 프로젝트의 지침이 자동 적용되지 않는다.** 기존 프로젝트 최상위 폴더에 필요한 파일을 복사해야 한다.

Linux / bash: 실제 프로젝트 폴더에서 아래 명령을 한 번 실행한다.

```bash
git clone --depth 1 https://github.com/Parkgod98/MyHarness.git /tmp/MyHarness && bash /tmp/MyHarness/install.sh "$PWD"
```

Windows / PowerShell: 실제 프로젝트 폴더에서 아래 명령을 실행한다.

```powershell
git clone --depth 1 https://github.com/Parkgod98/MyHarness.git "$env:TEMP\MyHarness"
& "$env:TEMP\MyHarness\install.ps1" -Target (Get-Location).Path
```

같은 이름의 파일이 이미 있으면 자동 덮어쓰지 않고 건너뛴다. 메시지를 확인해 필요한 규칙만 수동으로 합친다. 이후 **해당 프로젝트에서 새 Codex 세션**을 열어 지침과 Skill 인식을 확인한다.

## 사용하기

1. 목표와 자료를 Codex에 설명하고 필요하면 함께 작업 순서와 완료 기준을 정한다.
2. 평소처럼 구현한다. 간단한 수정에서는 새 SPEC이나 추가 문서를 강제하지 않는다.
3. 프로젝트 전반을 공부하려면 `$project-walkthrough`를 호출하거나 "project-walkthrough Skill로 지금 프로젝트를 정리해 줘"라고 요청한다.
4. 생성된 `PROJECT_WALKTHROUGH.md`를 읽고 이해되지 않는 부분을 질문하거나, 실제 코드 기반 확인 질문에 답해 본다.

## 주의

- 설치 스크립트는 지침·Skill 파일만 **복사**한다. 기존 코드, 설정, README, `.git`을 수정하거나 덮어쓰지 않는다.
- 설치 스크립트는 과제를 구현하거나 테스트를 실행하지 않는다. 프로젝트에 맞는 작업은 Codex가 수행한다.
- 배포·시험·회사 환경의 규칙과 권한을 먼저 확인하고 허용된 범위에서만 사용한다.
