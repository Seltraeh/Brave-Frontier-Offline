.class final synthetic Lcom/google/android/gms/games/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field private final zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zziw:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

.field private final zzix:Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzm;->zziw:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzm;->zzix:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzm;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzm;->zziw:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzm;->zzix:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzm;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/games/internal/zzi;->zza(Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
