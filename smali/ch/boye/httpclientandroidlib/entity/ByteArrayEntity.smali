.class public Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final b:[B

.field protected final content:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([BLch/boye/httpclientandroidlib/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([BIILch/boye/httpclientandroidlib/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BIILch/boye/httpclientandroidlib/entity/ContentType;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    .line 78
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 82
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    .line 83
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->b:[B

    .line 84
    iput p2, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->off:I

    .line 85
    iput p3, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->len:I

    if-eqz p4, :cond_0

    .line 87
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " len: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " b.length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source byte array may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLch/boye/httpclientandroidlib/entity/ContentType;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    if-eqz p1, :cond_1

    .line 61
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    .line 62
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->b:[B

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->off:I

    .line 64
    array-length p1, p1

    iput p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->len:I

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source byte array may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->b:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->off:I

    iget v3, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 104
    iget v0, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->len:I

    int-to-long v0, v0

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->b:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->off:I

    iget v2, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
