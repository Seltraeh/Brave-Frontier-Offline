.class final Lcom/google/android/gms/internal/measurement/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvc:Lcom/google/android/gms/internal/measurement/zzai;

.field private final synthetic zzve:Ljava/lang/String;

.field private final synthetic zzvf:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvc:Lcom/google/android/gms/internal/measurement/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzve:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvc:Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzai;)Lcom/google/android/gms/internal/measurement/zzbf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbf;->zzy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
