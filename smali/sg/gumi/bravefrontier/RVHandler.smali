.class public Lsg/gumi/bravefrontier/RVHandler;
.super Ljava/lang/Object;
.source "RVHandler.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OfferWall"

.field private static instance:Lsg/gumi/bravefrontier/RVHandler;

.field private static final mOfferWallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

.field private static final mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lsg/gumi/bravefrontier/RVHandler$1;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/RVHandler$1;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/RVHandler;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .line 137
    new-instance v0, Lsg/gumi/bravefrontier/RVHandler$2;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/RVHandler$2;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/RVHandler;->mOfferWallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BF-RVHandler"

    const-string v1, "protected RVHandler"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lsg/gumi/bravefrontier/RVHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static native adInvokeCompletedCallback()V
.end method

.method public static native adInvokeFailedCallback()V
.end method

.method public static native adInvokeStarted()V
.end method

.method public static getInstance()Lsg/gumi/bravefrontier/RVHandler;
    .locals 1

    .line 37
    sget-object v0, Lsg/gumi/bravefrontier/RVHandler;->instance:Lsg/gumi/bravefrontier/RVHandler;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lsg/gumi/bravefrontier/RVHandler;

    invoke-direct {v0}, Lsg/gumi/bravefrontier/RVHandler;-><init>()V

    sput-object v0, Lsg/gumi/bravefrontier/RVHandler;->instance:Lsg/gumi/bravefrontier/RVHandler;

    .line 40
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/RVHandler;->instance:Lsg/gumi/bravefrontier/RVHandler;

    return-object v0
.end method

.method public static initialiseHandler()V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public static void initialiseHandler"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native initialiseMediator()V
.end method

.method public static invokeAd(Ljava/lang/String;)V
    .locals 2

    .line 249
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BF-RVHandler"

    const-string v1, "public static void invokeAd"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static invokeOfferWall(Ljava/lang/String;)V
    .locals 2

    .line 235
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isOfferwallAvailable()Z

    move-result v0

    const-string v1, "BF-RVHandler"

    if-eqz v0, :cond_0

    const-string v0, "public static void invokeOfferWall"

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "offerwall not available"

    .line 243
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isOfferWallAvailable()Z
    .locals 1

    .line 230
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoAvailable()Z
    .locals 1

    .line 225
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public static native offerWallInvokeCompletedCallback()V
.end method

.method public static native offerWallInvokeFailedCallback()V
.end method

.method public static native onOfferWalldAvailable()V
.end method

.method public static native onOfferWalldNotAvailable()V
.end method

.method public static onPause()V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public static void onPause"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static native onRVAdAvailable()V
.end method

.method public static native onRVAdNotAvailable()V
.end method

.method public static native onRVInitFailure()V
.end method

.method public static onResume()V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public static void onResume"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static setUpIronSourceSDK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user id is and app key is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BF-RVHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    .line 265
    sget-object p0, Lsg/gumi/bravefrontier/RVHandler;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 266
    sget-object p0, Lsg/gumi/bravefrontier/RVHandler;->mOfferWallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 267
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 269
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 273
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->initialiseMediator()V

    return-void
.end method
