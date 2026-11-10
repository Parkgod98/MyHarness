# 해결 방법 탐색 카탈로그

이 문서는 문제에 적합한 알고리즘과 접근법을 떠올리기 위한 참고 지도다.

목록은 완전하지 않으며, 탐색 범위를 제한하지 않는다. 실제 문제에 적합하다면 목록에 없는 전문 기법이나 최신 연구도 검토한다.

각 방법의 상세 이론보다 적용 조건과 후보 발굴에 집중한다.

## 1. 조합 최적화와 자원 배분

| 문제 특징 | 주요 후보 |
| --- | --- |
| 사람, 작업, 자원 간 일대일 배정 | Bipartite Matching, Hungarian Algorithm |
| 비용을 고려한 자원 흐름과 배정 | Min-Cost Flow, Network Flow |
| 차량 경로, 방문 순서, 시간창 | TSP, VRP, VRPTW, OR-Tools Routing |
| 작업 순서, 장비 점유, 납기 | Job Shop, CP-SAT, MILP |
| 복잡한 논리 제약, 반복 금지 | Constraint Programming, CP-SAT |
| 최소 자원으로 대상 전체를 충족 | Set Cover, Set Partitioning |
| 한정된 예산, 용량 안에서 선택 | Knapsack, Bin Packing |
| 단계별 선택과 상태 전이 | Dynamic Programming, MDP |
| 경로와 연결 관계 최적화 | Shortest Path, Max Flow, Graph Algorithms |
| 빠른 초기 해 또는 단순 기준선 | Greedy, FIFO, EDD, SPT |
| 기존 해의 일부 변경으로 개선 | Local Search, 2-opt, 3-opt |
| 복잡한 조합 탐색 | Simulated Annealing, Tabu Search, Genetic Algorithm |
| 큰 문제의 부분 재최적화 | LNS, ALNS |
| 실행 가능한 해를 찾지 못함 | Constraint Diagnosis, IIS, Constraint Relaxation |

## 2. 다목적 최적화와 불확실성

| 문제 특징 | 주요 후보 |
| --- | --- |
| 여러 목표를 하나의 점수로 비교 | Weighted Sum, Goal Programming |
| 목표의 우선순위가 명확 | Lexicographic Optimization |
| 핵심 성능을 유지하며 다른 목표 개선 | ε-constraint |
| 서로 우열이 갈리는 대안 비교 | Pareto Optimization, NSGA-II |
| 가장 불리한 개인이나 집단 보호 | Max-Min Fairness, Leximin |
| 하위 집단이나 극단적 손실 관리 | Quantile Optimization, CVaR |
| 입력과 미래 조건에 불확실성 존재 | Robust Optimization, Stochastic Programming |
| 여러 가정에서 결과의 안정성 확인 | Monte Carlo, Scenario Analysis |
| 조건이나 가중치 변화의 영향 확인 | Sensitivity Analysis |
| 운영 중 조건이 변해 재계획 필요 | Rolling Horizon, Model Predictive Control |
| 비싼 실험을 적게 수행하며 최적화 | Bayesian Optimization, Design of Experiments |
| 순차적인 탐색과 보상 학습 | Multi-Armed Bandit, Contextual Bandit, Reinforcement Learning |

## 3. 통계, 예측과 원인 분석

| 문제 특징 | 주요 후보 |
| --- | --- |
| 정상 변동 범위에서 이상 감시 | SPC, Control Chart |
| 작은 변화가 지속적으로 누적 | CUSUM, EWMA |
| 데이터 특성이 바뀐 시점 발견 | Change Point Detection |
| 정답 라벨이 부족한 이상 탐지 | Isolation Forest, LOF, One-Class SVM |
| 표형 데이터의 분류와 회귀 | Logistic Regression, Random Forest, GBDT |
| 시간에 따른 수요나 값 예측 | ETS, ARIMA, 시계열 회귀 |
| 데이터의 군집이나 유사성 발견 | K-Means, DBSCAN, Hierarchical Clustering |
| 적은 표본과 예측 불확실성 | Gaussian Process, Bayesian Methods |
| 중요한 변수와 모델 판단 분석 | Feature Importance, SHAP |
| 조건 차이를 고려한 원인 후보 조사 | Stratification, Matching, Causal Graph |
| 개입 효과와 인과관계 추정 | Difference-in-Differences, Causal Inference |
| 예측 결과를 실제 선택에 활용 | Predict-then-Optimize |
| 제한된 비용으로 학습 표본 선택 | Active Learning, Uncertainty Sampling |
| 검사 대상의 다양성 확보 | Stratified Sampling, Diversity Sampling |

## 4. 시뮬레이션과 운영 의사결정

| 문제 특징 | 주요 후보 |
| --- | --- |
| 생산 흐름, 설비 대기, 이벤트 모사 | Discrete Event Simulation, SimPy |
| 처리량, 대기열, 병목 분석 | Queueing Theory, Bottleneck Analysis |
| 여러 정책을 동일 조건에서 비교 | Simulation Optimization |
| 불확실한 상황에서 위험 평가 | Monte Carlo, Stress Testing |
| 운영 정책을 변경해 가며 결정 | Rolling Horizon, Receding Horizon |
| 안전한 기준 정책과 개선 정책 결합 | Heuristic + Optimizer, Rule + ML |

## 5. 문서, 데이터와 소프트웨어 문제

| 문제 특징 | 주요 후보 |
| --- | --- |
| 명확한 규칙이나 상태 전이 검사 | Rule Engine, State Machine, Parser |
| 정확한 용어, 코드, 규격 검색 | BM25, Inverted Index |
| 의미가 유사한 정보 검색 | Vector Search, Embedding Retrieval |
| 검색 방식의 장점 결합 | Hybrid Retrieval, Reranking |
| 여러 문서의 관계와 근거 연결 | Knowledge Graph, Graph Traversal |
| 도구를 사용하는 여러 단계 업무 | Workflow, State Machine, Agent |
| 중복 실행과 부분 실패 대응 | Idempotency, Transaction, Retry Policy |
| 처리속도와 자원 병목 | Profiling, Caching, Batching, Vectorization |
| 대량 데이터 처리 | Streaming, Incremental Processing, Parallel Processing |
| 기존 코드의 결함과 회귀 검증 | Differential Testing, Property-Based Testing, Fuzzing |

## 6. 하이브리드 접근 힌트

다음 조합은 후보를 떠올리기 위한 예시이며 필수 구조가 아니다.

| 접근 | 결합 아이디어 |
| --- | --- |
| 초기 해 + 최적화 | Greedy → CP-SAT 또는 Local Search |
| 예측 + 의사결정 | ML → 제약 최적화 |
| 이상 탐지 + 원인 조사 | 통계적 탐지 → 조건별 비교 → 근거 확인 |
| 규칙 + AI | 결정적 규칙 검사 + 모호한 정보의 AI 해석 |
| 최적화 + 시뮬레이션 | 후보 정책 생성 → 시뮬레이션 평가 |
| 정적 계획 + 변화 대응 | 초기 계획 → Rolling Horizon |
| 탐색 + 검증 | 후보 생성 → 독립 검사 → 재탐색 |

실제 문제의 특성에 맞지 않으면 결합하지 않는다.

## 7. 개인화 추천과 순위 결정

| 문제 특징 | 주요 후보 |
| --- | --- |
| 사용자 특성이나 항목 속성 기반 추천 | Content-Based Filtering |
| 여러 사용자의 선호 이력 활용 | Collaborative Filtering, Matrix Factorization |
| 여러 후보의 추천 순위 결정 | Learning to Rank |

## 8. 그래프 탐색

| 문제 특징 | 주요 후보 |
| --- | --- |
| 그래프 탐색과 도달 가능성 | BFS, DFS |
| 가중치가 있는 최단 경로 | Dijkstra, A* |
| 작업 선후관계와 의존성 | Topological Sort |
| 집합 연결과 그룹 관리 | Union-Find |

## 9. 통계적 검증

| 문제 특징 | 주요 후보 |
| --- | --- |
| 성능 추정의 불확실성 확인 | Bootstrap, Confidence Interval |
| 일반적인 모델 검증 | Cross-Validation |
| 그룹과 시간에 따른 데이터 누수 방지 | GroupKFold, TimeSeriesSplit |
| 개선 차이에 대한 통계적 검토 | Permutation Test |

## 10. 선택할 때 기억할 기준

- 문제 구조에 더 특화된 알고리즘이 있는가?
- 주어진 데이터와 시간에서 구현 가능한가?
- 단순한 방법보다 개선될 이유가 명확한가?
- 반드시 지켜야 할 조건을 충족할 수 있는가?
- 결과를 독립적으로 검증할 수 있는가?
- 성능이 나쁠 때 사용할 현실적인 대안이 있는가?
- 방법을 결합하면 어떤 약점이 실제로 해결되는가?

최종 선택은 알고리즘의 유명세나 복잡성이 아니라 문제 적합성과 검증 결과를 기준으로 한다.
