.class public abstract Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lch/boye/httpclientandroidlib/Header;

.field protected contentType:Lch/boye/httpclientandroidlib/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public getContentType()Lch/boye/httpclientandroidlib/Header;
    .locals 1

    .line 71
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->chunked:Z

    return-void
.end method

.method public setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentEncoding:Lch/boye/httpclientandroidlib/Header;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method

.method public setContentType(Lch/boye/httpclientandroidlib/Header;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->contentType:Lch/boye/httpclientandroidlib/Header;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V

    return-void
.end method
