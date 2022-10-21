.class final synthetic Lcom/google/android/gms/games/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field private final zzin:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzit:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zziu:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

.field private final zziv:Lcom/google/android/gms/games/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/games/internal/zzq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zzin:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzl;->zzit:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzl;->zziu:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzl;->zziv:Lcom/google/android/gms/games/internal/zzq;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzl;->zzin:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzl;->zzit:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzl;->zziu:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzl;->zziv:Lcom/google/android/gms/games/internal/zzq;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/zzi;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/games/internal/zzq;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
