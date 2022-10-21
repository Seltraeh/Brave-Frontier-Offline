.class Lcom/vungle/warren/Vungle$5;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/Vungle;

.field final synthetic val$adLoader:Lcom/vungle/warren/AdLoader;

.field final synthetic val$placementList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;Ljava/util/List;Lcom/vungle/warren/AdLoader;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/vungle/warren/Vungle$5;->this$0:Lcom/vungle/warren/Vungle;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$5;->val$placementList:Ljava/util/List;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$5;->val$adLoader:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/vungle/warren/Vungle$5;->val$placementList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    .line 577
    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$adLoader:Lcom/vungle/warren/AdLoader;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;J)V

    goto :goto_0

    :cond_1
    return-void
.end method
