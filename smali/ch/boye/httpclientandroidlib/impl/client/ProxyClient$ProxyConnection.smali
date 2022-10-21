.class Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;
.super Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;
.source "ProxyClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/impl/client/ProxyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProxyConnection"
.end annotation


# instance fields
.field private final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;-><init>()V

    .line 225
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-void
.end method


# virtual methods
.method public getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .line 229
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 242
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
