.class final Lcom/tapjoy/TapjoyConnectCore$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore$1$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyConnectCore$1$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore$1$1;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$1$1$1;->a:Lcom/tapjoy/TapjoyConnectCore$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1$1$1;->a:Lcom/tapjoy/TapjoyConnectCore$1$1;

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnectCore$1$1;->a:Lcom/tapjoy/TapjoyConnectCore$1;

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->completeConnectCall()V

    return-void
.end method
