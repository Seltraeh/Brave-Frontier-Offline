.class final Lcom/google/android/gms/internal/games/zzdg;
.super Lcom/google/android/gms/internal/games/zzdw;


# instance fields
.field private final synthetic zzew:Ljava/lang/String;

.field private final synthetic zzkj:[B

.field private final synthetic zzkk:Ljava/lang/String;

.field private final synthetic zzkl:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdb;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdg;->zzew:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkj:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkk:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkl:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzdw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzdc;)V

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

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdg;->zzew:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkj:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkk:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzdg;->zzkl:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
