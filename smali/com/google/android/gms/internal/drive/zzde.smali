.class final Lcom/google/android/gms/internal/drive/zzde;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/MetadataBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfo:Lcom/google/android/gms/drive/DriveResource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzde;->zzfo:Lcom/google/android/gms/drive/DriveResource;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzex;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzde;->zzfo:Lcom/google/android/gms/drive/DriveResource;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzex;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhi;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzex;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
