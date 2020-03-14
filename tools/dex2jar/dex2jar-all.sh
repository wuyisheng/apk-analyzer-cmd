#!/bin/bash
if test -f "out/tmp/classes.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes.dex -o out/classes.jar
fi
if test -f "out/tmp/classes1.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes1.dex -o out/classes1.jar
fi
if test -f "out/tmp/classes2.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes2.dex -o out/classes2.jar
fi
if test -f "out/tmp/classes3.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes3.dex -o out/classes3.jar
fi
if test -f "out/tmp/classes4.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes4.dex -o out/classes4.jar
fi
if test -f "out/tmp/classes5.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes5.dex -o out/classes5.jar
fi
if test -f "out/tmp/classes6.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes6.dex -o out/classes6.jar
fi
if test -f "out/tmp/classes7.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes7.dex -o out/classes7.jar
fi
if test -f "out/tmp/classes8.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes8.dex -o out/classes8.jar
fi
if test -f "out/tmp/classes9.dex"; then
    ./tools/dex2jar/d2j-dex2jar out/tmp/classes9.dex -o out/classes9.jar
fi