.class Lcom/vungle/warren/InitCallbackWrapper$2;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/InitCallbackWrapper;->onError(Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/InitCallbackWrapper;

.field final synthetic val$exception:Lcom/vungle/warren/error/VungleException;


# direct methods
.method constructor <init>(Lcom/vungle/warren/InitCallbackWrapper;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->this$0:Lcom/vungle/warren/InitCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->val$exception:Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->this$0:Lcom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/InitCallbackWrapper;->access$000(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->val$exception:Lcom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method
