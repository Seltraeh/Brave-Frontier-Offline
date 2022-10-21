.class final Lcom/tapjoy/TJCorePlacement$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCorePlacement$3;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement$3;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement$3;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$3$1;->a:Lcom/tapjoy/TJCorePlacement$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .locals 3

    .line 428
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement$3$1;->a:Lcom/tapjoy/TJCorePlacement$3;

    iget-object p1, p1, Lcom/tapjoy/TJCorePlacement$3;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {p1}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$3$1;->a:Lcom/tapjoy/TJCorePlacement$3;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement$3;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$3$1;->a:Lcom/tapjoy/TJCorePlacement$3;

    iget-object v2, v2, Lcom/tapjoy/TJCorePlacement$3;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnit;->preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Z)Z

    return-void
.end method
