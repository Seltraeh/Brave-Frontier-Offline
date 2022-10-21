.class final synthetic Lcom/google/android/gms/games/internal/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field private final zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

.field private final zzix:Lcom/google/android/gms/common/api/PendingResult;

.field private final zziy:Lcom/google/android/gms/games/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzr;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzn;->zziy:Lcom/google/android/gms/games/internal/zzr;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzn;->zzix:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzn;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzn;->zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzn;->zziy:Lcom/google/android/gms/games/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzn;->zzix:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzn;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzn;->zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/zzi;->zza(Lcom/google/android/gms/games/internal/zzr;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
