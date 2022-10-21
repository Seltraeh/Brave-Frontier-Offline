.class public Lsg/gumi/util/BFInstallReferrer;
.super Landroid/content/BroadcastReceiver;
.source "BFInstallReferrer.java"


# static fields
.field private static elapsedTime:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsg/gumi/util/BFInstallReferrer;->elapsedTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lsg/gumi/util/BFInstallReferrer;->elapsedTime:J

    .line 20
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_GOOGLE:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_0

    .line 22
    :try_start_0
    new-instance v0, Lcom/google/ads/conversiontracking/InstallReceiver;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/InstallReceiver;-><init>()V

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/conversiontracking/InstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
