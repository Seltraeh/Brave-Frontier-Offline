.class final Lcom/tapjoy/TJAdUnit$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$3;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .line 1361
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$3;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "Uncaught"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "uncaught"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v5, "Error"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "error"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "not defined"

    aput-object v5, v2, v3

    .line 1364
    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$3;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnit;->q(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1365
    aget-object v3, v2, v4

    .line 1366
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1367
    iget-object p1, p0, Lcom/tapjoy/TJAdUnit$3;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->q(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const-string p1, "TJAdUnit"

    .line 1355
    invoke-static {p1, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
