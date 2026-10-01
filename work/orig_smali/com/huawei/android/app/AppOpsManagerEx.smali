.class public Lcom/huawei/android/app/AppOpsManagerEx;
.super Ljava/lang/Object;
.source "AppOpsManagerEx.java"


# static fields
.field private static final EXTRA_CODE:Ljava/lang/String; = "opCode"

.field private static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final EXTRA_MONITOR:Ljava/lang/String; = "shouldMonitor"

.field private static final EXTRA_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final MODE_ALLOWED:I = 0x1

.field public static final MODE_IGNORED:I = 0x2

.field public static final MODE_REMIND:I = 0x0

.field public static final MODE_UNKNOWN:I = 0x3

.field private static final MONITOR:I = 0x1

.field public static final RESULT_BAD_ARGUMENTS:I = 0x2

.field public static final RESULT_NO_SERVICE:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_SYSTEM_FIXED:I = 0x3

.field public static final TYPE_ACCESS_CALENDAR:I = 0x800

.field public static final TYPE_CALL_PHONE:I = 0x40

.field public static final TYPE_CAMERA:I = 0x400

.field public static final TYPE_DELETE_CALLLOG:I = 0x40000

.field public static final TYPE_DELETE_CONTACTS:I = 0x20000

.field public static final TYPE_LOCATION:I = 0x8

.field public static final TYPE_MICROPHONE:I = 0x80

.field public static final TYPE_NET:I = -0x80000000

.field public static final TYPE_OPEN_BLUETOOTH:I = 0x800000

.field public static final TYPE_OPEN_MOBILENETWORK:I = 0x400000

.field public static final TYPE_OPEN_WIFI:I = 0x200000

.field public static final TYPE_PHONE_CODE:I = 0x10

.field public static final TYPE_READ_CALLLOG:I = 0x2

.field public static final TYPE_READ_CONTACTS:I = 0x1

.field public static final TYPE_READ_MSG:I = 0x4

.field public static final TYPE_SEND_MMS:I = 0x2000

.field public static final TYPE_SEND_SMS:I = 0x20

.field public static final TYPE_WRITE_CALLLOG:I = 0x8000

.field public static final TYPE_WRITE_CONTACTS:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode(ILjava/lang/String;)I
    .registers 2

    .line 97
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMode(ILjava/lang/String;I)I
    .registers 3

    .line 86
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static systemFixed(Ljava/lang/String;)Z
    .registers 2

    .line 109
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v0, "method not supported."

    invoke-direct {p0, v0}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
