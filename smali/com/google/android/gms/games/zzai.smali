.class final Lcom/google/android/gms/games/zzai;
.super Lcom/google/android/gms/internal/games/zzah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/games/zzah<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbq:Ljava/lang/String;

.field private final synthetic zzbr:I

.field private final synthetic zzbs:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/LeaderboardsClient;Ljava/lang/String;II)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzai;->zzbq:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/zzai;->zzbr:I

    iput p4, p0, Lcom/google/android/gms/games/zzai;->zzbs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/zze;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/zze;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzai;->zzbq:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/zzai;->zzbr:I

    iget v2, p0, Lcom/google/android/gms/games/zzai;->zzbs:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/zze;->zza(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
