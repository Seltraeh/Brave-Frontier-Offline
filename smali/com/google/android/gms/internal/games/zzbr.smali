.class final Lcom/google/android/gms/internal/games/zzbr;
.super Lcom/google/android/gms/internal/games/zzbx;


# instance fields
.field private final synthetic zzjg:Z

.field private final synthetic zzjl:I

.field private final synthetic zzjv:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzbo;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjv:[I

    iput p4, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjl:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjg:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzbx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzbp;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjv:[I

    iget v1, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjl:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games/zzbr;->zzjg:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[IIZ)V

    return-void
.end method
