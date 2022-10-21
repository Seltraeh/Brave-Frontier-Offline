.class public Lcom/ironsource/sdk/constants/Constants$JSMethods;
.super Ljava/lang/Object;
.source "Constants.java"


# instance fields
.field public failureCallbackName:Ljava/lang/String;

.field public methodName:Ljava/lang/String;

.field public successCallbackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitMethodByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .locals 2

    .line 175
    new-instance v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;

    invoke-direct {v0}, Lcom/ironsource/sdk/constants/Constants$JSMethods;-><init>()V

    .line 177
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_0

    const-string p0, "initRewardedVideo"

    .line 178
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onInitRewardedVideoSuccess"

    .line 179
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onInitRewardedVideoFail"

    .line 180
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_1

    const-string p0, "initInterstitial"

    .line 182
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onInitInterstitialSuccess"

    .line 183
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onInitInterstitialFail"

    .line 184
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_2

    const-string p0, "initOfferWall"

    .line 186
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onInitOfferWallSuccess"

    .line 187
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onInitOfferWallFail"

    .line 188
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_2
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_3

    const-string p0, "initBanner"

    .line 190
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onInitBannerSuccess"

    .line 191
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onInitBannerFail"

    .line 192
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getShowMethodByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .locals 2

    .line 200
    new-instance v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;

    invoke-direct {v0}, Lcom/ironsource/sdk/constants/Constants$JSMethods;-><init>()V

    .line 202
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_0

    const-string p0, "showRewardedVideo"

    .line 203
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onShowRewardedVideoSuccess"

    .line 204
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onShowRewardedVideoFail"

    .line 205
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_1

    const-string p0, "showInterstitial"

    .line 207
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onShowInterstitialSuccess"

    .line 208
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onShowInterstitialFail"

    .line 209
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p0, v1, :cond_2

    const-string p0, "showOfferWall"

    .line 211
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    const-string p0, "onShowOfferWallSuccess"

    .line 212
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    const-string p0, "onInitOfferWallFail"

    .line 213
    iput-object p0, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method
