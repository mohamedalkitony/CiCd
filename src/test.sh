#!/bin/bash

# 1. الانتقال تلقائياً إلى المجلد الذي يحتوي على هذا السكريبت (مجلد src)
cd "$(dirname "$0")"

# اسم ملف الـ Node.js المراد اختباره (بما أننا انتقلنا لمجلد src، سيبحث عنه بجانبه مباشرة)
FILE_NAME="app.js"  # أو great.js حسب اسم ملفك

# 2. التأكد من أن الملف موجود
if [ ! -f "$FILE_NAME" ]; then
    echo "❌ خطأ: الملف $FILE_NAME غير موجود في مجلد src!"
    exit 1
fi

# 3. تشغيل الملف وجلب المخرج
echo "⏳ جاري تشغيل الاختبار..."
OUTPUT=$(node "$FILE_NAME")

# 4. التحقق من النتيجة
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