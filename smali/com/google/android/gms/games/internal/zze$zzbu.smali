.class final Lcom/google/android/gms/games/internal/zze$zzbu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzbu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusCode:I

.field private final token:I

.field private final zzhq:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->statusCode:I

    iput p2, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->token:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->zzhq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->statusCode:I

    iget v1, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->token:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zze$zzbu;->zzhq:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
