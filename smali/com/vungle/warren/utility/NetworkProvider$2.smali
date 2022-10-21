.class Lcom/vungle/warren/utility/NetworkProvider$2;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/NetworkProvider;->postToListeners(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/NetworkProvider;

.field final synthetic val$currentNetwork:I


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;I)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    iput p2, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->val$currentNetwork:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->access$000(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 116
    iget v2, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->val$currentNetwork:I

    invoke-interface {v1, v2}, Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;->onChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
