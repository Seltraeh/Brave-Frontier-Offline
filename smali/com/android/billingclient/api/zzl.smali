.class final Lcom/android/billingclient/api/zzl;
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
.field private final synthetic zza:Lcom/android/billingclient/api/ConsumeParams;

.field private final synthetic zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

.field private final synthetic zzc:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzl;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzl;->zza:Lcom/android/billingclient/api/ConsumeParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzl;->zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/zzl;->zzc:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzl;->zza:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzl;->zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
