.class final Lcom/tapjoy/TJCorePlacement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->e(Lcom/tapjoy/TJCorePlacement;)V

    return-void
.end method

.method public final onClosed()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJCorePlacement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementCacheCount()V

    .line 103
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->c(Lcom/tapjoy/TJCorePlacement;)Z

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->d(Lcom/tapjoy/TJCorePlacement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementPreRenderCount()V

    .line 108
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Z)Z

    :cond_1
    return-void
.end method

.method public final onContentReady()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$1;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;)V

    return-void
.end method
