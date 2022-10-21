.class public Lcom/soomla/store/StoreController;
.super Ljava/lang/Object;
.source "StoreController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA StoreController"

.field private static mActivity:Landroid/app/Activity;

.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/soomla/store/StoreController;


# instance fields
.field private mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mStoreOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/soomla/store/StoreController;->mStoreOpen:Z

    .line 386
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static buyGoogleMarketItem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/soomla/store/StoreController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/soomla/store/StoreController$2;

    invoke-direct {v1, p0}, Lcom/soomla/store/StoreController$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/soomla/store/StoreController;
    .locals 1

    .line 362
    sget-object v0, Lcom/soomla/store/StoreController;->sInstance:Lcom/soomla/store/StoreController;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/soomla/store/StoreController;

    invoke-direct {v0}, Lcom/soomla/store/StoreController;-><init>()V

    sput-object v0, Lcom/soomla/store/StoreController;->sInstance:Lcom/soomla/store/StoreController;

    .line 366
    :cond_0
    sget-object v0, Lcom/soomla/store/StoreController;->sInstance:Lcom/soomla/store/StoreController;

    return-object v0
.end method

.method static getPackPriceForProductID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "BraveFrontier"

    const-string v2, "Get pack price"

    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_0
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getPackByGoogleProductId(Ljava/lang/String;)Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getPriceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-static {}, Lcom/soomla/store/StoreController;->syncItemPricesAndPurchases()V

    :cond_0
    const-string v2, "BraveFrontierIAP"

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getPriceString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getPriceString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private startBillingService()Z
    .locals 2

    const-string v0, "StoreController"

    const-string v1, "startBillingService()"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lsg/gumi/util/GooglePlayBilling;

    invoke-direct {v0}, Lsg/gumi/util/GooglePlayBilling;-><init>()V

    iput-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    .line 337
    invoke-virtual {v0}, Lsg/gumi/util/GooglePlayBilling;->initialize()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0
.end method

.method private stopBillingService()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 354
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static storeClosing()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soomla/store/StoreController;->_storeClosing()V

    return-void
.end method

.method public static storeOpening()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soomla/store/StoreController;->_storeOpening()V

    return-void
.end method

.method public static syncItemPricesAndPurchases()V
    .locals 2

    .line 90
    :try_start_0
    sget-object v0, Lcom/soomla/store/StoreController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/soomla/store/StoreController$1;

    invoke-direct {v1}, Lcom/soomla/store/StoreController$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public _buyGoogleMarketItem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RESTORE_TRANSACTION_NEXT_TIME"

    const/4 v2, 0x1

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    invoke-virtual {v0, p1}, Lsg/gumi/util/GooglePlayBilling;->RequestPurchase(Ljava/lang/String;)V

    return-void
.end method

.method public _storeClosing()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/soomla/store/StoreController;->mStoreOpen:Z

    .line 198
    invoke-direct {p0}, Lcom/soomla/store/StoreController;->stopBillingService()V

    return-void
.end method

.method public _storeOpening()V
    .locals 2

    const-string v0, "StoreController"

    const-string v1, "opening store"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 175
    iget-boolean v0, p0, Lcom/soomla/store/StoreController;->mStoreOpen:Z

    if-eqz v0, :cond_0

    const-string v0, "SOOMLA StoreController"

    const-string v1, "You already sent storeOpening !"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/soomla/store/StoreController;->mStoreOpen:Z

    .line 182
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    invoke-direct {p0}, Lcom/soomla/store/StoreController;->startBillingService()Z

    return-void
.end method

.method public _syncItemPricesAndPurchases()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lsg/gumi/util/GooglePlayBilling;

    invoke-direct {v0}, Lsg/gumi/util/GooglePlayBilling;-><init>()V

    iput-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    .line 107
    invoke-virtual {v0}, Lsg/gumi/util/GooglePlayBilling;->initialize()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/StoreController;->mGooglePlayBillingService:Lsg/gumi/util/GooglePlayBilling;

    invoke-virtual {v0}, Lsg/gumi/util/GooglePlayBilling;->SyncItemPricesAndPurchasesThread()V

    return-void
.end method

.method public initialize(Lcom/soomla/store/IStoreAssets;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0

    .line 70
    sput-object p2, Lcom/soomla/store/StoreController;->mActivity:Landroid/app/Activity;

    .line 71
    sput-object p3, Lcom/soomla/store/StoreController;->mHandler:Landroid/os/Handler;

    const-string p2, "StoreController"

    const-string p3, "initialize store assets"

    .line 73
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/soomla/store/data/StoreInfo;->setStoreAssets(Lcom/soomla/store/IStoreAssets;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/soomla/store/StoreController;->startBillingService()Z

    return-void
.end method

.method public onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1, p2, p3}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->purchaseStateChangedCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    invoke-static {p1, p2, p3}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->purchaseStateChangedCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {p1, p2}, Lcom/soomla/billing/BillingServiceV3;->consumePurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 217
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "RESTORE_TRANSACTION_NEXT_TIME"

    .line 218
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p2, 0x0

    .line 223
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string p1, "orderId"

    .line 260
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    const-string p1, "productId"

    .line 268
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    .line 276
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/soomla/store/data/StoreInfo;->getPackByGoogleProductId(Ljava/lang/String;)Lcom/soomla/store/domain/data/VirtualCurrencyPack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
