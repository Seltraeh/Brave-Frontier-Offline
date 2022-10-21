.class public Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatElements([Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 91
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatHeaderElement(Lch/boye/httpclientandroidlib/HeaderElement;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 160
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 161
    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatNameValuePair(Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 316
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 317
    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatParameters([Lch/boye/httpclientandroidlib/NameValuePair;ZLch/boye/httpclientandroidlib/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 248
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 249
    invoke-interface {p2, v0, p0, p1}, Lch/boye/httpclientandroidlib/message/HeaderValueFormatter;->formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    .line 384
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 385
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    if-eqz p3, :cond_1

    .line 390
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 392
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 393
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 394
    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5c

    .line 395
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 397
    :cond_2
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 400
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 131
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 135
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 136
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method protected estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 211
    :cond_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 212
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 218
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 221
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 359
    :cond_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method protected estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 288
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 292
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 293
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method public formatElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2

    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateElementsLen([Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v0

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    :goto_0
    const/4 v0, 0x0

    .line 112
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const-string v1, ", "

    .line 114
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 116
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header element array must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public formatHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/HeaderElement;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 3

    if-eqz p2, :cond_3

    .line 174
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lch/boye/httpclientandroidlib/HeaderElement;)I

    move-result v0

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 181
    :goto_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 182
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3d

    .line 184
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 185
    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 188
    :cond_1
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    const-string v2, "; "

    .line 191
    invoke-virtual {p1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 192
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header element must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 1

    if-eqz p2, :cond_2

    .line 330
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v0

    if-nez p1, :cond_0

    .line 332
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 337
    :goto_0
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 338
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x3d

    .line 340
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    .line 341
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->doFormatValue(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Ljava/lang/String;Z)V

    :cond_1
    return-object p1

    .line 326
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NameValuePair must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public formatParameters(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;[Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .locals 2

    if-eqz p2, :cond_3

    .line 262
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->estimateParametersLen([Lch/boye/httpclientandroidlib/NameValuePair;)I

    move-result v0

    if-nez p1, :cond_0

    .line 264
    new-instance p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->ensureCapacity(I)V

    :goto_0
    const/4 v0, 0x0

    .line 269
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const-string v1, "; "

    .line 271
    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 273
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 258
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected isSeparator(C)Z
    .locals 1

    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isUnsafe(C)Z
    .locals 1

    const-string v0, "\"\\"

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
