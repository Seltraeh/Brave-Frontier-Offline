.class final Lcom/tapjoy/TJCorePlacement$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    .line 511
    iget-object p3, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p3}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 517
    :goto_0
    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 518
    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object p2

    iget-object p3, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 521
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p3}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    iget-object p3, p0, Lcom/tapjoy/TJCorePlacement$4;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {p3}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object p3

    const-string v0, "placement_data"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 523
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
