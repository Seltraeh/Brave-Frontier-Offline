.class public final Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;
.super Ljava/lang/Object;
.source "BFYoutubeJsInterface.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final PLAYER_STATE_ENDED:I = 0x2

.field private static final PLAYER_STATE_IDLE:I = 0x0

.field private static final PLAYER_STATE_STARTED:I = 0x1


# instance fields
.field private playerState:I

.field private youtubeVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->youtubeVideoId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    return-void
.end method

.method private closeWebView()V
    .locals 1

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->setWebViewVisible(Z)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->youtubeVideoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getYoutubeVideoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 34
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->youtubeVideoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method initializeYoutubeVideo(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->youtubeVideoId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 88
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget p1, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 99
    monitor-exit p0

    return p2

    .line 97
    :cond_0
    monitor-exit p0

    return p3

    .line 93
    :cond_1
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->closeWebView()V

    .line 94
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 95
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return p3
.end method

.method public onVideoEnded()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->closeWebView()V

    .line 57
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoFinishedCallback()V

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVideoError()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->closeWebView()V

    .line 65
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVideoPaused()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->closeWebView()V

    .line 49
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVideoStarted()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 39
    monitor-enter p0

    const/4 v0, 0x1

    .line 40
    :try_start_0
    iput v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    .line 41
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoPreparedCallback()V

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAsJsInterface(Landroid/webkit/WebView;)V
    .locals 1

    .line 21
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v0, "bfJsInterface"

    .line 22
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method stopYoutubeVideo()V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->closeWebView()V

    .line 82
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
