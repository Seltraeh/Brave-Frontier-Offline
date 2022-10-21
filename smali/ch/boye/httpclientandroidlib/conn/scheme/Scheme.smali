.class public final Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-lez p2, :cond_3

    const v0, 0xffff

    if-gt p2, v0, :cond_3

    if-eqz p3, :cond_2

    .line 96
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 97
    iput p2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    .line 98
    instance-of p1, p3, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 99
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    .line 100
    iput-object p3, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    goto :goto_0

    .line 101
    :cond_0
    instance-of p1, p3, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    if-eqz p1, :cond_1

    .line 102
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    .line 103
    new-instance p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;

    check-cast p3, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {p1, p3}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor2;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    .line 106
    iput-object p3, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port is invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-lez p3, :cond_1

    const v0, 0xffff

    if-gt p3, v0, :cond_1

    .line 141
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 142
    instance-of p1, p2, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor;

    check-cast p2, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    .line 150
    :goto_0
    iput p3, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port is invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Socket factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scheme name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 251
    :cond_0
    instance-of v1, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 252
    check-cast p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    .line 253
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    iget v3, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    iget-boolean p1, p1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getDefaultPort()I
    .locals 1

    .line 159
    iget v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchemeSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;
    .locals 1

    .line 196
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public final getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->socketFactory:Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;

    instance-of v1, v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;->getFactory()Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;

    check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;)V

    return-object v1

    .line 181
    :cond_1
    new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 264
    iget v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 265
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 266
    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(IZ)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .locals 0

    if-gtz p1, :cond_0

    .line 228
    iget p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    :cond_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    .line 245
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v0
.end method
