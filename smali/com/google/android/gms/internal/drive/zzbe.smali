.class final Lcom/google/android/gms/internal/drive/zzbe;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzen:Lcom/google/android/gms/drive/TransferPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/TransferPreferences;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzbe;->zzen:Lcom/google/android/gms/drive/TransferPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzgo;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzei;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbe;->zzen:Lcom/google/android/gms/drive/TransferPreferences;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/drive/zzei;-><init>(Lcom/google/android/gms/drive/TransferPreferences;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzgo;-><init>(Lcom/google/android/gms/internal/drive/zzei;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhl;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgo;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
