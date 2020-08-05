decode :
	@echo "finding app.apk..."
	rm -rf out&&mkdir out&&rm -rf classes*.zip
	./tools/apktool d app.apk -o out/app
	unzip app.apk -d out/tmp
	./tools/dex2jar/dex2jar-all.sh

build :
	@echo "building..."
	rm -rf out/app.apk 
	./tools/apktool b out/app -o out/raw.apk
	./tools/zipalign -v -p 4 out/raw.apk out/align.apk
	./tools/apksigner sign --ks-pass pass:testing --key-pass pass:testing --ks tools/testing.jks --out out/app.apk out/align.apk
	rm out/raw.apk out/align.apk
	@echo "done! build at out/app.apk"

sign :
	@echo "sign..."
	rm -rf out&&mkdir out&&cp app.apk out/raw.apk
	./tools/zipalign -v -p 4 out/raw.apk out/align.apk
	./tools/apksigner sign --ks-pass pass:testing --key-pass pass:testing --ks tools/testing.jks --out out/app.apk out/align.apk
	rm out/raw.apk out/align.apk
	./tools/apksigner verify -v --print-certs out/app.apk
	@echo "done! build at out/app.apk"

install:
	adb install -r out/app.apk

clean :
	rm -rf out classes*.zip
