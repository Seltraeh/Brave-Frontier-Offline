.class final Lcom/google/android/gms/games/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
        "Lcom/google/android/gms/games/video/VideoCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;->getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;

    move-result-object p1

    return-object p1
.end method
