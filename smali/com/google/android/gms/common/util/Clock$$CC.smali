.class public synthetic Lcom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public static currentThreadTimeMillis$$dflt$$(Lcom/google/android/gms/common/util/Clock;)J
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
