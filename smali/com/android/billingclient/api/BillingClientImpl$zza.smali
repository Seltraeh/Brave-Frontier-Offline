.class final Lcom/android/billingclient/api/BillingClientImpl$zza;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Z

.field private zzd:Lcom/android/billingclient/api/BillingClientStateListener;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzd:Lcom/android/billingclient/api/BillingClientStateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzh;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$zza;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl$zza;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl$zza;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zza(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v1, Lcom/android/billingclient/api/zzae;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzae;-><init>(Lcom/android/billingclient/api/BillingClientImpl$zza;Lcom/android/billingclient/api/BillingResult;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl$zza;)Lcom/android/billingclient/api/BillingClientStateListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzd:Lcom/android/billingclient/api/BillingClientStateListener;

    return-object p0
.end method

.method static synthetic zzc(Lcom/android/billingclient/api/BillingClientImpl$zza;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzc:Z

    return p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzd;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zza;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zza;)Lcom/google/android/gms/internal/play_billing/zza;

    .line 21
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance p2, Lcom/android/billingclient/api/zzag;

    invoke-direct {p2, p0}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/BillingClientImpl$zza;)V

    new-instance v0, Lcom/android/billingclient/api/zzaf;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/zzaf;-><init>(Lcom/android/billingclient/api/BillingClientImpl$zza;)V

    const-wide/16 v1, 0x7530

    .line 22
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzf(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingResult;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zza;)Lcom/google/android/gms/internal/play_billing/zza;

    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzd:Lcom/android/billingclient/api/BillingClientStateListener;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzd:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    .line 12
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zza()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 14
    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzd:Lcom/android/billingclient/api/BillingClientStateListener;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzc:Z

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
