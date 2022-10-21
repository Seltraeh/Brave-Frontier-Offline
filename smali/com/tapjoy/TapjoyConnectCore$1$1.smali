.class final Lcom/tapjoy/TapjoyConnectCore$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJTaskHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyConnectCore$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore$1;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$1$1;->a:Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1$1$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$1$1$1;-><init>(Lcom/tapjoy/TapjoyConnectCore$1$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
