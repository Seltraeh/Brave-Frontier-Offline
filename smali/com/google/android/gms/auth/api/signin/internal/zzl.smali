.class final Lcom/google/android/gms/auth/api/signin/internal/zzl;
.super Lcom/google/android/gms/auth/api/signin/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzp<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzv;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzm;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zzn()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzv;->zze(Lcom/google/android/gms/auth/api/signin/internal/zzt;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
