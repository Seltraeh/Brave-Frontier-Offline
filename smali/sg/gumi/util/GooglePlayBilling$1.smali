.class Lsg/gumi/util/GooglePlayBilling$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/util/GooglePlayBilling;->initialize()V
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

    .line 52
    iput-object p1, p0, Lsg/gumi/util/GooglePlayBilling$1;->this$0:Lsg/gumi/util/GooglePlayBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "GooglePlay Billing Service"

    const-string v1, "Billing service disconnected v3"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 63
    :try_start_0
    iget-object p1, p0, Lsg/gumi/util/GooglePlayBilling$1;->this$0:Lsg/gumi/util/GooglePlayBilling;

    invoke-static {p1}, Lsg/gumi/util/GooglePlayBilling;->access$000(Lsg/gumi/util/GooglePlayBilling;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
