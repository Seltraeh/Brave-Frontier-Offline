.class Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerLoadListener"
.end annotation


# instance fields
.field isBanner:Z

.field listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field placementId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    .line 601
    iput-boolean p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->isBanner:Z

    .line 602
    iput-object p4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4

    .line 607
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 609
    iget-boolean p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->isBanner:Z

    const-string v0, "can\'t play ad"

    if-eqz p1, :cond_2

    .line 612
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p1

    .line 615
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-static {v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$400(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBanner failed - banner view is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_0

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_0

    .line 638
    :cond_2
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 640
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 641
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p1, v0}, Lcom/vungle/warren/AdConfig;->setMuted(Z)V

    .line 645
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-static {v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$400(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 650
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 654
    invoke-interface {p1}, Lcom/vungle/warren/VungleNativeAd;->renderNativeView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 657
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 661
    :cond_3
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBanner failed - banner rectangle view is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 666
    :cond_4
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 3

    .line 675
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 676
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBanner - exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
