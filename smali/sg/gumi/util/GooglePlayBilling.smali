.class public Lsg/gumi/util/GooglePlayBilling;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GooglePlay Billing Service"


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lsg/gumi/util/GooglePlayBilling;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lsg/gumi/util/GooglePlayBilling;->runPendingRequests()V

    return-void
.end method

.method private isCanRunRequests()Z
    .locals 2

    .line 239
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized runPendingRequests()V
    .locals 0

    monitor-enter p0

    .line 211
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public OldRequestPurchase()V
    .locals 0

    return-void
.end method

.method public OldSyncItemPricesAndPurchasesThread()V
    .locals 0

    return-void
.end method

.method public RequestPurchase(Ljava/lang/String;)V
    .locals 2

    .line 401
    :try_start_0
    invoke-static {p1}, Lcom/soomla/store/data/StoreInfo;->getPackByGoogleProductId(Ljava/lang/String;)Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 406
    :goto_0
    invoke-virtual {p1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    .line 409
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 413
    iget-object v0, p0, Lsg/gumi/util/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public SyncItemPricesAndPurchasesThread()V
    .locals 3

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getCurrencyPacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    invoke-virtual {v2}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 344
    iget-object v0, p0, Lsg/gumi/util/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v2, Lsg/gumi/util/GooglePlayBilling$3;

    invoke-direct {v2, p0}, Lsg/gumi/util/GooglePlayBilling$3;-><init>(Lsg/gumi/util/GooglePlayBilling;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public bindToMarketBillingService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()V
    .locals 2

    .line 51
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lsg/gumi/util/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 52
    new-instance v1, Lsg/gumi/util/GooglePlayBilling$1;

    invoke-direct {v1, p0}, Lsg/gumi/util/GooglePlayBilling$1;-><init>(Lsg/gumi/util/GooglePlayBilling;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GooglePlay Billing Service"

    if-nez p1, :cond_0

    const-string p1, "onPurchasesUpdated: null BillingResult"

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 104
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "onPurchasesUpdated: $responseCode $debugMessage"

    .line 106
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0, v0, v0}, Lcom/soomla/store/StoreController;->onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult payment attempt fail! Response code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onActivityResult"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 144
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 154
    new-instance v3, Lsg/gumi/util/GooglePlayBilling$2;

    invoke-direct {v3, p0, v1, v2, p2}, Lsg/gumi/util/GooglePlayBilling$2;-><init>(Lsg/gumi/util/GooglePlayBilling;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lsg/gumi/util/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2, v0, v3}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public runOrWaitRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
