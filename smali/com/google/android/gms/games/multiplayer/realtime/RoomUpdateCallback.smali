.class public abstract Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public abstract onLeftRoom(ILjava/lang/String;)V
.end method

.method public abstract onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public abstract onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method
