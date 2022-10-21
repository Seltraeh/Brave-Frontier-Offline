.class final Lcom/google/android/gms/games/zzbw;
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
.field private final synthetic zzeb:Ljava/lang/String;

.field private final synthetic zzec:Z

.field private final synthetic zzed:Z

.field private final synthetic zzee:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/SnapshotsClient;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzbw;->zzeb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/games/zzbw;->zzec:Z

    iput-boolean p4, p0, Lcom/google/android/gms/games/zzbw;->zzed:Z

    iput p5, p0, Lcom/google/android/gms/games/zzbw;->zzee:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/zze;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/games/zzbw;->zzeb:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/zzbw;->zzec:Z

    iget-boolean v2, p0, Lcom/google/android/gms/games/zzbw;->zzed:Z

    iget v3, p0, Lcom/google/android/gms/games/zzbw;->zzee:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zze;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
