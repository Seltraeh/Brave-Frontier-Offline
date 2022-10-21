.class Lsg/gumi/util/GooglePlayBilling$3;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/util/GooglePlayBilling;->SyncItemPricesAndPurchasesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/util/GooglePlayBilling;


# direct methods
.method constructor <init>(Lsg/gumi/util/GooglePlayBilling;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lsg/gumi/util/GooglePlayBilling$3;->this$0:Lsg/gumi/util/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 350
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 351
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getCurrencyPacks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/data/VirtualCurrencyPack;

    .line 355
    invoke-virtual {v3}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {v3, v1}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->setPriceString(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v3, p2}, Lcom/soomla/store/domain/data/VirtualCurrencyPack;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_0

    :cond_2
    return-void
.end method
