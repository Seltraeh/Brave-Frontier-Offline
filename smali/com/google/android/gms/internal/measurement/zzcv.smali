.class final synthetic Lcom/google/android/gms/internal/measurement/zzcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabj:Lcom/google/android/gms/internal/measurement/zzcu;

.field private final zzabk:I

.field private final zzabl:Lcom/google/android/gms/internal/measurement/zzcm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcu;ILcom/google/android/gms/internal/measurement/zzcm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabj:Lcom/google/android/gms/internal/measurement/zzcu;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabk:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabl:Lcom/google/android/gms/internal/measurement/zzcm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabj:Lcom/google/android/gms/internal/measurement/zzcu;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zzabl:Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(ILcom/google/android/gms/internal/measurement/zzcm;)V

    return-void
.end method
