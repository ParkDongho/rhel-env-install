# rhel-env-install

# 부팅 디스크 생성
## iso 파일 다운로드
- rhel 8.4 버전의 iso파일 다운로드 ([링크](https://developers.redhat.com/content-gateway/file/rhel-8.4-x86_64-dvd.iso))


```
diskutil list

diskutil unmountdisk /dev/disk4

sudo dd if=rhel-baseos-9.0-x86_64-dvd.iso of=/dev/disk4
```
