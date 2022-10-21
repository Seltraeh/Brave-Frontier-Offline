.class final Lcom/android/billingclient/api/zzo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

.field private final synthetic zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

.field private final synthetic zzc:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzo;->zza:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza()Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    .line 3
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zza;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    .line 4
    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    .line 5
    invoke-virtual {v4}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v6, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    .line 6
    invoke-static {v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 8
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "BillingClient"

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v4, Lcom/android/billingclient/api/zzq;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/billingclient/api/zzq;-><init>(Lcom/android/billingclient/api/zzo;ILjava/lang/String;)V

    invoke-static {v2, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-object v0

    :catch_0
    move-exception v1

    .line 11
    iget-object v2, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v3, Lcom/android/billingclient/api/zzr;

    invoke-direct {v3, p0, v1}, Lcom/android/billingclient/api/zzr;-><init>(Lcom/android/billingclient/api/zzo;Ljava/lang/Exception;)V

    invoke-static {v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/android/billingclient/api/zzo;->zza()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
