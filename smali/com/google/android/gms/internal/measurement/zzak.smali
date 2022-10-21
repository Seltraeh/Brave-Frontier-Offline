.class final Lcom/google/android/gms/internal/measurement/zzak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvc:Lcom/google/android/gms/internal/measurement/zzai;

.field private final synthetic zzvd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzai;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzvc:Lcom/google/android/gms/internal/measurement/zzai;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzvd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzvc:Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzai;)Lcom/google/android/gms/internal/measurement/zzbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbf;->zzdi()V

    return-void
.end method
