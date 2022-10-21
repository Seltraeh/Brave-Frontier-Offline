.class Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;
.super Ljava/lang/Object;
.source "WebViewDumpHelper.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;->handle(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

.field final synthetic val$data:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;


# direct methods
.method constructor <init>(Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;->this$0:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    iput-object p2, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;->val$data:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;->this$0:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;

    invoke-static {v0}, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;->access$000(Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$1;->val$data:Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;

    iget-object v1, v1, Lcom/facebook/core/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
