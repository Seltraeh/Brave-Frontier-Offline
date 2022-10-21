.class public Lcom/google/android/gms/games/internal/zzac;
.super Ljava/lang/Object;


# instance fields
.field protected zzjc:Lcom/google/android/gms/games/internal/zze;

.field protected zzjd:Lcom/google/android/gms/games/internal/zzae;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/zze;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/zzac;->zzm(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/zze;ILcom/google/android/gms/games/internal/zzad;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzac;-><init>(Lcom/google/android/gms/games/internal/zze;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/games/internal/zze;I)Lcom/google/android/gms/games/internal/zzac;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastHoneycombMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/internal/zzaf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/zzaf;-><init>(Lcom/google/android/gms/games/internal/zze;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/zzac;-><init>(Lcom/google/android/gms/games/internal/zze;I)V

    return-object v0
.end method


# virtual methods
.method public zzb(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public zzbj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjc:Lcom/google/android/gms/games/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    iget-object v2, v1, Lcom/google/android/gms/games/internal/zzae;->zzjb:Landroid/os/IBinder;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzae;->zzbk()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/games/internal/zze;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected zzm(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/internal/zzae;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/zzae;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/zzad;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    return-void
.end method
