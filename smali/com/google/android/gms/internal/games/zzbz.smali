.class public final Lcom/google/android/gms/internal/games/zzbz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    move-result-object p1

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/games/zzbz;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    move-result-object p1

    goto :goto_0
.end method

.method private static zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getOnMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getOnMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/games/internal/zze;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public final declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zze;->zze(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zze;->zzc(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/games/internal/zze;->zzd(IIZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zze;->zzd(IIZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/games/internal/zze;->zzb(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/games/internal/zze;->zzd(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public final leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzbz;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/gms/games/internal/zze;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;[BLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/games/internal/zze;->zza([BLjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zze;->zza([BLjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final sendUnreliableMessageToOthers(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/games/internal/zze;->zzb([BLjava/lang/String;)I

    move-result p1

    return p1
.end method
