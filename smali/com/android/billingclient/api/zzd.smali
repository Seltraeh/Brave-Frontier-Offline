.class final Lcom/android/billingclient/api/zzd;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/zzd;->zza:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/android/billingclient/api/zze;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/billingclient/api/zze;-><init>(Lcom/android/billingclient/api/zzd;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzc;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzd;->zzb:Lcom/android/billingclient/api/zze;

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/zzd;)Lcom/android/billingclient/api/zze;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/billingclient/api/zzd;->zzb:Lcom/android/billingclient/api/zze;

    return-object p0
.end method


# virtual methods
.method final zza()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/zzd;->zzb:Lcom/android/billingclient/api/zze;

    iget-object v1, p0, Lcom/android/billingclient/api/zzd;->zza:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/zze;->zza(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method

.method final zzb()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/zzd;->zzb:Lcom/android/billingclient/api/zze;

    invoke-static {v0}, Lcom/android/billingclient/api/zze;->zza(Lcom/android/billingclient/api/zze;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method final zzc()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/zzd;->zzb:Lcom/android/billingclient/api/zze;

    iget-object v1, p0, Lcom/android/billingclient/api/zzd;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zze;->zza(Landroid/content/Context;)V

    return-void
.end method
