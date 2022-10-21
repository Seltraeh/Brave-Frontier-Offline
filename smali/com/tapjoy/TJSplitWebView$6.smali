.class final Lcom/tapjoy/TJSplitWebView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJSplitWebView;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView$6;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 290
    iget-object p2, p0, Lcom/tapjoy/TJSplitWebView$6;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {p2}, Lcom/tapjoy/TJSplitWebView;->getLastUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 291
    iget-object p2, p0, Lcom/tapjoy/TJSplitWebView$6;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {p2}, Lcom/tapjoy/TJSplitWebView;->c(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tapjoy/TJSplitWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p2, p0, Lcom/tapjoy/TJSplitWebView$6;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {p2}, Lcom/tapjoy/TJSplitWebView;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tapjoy/TJSplitWebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
