.class final Lcom/google/android/gms/internal/games/zzdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# instance fields
.field private final synthetic zzbc:Lcom/google/android/gms/common/api/Status;

.field private final synthetic zzko:Lcom/google/android/gms/internal/games/zzdm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdm;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzdn;->zzko:Lcom/google/android/gms/internal/games/zzdm;

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzdn;->zzbc:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdn;->zzko:Lcom/google/android/gms/internal/games/zzdm;

    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzdm;->zza(Lcom/google/android/gms/internal/games/zzdm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdn;->zzbc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
