.class final Lcom/android/billingclient/api/zzj;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/android/billingclient/api/SkuDetails$zza;

.field private final synthetic zzb:Lcom/android/billingclient/api/zzg;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzg;Lcom/android/billingclient/api/SkuDetails$zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/zzg;

    iput-object p2, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/SkuDetails$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/zzg;

    iget-object v0, v0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    .line 3
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/SkuDetails$zza;

    .line 4
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$zza;->zzb()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/SkuDetails$zza;

    .line 5
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$zza;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/SkuDetails$zza;

    .line 7
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$zza;->zza()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
