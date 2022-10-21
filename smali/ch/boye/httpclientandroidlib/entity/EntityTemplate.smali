.class public Lch/boye/httpclientandroidlib/entity/EntityTemplate;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "EntityTemplate.java"


# instance fields
.field private final contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentProducer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content producer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->writeTo(Ljava/io/OutputStream;)V

    .line 61
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/EntityTemplate;->contentproducer:Lch/boye/httpclientandroidlib/entity/ContentProducer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/entity/ContentProducer;->writeTo(Ljava/io/OutputStream;)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
