.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static LOG_LEVEL_OFF:I

.field public static final zzfo:Landroid/content/ComponentName;

.field private static zzfp:I

.field private static zzfq:I

.field private static zzfr:I

.field private static zzfs:I

.field private static zzft:I

.field private static zzfu:I

.field private static zzfv:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfo:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    .line 4
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfp:I

    const/4 v1, 0x2

    .line 5
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfq:I

    const/4 v1, 0x4

    .line 6
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfr:I

    const/16 v1, 0x8

    .line 7
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfs:I

    const/16 v1, 0x10

    .line 8
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzft:I

    const/16 v1, 0x20

    .line 9
    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfu:I

    .line 10
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfv:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
