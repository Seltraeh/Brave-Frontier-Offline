.class final Lcom/google/android/gms/internal/games/zzap;
.super Lcom/google/android/gms/internal/games/zzaw;


# instance fields
.field private final synthetic zzbq:Ljava/lang/String;

.field private final synthetic zzjm:I

.field private final synthetic zzjn:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzam;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzap;->zzbq:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzap;->zzjm:I

    iput p5, p0, Lcom/google/android/gms/internal/games/zzap;->zzjn:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzaw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzan;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzap;->zzbq:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/games/zzap;->zzjm:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzap;->zzjn:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
