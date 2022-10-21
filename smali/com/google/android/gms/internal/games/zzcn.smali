.class final Lcom/google/android/gms/internal/games/zzcn;
.super Lcom/google/android/gms/internal/games/zzcu;


# instance fields
.field private final synthetic zzkd:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private final synthetic zzkf:Ljava/lang/String;

.field private final synthetic zzkg:Ljava/lang/String;

.field private final synthetic zzkh:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzci;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkd:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p6, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkh:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzcu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzcj;)V

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

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkf:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkd:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games/zzcn;->zzkh:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
