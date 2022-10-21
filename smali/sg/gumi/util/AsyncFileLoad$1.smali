.class Lsg/gumi/util/AsyncFileLoad$1;
.super Ljava/lang/Object;
.source "AsyncFileLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/util/AsyncFileLoad;->startDownload(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iobj:J

.field final synthetic val$iurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 233
    iput-object p1, p0, Lsg/gumi/util/AsyncFileLoad$1;->val$iurl:Ljava/lang/String;

    iput-wide p2, p0, Lsg/gumi/util/AsyncFileLoad$1;->val$iobj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 237
    new-instance v0, Lsg/gumi/util/AsyncFileLoad;

    iget-object v1, p0, Lsg/gumi/util/AsyncFileLoad$1;->val$iurl:Ljava/lang/String;

    iget-wide v2, p0, Lsg/gumi/util/AsyncFileLoad$1;->val$iobj:J

    invoke-direct {v0, v1, v2, v3}, Lsg/gumi/util/AsyncFileLoad;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
