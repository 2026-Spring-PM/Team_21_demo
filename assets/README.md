# 자산 (assets/) 상세 안내

게임이 인식하는 **모든 PNG 파일의 정확한 경로와 크기**를 한 곳에 정리합니다.
파일이 없는 항목은 색상 폴백으로 자동 대체되어 게임은 항상 동작합니다.

---

## 1. 타일셋 (assets/tileset.png)

### 1-1. 한 장에 모든 타일 — 권장 크기 512 × 64

타일 8종이 가로로 이어져 있는 한 장의 PNG입니다.

| id | 의미              | 폴백 색 RGB        | 사용처                  |
|----|------------------|-------------------|------------------------|
| 0  | 잔디 (풀밭)       | (85, 130, 60)     | 홈 외곽, 집 외곽        |
| 1  | 항구 바닥         | (180, 170, 140)   | 항구 안쪽               |
| 2  | 벽/울타리         | (60, 45, 30)      | (예약, 미사용)          |
| 3  | 밭 (농사 가능 흙) | (110, 70, 40)     | 홈의 농장 4×4 영역      |
| 4  | 나무 바닥         | (140, 110, 90)    | 집 실내                 |
| 5  | 업그레이드 영역 2 | (170, 150, 130)   | (예약)                  |
| 6  | 업그레이드 영역 3 | (200, 180, 160)   | (예약)                  |
| 7  | 물 (바다)         | (45, 95, 170)     | 항구 외곽               |

좌→우 순서로 그리세요. 한 칸 = 64×64.

### 1-2. 장소별 타일 구분이 필요한가?

현재 코드는 모든 씬이 같은 tileset.png 한 장을 공유합니다. 장소별로 다른 그래픽이 필요하면 한 장에 8개를 더 추가해 id를 8, 9, ... 로 늘리고 맵 JSON에서 해당 id를 사용하면 됩니다.

---

## 2. 캐릭터 (assets/characters/)

표시 크기는 한 칸(64×64). 새 구조 폴더가 없으면 구 구조(`assets/textures/`)에서 자동 fallback.

| 새 구조 경로                           | 구 구조 fallback           | 용도            |
|---------------------------------------|---------------------------|----------------|
| `characters/hero_down.png`            | `textures/player.png`     | 플레이어 (4방향 중 down) |
| `characters/hero_up.png`              | —                         | 플레이어 위    |
| `characters/hero_left.png`            | —                         | 플레이어 왼쪽  |
| `characters/hero_right.png`           | —                         | 플레이어 오른쪽 |
| `characters/elder.png`                | `textures/elder.png`      | 노인 NPC       |
| `characters/seaman.png`               | `textures/badanam.png`    | 바다남 NPC     |
| `characters/carpenter.png`            | `textures/carpenter.png`  | 목수 NPC (Lv.3+)|
| `characters/joker.png`                | `textures/joker.png`      | 조커 NPC (Lv.5+)|
| `characters/elder_portrait.png`       | —                         | 노인 초상 (대화 연출용) |
| `characters/seaman_portrait.png`      | —                         | 바다남 초상    |
| `characters/carpenter_portrait.png`   | —                         | 목수 초상      |
| `characters/joker_portrait.png`       | —                         | 조커 초상      |

---

## 3. 집 스킨 (assets/houses/)

표시 크기 192×192 (3타일×3타일). 코드는 빚 레벨에 따라 자동 교체합니다.

| 파일 경로                       | 해금 레벨 |
|--------------------------------|----------|
| `houses/house_tent.png`        | Lv.1 (시작) |
| `houses/house_hut.png`         | Lv.2     |
| `houses/house_wood.png`        | Lv.3     |
| `houses/house_stone.png`       | Lv.4     |
| `houses/house_mansion.png`     | Lv.5     |
| `houses/house_palace.png`      | Lv.6 (엔딩) |
| `houses/bed.png`               | 집 실내 침대 (잠자기 오브젝트). 표시 200×140. |

---

## 4. 농장 (assets/farm/)

### 4-1. 모종 / 수확물 아이콘 — 48×48

| 모종              | 수확물              |
|------------------|-------------------|
| `farm/seed_wheat.png`    | `farm/crop_wheat.png`    |
| `farm/seed_lettuce.png`  | `farm/crop_lettuce.png`  |
| `farm/seed_tomato.png`   | `farm/crop_tomato.png`   |
| `farm/seed_potato.png`   | `farm/crop_potato.png`   |

### 4-2. 작물 성장 단계 — 48×48 (각 작물 3단계)

```
farm/crop_wheat_grow1.png   ... 2.png   ... 3.png
farm/crop_lettuce_grow1.png ... 2.png   ... 3.png
farm/crop_tomato_grow1.png  ... 2.png   ... 3.png
farm/crop_potato_grow1.png  ... 2.png   ... 3.png
```

---

## 5. 낚시 (assets/fishing/)

크기 48×48 (인벤토리/상점 표시용).

| 파일 경로                | 등급  |
|-------------------------|------|
| `fishing/fish_mackerel.png` | 일반 |
| `fishing/fish_salmon.png`   | 희귀 |
| `fishing/fish_tuna.png`     | 전설 |

낚시 게이지 UI는 코드가 도형으로 그립니다.

---

## 6. 목장 (assets/ranch/)

| 파일 경로                | 용도                  | 크기   |
|-------------------------|----------------------|--------|
| `ranch/chicken.png`     | 닭 (필드용)          | 64×64  |
| `ranch/cow_baby.png`    | 송아지               | 64×64  |
| `ranch/cow_adult.png`   | 어른 소              | 64×64  |
| `ranch/pig_baby.png`    | 새끼 돼지            | 64×64  |
| `ranch/pig_adult.png`   | 어른 돼지            | 64×64  |
| `ranch/egg.png`         | 달걀 (산물)          | 48×48  |
| `ranch/milk.png`        | 우유                 | 48×48  |
| `ranch/pork.png`        | 돼지고기             | 48×48  |
| `ranch/beef.png`        | 소고기               | 48×48  |

---

## 7. 부엌 (assets/kitchen/)

| 파일 경로                 | 용도          | 크기     |
|--------------------------|---------------|----------|
| `kitchen/stove.png`      | 가스레인지    | 220×180  |
| `kitchen/dish_*.png`     | 요리 완성품 18종 | 48×48 |
| `kitchen/recipe_generic.png` | 공용 레시피 아이콘 | 48×48 |

요리 완성품 파일명 (18종):
```
kitchen/dish_tomatopasta.png        토마토 파스타
kitchen/dish_bread.png              식빵
kitchen/dish_eggscramble.png        에그스크램블
kitchen/dish_grilledmackerel.png    고등어구이
kitchen/dish_braisedmackerel.png    고등어조림
kitchen/dish_potatosoup.png         감자수프
kitchen/dish_tomategg.png           토마토계란볶음
kitchen/dish_morningbread.png       모닝빵세트
kitchen/dish_sandwich.png           샌드위치
kitchen/dish_creampasta.png         크림 파스타
kitchen/dish_porklunch.png          삼겹살 도시락 세트
kitchen/dish_burger.png             햄버거
kitchen/dish_agedsashimi.png        숙성회세트
kitchen/dish_salmonsashimi.png      연어회
kitchen/dish_creamsalmon.png        크림연어
kitchen/dish_beefsalmonsushi.png    육회연어초밥
kitchen/dish_steak.png              스테이크
kitchen/dish_tunasashimi.png        황금참치회
```

---

## 8. 카지노 (assets/casino/)

| 파일 경로                | 용도          | 크기  |
|-------------------------|---------------|-------|
| `casino/slot_potato.png`| 감자 슬롯 심볼 | 96×96 |
| `casino/slot_lettuce.png`| 상추        | 96×96 |
| `casino/slot_tomato.png`| 토마토        | 96×96 |
| `casino/slot_milk.png`  | 우유          | 96×96 |
| `casino/slot_wheat.png` | 밀            | 96×96 |
| `casino/slot_salmon.png`| 연어          | 96×96 |
| `casino/slot_egg.png`   | 달걀          | 96×96 |
| `casino/slot_machine.png`| 슬롯머신 프레임 | 520×200 (선택) |

---

## 9. 특산물 (assets/specialties/)

크기 48×48. 인벤토리/상점/방송용.

| 파일 경로                       | 특산물    | 초기 가격 |
|--------------------------------|----------|----------|
| `specialties/clam.png`         | 황금조개 | 500G     |
| `specialties/mushroom.png`     | 야생버섯 | 1,000G   |
| `specialties/herb.png`         | 신비초   | 2,000G   |

---

## 10. 정원 (assets/garden/)

크기 64×64. 아직 게임 내 사용처 미구현 (자산만 준비).

| 파일 경로                   | 아이템    | 가격  |
|----------------------------|----------|------|
| `garden/g_daisy.png`       | 하얀 데이지 | 500G |
| `garden/g_rose.png`        | 빨간 장미 | 800G |
| `garden/g_tulip.png`       | 노랑 튤립 | 600G |
| `garden/g_carnation.png`   | 핑크 카네이션 | 700G |
| `garden/g_stone.png`       | 돌       | 300G |
| `garden/g_greenbush.png`   | 초록 풀숲 | 400G |
| `garden/g_lightbush.png`   | 연두 풀숲 | 400G |
| `garden/g_sapling.png`     | 나무 묘목 | 1,200G |

---

## 11. 배경 (assets/backgrounds/)

전체 화면 배경: **1280×720**, PNG.

| 파일 경로                            | 용도                      |
|-------------------------------------|--------------------------|
| `backgrounds/title.png`             | 타이틀 화면              |
| `backgrounds/opening1.png`          | 오프닝 컷씬 1            |
| `backgrounds/opening2.png`          | 오프닝 컷씬 2            |
| `backgrounds/opening3.png`          | 오프닝 컷씬 3            |
| `backgrounds/opening4.png`          | 오프닝 컷씬 4            |
| `backgrounds/ending.png`            | 엔딩 컷씬                |
| `backgrounds/house_interior.png`    | 집 내부                  |
| `backgrounds/port.png`              | 항구                     |
| `backgrounds/fishing.png`           | 낚시터                   |
| `backgrounds/ranch.png`             | 목장                     |
| `backgrounds/kitchen.png`           | 주방                     |
| `backgrounds/casino.png`            | 도박장                   |

홈 화면 건물 아이콘: **128×128**, 투명 배경.

| 파일 경로                           | 아이콘   |
|------------------------------------|---------|
| `backgrounds/icon_house.png`       | 집      |
| `backgrounds/icon_port.png`        | 항구    |
| `backgrounds/icon_fishing.png`     | 낚시터  |
| `backgrounds/icon_ranch.png`       | 목장    |
| `backgrounds/icon_kitchen.png`     | 주방    |
| `backgrounds/icon_casino.png`      | 도박장  |

---

## 12. 공용 UI (assets/ui/)

| 파일 경로                           | 용도              | 크기   |
|------------------------------------|------------------|--------|
| `ui/weather_sunny.png`             | 맑음             | 32×32  |
| `ui/weather_cloudy.png`            | 흐림             | 32×32  |
| `ui/weather_rainy.png`             | 비               | 32×32  |
| `ui/weather_drought.png`           | 가뭄             | 32×32  |
| `ui/btn_home.png`                  | 홈 복귀 버튼     | 110×38 |
| `ui/btn_help.png`                  | 도움말           | 36×36  |
| `ui/btn_close.png`                 | 닫기 X           | 40×34  |
| `ui/btn_cook.png`                  | 요리하기 버튼    | 180×50 |
| `ui/sprinkler.png`                 | 스프링클러 아이콘 | 48×48  |
| `ui/panel.png`                     | 일반 패널 배경 (9-slice) | 64×64 |
| `ui/dialog_box.png`                | 대화창 배경      | 1200×170 |
| `ui/inventory_panel.png`           | 인벤토리 패널    | 360×720 |
| `ui/shop_panel.png`                | 상점 패널        | 920×560 |
| `ui/event_banner.png`              | 이벤트 알림 배너 | 600×80 |
| `ui/specialty_buy.png`             | 특산물 구매 창   | 760×340 |

---

## 13. 폰트 (assets/fonts/)

| 파일 경로                | 용도                    |
|-------------------------|------------------------|
| `fonts/main.ttf`        | 게임 기본 폰트 (한글 포함 권장) |

현재 zip에는 Noto Sans KR가 동봉되어 있습니다.

---

## 14. 데이터 JSON (assets/data/, assets/maps/)

| 파일 경로                | 용도                    |
|-------------------------|------------------------|
| `data/items.json`       | 아이템 정의 (id, 한글 이름, 카테고리, 가격) |
| `data/tiles.json`       | 타일 정의 (id 0~7 추가 메타) |
| `maps/home.json`        | 홈 맵 (30×24 그리드)    |
| `maps/harbor.json`      | 항구 맵                 |

---

## 15. 우선순위 제안

1. **첫 인상** — `tileset.png`, `characters/hero_down.png`, `characters/elder.png`, `characters/seaman.png`, `houses/house_tent.png`
2. **핵심 루프** — `farm/seed_*`, `farm/crop_*`, `farm/crop_*_grow*`, `houses/bed.png`
3. **확장 콘텐츠** — `fishing/fish_*`, `ranch/*`, `kitchen/*`, `casino/slot_*`
4. **마무리** — 배경, 컷씬, 정원, 특산물, 4방향 캐릭터, 초상화

---

## 16. 자주 묻는 점

**Q. PNG를 넣었는데 안 보입니다.**  
1. 파일명 오타 — 대소문자 포함 정확히 일치해야 합니다.
2. 폴더 구조 — `assets/characters/hero_down.png` 처럼 새 구조 우선. 구 구조(`assets/textures/`)는 핵심 6개(player/elder/badanam/carpenter/joker/tileset)에만 fallback.
3. PNG 형식 — 32bit RGBA PNG 권장. SFML이 일부 변형 PNG를 거부할 수 있습니다.
4. 실행 위치 — 실행 파일의 부모 디렉토리에 `assets/` 폴더가 있어야 합니다. (build/bin/main 기준이면 `build/bin/assets/` 또는 프로젝트 루트의 `assets/`.)
5. 콘솔 로그 — 게임 실행 시 터미널에 `[tex] FAILED: <경로>` 로그가 찍히는지 확인. FAILED가 나오면 그 경로 그대로 파일이 없는 것입니다.

**Q. 한 PNG를 여러 곳에 쓰고 싶어요.**  
같은 PNG를 복사해서 두 이름으로 저장하면 됩니다. (예: `farm/seed_wheat.png`와 `farm/crop_wheat.png`가 같은 그림이어도 OK)

**Q. 32×32로 그렸는데 64×64 칸에 들어가나요?**  
네. 코드가 PNG 크기를 읽어 자동 확대합니다. 다만 도트 흐림 방지를 위해 표시 크기의 정수배(1/2, 1/4)로 작업하기를 권장.
