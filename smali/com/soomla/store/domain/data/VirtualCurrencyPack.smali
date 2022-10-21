.class public Lcom/soomla/store/domain/data/VirtualCurrencyPack;
.super Ljava/lang/Object;
.source "VirtualCurrencyPack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA VirtualCurrencyPack"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mGoogleItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

.field private mItemId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPriceString:Ljava/lang/String;

.field private mSkuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mDescription:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mItemId:Ljava/lang/String;

    .line 46
    new-instance p1, Lcom/soomla/store/domain/data/GoogleMarketItem;

    sget-object p2, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    invoke-direct {p1, p4, p2, p5, p6}, Lcom/soomla/store/domain/data/GoogleMarketItem;-><init>(Ljava/lang/String;Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;D)V

    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mGoogleItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mPriceString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleItem()Lcom/soomla/store/domain/data/GoogleMarketItem;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mGoogleItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mGoogleItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    invoke-virtual {v0}, Lcom/soomla/store/domain/data/GoogleMarketItem;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mGoogleItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    invoke-virtual {v0}, Lcom/soomla/store/domain/data/GoogleMarketItem;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public setPriceString(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mPriceString:Ljava/lang/String;

    return-void
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-void
.end method
