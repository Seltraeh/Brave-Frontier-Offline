.class Lsg/gumi/util/GooglePlayBilling$2;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/util/GooglePlayBilling;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/util/GooglePlayBilling;

.field final synthetic val$prodId:Ljava/lang/String;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsg/gumi/util/GooglePlayBilling;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lsg/gumi/util/GooglePlayBilling$2;->this$0:Lsg/gumi/util/GooglePlayBilling;

    iput-object p2, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$signedData:Ljava/lang/String;

    iput-object p3, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$signature:Ljava/lang/String;

    iput-object p4, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$prodId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    const-string p1, "DEREKT"

    const-string p2, "onConsumeResponse Purchases consumed"

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object p1

    iget-object p2, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$signedData:Ljava/lang/String;

    iget-object v0, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$signature:Ljava/lang/String;

    iget-object v1, p0, Lsg/gumi/util/GooglePlayBilling$2;->val$prodId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/soomla/store/StoreController;->onPurchaseStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
