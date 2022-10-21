.class public Lsg/gumi/bravefrontier/BraveFrontierPusher;
.super Ljava/lang/Object;
.source "BraveFrontierPusher.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "e772684d55b1f7b80fab"

.field private static authorizer:Lcom/pusher/client/Authorizer;

.field private static channel:Lcom/pusher/client/channel/PresenceChannel;

.field private static final connectionAttemptsWorker:Ljava/util/concurrent/ScheduledExecutorService;

.field private static pusher:Lcom/pusher/client/Pusher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->connectionAttemptsWorker:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/pusher/client/Pusher;
    .locals 1

    .line 24
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 24
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->connectionAttemptsWorker:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static connect()V
    .locals 1

    .line 80
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->connect()V

    return-void
.end method

.method public static disconnect()V
    .locals 1

    .line 85
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->disconnect()V

    return-void
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/pusher/client/util/HttpAuthorizer;

    invoke-direct {v0, p0}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "auth_key"

    .line 39
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user_id"

    .line 40
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user_name"

    .line 41
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v0, p0}, Lcom/pusher/client/util/HttpAuthorizer;->setQueryStringParameters(Ljava/util/HashMap;)V

    .line 43
    new-instance p0, Lcom/pusher/client/PusherOptions;

    invoke-direct {p0}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-virtual {p0, v0}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    .line 44
    new-instance p1, Lcom/pusher/client/Pusher;

    invoke-direct {p1, p4, p0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    sput-object p1, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    .line 46
    invoke-virtual {p1}, Lcom/pusher/client/Pusher;->getConnection()Lcom/pusher/client/connection/Connection;

    move-result-object p0

    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    new-instance p2, Lsg/gumi/bravefrontier/BraveFrontierPusher$1;

    invoke-direct {p2}, Lsg/gumi/bravefrontier/BraveFrontierPusher$1;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/pusher/client/connection/Connection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    .line 75
    sget-object p0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {p0}, Lcom/pusher/client/Pusher;->connect()V

    return-void
.end method

.method public static isConnected()Z
    .locals 3

    .line 158
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->getConnection()Lcom/pusher/client/connection/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/pusher/client/connection/Connection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isSubscribed()Z
    .locals 3

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pusher isSubscribed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pusher isSubscribed channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v0}, Lcom/pusher/client/channel/Channel;->isSubscribed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static native responsePusher(Ljava/lang/String;)V
.end method

.method public static native responsePusherMemberAdded(Ljava/lang/String;)V
.end method

.method public static native responsePusherMemberRemoved(Ljava/lang/String;)V
.end method

.method public static subscribePresence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 92
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    new-instance v1, Lsg/gumi/bravefrontier/BraveFrontierPusher$2;

    invoke-direct {v1}, Lsg/gumi/bravefrontier/BraveFrontierPusher$2;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p0

    sput-object p0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static trigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    sget-object p0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {p0, p1, p2}, Lcom/pusher/client/channel/PrivateChannel;->trigger(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsubscribeAll()V
    .locals 3

    .line 188
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pusher unsubscribeAll"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pusher unsubscribeAll channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->pusher:Lcom/pusher/client/Pusher;

    sget-object v1, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v1}, Lcom/pusher/client/channel/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pusher/client/Pusher;->unsubscribe(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 193
    sput-object v0, Lsg/gumi/bravefrontier/BraveFrontierPusher;->channel:Lcom/pusher/client/channel/PresenceChannel;

    :cond_0
    return-void
.end method
