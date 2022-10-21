.class Lsg/gumi/bravefrontier/RVHandler$1;
.super Ljava/lang/Object;
.source "RVHandler.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/RVHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRewardPlacement:Lcom/ironsource/mediationsdk/model/Placement;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lsg/gumi/bravefrontier/RVHandler$1;->mRewardPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public void onRewardedVideoAdClosed"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->adInvokeCompletedCallback()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lsg/gumi/bravefrontier/RVHandler$1;->mRewardPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public void onRewardedVideoAdOpened"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    .line 93
    iput-object p1, p0, Lsg/gumi/bravefrontier/RVHandler$1;->mRewardPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    const-string p1, "BF-RVHandler"

    const-string v0, "public void onRewardedVideoAdRewarded"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const-string v0, "BF-RVHandler"

    const-string v1, "public void onRewardedVideoInitFail"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    .line 103
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    .line 108
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->onRVInitFailure()V

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 0

    .line 114
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->adInvokeStarted()V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 1

    const-string v0, "BF-RVHandler"

    if-eqz p1, :cond_0

    const-string p1, "public void onVideoAvailabilityChanged - true"

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->onRVAdAvailable()V

    goto :goto_0

    :cond_0
    const-string p1, "public void onVideoAvailabilityChanged - false"

    .line 124
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lsg/gumi/bravefrontier/RVHandler;->onRVAdNotAvailable()V

    :goto_0
    return-void
.end method
