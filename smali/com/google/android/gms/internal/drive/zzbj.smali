.class final Lcom/google/android/gms/internal/drive/zzbj;
.super Lcom/google/android/gms/internal/drive/zzam;


# instance fields
.field private final synthetic zzet:Lcom/google/android/gms/internal/drive/zzbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbi;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbj;->zzet:Lcom/google/android/gms/internal/drive/zzbi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzgd;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbj;->zzet:Lcom/google/android/gms/internal/drive/zzbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzbi;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbj;->zzet:Lcom/google/android/gms/internal/drive/zzbi;

    invoke-static {v2}, Lcom/google/android/gms/internal/drive/zzbi;->zza(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/drive/zzgd;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/drive/zzgf;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgd;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    return-void
.end method
