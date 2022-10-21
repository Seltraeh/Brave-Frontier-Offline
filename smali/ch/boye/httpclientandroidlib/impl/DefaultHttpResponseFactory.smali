.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field protected final reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    sget-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;-><init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reason phrase catalog must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;
    .locals 0

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p3

    .line 85
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;

    invoke-direct {v1, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    .line 87
    new-instance p1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-direct {p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP version may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p2

    .line 98
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;

    invoke-direct {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status line may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
