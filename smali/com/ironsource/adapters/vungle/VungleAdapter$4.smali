.class Lcom/ironsource/adapters/vungle/VungleAdapter$4;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    .line 490
    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleNativeAd;

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcom/vungle/warren/VungleNativeAd;->finishDisplayingAd()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$placementId:Ljava/lang/String;

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/VungleBanner;

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {v1}, Lcom/vungle/warren/VungleBanner;->destroyAd()V

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$placementId:Ljava/lang/String;

    new-instance v2, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerLoadListener;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-static {v1, v0, v2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V

    :goto_0
    return-void
.end method
