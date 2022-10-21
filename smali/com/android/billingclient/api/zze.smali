.class final Lcom/android/billingclient/api/zze;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@3.0.0"


# instance fields
.field private final zza:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private zzb:Z

.field private final synthetic zzc:Lcom/android/billingclient/api/zzd;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/zzd;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zze;->zzc:Lcom/android/billingclient/api/zzd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/billingclient/api/zze;->zza:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzd;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzc;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zze;-><init>(Lcom/android/billingclient/api/zzd;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/zze;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/billingclient/api/zze;->zza:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/android/billingclient/api/zze;->zza:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/android/billingclient/api/zze;->zzb:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/zze;->zzc:Lcom/android/billingclient/api/zzd;

    invoke-static {v0}, Lcom/android/billingclient/api/zzd;->zza(Lcom/android/billingclient/api/zzd;)Lcom/android/billingclient/api/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/billingclient/api/zze;->zzb:Z

    return-void

    :cond_0
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/android/billingclient/api/zze;->zzb:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/zze;->zzc:Lcom/android/billingclient/api/zzd;

    invoke-static {v0}, Lcom/android/billingclient/api/zzd;->zza(Lcom/android/billingclient/api/zzd;)Lcom/android/billingclient/api/zze;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/billingclient/api/zze;->zzb:Z

    :cond_0
    return-void
.end method
