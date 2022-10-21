.class public final Lsg/gumi/bravefrontier/webview/BFWebView;
.super Ljava/lang/Object;
.source "BFWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;
    }
.end annotation


# static fields
.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static instance:Lsg/gumi/bravefrontier/webview/BFWebView;

.field private static usableWebViewDatabase:Ljava/lang/Boolean;


# instance fields
.field private browserButton:Landroid/widget/ImageButton;

.field private cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private jsInterface:Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

.field private mDownX:F

.field private phoneHeight:I

.field private phoneWidth:I

.field private visible:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 69
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    .line 70
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    .line 71
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    .line 73
    iput v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    const/4 v2, 0x0

    .line 74
    iput v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->mDownX:F

    .line 75
    iput-boolean v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    .line 76
    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->jsInterface:Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

    return-void
.end method

.method static synthetic access$100(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->showWebViewTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->setWebViewVisibilityTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lsg/gumi/bravefrontier/webview/BFWebView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->closeWebViewTaskStep1()V

    return-void
.end method

.method static synthetic access$400(Lsg/gumi/bravefrontier/webview/BFWebView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->closeWebViewTaskStep2()V

    return-void
.end method

.method static synthetic access$500(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->playYoutubeVideoTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->showBrowserButtonTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lsg/gumi/bravefrontier/webview/BFWebView;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->setBrowserButtonVisibilityTask(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lsg/gumi/bravefrontier/webview/BFWebView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->closeBrowserButtonTask()V

    return-void
.end method

.method public static canLaunchUrl(Ljava/lang/String;)Z
    .locals 2

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 588
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 589
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private closeBrowserButtonTask()V
    .locals 2

    .line 504
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static closeWebView()V
    .locals 1

    .line 104
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    invoke-direct {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->closeWebViewHelper()V

    return-void
.end method

.method private closeWebViewHelper()V
    .locals 3

    .line 321
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    invoke-direct {v0, p0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    const/4 v2, 0x3

    .line 323
    iput v2, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 324
    iget-object v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    invoke-direct {v0, p0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    const/4 v1, 0x4

    .line 326
    iput v1, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 327
    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    invoke-direct {v0, p0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    const/16 v1, 0x67

    .line 330
    iput v1, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 331
    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private closeWebViewTaskStep1()V
    .locals 2

    .line 336
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 338
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 339
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearAnimation()V

    .line 340
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearDisappearingChildren()V

    .line 341
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFocus()V

    .line 342
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 345
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private closeWebViewTaskStep2()V
    .locals 2

    .line 349
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 530
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 531
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v2, 0x9

    .line 532
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 533
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 534
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 535
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private createWebViewContainer(Landroid/view/View;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    const v1, 0x1020002

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    .line 513
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 514
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 519
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 522
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 524
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 525
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;
    .locals 1

    .line 80
    sget-object v0, Lsg/gumi/bravefrontier/webview/BFWebView;->instance:Lsg/gumi/bravefrontier/webview/BFWebView;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebView;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/webview/BFWebView;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/webview/BFWebView;->instance:Lsg/gumi/bravefrontier/webview/BFWebView;

    .line 83
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/webview/BFWebView;->instance:Lsg/gumi/bravefrontier/webview/BFWebView;

    return-object v0
.end method

.method public static initialize(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 1

    .line 92
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->initializeHelper(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    return-void
.end method

.method private initializeHelper(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 3

    .line 125
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 127
    invoke-static {p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->isUsableWebViewDatabase(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->tryWebViewClearCache(Landroid/content/Context;)V

    .line 134
    :try_start_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 135
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    .line 136
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    .line 139
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    .line 142
    :cond_1
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 145
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 150
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le p1, v2, :cond_2

    .line 151
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 154
    :cond_2
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebViewClient;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/webview/BFWebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 156
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, v0, :cond_3

    .line 157
    new-instance p1, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

    invoke-direct {p1}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;-><init>()V

    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->jsInterface:Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

    .line 158
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->setAsJsInterface(Landroid/webkit/WebView;)V

    .line 161
    :cond_3
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 172
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 174
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->createWebViewContainer(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static isUsableWebViewDatabase(Landroid/content/Context;)Z
    .locals 2

    .line 663
    sget-object v0, Lsg/gumi/bravefrontier/webview/BFWebView;->usableWebViewDatabase:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    const-string v0, "webview.db"

    .line 665
    invoke-static {p0, v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->tryCreateWebViewDatabase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "webviewCache.db"

    .line 666
    invoke-static {p0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView;->tryCreateWebViewDatabase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 667
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lsg/gumi/bravefrontier/webview/BFWebView;->usableWebViewDatabase:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 669
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lsg/gumi/bravefrontier/webview/BFWebView;->usableWebViewDatabase:Ljava/lang/Boolean;

    goto :goto_1

    .line 671
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lsg/gumi/bravefrontier/webview/BFWebView;->usableWebViewDatabase:Ljava/lang/Boolean;

    .line 674
    :cond_3
    :goto_1
    sget-object p0, Lsg/gumi/bravefrontier/webview/BFWebView;->usableWebViewDatabase:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isWebViewAvailable()Z
    .locals 1

    .line 116
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    iget-object v0, v0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWebViewVisible()Z
    .locals 1

    .line 112
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    iget-boolean v0, v0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    return v0
.end method

.method public static launchNewApplication(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 607
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 610
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    .line 612
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 616
    :cond_0
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object p0

    iget-object p0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method public static launchNewBrowser(Ljava/lang/String;)V
    .locals 2

    .line 596
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object p0

    iget-object p0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 600
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static playYoutubeVideo(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->playYoutubeVideoHelper(Ljava/lang/String;)V

    return-void
.end method

.method private playYoutubeVideoHelper(Ljava/lang/String;)V
    .locals 9

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play youtube video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BFWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x407e000000000000L    # 480.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 363
    iget v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x43a00000    # 320.0f

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 364
    iget v4, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    int-to-float v5, v4

    const/high16 v6, 0x43f00000    # 480.0f

    mul-float v0, v0, v6

    sub-float/2addr v5, v0

    div-float/2addr v5, v3

    float-to-int v0, v5

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    .line 373
    iput-boolean v3, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    .line 375
    new-instance v5, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v7, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v7, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v7, v0

    iput-object v7, v5, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    .line 377
    iput v6, v5, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 379
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playYoutubeVideoTask(Ljava/lang/Object;)V
    .locals 4

    .line 384
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 385
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    return-void

    :cond_0
    const-string v0, "YT_Player_Android.html"

    .line 389
    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->existsBundleFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->videoSkippedCallback()V

    return-void

    .line 394
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->jsInterface:Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 397
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->initializeYoutubeVideo(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/YT_Player_Android.html"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 404
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 405
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v3, 0x9

    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 407
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 408
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x2

    .line 409
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 411
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x43a00000    # 320.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 414
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method private setBrowserButtonVisibilityTask(Ljava/lang/Object;)V
    .locals 4

    .line 477
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 480
    :goto_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    .line 484
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 485
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 488
    :cond_1
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    .line 490
    iget-object v3, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 491
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_3

    .line 496
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 497
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 498
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setWebViewVisibilityTask(Ljava/lang/Object;)V
    .locals 4

    .line 296
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 299
    :goto_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 307
    :cond_1
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    .line 308
    iget-object v3, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    if-nez p1, :cond_3

    .line 313
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 314
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 316
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public static setWebViewVisible(Z)V
    .locals 1

    .line 100
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/webview/BFWebView;->setWebViewVisibleHelper(Z)V

    return-void
.end method

.method private setWebViewVisibleHelper(Z)V
    .locals 2

    .line 283
    new-instance v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 285
    iput p1, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 287
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_0

    const/16 p1, 0x66

    .line 288
    iput p1, v0, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 291
    :cond_0
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showBrowserButtonTask(Ljava/lang/Object;)V
    .locals 4

    .line 420
    check-cast p1, [Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 426
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 428
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 429
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    .line 434
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 441
    :cond_0
    :goto_0
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    const v2, 0x1080051

    .line 443
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->createHiddenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lsg/gumi/bravefrontier/webview/BFWebView;->createWebViewContainer(Landroid/view/View;)V

    .line 452
    :cond_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 453
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 454
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v2, 0xd

    .line 455
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 456
    iget-object v2, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string p1, "about:blank"

    .line 462
    :cond_4
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public static showWebView(Ljava/lang/String;FFFF)V
    .locals 6

    .line 96
    invoke-static {}, Lsg/gumi/bravefrontier/webview/BFWebView;->getInstance()Lsg/gumi/bravefrontier/webview/BFWebView;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsg/gumi/bravefrontier/webview/BFWebView;->showWebViewHelper(Ljava/lang/String;FFFF)V

    return-void
.end method

.method private showWebViewHelper(Ljava/lang/String;FFFF)V
    .locals 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing webview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BFWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x407e000000000000L    # 480.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 222
    iget v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x43a00000    # 320.0f

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 223
    iget v3, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x43f00000    # 480.0f

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    mul-float p2, p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 228
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    int-to-float v1, v1

    add-float/2addr p2, v1

    :cond_0
    mul-float p4, p4, v0

    float-to-int p4, p4

    int-to-float p4, p4

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-float p3, p3

    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    int-to-float v1, v2

    add-float/2addr p3, v1

    :cond_1
    mul-float p5, p5, v0

    float-to-int p5, p5

    int-to-float p5, p5

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->visible:Z

    .line 248
    new-instance v1, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;-><init>(Lsg/gumi/bravefrontier/webview/BFWebView;Lsg/gumi/bravefrontier/webview/BFWebView$1;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    float-to-int p1, p2

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    float-to-int p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    float-to-int p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    float-to-int p2, p5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    iput-object v2, v1, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->param:Ljava/lang/Object;

    .line 250
    iput v0, v1, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 252
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    const/16 p1, 0x65

    .line 253
    iput p1, v1, Lsg/gumi/bravefrontier/webview/BFWebView$BFWebViewTask;->taskType:I

    .line 256
    :cond_2
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->cocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showWebViewTask(Ljava/lang/Object;)V
    .locals 4

    .line 261
    check-cast p1, [Ljava/lang/Object;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Device-Platform"

    const-string v2, "Android"

    .line 265
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 269
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 270
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v3, 0x9

    .line 271
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x2

    .line 274
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    iget v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->phoneWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 279
    iget-object p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private static tryCreateWebViewDatabase(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 630
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    .line 637
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    :catchall_1
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 645
    :catchall_2
    :try_start_3
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    nop

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 653
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 p0, 0x1

    return p0

    :catchall_4
    :cond_1
    return v0
.end method

.method private static tryWebViewClearCache(Landroid/content/Context;)V
    .locals 3

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "webviewCache.db"

    const/4 v2, 0x0

    .line 682
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    const-string v1, "cache"

    .line 684
    invoke-virtual {p0, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 690
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_1
    nop

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->browserButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lsg/gumi/bravefrontier/webview/BFWebView;->launchNewBrowser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 201
    :cond_1
    iget p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 191
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->mDownX:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopYoutubeVideo()V
    .locals 1

    .line 699
    iget-object v0, p0, Lsg/gumi/bravefrontier/webview/BFWebView;->jsInterface:Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Lsg/gumi/bravefrontier/webview/BFYoutubeJsInterface;->stopYoutubeVideo()V

    :cond_0
    return-void
.end method
