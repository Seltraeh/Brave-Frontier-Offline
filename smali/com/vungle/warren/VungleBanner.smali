.class public Lcom/vungle/warren/VungleBanner;
.super Landroid/widget/RelativeLayout;
.source "VungleBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adSize:Lcom/vungle/warren/AdConfig$AdSize;

.field private bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

.field private calculatedPixelHeight:I

.field private calculatedPixelWidth:I

.field private destroyed:Z

.field private disableRenderManagement:Z

.field private loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

.field private placementId:Ljava/lang/String;

.field private playAdCallback:Lcom/vungle/warren/PlayAdCallback;

.field private refreshAdRunnable:Ljava/lang/Runnable;

.field private refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

.field private renderAdRequested:Z

.field private renderWhenAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/vungle/warren/VungleBanner$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/VungleBanner$1;-><init>(Lcom/vungle/warren/VungleBanner;)V

    iput-object v0, p0, Lcom/vungle/warren/VungleBanner;->refreshAdRunnable:Ljava/lang/Runnable;

    .line 236
    new-instance v0, Lcom/vungle/warren/VungleBanner$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/VungleBanner$2;-><init>(Lcom/vungle/warren/VungleBanner;)V

    iput-object v0, p0, Lcom/vungle/warren/VungleBanner;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    .line 53
    iput-object p2, p0, Lcom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/vungle/warren/VungleBanner;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    .line 55
    iput-object p5, p0, Lcom/vungle/warren/VungleBanner;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    .line 58
    invoke-virtual {p4}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result p5

    invoke-static {p1, p5}, Lcom/vungle/warren/utility/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    .line 59
    invoke-virtual {p4}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result p5

    invoke-static {p1, p5}, Lcom/vungle/warren/utility/ViewUtility;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    .line 61
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 62
    invoke-virtual {p1, p4}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 64
    iget-object p4, p0, Lcom/vungle/warren/VungleBanner;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-static {p2, p1, p4}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 66
    new-instance p1, Lcom/vungle/warren/utility/RefreshHandler;

    new-instance p2, Lcom/vungle/warren/utility/WeakRunnable;

    iget-object p4, p0, Lcom/vungle/warren/VungleBanner;->refreshAdRunnable:Ljava/lang/Runnable;

    invoke-direct {p2, p4}, Lcom/vungle/warren/utility/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    int-to-long p3, p3

    const-wide/16 v0, 0x3e8

    mul-long p3, p3, v0

    invoke-direct {p1, p2, p3, p4}, Lcom/vungle/warren/utility/RefreshHandler;-><init>(Ljava/lang/Runnable;J)V

    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vungle/warren/VungleBanner;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/vungle/warren/VungleBanner;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vungle/warren/VungleBanner;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->canRender()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/VungleBanner;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/AdConfig$AdSize;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/PlayAdCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/VungleBanner;Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/view/VungleNativeView;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/utility/RefreshHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    return-object p0
.end method

.method private canRender()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->destroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->renderAdRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private finishAdInternal(Z)V
    .locals 1

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->clean()V

    .line 176
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    .line 194
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->destroyed:Z

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/vungle/warren/VungleBanner;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    return-void
.end method

.method public disableLifeCycleManagement(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    return-void
.end method

.method public finishAd()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    return-void
.end method

.method protected loadAdInternal()V
    .locals 4

    .line 265
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Loading Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/VungleBanner;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    new-instance v2, Lcom/vungle/warren/utility/WeakLoadAdCallback;

    iget-object v3, p0, Lcom/vungle/warren/VungleBanner;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    invoke-direct {v2, v3}, Lcom/vungle/warren/utility/WeakLoadAdCallback;-><init>(Lcom/vungle/warren/LoadAdCallback;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 91
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Banner onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/warren/VungleBanner;->renderAd()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 111
    iget-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Banner onDetachedFromWindow: render management disabled, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 72
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner onWindowVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    return-void
.end method

.method public renderAd()V
    .locals 3

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->renderAdRequested:Z

    .line 127
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-nez v1, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->canRender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iput-boolean v0, p0, Lcom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    .line 134
    invoke-virtual {p0}, Lcom/vungle/warren/VungleBanner;->loadAdInternal()V

    :cond_1
    return-void

    .line 139
    :cond_2
    invoke-virtual {v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->renderNativeView()Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 142
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    iget v2, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 143
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Add VungleNativeView to Parent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    sget-object v0, Lcom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering new ad for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 153
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    iget v1, p0, Lcom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/vungle/warren/VungleBanner;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->refreshHandler:Lcom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/RefreshHandler;->pause()V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner;->bannerAd:Lcom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    :cond_1
    return-void
.end method
