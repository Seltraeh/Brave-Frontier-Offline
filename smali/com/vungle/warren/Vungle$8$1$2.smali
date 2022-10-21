.class Lcom/vungle/warren/Vungle$8$1$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$8$1;->onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/Vungle$8$1;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$8$1;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/vungle/warren/Vungle$8$1$2;->this$1:Lcom/vungle/warren/Vungle$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 896
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8$1$2;->this$1:Lcom/vungle/warren/Vungle$8$1;

    iget-boolean v1, v0, Lcom/vungle/warren/Vungle$8$1;->val$finalStreamingOnly:Z

    if-eqz v1, :cond_0

    .line 897
    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v1, v0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v0, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_0

    .line 899
    :cond_0
    iget-object v1, v0, Lcom/vungle/warren/Vungle$8$1;->this$0:Lcom/vungle/warren/Vungle$8;

    iget-object v2, v1, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, v0, Lcom/vungle/warren/Vungle$8$1;->val$placement:Lcom/vungle/warren/model/Placement;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$8$1;->val$finalAdvertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v2, v1, v3, v0}, Lcom/vungle/warren/Vungle;->access$1600(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :goto_0
    return-void
.end method
