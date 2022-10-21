.class final Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;
.super Ljava/lang/Object;
.source "AsyncFileLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/util/AsyncFileLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCallbackEvent"
.end annotation


# instance fields
.field final data:[B

.field final error:Ljava/lang/String;

.field final obj:J


# direct methods
.method constructor <init>(J[BLjava/lang/String;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-wide p1, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->obj:J

    .line 205
    iput-object p3, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->data:[B

    if-eqz p4, :cond_0

    .line 208
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 209
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p4, 0x0

    .line 213
    :cond_0
    iput-object p4, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 220
    :try_start_0
    iget-wide v0, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->obj:J

    iget-object v2, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->data:[B

    iget-object v3, p0, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;->error:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->nativeDownloadCallback(J[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
