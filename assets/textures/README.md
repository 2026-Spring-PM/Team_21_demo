# 구 호환 텍스처 폴더 (textures/)

이 폴더에 다음 파일명으로 PNG를 넣으면 게임이 자동으로 잡습니다.
파일이 없으면 색상 폴백으로 동작합니다.

권장 크기는 모두 64×64 픽셀 (한 타일).

| 파일명          | 용도                |
|----------------|---------------------|
| `player.png`   | 플레이어            |
| `elder.png`    | 노인 NPC            |
| `badanam.png`  | 바다남 NPC          |
| `carpenter.png`| 목수 NPC            |
| `joker.png`    | 카지노 조커 NPC     |
| `tileset.png`  | 타일셋 (512×64, 8타일) |

타일셋 id 매핑은 `assets/README.md` 참고.

새 구조 폴더(`assets/characters/`, `assets/houses/` 등)에 같은 종류 파일이
있으면 그쪽이 우선 사용됩니다. 데모용으로 빠르게 캐릭터만 바꾸고 싶다면
이 폴더만 채우는 게 가장 빠릅니다.
