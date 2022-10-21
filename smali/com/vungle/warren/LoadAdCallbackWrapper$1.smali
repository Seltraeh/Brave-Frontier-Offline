.class Lcom/vungle/warren/LoadAdCallbackWrapper$1;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/LoadAdCallbackWrapper;->onAdLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/LoadAdCallbackWrapper;->access$000(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    return-void
.end method
