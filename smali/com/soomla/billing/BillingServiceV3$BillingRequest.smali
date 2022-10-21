.class abstract Lcom/soomla/billing/BillingServiceV3$BillingRequest;
.super Ljava/lang/Object;
.source "BillingServiceV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/billing/BillingServiceV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/soomla/billing/BillingServiceV3;


# direct methods
.method public constructor <init>(Lcom/soomla/billing/BillingServiceV3;I)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p2, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->mStartId:I

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 1

    const-string p1, "SOOMLA BillingService"

    const-string v0, "remote billing service crashed"

    .line 294
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/soomla/billing/BillingServiceV3;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 4

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOOMLA BillingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-static {v0}, Lcom/soomla/billing/BillingServiceV3;->access$100(Lcom/soomla/billing/BillingServiceV3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->run()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->mRequestId:J

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->mRequestId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {p0, v0}, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public runOrWaitRequest()Z
    .locals 1

    .line 251
    invoke-static {}, Lcom/soomla/billing/BillingServiceV3;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-static {v0}, Lcom/soomla/billing/BillingServiceV3;->access$100(Lcom/soomla/billing/BillingServiceV3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-static {v0}, Lcom/soomla/billing/BillingServiceV3;->access$200(Lcom/soomla/billing/BillingServiceV3;)V

    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/soomla/billing/BillingServiceV3$BillingRequest;->this$0:Lcom/soomla/billing/BillingServiceV3;

    invoke-virtual {v0}, Lcom/soomla/billing/BillingServiceV3;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method
