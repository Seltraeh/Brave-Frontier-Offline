.class final Lcom/google/android/gms/internal/drive/zzdk;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field private final synthetic zzfu:Lcom/google/android/gms/internal/drive/zzch;

.field private final zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

.field private final zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/drive/zzdg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/drive/zzdg<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgi:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/drive/zzdo;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzdg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdl;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onError(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzch;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzfb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdn;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzfb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/drive/zzfb;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbi;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfb;->zzeq:Lcom/google/android/gms/drive/Contents;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbi;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onContents(Lcom/google/android/gms/drive/DriveContents;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->zzgh:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzch;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzff;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/drive/zzdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzdm;-><init>(Lcom/google/android/gms/internal/drive/zzff;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->zza(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method
