.class public Lcom/pusher/client/PusherOptions;
.super Ljava/lang/Object;
.source "PusherOptions.java"


# static fields
.field public static final LIB_VERSION:Ljava/lang/String;

.field private static final URI_SUFFIX:Ljava/lang/String;


# instance fields
.field private activityTimeout:J

.field private authorizer:Lcom/pusher/client/Authorizer;

.field private encrypted:Z

.field private host:Ljava/lang/String;

.field private pongTimeout:J

.field private proxy:Ljava/net/Proxy;

.field private wsPort:I

.field private wssPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/pusher/client/PusherOptions;->readVersionFromProperties()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?client=java-client&protocol=5&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ws.pusherapp.com"

    .line 31
    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    const/16 v0, 0x50

    .line 32
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    const/16 v0, 0x1bb

    .line 33
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    const-wide/32 v0, 0x1d4c0

    .line 35
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    const-wide/16 v0, 0x7530

    .line 36
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    .line 38
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method private static readVersionFromProperties()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 228
    const-class v2, Lcom/pusher/client/PusherOptions;

    const-string v3, "/pusher.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "version"

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@version@"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0.0.0-dev"

    :cond_0
    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    .line 249
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :cond_2
    if-eqz v0, :cond_4

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :catch_1
    :cond_3
    throw v1

    :catch_2
    if-eqz v0, :cond_4

    goto :goto_0

    :catch_3
    :cond_4
    :goto_1
    const-string v0, "0.0.0"

    return-object v0
.end method


# virtual methods
.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    iget-boolean v1, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    if-eqz v1, :cond_0

    const-string v1, "wss"

    goto :goto_0

    :cond_0
    const-string v1, "ws"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    sget-object v1, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "%s://%s:%s/app/%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivityTimeout()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    return-wide v0
.end method

.method public getAuthorizer()Lcom/pusher/client/Authorizer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object v0
.end method

.method public getPongTimeout()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object p0
.end method
