.class final Lcom/android/billingclient/api/zzae;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/android/billingclient/api/BillingResult;

.field private final synthetic zzb:Lcom/android/billingclient/api/BillingClientImpl$zza;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$zza;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzae;->zzb:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iput-object p2, p0, Lcom/android/billingclient/api/zzae;->zza:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/zzae;->zzb:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingClientImpl$zza;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzae;->zzb:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb(Lcom/android/billingclient/api/BillingClientImpl$zza;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/billingclient/api/zzae;->zzb:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb(Lcom/android/billingclient/api/BillingClientImpl$zza;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzae;->zza:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v1, v2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
