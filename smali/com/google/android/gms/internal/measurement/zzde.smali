.class public final Lcom/google/android/gms/internal/measurement/zzde;
.super Lcom/google/android/gms/internal/measurement/zzar;


# instance fields
.field private zzaaa:Ljava/lang/String;

.field protected zzaac:I

.field private zzabz:I

.field protected zzaca:Z

.field private zzacb:Z

.field private zzacc:Z

.field private zzzz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzat;)V

    return-void
.end method


# virtual methods
.method protected final zzac()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzce;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzbs()Lcom/google/android/gms/internal/measurement/zzat;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Lcom/google/android/gms/internal/measurement/zzat;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzo(I)Lcom/google/android/gms/internal/measurement/zzbr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcg;

    if-eqz v0, :cond_e

    const-string v1, "Loading global XML config values"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzq(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzzz:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzzz:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzzz:Ljava/lang/String;

    const-string v4, "XML config - app name"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaaa:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaaa:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzaaa:Ljava/lang/String;

    const-string v4, "XML config - app version"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaab:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/4 v4, -0x1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaab:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "verbose"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-string v5, "info"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const-string v5, "warning"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    const-string v5, "error"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    const/4 v1, -0x1

    :goto_4
    if-ltz v1, :cond_a

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzabz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "XML config - log level"

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaac:I

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaac:I

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzaac:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzaca:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "XML config - dispatch period (sec)"

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzaad:I

    if-eq v0, v4, :cond_e

    if-ne v0, v3, :cond_d

    const/4 v2, 0x1

    :cond_d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzacc:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzacb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "XML config - dry run"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzaf()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzar;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzzz:Ljava/lang/String;

    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzar;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzaaa:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfm()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzar;->zzch()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzfn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzar;->zzch()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzacb:Z

    return v0
.end method

.method public final zzfo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzar;->zzch()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zzacc:Z

    return v0
.end method
