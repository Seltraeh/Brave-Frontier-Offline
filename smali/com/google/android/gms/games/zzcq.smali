.class final Lcom/google/android/gms/games/zzcq;
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
.field private final synthetic zzdl:I

.field private final synthetic zzdm:I

.field private final synthetic zzdn:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/TurnBasedMultiplayerClient;IIZ)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/games/zzcq;->zzdl:I

    iput p3, p0, Lcom/google/android/gms/games/zzcq;->zzdm:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/zzcq;->zzdn:Z

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

    iget v0, p0, Lcom/google/android/gms/games/zzcq;->zzdl:I

    iget v1, p0, Lcom/google/android/gms/games/zzcq;->zzdm:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/zzcq;->zzdn:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/zze;->zza(IIZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
