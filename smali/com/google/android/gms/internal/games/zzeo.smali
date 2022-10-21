.class public final Lcom/google/android/gms/internal/games/zzeo;
.super Ljava/lang/Object;


# instance fields
.field private statusCode:I

.field private zzmu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games/zzeo;->zzmu:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/games/zzeo;->statusCode:I

    return-void
.end method


# virtual methods
.method public final zzca()Lcom/google/android/gms/internal/games/zzem;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/games/zzem;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzeo;->statusCode:I

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzeo;->zzmu:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/games/zzem;-><init>(ILjava/util/HashMap;Lcom/google/android/gms/internal/games/zzen;)V

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;I)Lcom/google/android/gms/internal/games/zzeo;
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzeo;->zzmu:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final zzo(I)Lcom/google/android/gms/internal/games/zzeo;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/games/zzeo;->statusCode:I

    return-object p0
.end method
