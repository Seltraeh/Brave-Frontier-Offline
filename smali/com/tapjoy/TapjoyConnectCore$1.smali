.class final Lcom/tapjoy/TapjoyConnectCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 386
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->a()V

    .line 387
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$1;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$1$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyConnectCore$1$1;-><init>(Lcom/tapjoy/TapjoyConnectCore$1;)V

    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;Landroid/content/Context;Lcom/tapjoy/TJTaskHandler;)V

    return-void
.end method
