.class Lcom/vungle/warren/DownloadCallbackWrapper$3;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$advertisement:Lcom/vungle/warren/model/Advertisement;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$placement:Lcom/vungle/warren/model/Placement;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$placement:Lcom/vungle/warren/model/Placement;

    iput-object p4, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/DownloadCallbackWrapper;->access$000(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$placement:Lcom/vungle/warren/model/Placement;

    iget-object v3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method
