# zig2c

zig 언어로 빌드한 dll을 c에서 호출해보는 간단한 프로젝트입니다.
c 코드 자체는 윈도우에서 테스트만 하면 되기 때문에 운영체제에 종속적인 코드를 사용했습니다.

## build

```
zig build-lib src/mylib.zig -dynamic -target x86_64-windows
```