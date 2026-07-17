#!/bin/bash

# اسم ملف الـ Node.js المراد اختبار ه
FILE_NAME="app.js"

# 1. التأكد من أن الملف موجود
if [ ! -f "$FILE_NAME" ]; then
    echo "❌ خطأ: الملف $FILE_NAME غير موجود!"
    exit 1
fi

# 2. تشغيل الملف وجلب المخرج (Output)
echo "⏳ جاري تشغيل الاختبار..."
OUTPUT=$(node "$FILE_NAME")

# 3. التحقق من النتيجة
EXPECTED="Hello World"

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "✅ نجح الاختبار!"
    echo "المخرج الصحيح: $OUTPUT"
    exit 0
else
    echo "❌ فشل الاختبار!"
    echo "المخرج المتوقع: $EXPECTED"
    echo "المخرج الفعلي: $OUTPUT"
    exit 1
fi