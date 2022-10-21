.class final Lcom/google/android/gms/internal/games/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# instance fields
.field private final synthetic zzbc:Lcom/google/android/gms/common/api/Status;

.field private final synthetic zzjj:Lcom/google/android/gms/internal/games/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzr;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzs;->zzjj:Lcom/google/android/gms/internal/games/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/games/zzs;->zzbc:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzs;->zzjj:Lcom/google/android/gms/internal/games/zzr;

    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzr;->zza(Lcom/google/android/gms/internal/games/zzr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzs;->zzbc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
