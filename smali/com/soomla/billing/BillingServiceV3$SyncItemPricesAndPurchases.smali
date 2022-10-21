.class Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;
.super Lcom/soomla/billing/BillingServiceV3$BillingRequest;
.source "BillingServiceV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/billing/BillingServiceV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncItemPricesAndPurchases"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/billing/BillingServiceV3;


# direct methods
.method public constructor <init>(Lcom/soomla/billing/BillingServiceV3;)V
    .locals 1

    .line 403
    iput-object p1, p0, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;->this$0:Lcom/soomla/billing/BillingServiceV3;

    const/4 v0, -0x1

    .line 404
    invoke-direct {p0, p1, v0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;-><init>(Lcom/soomla/billing/BillingServiceV3;I)V

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    new-instance v0, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchasesThread;

    iget-object v1, p0, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchases;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-direct {v0, v1}, Lcom/soomla/billing/BillingServiceV3$SyncItemPricesAndPurchasesThread;-><init>(Lcom/soomla/billing/BillingServiceV3;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x1

    return-wide v0
.end method
