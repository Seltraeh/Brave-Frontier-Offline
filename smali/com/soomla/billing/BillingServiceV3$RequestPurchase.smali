.class public Lcom/soomla/billing/BillingServiceV3$RequestPurchase;
.super Lcom/soomla/billing/BillingServiceV3$BillingRequest;
.source "BillingServiceV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/billing/BillingServiceV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field public final mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/soomla/billing/BillingServiceV3;


# direct methods
.method public constructor <init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;-><init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;-><init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/soomla/billing/BillingServiceV3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 454
    iput-object p1, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->this$0:Lcom/soomla/billing/BillingServiceV3;

    const/4 v0, -0x1

    .line 458
    invoke-direct {p0, p1, v0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;-><init>(Lcom/soomla/billing/BillingServiceV3;I)V

    .line 459
    iput-object p2, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 460
    iput-object p4, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 461
    iput-object p3, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->mProductType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .line 420
    invoke-super {p0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected run()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    return-wide v2

    .line 474
    :cond_0
    invoke-static {}, Lcom/soomla/billing/BillingServiceV3;->access$300()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->mProductId:Ljava/lang/String;

    iget-object v9, p0, Lcom/soomla/billing/BillingServiceV3$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    const-string v8, "inapp"

    invoke-interface/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "SOOMLA BillingService"

    if-eqz v1, :cond_1

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBuyIntent fail! Response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "BUY_INTENT"

    .line 482
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    const-string v0, "Error with requestPurchase"

    .line 485
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-wide v0, Lcom/soomla/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0

    .line 490
    :cond_2
    :try_start_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    const/16 v7, 0x3e9

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 491
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 490
    invoke-virtual/range {v5 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error with startIntentSenderForResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-wide v0, Lcom/soomla/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .line 420
    invoke-super {p0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runOrWaitRequest()Z
    .locals 1

    .line 420
    invoke-super {p0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->runOrWaitRequest()Z

    move-result v0

    return v0
.end method
