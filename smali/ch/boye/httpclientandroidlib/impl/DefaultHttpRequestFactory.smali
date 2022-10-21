.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final RFC2616_COMMON_METHODS:[Ljava/lang/String;

.field private static final RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

.field private static final RFC2616_SPECIAL_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    sput-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "POST"

    aput-object v4, v2, v3

    const-string v4, "PUT"

    aput-object v4, v2, v0

    .line 50
    sput-object v2, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "HEAD"

    aput-object v4, v2, v3

    const-string v3, "OPTIONS"

    aput-object v3, v2, v0

    const-string v0, "DELETE"

    aput-object v0, v2, v1

    const/4 v0, 0x3

    const-string v1, "TRACE"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "CONNECT"

    aput-object v1, v2, v0

    .line 55
    sput-object v2, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 70
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public newHttpRequest(Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/MethodNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 82
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-object v0

    .line 85
    :cond_0
    sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-object v0

    .line 87
    :cond_1
    sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V

    return-object v0

    .line 90
    :cond_2
    new-instance p1, Lch/boye/httpclientandroidlib/MethodNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " method not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request line may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/MethodNotSupportedException;
        }
    .end annotation

    .line 96
    sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 100
    :cond_1
    sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :cond_2
    new-instance p2, Lch/boye/httpclientandroidlib/MethodNotSupportedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " method not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
