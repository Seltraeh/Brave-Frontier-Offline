.class Lsg/gumi/bravefrontier/webview/BFWebViewClient$1;
.super Ljava/lang/Object;
.source "BFWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/webview/BFWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/webview/BFWebViewClient;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/webview/BFWebViewClient;Landroid/webkit/WebView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebViewClient$1;->this$0:Lsg/gumi/bravefrontier/webview/BFWebViewClient;

    iput-object p2, p0, Lsg/gumi/bravefrontier/webview/BFWebViewClient$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebViewClient$1;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
