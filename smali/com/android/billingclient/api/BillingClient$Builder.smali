.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Z

.field private final zzb:Landroid/content/Context;

.field private zzc:Lcom/android/billingclient/api/PurchasesUpdatedListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzf;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/billingclient/api/BillingClient;
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzc:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v1, :cond_1

    .line 12
    iget-boolean v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    if-eqz v2, :cond_0

    .line 14
    new-instance v3, Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-object v3

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    return-object p0
.end method

.method public final setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzc:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method
