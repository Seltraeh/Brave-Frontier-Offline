.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final GOOGLE:Ljava/lang/String; = "com.google"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final zzce:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.work"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cn.google"

    aput-object v2, v0, v1

    .line 2
    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->zzce:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
