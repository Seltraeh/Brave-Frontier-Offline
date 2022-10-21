.class final Lcom/google/android/gms/games/internal/zze$zzbo;
.super Lcom/google/android/gms/games/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzbo"
.end annotation


# instance fields
.field private final zzft:Lcom/google/android/gms/games/internal/zzac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/zzac;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze$zzbo;->zzft:Lcom/google/android/gms/games/internal/zzac;

    return-void
.end method


# virtual methods
.method public final zzn()Lcom/google/android/gms/games/internal/zzaa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zze$zzbo;->zzft:Lcom/google/android/gms/games/internal/zzac;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/zzac;->zzjd:Lcom/google/android/gms/games/internal/zzae;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzaa;-><init>(Lcom/google/android/gms/games/internal/zzae;)V

    return-object v0
.end method
