// 계정
air/port

//계정 생성
conn system/manager
create user air identified by port
grant connect, resource to air
grant create view to air


drop table

select * from dept;
select * from emp;
select * from dept where deptno='test111';
delete from dept where deptname='test';
delete from dept;
1.비서실
insert into dept values('se','비서실',1,null,null,'비서업무',001);

1.홍보실
3.
· 홍보기획팀 
· 언론홍보팀
· 의전팀
 insert into dept values('pr','홍보실',1,null,null,'홍보업무',001);
 insert into dept values('pr001','홍보기획팀',3,'pr','032)741-5539','홍보 브로셔/리플렛 등 기획 및 제작,각종 홍보 영상물 기획 및 제작',001);
 insert into dept values('pr002','언론홍보팀',3,'pr','032)741-5555','보도자료 작성/배포 총괄, 취재지원 등 언론대응,해명자료 배포 및 정정보도 청구',001);
 insert into dept values('pr003','의전팀',3,'pr','032)741-5148','대규모 국제행사 의전 협의 및 조정,귀빈시설 개선 및 4단계 귀빈시설 배치 검토',001);

1.사회가치추진실
3.
· 경영혁신팀 
· 일자리창출팀 
· 사회공헌팀 
 insert into dept values('sv','사회가치추진실',1,null,null,'사회가치추진업무',001);
 insert into dept values('sv001','경영혁신팀',3,'sv','032)741-5107','조직문화 프로그램 개발 및 운영,업무프로세스 혁신(PI) 및 불필요한 업무 줄이기 계획수립 및 실행',001);
 insert into dept values('sv002','일자리창출팀',3,'sv','032)741-5401','일자리창출 및 공정여행 플랫폼 구축,일자리창출 단년도/중장기 목표 수립 및 실적 관리',001);
 insert into dept values('sv003','사회공헌팀',3,'sv','032)741-5484','지역사회공헌 관련 업무,윤리경영 업무,인권경영 업무',001);

1.감사실
3.
· 행정감사팀 
· 기술감사팀 
· 청렴감찰팀 
 insert into dept values('ca','감사실',1,null,null,'감사업무',001);
 insert into dept values('ca001','행정감사팀',3,'ca','032)741-5283','행정분야 감사 및 조사,감사위원회 및 감사자문위원회 운영',001);
 insert into dept values('ca002','기술감사팀',3,'ca','032)741-5368','감사 사례집 작성 및 발간,건설 및 시설개선공사 계약자 모니터링',001);
 insert into dept values('ca003','청렴감찰팀',3,'ca','032)741-5260','국토교통부 공직복무관리 관련 업무,부패방지시책평가 관련 업무,간부직원/외부 청렴도 측정',001);


1.기획조정실
3.
· 기획관리팀 
· 경영전략팀 

· 예산팀 
 insert into dept values('pc','기획조정실',1,null,null,'기획조정업무',001);
 insert into dept values('pc001','기획관리팀',3,'pc','032)741-5546','국회,(지방)정부 등 대외기관 연락·대응 및 정책협력 총괄,주주총회/임원추천위원회 운영',001);
 insert into dept values('pc002','경영전략팀',3,'pc','032)741-5281','감중장기 조직/인력 운영방안 수립,조직구조 설계 및 직제개편',001);
 insert into dept values('pc003','예산팀',3,'pc','032)741-5413','예산(안) 및 예산운영계획 수립,경영계획(예산편성지침) 수립 및 예산심의위원회 운영',001);

1.인재개발원
3.
· 인재교육팀 
· 글로벌교육팀 
· 항공교육팀 
insert into dept values('ia','인재개발원',1,null,null,'인재개발업무',001);
insert into dept values('ia001','인재교육팀',3,'ia','032)741-5227','인재개발원 시설 개선 및 용역 관리,신입직원 교육 계획 수립 및 시행',001);
insert into dept values('ia002','글로벌교육팀',3,'ia','032)741-5281','글로벌 교육과정 개발운영(ACI, IATA) 및 성과분석,중장기 글로벌교육·직원 글로벌 역량강화 계획 수립/운영',001);
insert into dept values('ia003','항공교육팀',3,'ia','032)741-5413','직무 공통 및 전문과정 교육계획 수립 및 시행,직업능력개발훈련 인증 및 모의비행훈련센터 관리',001);


1.통합운영센터
3.
· 운영총괄팀 
· 공항운영1팀 
· 공항운영2팀 
 insert into dept values('io','통합운영센터',1,null,null,'통합운영업무',001);
insert into dept values('io001','운영총괄팀',3,'io','032)741-5331','통합운영센터(T1,T2) 상황실 운영 개선,통합정보시스템(IIS) 운영 및 개선',001);
insert into dept values('io002','공항운영1팀',3,'io','032)741-5158','담당 분야별 공항운영 상황 모니터링/보고계통 유지,공항운영 관련 실적 데이터 수집 및 관리',001);
insert into dept values('io003','공항운영2팀',3,'io','032)741-5509','담당 분야별 공항운영 상황 모니터링/보고계통 유지,공항운영 관련 실적 데이터 수집 및 관리',001);


1.공항안전실
3.
· 안전기획팀 
· 재난관리팀 
· 안전보건팀 
insert into dept values('ac','공항안전실',1,null,null,'공항안전업무',001);
insert into dept values('ac001','안전기획팀',3,'ac','032)741-5545','대외기관 소방검사 수검,소방안전관리계획 수립 및 시행',001);
insert into dept values('ac002','재난관리팀',3,'ac','032)741-5127','초고층특별법 관련 총괄재난관리자 업무수행,계절별 교통안전대책 점검 및 수검',001);
insert into dept values('ac003','안전보건팀',3,'ac','032)741-5292','인천공항 산업안전관리계획 수립 및 합동점검 실시,건강관리실 운영 및 건강증진 검진계획 수립·시행',001);

1.경영혁신본부

2.인사노무처
3.
· 노무후생팀 
· 인사팀 -> 사원등록,조회
· 성과관리팀 
 insert into dept values('ai','경영혁신본부',1,null,null,'경영혁신업무',001);
 insert into dept values('aihr','인사노무처',2,'ai',null,'인사노무업무',001);
insert into dept values('aihr001','노무후생팀',3,'aihr','032)741-5098','신용협동조합 운영/관리,노사관계 전략 수립,급여 및 퇴직금 관리/집행',001);
insert into dept values('aihr002','인사팀',3,'aihr','032)741-5278','관리자 보직인사계획 수립,인사평가, 승진 시행',001);
insert into dept values('aihr003','성과관리팀',3,'aihr','032)741-5524','행정분야 감사 및 조사,감사실 성과/역량평가제도 운영',001);


2.상생경영처 
3.
· 정규직전환팀 
· 자회사협력팀 
· 협력사총괄팀 
 insert into dept values('aicp','상생경영처',2,'ai',null,'상생경영업무',001);
insert into dept values('aicp001','정규직전환팀',3,'aicp','032)741-5521','정규직 전환 방안 수립,정규직 전환 관련 법령 규정 제도 정비',001);
insert into dept values('aicp002','자회사협력팀',3,'aicp','032)741-5553','공사-자회사 업무 위수탁방안 수립 및 계약실행 총괄,자회사 임원임면, 경영계약, 임금, 직급체계 관리',001);
insert into dept values('aicp003','협력사총괄팀',3,'aicp','032)741-5386','아웃소싱 상생프로그램 운영,협력사 성과공유제안제도 운영',001);


2.재무처
3.
· 재무팀 
· 회계팀 
· 수입총괄팀 
· 재산관리팀 
 insert into dept values('aifg','재무처',2,'ai',null,'재무업무',001);
insert into dept values('aifg001','재무팀',3,'aifg','032)741-5641','연간/월별 자금계획 수립,재무리스크관리,위원회 운영',001);
insert into dept values('aifg002','회계팀',3,'aifg','032)741-5551','회계결산 및 시스템운영,내부회계관리제도 운영,세무조사 수검준비 및 대응',001);
insert into dept values('aifg003','수입총괄팀',3,'aifg','032)741-5153','수입관리업무 개선 및 시행,비항공수익 산정/청구 및 개선업무',001);
insert into dept values('aifg004','재산관리팀',3,'aifg','032)741-5129','통합공간관리시스템 운영,임대자산 임대료 및 재산가액 감정평가 업무',001);



1.여객서비스본부

2.여객서비스처
3.
· 운영기획팀 
· CS관리팀 
· 여객서비스팀 (여기서 인원배치)
· 여객시설팀 
 insert into dept values('pa','여객서비스본부',1,null,null,'여객서비스업무',001);
 insert into dept values('paps','여객서비스처',2,'pa',null,'여객서비스업무',001);
insert into dept values('paps001','운영기획팀',3,'paps','032)741-5544','4단계 항공사 배치,4단계 여객분야 운영계획 수립 및 설계 반영',001);
insert into dept values('paps002','CS관리팀',3,'paps','032)741-5541','CS 중장기 전략 수립 및 시행,ASQ 평가 총괄 및 인천공항 서비스개선위원회 운영',001);
insert into dept values('paps003','여객서비스팀',3,'paps','032)741-5153','여객편의시설 개선 및 운영,공용여객서비스 용역 관리 및 종합 개선계획 수립,T2 터미널 내 행사/부가시설물 승인 및 운영물품 관리',001);
insert into dept values('paps004','여객시설팀',3,'paps','032)741-5357','여객터미널 시설개선 설계/공사관리',001);


2.교통서비스처
3.
· 교통계획팀 
· 교통서비스1팀 
· 교통서비스2팀 
· 교통시설팀 
 insert into dept values('pats','교통서비스처',2,'pa',null,'교통서비스업무',001);
insert into dept values('pats001','교통계획팀',3,'pats','032)741-5398','T1매표소, T2버스터미널 운영관리,노선버스 및 시내버스 운행 관리',001);
insert into dept values('pats002','교통서비스1팀',3,'pats','032)741-5081','무료순환버스 운영,주차장 운영계획 수립',001);
insert into dept values('pats003','교통서비스2팀',3,'pats','032)741-5415','T2 주차장 및 커브사이드 운영,T2 주차수익 관리',001);
insert into dept values('pats004','교통시설팀',3,'pats','032)741-5336','T1·T2 L/S 도로 표지,마킹,교통안전시설 등 유지관리 및 개선,교통안전시설 등 유지관리 및 개선',001);


2.상업시설처
3.
· 상업기획팀 
· 면세사업팀 
· 식음서비스팀 
 insert into dept values('pacd','상업시설처',2,'pa',null,'상업시설업무',001);
insert into dept values('pacd001','상업기획팀',3,'pacd','032)741-5390','입국장면세점 도입 제도개선,상업시설 통합매출정보서비스 관리 및 고도화',001);
insert into dept values('pacd002','면세사업팀',3,'pacd','032)741-5091','',001);
insert into dept values('pacd003','식음서비스팀',3,'pacd','032)741-5492','',001);


1.운항서비스본부

2.운항지원처
3.
· 운항계획팀 
· 계류장운영팀 
· 계류장관제팀 
· 구조소방팀 
 insert into dept values('as','운항서비스본부',1,null,null,'운항서비스업무',001);
 insert into dept values('asao','운항지원처',2,'as',null,'운항지원업무',001);
insert into dept values('asao001','운항계획팀',3,'asao','032)741-5649','A-CDM 운영 및 비정상 상황대비 CELL운영,SMGCS PLAN 및 위기대응 업무매뉴얼 관리',001);
insert into dept values('asao002','계류장운영팀',3,'asao','032)741-5400','주기장 및 수하물 수취대 배정/운영,반기/일일 운항스케줄 관리',001);
insert into dept values('asao003','계류장관제팀',3,'asao','032)741-5945','항공기 진출입 승인/안내,항공기 지상이동 지시/정보제공',001);
insert into dept values('asao004','구조소방팀',3,'asao','032)741-5106','공항소방대운영용역 관리,항공기 사고 등 구조소방 훈련 수립 및 시행',001);

2.운항시설처
3.
· 운항안전팀 
· 항공등화팀 
· 기반시설팀 
 insert into dept values('asaf','운항시설처',2,'as',null,'운항시설업무',001);
insert into dept values('asaf001','운항안전팀',3,'asaf','032)741-5643','항공기 이착륙시설 안전점검,이동지역 안전관리,사고 예방',001);
insert into dept values('asaf002','항공등화팀',3,'asaf','032)741-5210','항공등화시스템 운영/유지관리,반기/일일 운항스케줄 관리',001);
insert into dept values('asaf003','기반시설팀',3,'asaf','032)741-5236','운항기반시설 유지관리용역 관리,Airside 제설작업계획 수립 및 시행',001);

2.수하물운영처
3.
· 수하물시설팀 
· 수하물운영팀 
 insert into dept values('asbs','수하물운영처',2,'as',null,'수하물운영업무',001);
insert into dept values('asbs001','수하물시설팀',3,'asbs','032)741-5314','BHS 시설 개선 및 교체 업무(제어, 소터),위탁수하물 검색장비 유지관리용역 업무',001);
insert into dept values('asbs002','수하물운영팀',3,'asbs','032)741-5520','BHS 감시, 제어, 운영',001);



1.시설본부

2.터미널시설처 
3.
· 터미널건축팀 
· 시설환경팀 
· T1리뉴얼팀 
insert into dept values('fo','시설본부',1,null,null,'시설업무',001);
insert into dept values('fotf','터미널시설처',2,'fo',null,'터미널시설업무',001);
insert into dept values('fotf001','터미널건축팀',3,'fotf','032)741-5356','T1 시설개선 공사관리 업무',001);
insert into dept values('fotf002','시설환경팀',3,'fotf','032)741-5403','여객터미널 환경미화용역 감독',001);
insert into dept values('fotf003','T1리뉴얼팀',3,'fotf','032)741-5383','T1 시설재배치 및 개선사업 설계관리',001);

공항시설처 
· 토목시설팀 
· 조경팀 
· 공항건축팀 
insert into dept values('foaf','공항시설처',2,'fo',null,'공항시설업무',001);
insert into dept values('foaf001','토목시설팀',3,'foaf','032)741-5113','토목시설 하자보수 계획 수립 및 하자보수 관리',001);
insert into dept values('foaf002','조경팀',3,'foaf','032)741-5123','조경시설 유지관리(실외 조경시설)',001);
insert into dept values('foaf003','공항건축팀',3,'foaf','032)741-5085','부대건물 신축/증개축 업무(화물터미널E 신축공사)',001);

=========

1.건설본부

2.건설기획처
3.
· 공항계획팀 
· 사업조정팀 
· 건설기술팀 
insert into dept values('cd','건설본부',1,null,null,'건설업무',001);
insert into dept values('cdcp','건설기획처',2,'cd',null,'건설기획업무',001);
insert into dept values('cdcp001','공항계획팀',3,'cdcp','032)741-5310','기본계획 수립 및 변경절차 운영,세부시설 조성계획 수립/관리 및 건설운영협의체 운영',001);
insert into dept values('cdcp002','사업조정팀',3,'cdcp','032)741-5392','4단계 안전·품질·환경 종합계획 수립,4단계 건설 종합공정계획 수립 및 시행',001);
insert into dept values('cdcp003','건설기술팀',3,'cdcp','032)741-5259','4단계 건설사업 설계 VE 수행 및 관리,공항건설 기술자료 DB화 및 시스템 입력 관리',001);

2.토목처
3.
· 토목계획팀 
· AS토목팀 
· LS토목팀 
insert into dept values('cdce','토목처',2,'cd',null,'토목업무',001);
insert into dept values('cdce001','토목계획팀',3,'cdce','032)741-5135','4단계 제영향평가용역 관리,기반시설공사 설계 및 공사 관리',001);
insert into dept values('cdce002','AS토목팀',3,'cdce','032)741-5251','4단계 Airside시설 기본 및 실시설계용역 관리',001);
insert into dept values('cdce003','LS토목팀',3,'cdce','032)741-5114','4단계 Landside시설 공사 관리',001);


1.미래사업추진실

2.허브화전략처
3.
· 허브화기획팀 
· 국제협력팀 
· 항공마케팅팀 
insert into dept values('fb','미래사업추진실',1,null,null,'미래사업추진업무',001);
insert into dept values('fbhu','허브화전략처',2,'fb',null,'허브화전략업무',001);
insert into dept values('fbhu001','허브화기획팀',3,'fbhu','032)741-5247','인천공항 슬롯 분석 및 조정,공항시설사용료 체계 개선',001);
insert into dept values('fbhu002','국제협력팀',3,'fbhu','032)741-5419','세계항공컨퍼런스 기획 및 실행,리딩공항 협력 프로젝트',001);
insert into dept values('fbhu003','항공마케팅팀',3,'fbhu','032)741-5221','해외지역마켓팅,항공사 인센티브 제도',001);

2.복합도시사업처 
3.
· 사업개발팀 
· 항공시설개발팀 
· 물류개발팀 
insert into dept values('fbac','복합도시사업처',2,'fb',null,'복합도시사업업무',001);
insert into dept values('fbac001','사업개발팀',3,'fbac','032)741-5592','복합리조트(IIR 및 P-City) 설계 및 건설관리',001);
insert into dept values('fbac002','항공시설개발팀',3,'fbac','032)741-5277','신규 항공시설 개발 및 공항지원시설(정비고, 기내식, GSE 등) 계약 관리',001);
insert into dept values('fbac003','물류개발팀',3,'fbac','032)741-5122','자유무역지역 기본계획 수립 및 지정',001);

1.항공보안실

2.항공보안처 
3.
· 보안계획팀 
· 보안검색팀 
· 테러대응팀 
insert into dept values('ab','항공보안실',1,null,null,'항공보안업무',001);
insert into dept values('abas','항공보안처',2,'ab',null,'항공보안업무',001);
insert into dept values('abas001','보안계획팀',3,'abas','032)741-5279','항공보안 중장기 계획 수립 및 이행사항 관리',001);
insert into dept values('abas002','보안검색팀',3,'abas','032)741-5642','보안검색 운영현황, 실적분석 및 계획,보안검색 용역 관리',001);
insert into dept values('abas003','테러대응팀',3,'abas','032)741-5921','테러 위협분석/대응계획수립,폭발물 처리 초동조치',001);


2.경비보안처 
3.
· 보안경비팀 
· 보안장비팀 
· 출입증관리센터 
insert into dept values('abss','경비보안처',2,'ab',null,'경비보안업무',001);
insert into dept values('abss001','보안경비팀',3,'abss','032)741-5387','T2 ASC(경비 현장감독 업무 포함) 총괄,보안경비용역 현장 감독업무',001);
insert into dept values('abss002','보안장비팀',3,'abss','032)741-5369','인천공항 보안시설 유지관리용역 관리,CCTV고도화 사업 시공 및 감리 사업',001);
insert into dept values('abss003','출입증관리센터',3,'abss','032)741-5103','출입증신청시스템 관리 및 개선,출입증 발급관련 기획 및 구매관리 업무',001);

1.스마트추진단

2.스마트공항처 
3.
· 스마트공항팀 
· 스마트서비스팀 
· 운항통신팀 
insert into dept values('sa','스마트추진단',1,null,null,'스마트추진업무',001);
insert into dept values('sasa','스마트공항처',2,'sa',null,'스마트공항업무',001);
insert into dept values('sasa001','스마트공항팀',3,'sasa','032)741-5552','첨단 미디어, IoT, AI, 빅데이터 등을 접목한 공항 서비스 구현',001);
insert into dept values('sasa002','스마트서비스팀',3,'sasa','032)741-5566','공용여객서비스 용역 관리 및 종합 개선계획 수립',001);
insert into dept values('sasa003','운항통신팀',3,'sasa','032)741-5340','망관리센터 운영관리/고도화,네트워크 시설개선,관리',001);


2.스마트정보처 
3.
· 경영정보팀 (erp 관리자)
· 사무정보팀 
· 통합정보팀 
· 사이버보안센터 
insert into dept values('sasi','스마트정보처',2,'sa',null,'스마트정보업무',001);
insert into dept values('sasi001','경영정보팀',3,'sasi','032)741-5343','아우리(ERP)운영 및 유지관리,아우리 시스템 개선방향 수립 및 신규 구축',001);
insert into dept values('sasi002','사무정보팀',3,'sasi','032)741-5487','전사 그룹웨어(아우리포털,전자결재) 구축사업 총괄',001);
insert into dept values('sasi003','통합정보팀',3,'sasi','032)741-5516','통합정보시스템 운항계획 모듈 운영 및 유지관리',001);
insert into dept values('sasi004','사이버보안센터',3,'sasi','032)741-5433','사이버보안관제 및 정보보호 운영 관리 총괄',001);

