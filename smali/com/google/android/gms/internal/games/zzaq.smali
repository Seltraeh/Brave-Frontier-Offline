.class final Lcom/google/android/gms/internal/games/zzaq;
.super Lcom/google/android/gms/internal/games/zzay;


# instance fields
.field private final synthetic zzbq:Ljava/lang/String;

.field private final synthetic zzjg:Z

.field private final synthetic zzjm:I

.field private final synthetic zzjn:I

.field private final synthetic zzjo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzam;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzaq;->zzbq:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjm:I

    iput p5, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjn:I

    iput p6, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjo:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjg:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzay;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzan;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzaq;->zzbq:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjm:I

    iget v4, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjn:I

    iget v5, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjo:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games/zzaq;->zzjg:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V

    return-void
.end method
