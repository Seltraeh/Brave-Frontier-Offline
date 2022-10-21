.class final Lcom/android/billingclient/api/zzg;
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
.field final synthetic zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/List;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/zzg;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzg;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/zzg;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/android/billingclient/api/zzg;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails$zza;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v2, Lcom/android/billingclient/api/zzj;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/zzj;-><init>(Lcom/android/billingclient/api/zzg;Lcom/android/billingclient/api/SkuDetails$zza;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
