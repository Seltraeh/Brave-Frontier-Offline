.class final Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;->zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zzf;

    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;->zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->getAllClients()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzf;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;->zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zzd(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;->zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->zze(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$zzd;->zzfm:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
