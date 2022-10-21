.class public Lcom/pusher/client/Pusher;
.super Ljava/lang/Object;
.source "Pusher.java"


# instance fields
.field private final channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

.field private final connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final pusherOptions:Lcom/pusher/client/PusherOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/pusher/client/util/Factory;

    invoke-direct {v0}, Lcom/pusher/client/util/Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 100
    iput-object p2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 101
    iput-object p3, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    .line 102
    invoke-virtual {p3, p1, p2}, Lcom/pusher/client/util/Factory;->getConnection(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 103
    invoke-virtual {p3}, Lcom/pusher/client/util/Factory;->getChannelManager()Lcom/pusher/client/channel/impl/ChannelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    .line 104
    iget-object p2, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-virtual {p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager;->setConnection(Lcom/pusher/client/connection/impl/InternalConnection;)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PusherOptions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "API Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwExceptionIfNoAuthorizerHasBeenSet()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    invoke-virtual {v0}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/pusher/client/connection/ConnectionState;

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1, v0}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method public varargs connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 160
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/pusher/client/connection/ConnectionState;

    .line 161
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    aput-object v0, p2, v1

    .line 164
    :cond_0
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 165
    iget-object v3, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v3, v2, p1}, Lcom/pusher/client/connection/Connection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length p1, p2

    if-gtz p1, :cond_3

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {p1}, Lcom/pusher/client/connection/Connection;->connect()V

    return-void

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot bind to connection states with a null connection event listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/Connection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getConnection()Lcom/pusher/client/connection/Connection;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    return-object v0
.end method

.method public varargs subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 319
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 320
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPresenceChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->unsubscribeFrom(Ljava/lang/String;)V

    return-void
.end method
