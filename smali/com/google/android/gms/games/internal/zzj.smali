.class final synthetic Lcom/google/android/gms/games/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field private final zzin:Lcom/google/android/gms/common/api/PendingResult;

.field private final zzio:Lcom/google/android/gms/games/internal/zzr;

.field private final zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

.field private final zzir:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

.field private final zzis:Lcom/google/android/gms/games/internal/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/games/internal/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzin:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzj;->zzio:Lcom/google/android/gms/games/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzj;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzj;->zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/zzj;->zzir:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/zzj;->zzis:Lcom/google/android/gms/games/internal/zzp;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzj;->zzin:Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzj;->zzio:Lcom/google/android/gms/games/internal/zzr;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzj;->zzip:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzj;->zziq:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzj;->zzir:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/zzj;->zzis:Lcom/google/android/gms/games/internal/zzp;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzi;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
