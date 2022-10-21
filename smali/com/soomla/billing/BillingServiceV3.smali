.class public Lcom/soomla/billing/BillingServiceV3;
.super Landroid/app/Service;
.source "BillingServiceV3.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/billing/BillingServiceV3$RequestPurchase;,
        Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;,
        Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchasesThread;,
        Lcom/soomla/billing/BillingServiceV3$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/soomla/billing/BillingServiceV3$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IInAppBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/soomla/billing/BillingServiceV3;->mPendingRequests:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .line 65
    sget-object v0, Lcom/soomla/billing/BillingServiceV3;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/soomla/billing/BillingServiceV3;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/soomla/billing/BillingServiceV3;->isCanRunRequests()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/soomla/billing/BillingServiceV3;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/soomla/billing/BillingServiceV3;->runPendingRequests()V

    return-void
.end method

.method static synthetic access$300()Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    .line 65
    sget-object v0, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method public static consumePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 508
    sget-object p1, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne p1, v0, :cond_0

    return-void

    .line 515
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "purchaseToken"

    .line 516
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    .line 521
    :goto_0
    :try_start_1
    sget-object p1, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v0, 0x3

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 524
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private isCanRunRequests()Z
    .locals 3

    .line 84
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 88
    :cond_0
    sget-object v0, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static parseCurrency(Ljava/lang/String;)Lcom/soomla/billing/CurrencyValue;
    .locals 15

    if-eqz p0, :cond_16

    .line 546
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 553
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-ge v1, v3, :cond_1

    .line 554
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 555
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_1

    if-lt v3, v5, :cond_0

    if-gt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v3, ""

    if-lez v2, :cond_2

    .line 561
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 564
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 565
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 566
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 575
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x2c

    const/16 v12, 0x2e

    if-ge v7, v10, :cond_8

    .line 576
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_5

    if-le v10, v4, :cond_6

    :cond_5
    if-eq v10, v12, :cond_6

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    if-lt v10, v5, :cond_7

    if-gt v10, v4, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v9, :cond_15

    add-int/lit8 v9, v8, -0x1

    move v10, v9

    :goto_6
    add-int/lit8 v13, v8, -0x3

    if-lt v10, v13, :cond_b

    if-ltz v10, :cond_b

    add-int v13, v1, v10

    .line 588
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v12, :cond_a

    if-ne v14, v11, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    sub-int/2addr v9, v10

    add-int/2addr v9, v13

    .line 593
    invoke-virtual {p0, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v8, v10

    .line 599
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    if-ge v0, v8, :cond_d

    add-int v10, v1, v0

    .line 601
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    if-gt v10, v4, :cond_c

    .line 603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 605
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_13

    .line 608
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_f

    .line 609
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 610
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_f
    :goto_a
    move v1, v7

    .line 616
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_11

    .line 617
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 618
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_11

    if-lt v8, v5, :cond_10

    if-gt v8, v4, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    :goto_c
    if-lez v2, :cond_12

    add-int/2addr v2, v7

    .line 624
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_12
    move v7, v1

    .line 628
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v7, p0, :cond_14

    .line 630
    new-instance p0, Lcom/soomla/billing/CurrencyValue;

    invoke-direct {p0}, Lcom/soomla/billing/CurrencyValue;-><init>()V

    .line 631
    invoke-virtual {p0, v6}, Lcom/soomla/billing/CurrencyValue;->setCurrency(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0, v3}, Lcom/soomla/billing/CurrencyValue;->setDecimalPart(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, v0}, Lcom/soomla/billing/CurrencyValue;->setIntegerPart(Ljava/lang/String;)V

    return-object p0

    .line 629
    :cond_14
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Invalid currency string"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_15
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "No number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_16
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "String is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw p0

    :goto_e
    goto :goto_d
.end method

.method private declared-synchronized runPendingRequests()V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    .line 131
    :cond_0
    :goto_0
    :try_start_0
    sget-object v1, Lcom/soomla/billing/BillingServiceV3;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/billing/BillingServiceV3$BillingRequest;

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lcom/soomla/billing/BillingServiceV3;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/soomla/billing/BillingServiceV3;->bindToMarketBillingService()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :cond_2
    if-ltz v0, :cond_3

    :try_start_1
    const-string v1, "SOOMLA BillingService"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping billing service v3, startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public bindToMarketBillingService()Z
    .locals 4

    const-string v0, "SOOMLA BillingService"

    :try_start_0
    const-string v1, "binding to Market billing service v3"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0, v1, p0, v2}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Connected to v3 billing service."

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "Could not bind to v3 billing service."

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SOOMLA BillingService"

    :try_start_0
    const-string v0, "Billing service connected v3"

    .line 168
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    sput-object p2, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz p2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/soomla/billing/BillingServiceV3;->runPendingRequests()V

    goto :goto_0

    :cond_0
    const-string p2, "Failed to bind IInAppBillingService."

    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SOOMLA BillingService"

    const-string v0, "Billing service disconnected v3"

    .line 188
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p0, p0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Billing service already disconnected v3"

    .line 194
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 198
    sput-object p1, Lcom/soomla/billing/BillingServiceV3;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 541
    new-instance v0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;-><init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->runOrWaitRequest()Z

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public syncItemPricesAndPurchases()Z
    .locals 1

    .line 534
    new-instance v0, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;

    invoke-direct {v0, p0}, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;-><init>(Lcom/soomla/billing/BillingServiceV3;)V

    invoke-virtual {v0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->runOrWaitRequest()Z

    move-result v0

    return v0
.end method

.method public unbind()V
    .locals 0

    .line 215
    :try_start_0
    invoke-virtual {p0, p0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
