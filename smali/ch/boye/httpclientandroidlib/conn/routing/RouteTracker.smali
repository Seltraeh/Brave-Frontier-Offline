.class public final Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private connected:Z

.field private layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

.field private secure:Z

.field private final targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field private tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 85
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 86
    sget-object p1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 87
    sget-object p1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 383
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 137
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpHost;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 141
    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 142
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Proxy host may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connectTarget(Z)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    .line 123
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 303
    :cond_0
    instance-of v1, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 306
    :cond_1
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;

    .line 307
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    iget-boolean v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v1, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    invoke-static {v1, p1}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHopCount()I
    .locals 2

    .line 219
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    array-length v0, v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 4

    if-ltz p1, :cond_2

    .line 232
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    aget-object p1, v0, p1

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    :goto_0
    return-object p1

    .line 234
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hop index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds tracked route length "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hop index must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLayerType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;
    .locals 1

    .line 265
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 214
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 2

    .line 249
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .line 210
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .line 257
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 329
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 330
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 331
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 332
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 333
    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 337
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 338
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 339
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final layerProtocol(Z)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 206
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No layered protocol unless connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 96
    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 97
    sget-object v1, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->PLAIN:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    .line 98
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final toRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 8

    .line 285
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    iget-boolean v5, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    iget-object v6, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iget-object v7, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;[Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;)V

    :goto_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "RouteTracker["

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7b

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x63

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_2

    const/16 v1, 0x74

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->layered:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;->LAYERED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_3

    const/16 v1, 0x6c

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_3
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x73

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}->"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 368
    :goto_0
    iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 369
    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;Z)V
    .locals 5

    if-eqz p1, :cond_2

    .line 175
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v0, :cond_0

    .line 183
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpHost;

    .line 184
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    .line 186
    aput-object p1, v2, v1

    .line 188
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    .line 189
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No proxy tunnel without proxy."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No tunnel unless connected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Proxy host may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final tunnelTarget(Z)V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->proxyChain:[Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->tunnelled:Lch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType;

    .line 159
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/routing/RouteTracker;->secure:Z

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No tunnel without proxy."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No tunnel unless connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
